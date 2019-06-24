# Miscellaneous
Misc

|脆弱性や問題点や攻撃内容|問題点（攻撃種別）|問題点の影響例|防御策|緩和策|
|:--|:--|:--|:--|:--|
|CMSやプラグインの脆弱性|バグ（RCE）|マルウェア(DL)実行|CMSやプラグインのアップデート|WAFやIPSなどで検知して遮断|
|標的型メール=>添付ファイル=>コード実行|特になし（RCE）|マルウェア(DL)実行||実行しないという認識合わせ、stager用のバイナリの実行制限、サンドボックス製品の利用|
|標的型メール=>リンク=>DbD|バグ（RCE）|マルウェア(DL)実行|ブラウザやAdobeのアップデート|リンクは踏まないという認識合わせ、stager用のバイナリの実行制限|
