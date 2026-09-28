#!/bin/bash
# usage: s.sh "query"
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
curl -s -m 25 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120 Safari/537.36" \
  "https://html.duckduckgo.com/html/?q=$q" \
| python3 -c "
import sys,re,html
t=sys.stdin.read()
blocks=re.split(r'class=\"result results_links',t)[1:]
for b in blocks[:8]:
    m=re.search(r'result__a\"[^>]*href=\"([^\"]+)\"[^>]*>(.*?)</a>',b,re.S)
    u=''
    if m:
        u=html.unescape(m.group(1))
        if 'uddg=' in u:
            import urllib.parse as up
            u=up.unquote(u.split('uddg=')[1].split('&')[0])
        title=re.sub('<[^>]*>','',m.group(2)).strip()
    else:
        title='(no title)'
    sn=re.search(r'result__snippet\"[^>]*>(.*?)</a>',b,re.S)
    snip=re.sub('<[^>]*>','',sn.group(1)).strip() if sn else ''
    snip=html.unescape(snip)[:400]
    print('•',title,'\n  ',u,'\n  ',snip,'\n')
"
