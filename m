X-GM-THRID: 3410730418176
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,680287379d66a607
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.157.134 with SMTP id d6mr3472596icx.27.1424878876468;
        Wed, 25 Feb 2015 07:41:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.202 with SMTP id y10ls1066986obl.61.gmail; Wed, 25 Feb
 2015 07:41:16 -0800 (PST)
X-Received: by 10.182.205.232 with SMTP id lj8mr3324113obc.39.1424878876298;
        Wed, 25 Feb 2015 07:41:16 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com. [209.85.220.52])
        by gmr-mx.google.com with ESMTPS id nt14si3342678pab.2.2015.02.25.07.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 07:41:16 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.52;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by paceu11 with SMTP id eu11so6025613pac.10
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 07:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=PzHUBrqPc6wR8UOBS8vqvD09cd/QErrCP8BiaHIxUVc=;
        b=IHD1H49wGpwLB612p7GtWb0AAIZP0sXgUsiJivPuQkL9U7N4PPn0d7dwTgYOL9hoci
         nDAuDgixAvxIsWzbB/awBHF+BDZy29pF3JGPV8cjyS9px8idKl3+iJSdZTcRebmXFJKg
         FE3XVtjRFczo7D2UUJ2Ani2naqiStVeyOA2VTRsnRAa59JxM8a6Ry6qivKOtmCPTqxQl
         ARHtn6XL1XuYf73DZ3I3TodT/X0vJMhcKZz0gaE7iUkc98dd4k0e6K5XCWsg8rHFYV+f
         lSO0wW8bcE7FaVgi0hHJkpq5Q3t7S5hCuJHhu7dTgGFfPW5aJ+W9dDZMn+JF8nCRSDST
         nXew==
X-Gm-Message-State: ALoCoQnRyLSiRXQ6nMvHlJP/6lQBFNDMiS3EUIG6NOepWYpwjLT0dB/778IhoFKj2Ym8FfHzx0lp
X-Received: by 10.70.124.202 with SMTP id mk10mr6302196pdb.159.1424878876071;
        Wed, 25 Feb 2015 07:41:16 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:a8:9b9c:e61:d61c])
        by mx.google.com with ESMTPSA id r8sm26127716pdp.10.2015.02.25.07.41.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 07:41:15 -0800 (PST)
Date: Wed, 25 Feb 2015 07:41:14 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8188eu: Remove unused macros
Message-ID: <67572468ef7c61261373481b50b54305c8ead4ce.1424878698.git.kdunne@mail.ccsf.edu>
References: <e068eac448bfced44fb79e2cd0b2d3848e152086.1424878698.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e068eac448bfced44fb79e2cd0b2d3848e152086.1424878698.git.kdunne@mail.ccsf.edu>
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes macro definitions that are unused elsewhere

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/rtl8188eu/include/wifi.h | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 8dbdfaf..a68b522 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -301,22 +301,12 @@ enum WIFI_REG_DOMAIN {
 #define GetPrivacy(pbuf)					\
 	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PRIVACY_)) != 0)
 
-#define ClearPrivacy(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PRIVACY_))
-
-
 #define GetOrder(pbuf)					\
 	(((*(__le16 *)(pbuf)) & cpu_to_le16(_ORDER_)) != 0)
 
 #define GetFrameType(pbuf)				\
 	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(3) | BIT(2)))
 
-#define SetFrameType(pbuf, type)	\
-	do {	\
-		*(unsigned short *)(pbuf) &= __constant_cpu_to_le16(~(BIT(3) | BIT(2))); \
-		*(unsigned short *)(pbuf) |= __constant_cpu_to_le16(type); \
-	} while (0)
-
 #define GetFrameSubType(pbuf)	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(7) |\
 	 BIT(6) | BIT(5) | BIT(4) | BIT(3) | BIT(2)))
 
@@ -333,17 +323,6 @@ enum WIFI_REG_DOMAIN {
 #define GetFragNum(pbuf)			\
 	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 22)) & 0x0f)
 
-#define GetTupleCache(pbuf)			\
-	(cpu_to_le16(*(unsigned short *)((size_t)(pbuf) + 22)))
-
-#define SetFragNum(pbuf, num) \
-	do {    \
-		*(unsigned short *)((size_t)(pbuf) + 22) = \
-			((*(unsigned short *)((size_t)(pbuf) + 22)) &	\
-			le16_to_cpu(~(0x000f))) | \
-			cpu_to_le16(0x0f & (num));     \
-	} while (0)
-
 #define SetSeqNum(pbuf, num) \
 	do {    \
 		*(__le16 *)((size_t)(pbuf) + 22) = \
@@ -370,15 +349,8 @@ enum WIFI_REG_DOMAIN {
 
 #define GetAMsdu(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 7) & 0x1)
 
-#define SetAMsdu(pbuf, amsdu)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16((amsdu & 1) << 7)
-
 #define GetAid(pbuf)	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 2)) & 0x3fff)
 
-#define GetTid(pbuf)	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) +	\
-			(((GetToDs(pbuf)<<1) | GetFrDs(pbuf)) == 3 ?	\
-			30 : 24))) & 0x000f)
-
 #define GetAddr1Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 4))
 
 #define GetAddr2Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 10))
-- 
1.9.1


