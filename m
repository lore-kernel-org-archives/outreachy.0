X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.240.132 with SMTP id la4mr34567855icb.15.1424260057472;
        Wed, 18 Feb 2015 03:47:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.149.230 with SMTP id ud6ls5380obb.59.gmail; Wed, 18 Feb
 2015 03:47:37 -0800 (PST)
X-Received: by 10.182.50.161 with SMTP id d1mr30066815obo.28.1424260057274;
        Wed, 18 Feb 2015 03:47:37 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com. [209.85.192.177])
        by gmr-mx.google.com with ESMTPS id ks4si2485963pbc.1.2015.02.18.03.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 03:47:37 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.177 as permitted sender) client-ip=209.85.192.177;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.177 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-f177.google.com with SMTP id nh10so579276pdb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 03:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OEEaaoE0h2qLdAlpstBrdk/vYJOuzzwNsodVBVQaq2I=;
        b=CL/RPnPplP9sxeJSfe8wxtx8KsPU8g8AFVjHNHPMKvdsW4v7XhjWuWPiuvglv5b34J
         360snz4cbeghNSM8wrIFx6Fb1b3k9XAHk0ALGrFrfv80CRHprpEfdK9orBtyu5bRKQx5
         yq5lKshPohGpsLh6QiwSNfD9CuVRn/IXPDdOtYHirZchczxvFfIPssa1CTfOeRkPnF1f
         rAn0MXXNiO7ajhBKlcMeNCuiON9uu/zxsnxApqitEyn94Y3qT74FdenKu7/IqSTO7A5l
         736JI7Jl4/VlhPusy0PLGIXGY4cOBPwMnFOaLg8BLC89sgpW0o9lDdDFXjf5xyhatSnq
         ARuA==
X-Received: by 10.70.30.3 with SMTP id o3mr54960156pdh.114.1424260057141;
        Wed, 18 Feb 2015 03:47:37 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.95])
        by mx.google.com with ESMTPSA id qz3sm20719447pab.13.2015.02.18.03.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 03:47:35 -0800 (PST)
Date: Wed, 18 Feb 2015 17:17:28 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: Use put_unaligned_le16
Message-ID: <20150218114728.GA2888@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of function put_unaligned_le16.

This is done using Coccinelle and semantic patch used is as follows:

@a@
typedef u16, __le16, uint16_t;
{u16,__le16,uint16_t} e16;
identifier tmp;
expression ptr;
expression y,e;
type T;
@@

- tmp = cpu_to_le16(y);

<+... when != tmp
(
- memcpy(ptr, (T)&tmp, \(2\|sizeof(u16)\|sizeof(__le16)\|sizeof(uint16_t)\|sizeof(e16)\));
+ put_unaligned_le16(y,ptr);
|
- memcpy(ptr, (T)&tmp, ...);
+ put_unaligned_le16(y,ptr);
)
...+>
? tmp = e

@@ type T; identifier a.tmp; @@

- T tmp;
...when != tmp

Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible
with changes header file is added too.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
	-Use of variable tim_bitmap_le is removed
	-Variable tim_bitmap_le is removed
	-To be compatible with changes header file is added
	-Commit log is edited

 drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index da19145..e65ee6e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -23,6 +23,7 @@
 #include <drv_types.h>
 #include <wifi.h>
 #include <ieee80211.h>
+#include <asm/unaligned.h>
 
 #ifdef CONFIG_88EU_AP_MODE
 
@@ -78,11 +79,8 @@ static void update_BCNTIM(struct adapter *padapter)
 	if (true) {
 		u8 *p, *dst_ie, *premainder_ie = NULL;
 		u8 *pbackup_remainder_ie = NULL;
-		__le16 tim_bitmap_le;
 		uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
 
-		tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
-
 		p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
 		if (p != NULL && tim_ielen > 0) {
 			tim_ielen += 2;
@@ -137,9 +135,9 @@ static void update_BCNTIM(struct adapter *padapter)
 			*dst_ie++ = 0;
 
 		if (tim_ielen == 4) {
-			*dst_ie++ = *(u8 *)&tim_bitmap_le;
+			*dst_ie++ = pstapriv->tim_bitmap & 0xff;
 		} else if (tim_ielen == 5) {
-			memcpy(dst_ie, &tim_bitmap_le, 2);
+			put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
 			dst_ie += 2;
 		}
 
-- 
1.9.1


