X-GM-THRID: 6209462121071116288
X-Received: by 10.66.100.166 with SMTP id ez6mr17311883pab.44.1445884928647;
        Mon, 26 Oct 2015 11:42:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.50.168 with SMTP id d8ls1951044obo.60.gmail; Mon, 26 Oct
 2015 11:42:08 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr30430197obb.34.1445884928246;
        Mon, 26 Oct 2015 11:42:08 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si3685743pac.2.2015.10.26.11.42.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 11:42:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id z6so195590846pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 11:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=EHQegRqTMswMSd+TFLq9BIy4sI+9R1oE+LpjSF4jyXk=;
        b=ci+wrPiLRyq6RUp81KKy6A7F/Vsah20ZnaDHvYr6BZySUl+FmgrphXoZkkoNqX1+cv
         pQjJK5TOqjIWqTH+0G0Pl3XdSSf6sq1JOp5Vi+mce2tCH7+Z+ySJrF5xHUj+hZzWP56p
         Q16m3H3nLdAkVVjITxOW4KY2bSeIxTlel/5ZcUY7Y3Af9jcS6B5zKr+N3hpvp2dbOlLY
         zcjX9Uuxh386+tmxKETbyeZ3wJeV4cWGw+2u5wKf2psAVwbwZsunEVDtZCeju1xBQ0d3
         8mIN/q+rA8LLABzsjmeC46WD7jscvgAqVYnLS70xHBz+PJoX8L61y9Ud7nOkWNxgWQB5
         XykA==
X-Received: by 10.68.201.200 with SMTP id kc8mr23315890pbc.18.1445884928081;
        Mon, 26 Oct 2015 11:42:08 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id c4sm35446366pat.46.2015.10.26.11.42.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 11:42:07 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: r8723au: insert correct spacing around operands
Date: Mon, 26 Oct 2015 11:42:01 -0700
Message-Id: <8a91770dbd1299bb4d4358ff2739fdb7d65a4a07.1445883001.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445883001.git.amsfield22@gmail.com>
References: <cover.1445883001.git.amsfield22@gmail.com>

Adds required spacing around operands to improve readability.
Corrects checkpatch.pl ERROR: spaces required *

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index f847374..0fb4726 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -332,13 +332,15 @@ efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 
 	/*  -----------------e-fuse reg ctrl ---------------------------- */
 	/* address */
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr&0xff));
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+2, ((u8)((addr>>8) &0x03)) |
-	(rtl8723au_read8(pAdapter, EFUSE_CTRL+2)&0xFC));
+	rtl8723au_write8(pAdapter, EFUSE_CTRL + 1, (u8)(addr & 0xff));
+	rtl8723au_write8(pAdapter, EFUSE_CTRL + 2,
+			 ((u8)((addr >> 8) & 0x03)) |
+			 (rtl8723au_read8(pAdapter, EFUSE_CTRL + 2) & 0xFC));
 
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+3,  0x72); /* read cmd */
+	rtl8723au_write8(pAdapter, EFUSE_CTRL + 3, 0x72); /* read cmd */
 
-	while(!(0x80 &rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx<100))
+	while (!(0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL + 3)) &&
+	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100) {
 		*data = rtl8723au_read8(pAdapter, EFUSE_CTRL);
@@ -361,15 +363,16 @@ efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 
 	/*  -----------------e-fuse reg ctrl ------------------------- */
 	/* address */
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr&0xff));
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+2,
-	(rtl8723au_read8(pAdapter, EFUSE_CTRL+2)&0xFC)|(u8)((addr>>8)&0x03));
+	rtl8723au_write8(pAdapter, EFUSE_CTRL + 1, (u8)(addr & 0xff));
+	rtl8723au_write8(pAdapter, EFUSE_CTRL + 2,
+			 (rtl8723au_read8(pAdapter, EFUSE_CTRL + 2) & 0xFC) |
+			 (u8)((addr >> 8) & 0x03));
 	rtl8723au_write8(pAdapter, EFUSE_CTRL, data); /* data */
 
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+3, 0xF2); /* write cmd */
+	rtl8723au_write8(pAdapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
 
-	while((0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) &&
-	      (tmpidx<100)) {
+	while ((0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL + 3)) &&
+	       (tmpidx < 100)) {
 		tmpidx++;
 	}
 
@@ -421,7 +424,7 @@ int rtw_efuse_access23a(struct rtw_adapter *padapter, u8 bWrite, u16 start_addr,
 {
 	int i = 0;
 	u16 real_content_len = 0, max_available_size = 0;
-	int res = _FAIL ;
+	int res = _FAIL;
 	int (*rw8)(struct rtw_adapter *, u16, u8*);
 
 	EFUSE_GetEfuseDefinition23a(padapter, EFUSE_WIFI,
@@ -463,6 +466,7 @@ int rtw_efuse_access23a(struct rtw_adapter *padapter, u8 bWrite, u16 start_addr,
 u16 efuse_GetMaxSize23a(struct rtw_adapter *padapter)
 {
 	u16 max_size;
+
 	EFUSE_GetEfuseDefinition23a(padapter, EFUSE_WIFI,
 				 TYPE_AVAILABLE_EFUSE_BYTES_TOTAL,
 				 (void *)&max_size);
-- 
2.1.4


