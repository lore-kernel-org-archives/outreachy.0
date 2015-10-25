X-GM-THRID: 6209462121071116288
X-Received: by 10.182.33.100 with SMTP id q4mr24047073obi.35.1445753357777;
        Sat, 24 Oct 2015 23:09:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.85 with SMTP id 79ls3164020qgg.22.gmail; Sat, 24 Oct
 2015 23:09:17 -0700 (PDT)
X-Received: by 10.129.56.7 with SMTP id f7mr23791038ywa.52.1445753357369;
        Sat, 24 Oct 2015 23:09:17 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si2960451pbc.1.2015.10.24.23.09.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 23:09:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id z6so155531454pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 23:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=EHQegRqTMswMSd+TFLq9BIy4sI+9R1oE+LpjSF4jyXk=;
        b=lRIu1ljz3Qkf8gC1ipI+MNHyRSsL8wHv+5tv4sfLDrAxfHNHLXs32HSbFADNZ7jh/7
         Dfw7BPNVrmBvf940k6GsWCZrgaMNfu5lDD809OHvBFK7sVf8atclE6g48WvM2JlFYjPy
         lqmrkSC0kznr1AIuAyPcRc4adBizRQbQjAtKqQMuU1VzuWiv1XEsyj39tQxSK8lBQf41
         3+soIcMio07YaFDkl8EHKTNKB+9LX/SJoEvdZlS9Z2Rc6HVEjlyT1XQKub3e6WnWRXOW
         oQ9VUSVOsel9pEpzZFbykRkftc3GjwJe3skJQr/1ebx9DN/Ao84FO0Ocvm+JOQX/4EC5
         iUvQ==
X-Received: by 10.68.178.131 with SMTP id cy3mr14849435pbc.125.1445753357225;
        Sat, 24 Oct 2015 23:09:17 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id zi1sm27119873pbc.10.2015.10.24.23.09.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 23:09:16 -0700 (PDT)
Date: Sat, 24 Oct 2015 23:09:16 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: r8723au: insert correct spacing around operands
Message-ID: <8a91770dbd1299bb4d4358ff2739fdb7d65a4a07.1445752141.git.amsfield22@gmail.com>
References: <cover.1445752141.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445752141.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

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


