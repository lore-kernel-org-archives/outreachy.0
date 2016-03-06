X-GM-THRID: 6257911113762996224
X-Received: by 10.182.196.101 with SMTP id il5mr181976obc.26.1457278003653;
        Sun, 06 Mar 2016 07:26:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.182 with SMTP id c51ls995980qga.60.gmail; Sun, 06 Mar
 2016 07:26:42 -0800 (PST)
X-Received: by 10.129.156.66 with SMTP id t63mr13264267ywg.38.1457278002972;
        Sun, 06 Mar 2016 07:26:42 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id yd9si2324950pab.1.2016.03.06.07.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:26:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 63so6435640pfe.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OD9ww757+W5Mx0t9je39VyymWYegMPKXDudlSZm06wU=;
        b=tp7sWbK/Q9ZScbiXCQzPM8PVeA4mGDcI73qmDkO1VG2TuU49QcIgdcfIwtFuWlBT4X
         +iYG0OxoXNUv7Dv8uJcljrWq4xYYoIpXREcuwjiZenq9tzbCrAekSm1plr72DlFjWt+P
         jpZTHbK72iJnUk+JREUG7E5jzzsfMsf0jiUUIF3vls5L2FS9CKMt7MaYnQHHLHsL44vC
         HFQCCebECcmngw+G5raG92Lo53RS8TrOjTF1IlQtCgzrWGPiKGkRlBXecKKSSFL1zrPo
         vDfl1tYmxebBJfsWrbNKvu4U5x9E/pk4120TjYX84xHoxDmvy6uZAKqyqk8g/vc0oZ3s
         jERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OD9ww757+W5Mx0t9je39VyymWYegMPKXDudlSZm06wU=;
        b=XHH9JglQW4ORYS1/VO9WjhxMRy0X/xjpVL5ihW+9i8hblWciHtSkRvviHXs4gqj+T1
         NWSIXTHByB0UrW2/YGuqvQR8trxrhisFbbri8c1gmb/op/Nim7/6aZ6KFepbQagXFW8h
         NPuEdVnGHRw/oK/kM8za+n5bkT6prqArZNdStWl8af5RUxvrxdiDxbWqMkiEIJG1w40W
         R9zIeH2NsDPBnhDrfoSu52GXQZv83gSH0N1HGULs6M6jX7ELn7/+/49p1HK9d3VM9Vq7
         6ZuVTIAEef0UPVdCgbuAJcdBM6LoceeC17iVAhkSinXIq6rwM7QRMFC/MSW1BZGucyfR
         7tOg==
X-Gm-Message-State: AD7BkJJr5H7rh5b3c7SSyLpNY38sK+Rde70EheLuPkkus0spHhE20/6GyecG//Neu/Wk2Q==
X-Received: by 10.98.89.22 with SMTP id n22mr27120075pfb.55.1457278002799;
        Sun, 06 Mar 2016 07:26:42 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id v3sm18412485par.17.2016.03.06.07.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:26:42 -0800 (PST)
Date: Sun, 6 Mar 2016 12:57:01 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8192e: rtllib_softmac: Do not print message
 if kzalloc() failed.
Message-ID: <20160306072701.GA31612@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

As kzalloc() has its own messges, so no need of error messsge after kzalloc() failed . Also removing the NULL test whose purpose is to print the error message only and not returning any error. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

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


