X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.41.166 with SMTP id h26mr7386451yhb.37.1424403066009;
        Thu, 19 Feb 2015 19:31:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.230 with SMTP id 93ls982263qgj.75.gmail; Thu, 19 Feb
 2015 19:31:05 -0800 (PST)
X-Received: by 10.236.63.8 with SMTP id z8mr7547768yhc.15.1424403065872;
        Thu, 19 Feb 2015 19:31:05 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id xj4si2772198pbc.2.2015.02.19.19.31.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 19:31:05 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id lf10so4655226pab.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 19:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DDJglw/fxPCPjYzJvw/mTVWKZXjcOLXFatuMg4CEApI=;
        b=ZEHdY/MLis3lRf3avtH+sqfRowLYUKDdZVOxKsb7o1qPB5QTj4kEpmWJOVGlhWMTHs
         vPiYAFbEa/vdPL6VFtpjatu7kC1NnUp4C3+sAb5XSSBJmR+AhcByk8HWSk8uocsiwm+f
         kuAjzHddopMAW62zmb79GxMRZgohwnV2Tngcbvnco8Cqy1mX0VpWorEQITfDZ6uIk0Lq
         KZJrVCbaT3QJVkKvBPg81iVeVFlh34kKiP0sqr+jR4nb+gf88LoeOynoQRa0uya/7kFm
         UXXh7fveLcidKZppRCxQyDhk7g9PhYPEmAeipRtpSZCKInklDLvob6R0+o5aAYjM6Hj4
         hZAA==
X-Received: by 10.70.33.175 with SMTP id s15mr12924501pdi.166.1424403065757;
        Thu, 19 Feb 2015 19:31:05 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.68])
        by mx.google.com with ESMTPSA id v2sm25217218pdm.77.2015.02.19.19.31.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 19:31:04 -0800 (PST)
Date: Fri, 20 Feb 2015 09:00:58 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16
Message-ID: <a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424402536.git.vthakkar1994@gmail.com>
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
Changes since v2:
	-Edit commit log
	-Merge this patch in a patch-series

Changes since v1:
	-Remove use of variable tim_bitmap_le
	-Remove variable tim_bitmap_le
	-Add header file to be compatible with the changes
	-Edit commit log

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


