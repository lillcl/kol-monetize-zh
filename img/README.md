# 圖片來源 / Image credits

## 已有照片（14 張，2.7MB，全部本地，640px）

| 檔案 | 人物 | 來源 | 授權 |
|---|---|---|---|
| `emma.jpg` | Emma Chamberlain | sagefinder CDN | 媒體照 |
| `grace.jpg` | Grace Beverley | Insider CDN | 媒體照 |
| `moriah.jpg` | Moriah Elizabeth | bookingagentinfo | 媒體照 |
| `ali.png` | Ali Abdaal | proassetspdlcom CDN | 媒體照 |
| `coffee.jpg` | Coffee Lam 林芊妤 | HK01 CDN | 媒體照 |
| `dimei.jpg` | 滴妹 | mirrormedia MG | 媒體照 |
| `wiki-emma.png` | Emma Chamberlain | Wikimedia Commons | CC BY-SA |
| `wiki-grace.jpg` | Grace Beverley | Wikimedia Commons | CC BY-SA |
| `wiki-mrbeast.png` | MrBeast | Wikimedia Commons | CC BY-SA |
| `wiki-nikkie.jpg` | Nikkie de Jager | Wikimedia Commons | CC BY-SA |
| `wiki-huda.jpg` | Huda Kattan | Wikimedia Commons | CC BY-SA |
| `wiki-deadmau5.jpg` | deadmau5 | Wikimedia Commons | CC BY-SA |
| `wiki-loganpaul.jpg` | Logan Paul | Wikimedia Commons | CC BY-SA |
| `wiki-ryan.png` | Ryan Trahan | Wikimedia Commons | CC BY-SA |

Wikimedia 圖片為 CC BY-SA，若要商業使用請在頁腳加上出處與作者連結。

## 怎麼換成自己的照片

照片在 `index.html` 和 `ways.html` 兩個地方對應：

### index.html — 6 位個案
```js
photo:'img/emma.jpg'   // 直接改這行
```

### index.html — 診斷結果的對標創作者
```js
const PHOTO={
  'Emma Chamberlain':'img/emma.jpg',
  'Ryan Trahan':'img/wiki-ryan.jpg',
  // 鍵必須完全符合 BM 陣列裡的名字
};
```

### ways.html — 59 個案例
```js
const PHOTO={
  'Ali Abdaal':'img/ali.png',
  'MrBeast':'img/wiki-mrbeast.png',
  // 鍵必須完全符合 ITEMS 裡的 kol_name
};
```

**規則**：有路徑就顯示照片，值是 `''` 就顯示彩色縮寫。兩邊 key 都對不上會靜默 fallback 到縮寫，不會壞掉。

## 建議規格
- 4:3 或 1:1，人物臉在畫面上半部
- 至少 640px 寬
- JPG 或 PNG 都行，副檔名要跟實際格式一致（PNG 存成 .jpg 瀏覽器多半能跑，但會有 MIME 錯誤）

## 加新照片
```bash
curl -L -o img/newname.jpg "https://..."
sips -Z 640 img/newname.jpg --out img/newname.jpg
```
