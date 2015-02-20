X-GM-THRID: 1080518770688
X-Received: by 10.70.132.138 with SMTP id ou10mr7586648pdb.2.1424403073786;
        Thu, 19 Feb 2015 19:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.12 with SMTP id k12ls420461iod.34.gmail; Thu, 19 Feb
 2015 19:31:13 -0800 (PST)
X-Received: by 10.66.66.108 with SMTP id e12mr7694073pat.30.1424403073530;
        Thu, 19 Feb 2015 19:31:13 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pc4si3133143pac.0.2015.02.19.19.31.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 19:31:13 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rd3so4726254pab.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 19:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0FvC61NsnQR+GSI+FVJtrucyKM+xZBIyEBciH8ygDCE=;
        b=mnCWLT/gQ2uparMgHLu06cRqNx2CokorXCnlfhK7agA5JE6K0E+maCvWLif2cqzvqx
         y9l2AgUhh2GIstEbGP0s7tCbLsXmTg6DTqo+ZIC7JQ/lSGxDrQ730s1FynSONeLcI9v+
         ujif/9HH4w6QnV05Bcy+3uZL+vl526gS/prAuGVrJH8K0cxXXF1kPgdS/rfVKPKCSuaW
         QEdkbY6cM2SYPWgBhmse7q8GWVsJo3qrufqPh49iXOT3f/zmGBWi2lzw7gh472koWLLF
         SBmgjZIMrZq1w4PQzjjN5mODAhP0cRuuCiMdQ4uX+3cQ+xMlQmKhELk415XW+QEStB8e
         smRA==
X-Received: by 10.67.10.47 with SMTP id dx15mr12994715pad.139.1424403073454;
        Thu, 19 Feb 2015 19:31:13 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.68])
        by mx.google.com with ESMTPSA id fu14sm25478677pad.44.2015.02.19.19.31.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 19:31:12 -0800 (PST)
Date: Fri, 20 Feb 2015 09:01:07 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16
Message-ID: <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
References: <cover.1424402536.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424402536.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Using byte ordering functions and then memcpy() is risky and
prone to hide errors which are hard to track down. So, this
patch introduces the use of function put_unaligned_le16 which
makes the code clear. Here, use of variable tim_bitmap_le
and variable itself is removed. Also, to be compatible with the
changes header file is added too.

Coccinelle is used to do this change and semantic patch used for
this is as follows:

@a@
typedef __le16;
__le16 e16;
identifier tmp;
expression ptr;
expression y,e;
type T;
@@

- tmp = cpu_to_le16(y);

<+... when != tmp
(
- memcpy(ptr, (T)&tmp, \(2\|sizeof(__le16)\|sizeof(e16)\));
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

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
	-Edit commit log
	-Merge this patch in a patch series

 drivers/staging/rtl8723au/core/rtw_ap.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index c6327c0..7fa4352 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -20,6 +20,7 @@
 #include <wifi.h>
 #include <rtl8723a_cmd.h>
 #include <rtl8723a_hal.h>
+#include <asm/unaligned.h>
 
 extern unsigned char WMM_OUI23A[];
 extern unsigned char WPS_OUI23A[];
@@ -72,11 +73,8 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
 	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
 	unsigned char *pie = pnetwork_mlmeext->IEs;
 	u8 *p, *dst_ie, *premainder_ie = NULL, *pbackup_remainder_ie = NULL;
-	__le16 tim_bitmap_le;
 	uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
 
-	tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
-
 	p = rtw_get_ie23a(pie, WLAN_EID_TIM, &tim_ielen,
 			  pnetwork_mlmeext->IELength);
 	if (p != NULL && tim_ielen > 0) {
@@ -143,9 +141,9 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
 		*dst_ie++ = 0;
 
 	if (tim_ielen == 4) {
-		*dst_ie++ = *(u8 *)&tim_bitmap_le;
+		*dst_ie++ = pstapriv->tim_bitmap & 0xff;
 	} else if (tim_ielen == 5) {
-		memcpy(dst_ie, &tim_bitmap_le, 2);
+		put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
 		dst_ie += 2;
 	}
 
-- 
1.9.1


