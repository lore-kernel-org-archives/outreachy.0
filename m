X-GM-THRID: 6263794151847886848
X-Received: by 10.182.3.40 with SMTP id 8mr16260208obz.15.1458409428183;
        Sat, 19 Mar 2016 10:43:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.8 with SMTP id n8ls1164618obx.52.gmail; Sat, 19 Mar
 2016 10:43:47 -0700 (PDT)
X-Received: by 10.182.29.41 with SMTP id g9mr16556828obh.27.1458409427724;
        Sat, 19 Mar 2016 10:43:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si2886104pab.0.2016.03.19.10.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 10:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so22369667pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 10:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Bu0VMv80ocB/eFdY4tmibQhVktTfQiuD5yA2h9Y76D0=;
        b=bXHDLYpug6ocKlEVlsrZQYQ2MGakNiqjld6j56Omx1pT8HKD96wL+vh+AorXfc5oTK
         2p+5hdMOSL7eNwa/okb0DEVhpG2Fdu3bEaG2BGlJPYbbeNYg/FApyA9ynUSMZPHdaI0D
         00Px3zGEDzXV0inzimHIiyY3lsSP/nD3bzZYI+hxfE2kT/rMo9fJ/1zuWoLbQlyWt6lA
         pZJ982H5AULp9pEhlCAVXvk3cRs+FcYUxJzH14rL3/SvpouAfWrF6A8XdQ2rpf1J2vi2
         aupiv12OGHuz/DjvUhw+hCzY+yOsknP+2tpbBVkEFMIcQ220Te9J8XDZZY63x1M0MQRe
         m2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Bu0VMv80ocB/eFdY4tmibQhVktTfQiuD5yA2h9Y76D0=;
        b=CavGgniYoFgUKKnUmyr+/uU51efOqXPwDnhnCrpto//uCwc31G+OkVm/RxraSKPiok
         hsfxkPfGLRSOyFHlKUaf704ryfoW0Jf201skkZcYzbpgd08oiJeZnx7fzdkP1tRPV8s+
         PQVfCEecCSaSjXXOMMnJbHrziRXWexMhM8wb56WVctsMwp6A/9DKtw/Aof8aN4EJPny/
         tIFkxV94Dc6utqDB5KgC5DjtSM8Sb48ZvpKEa4foE6gt/31AnScuXdxhtgDDvNCOu523
         G3t5fcHypVM3rhjYQSerfj1/svDSKK1qdIT5sCOqJfIf+ofoilxDWXxtOJ//Y2x5ZxuM
         pRZQ==
X-Gm-Message-State: AD7BkJIqfQFS8VMC+y4Wy91p0IDjjt167GGjQuU1nLFywZi7Px/OngsUUkTokOovqqw5sw==
X-Received: by 10.98.15.23 with SMTP id x23mr32885255pfi.60.1458409427570;
        Sat, 19 Mar 2016 10:43:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id g28sm29394827pfd.25.2016.03.19.10.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 10:43:47 -0700 (PDT)
Date: Sat, 19 Mar 2016 16:14:30 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] Staging: rtl8188eu: Hal8188ERateAdaptive: Use x
 instead of x != NULL.
Message-ID: <320492677a8d1729404ea6a5bc6bcecc41190e97.1458382380.git.bankarsandhya512@gmail.com>
References: <cover.1458382380.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458382380.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index a108e80..201c15b 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -557,7 +557,7 @@ int ODM_RAInfo_Init(struct odm_dm_struct *dm_odm, u8 macid)
 	u8 WirelessMode = 0xFF; /* invalid value */
 	u8 max_rate_idx = 0x13; /* MCS7 */
 
-	if (dm_odm->pWirelessMode != NULL)
+	if (dm_odm->pWirelessMode)
 		WirelessMode = *(dm_odm->pWirelessMode);
 
 	if (WirelessMode != 0xFF) {
-- 
1.8.3.4


