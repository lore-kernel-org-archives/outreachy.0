X-GM-THRID: 411471708160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,82a0d380676b09c2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.61.132 with SMTP id p4mr3421133igr.7.1424289411708;
        Wed, 18 Feb 2015 11:56:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.138 with SMTP id 10ls236789qgx.47.gmail; Wed, 18 Feb
 2015 11:56:51 -0800 (PST)
X-Received: by 10.236.202.84 with SMTP id c60mr995810yho.46.1424289411539;
        Wed, 18 Feb 2015 11:56:51 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com. [209.85.192.173])
        by gmr-mx.google.com with ESMTPS id xj4si2270905pbc.2.2015.02.18.11.56.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 11:56:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.173 as permitted sender) client-ip=209.85.192.173;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.173 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so3361879pdb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 11:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZlrnSXvMyqler7OjM3euyNHp6M4DEZnoNXhVfbQGV/g=;
        b=xL2K0i+7/FbZ/w7FWQ2lpx2h25ya1BOKJoaO5Lw7aMT/6+a/nNhZoAXDedGKyUZ/9h
         Wc4sN80tBTEKP3PJ+dXm3pKx0N7S6JjNoBbw90VlzwZ9/VTy2mpnl8g5x197s4hOM6nB
         D/0ajSZ5hzuEX0hMq+uu59OfXn88XKqE16DvXkWRhlnJZ8hKgix4047Ug6DfJYsD41Fd
         2U3nmyrWH6+h2nNSIux3J5NhRwQ5rlnFIzADUOmD8UWFaz0ykOAky6CqbKAg7M7PGkFB
         IFbiJb/foVfMVaqcZVhxlbz217wddeg3wmHaotfZ6gtAWejLI73tOZyvy0Zof2NRkfyd
         E22g==
X-Received: by 10.70.128.173 with SMTP id np13mr1468588pdb.15.1424289411359;
        Wed, 18 Feb 2015 11:56:51 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.95])
        by mx.google.com with ESMTPSA id a14sm5772152pbu.51.2015.02.18.11.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 11:56:50 -0800 (PST)
Date: Thu, 19 Feb 2015 01:26:39 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723au: Use put_unaligned_le16
Message-ID: <20150218195639.GA3189@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Using byte ordering functions and then memcpy() is risky
and prone to hide errors which are hard to track down. So,
this patch introduces the use of function put_unaligned_le16
which makes the code clear.

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

Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible with
changes header file is added too.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
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


