X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.203.161 with SMTP id f21mr8579249yho.49.1424422124826;
        Fri, 20 Feb 2015 00:48:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.35 with SMTP id e35ls749346iod.99.gmail; Fri, 20 Feb
 2015 00:48:44 -0800 (PST)
X-Received: by 10.66.97.38 with SMTP id dx6mr8018611pab.39.1424422124050;
        Fri, 20 Feb 2015 00:48:44 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ki8si3206166pdb.1.2015.02.20.00.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 00:48:44 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so6563803pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 00:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DDJglw/fxPCPjYzJvw/mTVWKZXjcOLXFatuMg4CEApI=;
        b=WWXHMvBLZ2Xt81taMVqKxCKqkLUxox3p5IMDhGaQXHSmuYcpfv4a7XzNZCwMGtoEbS
         KAY8gxoYNXPX6gY3CA5+8pWoLRAfrArkP2e9gcrbSYWzUwBpwjNaUA2yKzVyGi6vzqLu
         lDmvib42AlJLtPgYJt+MjDc3RH3p6Rs0KkO0FB063XYDmOp+CLNgUXztevNAswLWv1sN
         yjEhgicu77ef4j4aPP7atyyDQU4PUK9LOpqsAS1KmG2dn5Hzxe7TAsB/Co/nTi9ViVEx
         zP4ara1pUo4XWwqbnclzVEy1PaGTqn7ZtGYsnXQ+tXrJDu/qOUw4A6/42iLNV41eFWJH
         EW5A==
X-Received: by 10.68.204.39 with SMTP id kv7mr14876091pbc.49.1424422123963;
        Fri, 20 Feb 2015 00:48:43 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.6])
        by mx.google.com with ESMTPSA id k5sm26189260pdn.45.2015.02.20.00.48.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 00:48:42 -0800 (PST)
Date: Fri, 20 Feb 2015 14:18:37 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16
Message-ID: <a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424421580.git.vthakkar1994@gmail.com>
References: <cover.1424421580.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424421580.git.vthakkar1994@gmail.com>
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


