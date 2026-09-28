# 圖片來源

## img/product/ — 28 張真實產品圖
直接從各創作者自己的商品頁抓 og:image / 內頁大圖。
對應 `ways.html` 裡 ITEMS 陣列每個物件的 `img` 欄位。

| 檔案 | 內容 |
|---|---|
| `00/01-peter-mckinnon` | Lightroom Preset Master Bundle、Cine LUTs V2 |
| `03-ben-marriott` | Master Motion Design Course |
| `08-deadmau5` | Chimaera Sample Pack (Splice) |
| `09-pangram-pangram` | Neue Montreal 字型 |
| `10-omar-zenhom` | $100MBA All-Access Pass |
| `13-whitney-simmons` | Gymshark Adapt 系列 |
| `15-bts-hybe` | Weverse 小卡 |
| `16-huda-kattan` | Huda Beauty 假睫毛 |
| `17-nikkietutorials` | Nimya Brr Brr Cooling Eye Stick |
| `18-emma-chamberlain` | Chamberlain Coffee |
| `19/40-mrbeast` | Feastables 巧克力 |
| `20-logan-paul-ksi` | PRIME 運動飲料 |
| `35/36/37` | Substack：Heather Cox Richardson、Mehdi Hasan、The Bulwark |
| `44/45/50` | K-pop 見面會：MJ、TAEYANG、YUMEKI |
| `46/47/49/51/54/57` | 活動：台北攝影工作坊、Julie Bell、Mountain Lily、Kyle Lam、Below Deck、The Regency |
| `55/56` | Colin & Samir、Glossier pop-up |

抓不到圖的 23 個（多數是 Patreon / Gumroad / Walmart / Amazon，前端渲染或擋爬蟲）
維持顯示彩色縮寫。

## img/ 根目錄 — 17 張人物照 + podcast logo
| 檔案 | 人物 | 來源 |
|---|---|---|
| `emma.jpg` `grace.jpg` `moriah.jpg` `ali.png` `coffee.jpg` `dimei.jpg` | 六位個案 | 媒體 CDN |
| `wiki-*.jpg/png` | MrBeast、Nikkie、Huda、deadmau5、Logan Paul、Ryan Trahan、Emma、Grace | Wikimedia Commons（CC BY-SA） |
| `joe.jpg` `coffeez.jpg` | Joe Budden、Coffeezilla | Wikimedia Commons（CC BY-SA） |

## 換圖
`ways.html` — 直接改 ITEMS 每個物件的 `img:"..."` 欄位
`index.html` — 個案卡改 `photo:'...'`；59 種節選改 PEEK 陣列的 `photo:'...'`

規格：至少 640px 寬，4:3 或 1:1，副檔名要跟實際格式一致。
