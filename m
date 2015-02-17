X-GM-THRID: 75436654592
X-Received: by 10.182.98.133 with SMTP id ei5mr11938243obb.0.1424148183276;
        Mon, 16 Feb 2015 20:43:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.231.225 with SMTP id tj1ls956426obc.7.gmail; Mon, 16 Feb
 2015 20:43:03 -0800 (PST)
X-Received: by 10.182.126.196 with SMTP id na4mr24863320obb.18.1424148183106;
        Mon, 16 Feb 2015 20:43:03 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com. [209.85.192.174])
        by gmr-mx.google.com with ESMTPS id ki8si2004948pdb.1.2015.02.16.20.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Feb 2015 20:43:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.174 as permitted sender) client-ip=209.85.192.174;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.174 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so41058406pdj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Feb 2015 20:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Bt5oONT0GoXkbtqD5fD8KRCoaMrYY66gnceNWR9/bb4=;
        b=zoD2Tc10t/yv131zHYJiztNs38CHNY6wZhQ46SlE9W9CI/o3kPbNV6M6+1rRzAXSZX
         T34Ay6ksesynCiqbSRO126BjH6KAPPTzQJnARpYBlJ8zuAT0eyZgtMNjb0N7E7nrfiBN
         NZCuFHOndFagAnogZs/AS4bOK7tGO9NKXiTkVFo22c+whyuvVnaRsIWlkXpNonewFlQa
         QnObFhT8Ucybi45s58PTuSvGEEcUfqMBFgCqen1mMdaJ0AsSY42j5J9U1kRbpGfHG/cg
         vjIgS0ATfwUdJIdh7leTtg8BF4bbz2brM1pJryBLrnyCQ/N0/n2yw2UBhhYIAJGgm5vX
         caqA==
X-Received: by 10.68.131.194 with SMTP id oo2mr46260667pbb.29.1424148182948;
        Mon, 16 Feb 2015 20:43:02 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([103.241.45.81])
        by mx.google.com with ESMTPSA id v2sm16242445pdo.69.2015.02.16.20.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Feb 2015 20:43:02 -0800 (PST)
Date: Tue, 17 Feb 2015 10:12:57 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
Message-ID: <20150217044257.GA3424@vaishali-Ideapad-Z570>
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

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index da19145..0b7b156 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -81,8 +81,6 @@ static void update_BCNTIM(struct adapter *padapter)
 		__le16 tim_bitmap_le;
 		uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
 
-		tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
-
 		p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
 		if (p != NULL && tim_ielen > 0) {
 			tim_ielen += 2;
@@ -139,7 +137,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		if (tim_ielen == 4) {
 			*dst_ie++ = *(u8 *)&tim_bitmap_le;
 		} else if (tim_ielen == 5) {
-			memcpy(dst_ie, &tim_bitmap_le, 2);
+			put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
 			dst_ie += 2;
 		}
 
-- 
1.9.1


