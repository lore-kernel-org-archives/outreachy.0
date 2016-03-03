X-GM-THRID: 6257911113762996224
X-Received: by 10.129.117.11 with SMTP id q11mr2841189ywc.3.1457033472743;
        Thu, 03 Mar 2016 11:31:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls4458186qgf.25.gmail; Thu, 03 Mar
 2016 11:31:12 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr2929650ywb.19.1457033472169;
        Thu, 03 Mar 2016 11:31:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ff2si6731754pad.2.2016.03.03.11.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 11:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id 124so20232456pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Mar 2016 11:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uvU8TmQleVCL7JVI7L8skUzso7B9b7YuHrLrBZ+wUck=;
        b=UVlwOVNJLvJX6nQL+OxiHb+ATv0ptdDskThdw2x0wenwcBodbTrvnwPtSwGunyns9g
         9l3NW6ZG+jOS43ka6Kn8d04+IfUJV4+OHIuag601SZpFRup01t+yJP8w+dFPSU6ePMMm
         RlPqqfflr1yKkwUCK1HUy2Sxjma5xDfm3SBNFuNplNOyaE3570VKzKp++1FxGdvu1jFh
         tSKWCSxYBfAyYKa2QuRTCmnKl+UtttU4xSOVN+8Pss68QIQEuIid10vXv4MsLwtHgxHi
         dDu0sGoxPaP1qdVD38NtMoX7hnnb7/nNVq/DbtNLzIxEoG+JfxrrYw/WGHwZCqL23yVa
         PmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uvU8TmQleVCL7JVI7L8skUzso7B9b7YuHrLrBZ+wUck=;
        b=kkgxiO1nD6ZOxLlebIy/RCogyEXlL9/tmPXzsCuIRRHDwyH1Fx32BEZ1ZaDdwdlQpn
         pHgHKXMCUhyz518TKYJwGGe35ItDx9xQzWN+SPWvOmkwbTX9xcJ57Vep6UZJWBYB35pa
         j4SSlJCsR3gvJYZVovjpl0e4j8M08vFibEqi4szYSRz7jMM8mYLVdXRUE0QOk2FD7eUC
         Q3UrkwYc1vBR7tGBw4ol77XJ/rouCdoW+BniSKOoHSGFd7LsPNtzpHL2B78XYxaWftUX
         69ehZwBw65DXgXTLsgpZHcXXfKRKYndZSjvbB88xke8UilIAjEu7MGa+HszF7THkydRY
         VYYw==
X-Gm-Message-State: AD7BkJLNq+NrvCdtCjXoRuoOqI5t3FaPVWSwM43UZrUNjycO8ao8/jVs5k426pQ9u/RYPg==
X-Received: by 10.98.70.80 with SMTP id t77mr6003529pfa.107.1457033471960;
        Thu, 03 Mar 2016 11:31:11 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.179])
        by smtp.gmail.com with ESMTPSA id 9sm62297232pfc.69.2016.03.03.11.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 03 Mar 2016 11:31:10 -0800 (PST)
Date: Thu, 3 Mar 2016 17:00:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: rtllib_softmac: Do not print message if
 kzalloc() failed.
Message-ID: <20160303113047.GA5576@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

As kzalloc() has its own messges, so no need of error messsge after kzalloc() failed . Also removing the NULL test whose purpose is to print the error message only and not returning any error.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 25b5b5e..0c891c8 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2980,8 +2980,6 @@ void rtllib_softmac_init(struct rtllib_device *ieee)
 	for (i = 0; i < 5; i++)
 		ieee->seq_ctrl[i] = 0;
 	ieee->pDot11dInfo = kzalloc(sizeof(struct rt_dot11d_info), GFP_ATOMIC);
-	if (!ieee->pDot11dInfo)
-		netdev_err(ieee->dev, "Can't alloc memory for DOT11D\n");
 	ieee->LinkDetectInfo.SlotIndex = 0;
 	ieee->LinkDetectInfo.SlotNum = 2;
 	ieee->LinkDetectInfo.NumRecvBcnInPeriod = 0;
-- 
1.8.3.4


