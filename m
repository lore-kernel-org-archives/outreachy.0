X-GM-THRID: 6252733430937681920
X-Received: by 10.13.203.210 with SMTP id n201mr8801259ywd.27.1455827949712;
        Thu, 18 Feb 2016 12:39:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.148 with SMTP id e20ls2248888ioi.25.gmail; Thu, 18 Feb
 2016 12:39:09 -0800 (PST)
X-Received: by 10.66.102.106 with SMTP id fn10mr8849423pab.36.1455827949389;
        Thu, 18 Feb 2016 12:39:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id yd9si1190338pab.1.2016.02.18.12.39.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 12:39:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ho8so37747817pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 12:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HLrR5U9XFm81rB27opFFwYlFmbl0bO2+Q+iLL0zf//o=;
        b=qFvCOm8rH+woWpfjQCHX5BJFujEqiZ/NvKhi5H9bRqrYI/HONjxMosN+wL6OkSitrR
         HkE1Kow6V5QOHLt4+TVUMSsYsjL5CQRa86XbWHRbbvEr8RoJxIDwPhAv8jVX2DiACiAv
         1QO0H4whGszrOSw6h/AatVaBmms7r5zfJKnKmLQNO0VkEx31T48m4lA95nvzF4tiaqA3
         sLBHJlffCFPBhF9LWJF+pV/oFPRRoF++ViiL/zwTt/HTQ6qgE1Rh67IYL6YR5+h7D2iC
         qLVLz1u0mLboBxTp9axXoMyBKwaFBZYBwDGi1aXSUFyWO1FrEn16RJskEml7XAjZywEE
         mrrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=HLrR5U9XFm81rB27opFFwYlFmbl0bO2+Q+iLL0zf//o=;
        b=hPMQogsFMlJPooxxg7Yg6NXu9eAIFOWeZE48ePwZpYODL8kdkjc4MzWkU3cYSXWiXs
         ZXCCu97z9cUilREZ8Or9XS0oN8uHkEYOSKq+99HttqHm3vfWSiupwM5bst3PQ6/dabnv
         6fNgtH7bJAkZ/DTKS6BU1xICOMazwaorqjP1pTP2OHyK7/W6LIb/9IRYbA5oTkiRfTaN
         GEP57rtwnqB/9jjnrP3d0fOf1ZoayZBu0PZlrPKFP29p2MfikFfXp4laEgMxKW2fUP60
         vf0XEU6NHAOHYaXhJtA5+KJWknz5sVFn3QXBbHnW2+O57u5vorSE/cGd35m9BSE7SIkb
         eFdA==
X-Gm-Message-State: AG10YORB8pACDy9OSqxTZqk/0kF2S0fYBJRKuXgrE+d+BZ1ykC+YNBNRB7c5+I0qc/4ipw==
X-Received: by 10.66.242.17 with SMTP id wm17mr12926156pac.155.1455827949295;
        Thu, 18 Feb 2016 12:39:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fn3sm12305036pab.20.2016.02.18.12.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 12:39:08 -0800 (PST)
Date: Fri, 19 Feb 2016 02:09:38 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: hal: Use macro ARRAY_SIZE
Message-ID: <20160218203938.GA6573@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro ARRAY_SIZE is more concise to use instead of dividing
size of the array by the size of its type.

Changes were made using Coccinelle.

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c b/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c
index dbf571e..286f3ea 100644
--- a/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c
+++ b/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c
@@ -215,7 +215,7 @@ void ODM_ReadAndConfig_RadioA_1T_8723A(struct dm_odm_t *pDM_Odm)
 	u32     i           = 0;
 	u8     platform    = 0x04;
 	u8     board       = pDM_Odm->BoardType;
-	u32     ArrayLen    = sizeof(Array_RadioA_1T_8723A)/sizeof(u32);
+	u32     ArrayLen    = ARRAY_SIZE(Array_RadioA_1T_8723A);
 	u32 *Array = Array_RadioA_1T_8723A;

 	hex += board;
--
2.1.4


