X-GM-THRID: 6263794851974742016
X-Received: by 10.66.147.133 with SMTP id tk5mr15453278pab.8.1458403387648;
        Sat, 19 Mar 2016 09:03:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.73 with SMTP id u67ls3180490qgd.85.gmail; Sat, 19 Mar
 2016 09:03:07 -0700 (PDT)
X-Received: by 10.129.27.3 with SMTP id b3mr16316627ywb.0.1458403387049;
        Sat, 19 Mar 2016 09:03:07 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id tu5si2367203pab.2.2016.03.19.09.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so22116963pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 09:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ax/Qs5sJ83KbdUy4beRiJP4Rl/PTshqgZMXty1dm0PY=;
        b=hvcJjDSw4Up0cGT/yNu3hRc/e34JGcfiLNdvR1iD3Ur5ieWfsP6n6slgPsQFqKNmBA
         KnriuRQLoKuJvuBzo8wv7CYUXK7867tZvu/IQ/ei201VB+k/BIO5V0PYXRMECQFyZSdH
         b3X79YN0KUB4Ys6ytIASOwbx2B+wlpaoqS+MIkQs8u7v7CfwJ8SybiiqDnBXqKOWu8YC
         Xu8Bqt4J3fF07m1s8X8ZpFiSQb/yuOzTBMV5CzdPFWPhfctWrFgA6kHOvN8vCc6lnx91
         5v4U4PVE1nT9I1D9hA3qzgOVh+vfgbk1AptX4jZv7JtICLgP6EQQv18EQjub+2l/SxNZ
         pRNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ax/Qs5sJ83KbdUy4beRiJP4Rl/PTshqgZMXty1dm0PY=;
        b=PYEWGCalTsh7pWV2jcxLIGJOjIFevFrauXvM5oIZVdG6e0zpQQSkHLXYujRDmGhB2S
         FMrsUsYIz9t7nSRdoLkj1eEsvhMeDk6eXe9E6b0/cZfth8hgwjxWeTDqJepFJow1bjFz
         0oe9OiAhWnX5h4d2NVXV+IgjeCLl643APezC+zBcqQxTF74iaDK/tH9FiHnRJ1liA+hl
         l5SWmv4eAx4sNVj85VLGMSsvTY570FeOa0zB54cqeazjWjy1d2TwrzKw/bHBPp/M0tbE
         xcYoHQSRoM0sbQG6nN3eIG2O0tDN20w6mNhSI7s9V1j/RcYH+hKK2SQ4D4iRgoEsWKgZ
         mRBA==
X-Gm-Message-State: AD7BkJJ464/TYRMdu1k6+6RWSe7M7yqln8UuN5BWzaEVu79TP8rRfSAmrTpZHtvqDpWIzA==
X-Received: by 10.66.140.70 with SMTP id re6mr32387661pab.100.1458403386873;
        Sat, 19 Mar 2016 09:03:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id ql1sm28992884pac.24.2016.03.19.09.03.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 09:03:06 -0700 (PDT)
Date: Sat, 19 Mar 2016 14:33:56 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: rtl8188eu: Hal8188ERateAdaptive: Remove NULL
 comparison.
Message-ID: <320492677a8d1729404ea6a5bc6bcecc41190e97.1458376695.git.bankarsandhya512@gmail.com>
References: <cover.1458376695.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458376695.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove NULL comparison.

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


