# 东方Project 热门二创（人声向）50 首 — 网易云下载

- 账号：丝庭阁（vipType=11，VIP 有效）
- 时间：2026-11-24
- 来源：网易云音乐官方接口（`/api/search/get`、`/api/song/enhance/player/url`、`/api/v1/album`）
- 编码：全部 **MP3 320 kbps 原码直取**（`source=direct-mp3`，未二次转码），ID3v2.3 已写入标题/艺人/专辑/来源注释
- 规模：50 首 / 510.7 MB / 约 3 小时 42 分

## 选曲口径

1. 关键词检索 + 已知东方同人社团/歌姬曲库（幽閉サテライト、senya、Stack、のみこ、IOSYS、COOL&CREATE、森羅万象、暁Records、GET IN THE RING、あやぽんず* 等）
2. 排除纯音乐：按网易云专辑名/标签判定 `纯音乐 / Instrumental / インスト / カラオケ / off vocal / 伴奏 / BGM`，命中即剔除；同时排除以器乐为主的社团（Foxtail-Grass Studio、TAMUSIC 等）
3. 热度排序：以歌曲评论数作为热度指标，取前 50

被剔除的典型纯音乐/器乐专辑曲目：`みかん箱 / Foxtail-Grass Studio - 雲流れ`、`IOSYS - エンドレス・てゐマパーク`、`IOSYS - 断罪ヤマザナドゥ!`。

## 曲目 Top 10（按热度）

| # | 评论数 | 曲目 | 艺人 |
|---|---|---|---|
| 1 | 67690 | Bad Apple!! | のみこ |
| 2 | 27845 | Thank you for dears. | GET IN THE RING |
| 3 | 17941 | 色は匂へど 散りぬるを (Full Version) | Senya |
| 4 | 17727 | なのです! | ななひら / 宇佐美宏 / IOSYS |
| 5 | 17044 | Mermaid girl (Extended RRver.) | Senya |
| 6 | 16755 | カゲロウ | Stack |
| 7 | 13264 | Bad Apple!! | のみこ（EXSERENS 版） |
| 8 | 12902 | 酔恋花 -suirenka- | Stack |
| 9 | 10494 | 華鳥風月（幻想万華鏡 花の異変の章 OP） | Senya |
| 10 | 10273 | 大地に咲く旋律 | 幽閉サテライト |

完整 50 首见 `tracklist_netease_vocal.csv`。

## 文件

```
music/
├─ touhou50-netease-vocal/            50 个 MP3（序号. 艺人 - 曲名.mp3）
├─ Touhou50_Netease_Vocal.m3u8        顺序播放列表
└─ tracklist_netease_vocal.csv        序号/曲名/艺人/专辑/评论数/码率/时长/大小/文件名/来源
```

## 说明

- 全部曲目实际取到的是 `type=mp3` 的 320 kbps 流，没有出现网易云加密的 `.ncm` 专属格式，因此不需要解密转换
- 环境里为判断人声临时装的 torch / demucs / torchaudio / scipy 等已按你的要求全部卸载，原有 numpy、requests 保留
- 登录 Cookie 仅在本机脚本中使用，未写入任何交付文件