X-GM-THRID: 3410730418176
X-Received: by 10.236.3.106 with SMTP id 70mr3435404yhg.20.1424878840095;
        Wed, 25 Feb 2015 07:40:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.228 with SMTP id 91ls3429003qgh.14.gmail; Wed, 25 Feb
 2015 07:40:39 -0800 (PST)
X-Received: by 10.52.88.67 with SMTP id be3mr3409113vdb.3.1424878839936;
        Wed, 25 Feb 2015 07:40:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com. [209.85.220.46])
        by gmr-mx.google.com with ESMTPS id bo1si4950773pbc.0.2015.02.25.07.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 07:40:39 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.46;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by mail-pa0-f46.google.com with SMTP id fb1so6044769pad.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 07:40:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8m0Qxqmn2MuElffhQqhb3qCL4+go/mqeq8bk2xhvRBM=;
        b=Q+3gyjWSHQTVFOvTzcFhDZ2pO25djvkyB4VBip+bNCxRYO/LSmN1TDRBiTBaf4QDPi
         jJIDU8HA1RU8FJBHWE+jFLUMFinrHh1DdT664CU4fm9GY054cW1QmkCizPfSTSwcI9w2
         ZbEeQ2DwHl92dHHtjD8oKbifiRggXe2JgTENvT2oz6VAuNokOskUnkcZdfNlp+UZfl27
         JE/bOyAp7pXHrAHs1gS00MHhZD0KZUwdntveKAAeC22WE55RG/apL0ogBwk5aV0Yanjc
         rl1G9FCfHyGmfIXTQGfJS69Y5ERiAGr5DNuheu33vurNSMU6Ze5wzK0D4/XjHJln/k+n
         ukPQ==
X-Gm-Message-State: ALoCoQm1/Mmqq+IeFR0EtOC41uGpnzwtC8f2s1yoyBzsltk0f64gni3h1WTvJqsIuwqT0Z00XWRM
X-Received: by 10.68.95.130 with SMTP id dk2mr6343934pbb.51.1424878839733;
        Wed, 25 Feb 2015 07:40:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:a8:9b9c:e61:d61c])
        by mx.google.com with ESMTPSA id ms5sm41610101pbb.59.2015.02.25.07.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 07:40:39 -0800 (PST)
Date: Wed, 25 Feb 2015 07:40:37 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8712: Remove unused macros
Message-ID: <e068eac448bfced44fb79e2cd0b2d3848e152086.1424878698.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes several macro definitions that are unused
Patch 2 will remove the same definitions in rtl8188eu/include/wifi.h

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/rtl8712/wifi.h | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 356059b..33b2d89 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -235,11 +235,6 @@ enum WIFI_REG_DOMAIN {
 #define GetPrivacy(pbuf)	(((*(unsigned short *)(pbuf)) & \
 				le16_to_cpu(_PRIVACY_)) != 0)
 
-#define ClearPrivacy(pbuf) ({ \
-	*(unsigned short *)(pbuf) &= (~cpu_to_le16(_PRIVACY_)); \
-})
-
-
 #define GetOrder(pbuf)	(((*(unsigned short *)(pbuf)) & \
 			le16_to_cpu(_ORDER_)) != 0)
 
@@ -263,16 +258,6 @@ enum WIFI_REG_DOMAIN {
 #define GetFragNum(pbuf)	(cpu_to_le16(*(unsigned short *)((addr_t)\
 				(pbuf) + 22)) & 0x0f)
 
-#define GetTupleCache(pbuf)	(cpu_to_le16(*(unsigned short *)\
-				((addr_t)(pbuf) + 22)))
-
-#define SetFragNum(pbuf, num) ({ \
-	*(unsigned short *)((addr_t)(pbuf) + 22) = \
-	((*(unsigned short *)((addr_t)(pbuf) + 22)) & \
-	le16_to_cpu(~(0x000f))) | \
-	cpu_to_le16(0x0f & (num));     \
-})
-
 #define SetSeqNum(pbuf, num) ({ \
 	*(unsigned short *)((addr_t)(pbuf) + 22) = \
 	((*(unsigned short *)((addr_t)(pbuf) + 22)) & \
@@ -299,17 +284,9 @@ enum WIFI_REG_DOMAIN {
 
 #define GetAMsdu(pbuf) (((le16_to_cpu(*(unsigned short *)pbuf)) >> 7) & 0x1)
 
-#define SetAMsdu(pbuf, amsdu) ({ \
-	*(unsigned short *)(pbuf) |= cpu_to_le16((amsdu & 1) << 7); \
-})
-
 #define GetAid(pbuf)	(cpu_to_le16(*(unsigned short *)((addr_t)(pbuf) + 2)) \
 			& 0x3fff)
 
-#define GetTid(pbuf)	(cpu_to_le16(*(unsigned short *)((addr_t)(pbuf) + \
-			(((GetToDs(pbuf) << 1)|GetFrDs(pbuf)) == 3 ? \
-			30 : 24))) & 0x000f)
-
 #define GetAddr1Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 4))
 
 #define GetAddr2Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 10))
-- 
1.9.1


