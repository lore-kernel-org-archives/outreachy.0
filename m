X-GM-THRID: 6392863906268708864
X-Received: by 10.157.4.43 with SMTP id 40mr4421849otc.13.1488454820274;
        Thu, 02 Mar 2017 03:40:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls6997538ota.32.gmail; Thu, 02 Mar
 2017 03:40:19 -0800 (PST)
X-Received: by 10.157.13.131 with SMTP id 3mr4675900ots.59.1488454819866;
        Thu, 02 Mar 2017 03:40:19 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si1384118pfk.5.2017.03.02.03.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:40:19 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so9115926pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RRBJPFjoF+6T1Agupsbt3xWY/74ZSV3UJXH1ES3Lie0=;
        b=BJVx3rdjSUirueGEmyd2wZkYPnM5Jy7jyl8qZvYOt+jGOhsLYpy8RMSwhB08Tt6xbs
         sBEiXkLITDCMumAWMwbd5t8Pi2+ij8j0RccPmCHehqW99RUiwMoFheoXofdeUqmP3I5q
         acl+Bf/1bDf2iZRGKRbXF0N1lRwNY3FRao6AjuZty1/lWYoG9VRS7pAYYres1mthCfBv
         UepS/4QQoUrJ1XdAGFBVXkgnEeRyAWNWqwKwP16WCgdz/6vMMn5B+1ATPSSjilc/+Ulr
         A9INT8riUS5NhTMHvq6LuuzNoefgzL5y2KYKWwBgTFZe6AIE5L4ZR1ztSKx6Px6txxi6
         hLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RRBJPFjoF+6T1Agupsbt3xWY/74ZSV3UJXH1ES3Lie0=;
        b=dXI+66oeT3DRrMauWBxjRhQDA7hZN0SywB0fy1sa7VJJNuk23HUnX1Pxwb9wS3vHVO
         JIp8Upq9vTMUop6wmoK/cpIs2rJi/ooC/9mVTsBMcgH9Wn5oKwKfJpgX8qq16ELvTazN
         Jc6Ar8IDHQPPpjAREJiyRhGO6xWYQehlyUSHv8TtqmcvmJi0Frc79df56rLfB3cFHgPp
         o/Qmq0engyY516yUSSztyQX4OTzNq0e0bI9yIHCuu/i4TpixknHZJBzyHd0ZYaDKHVTQ
         caerOmrDj+ySI+mUusujsN5q2u8BnZeeihhquVHTlNpKx2+RTSfswwXfEeam6e1ZY0Js
         PdHg==
X-Gm-Message-State: AMke39kQ8PdrcoMS1r93ijietBDHScU5gWwDw72aXdk/kxrgc1F/yhbg0YOYryq2YdfmMg==
X-Received: by 10.98.101.71 with SMTP id z68mr15165146pfb.25.1488454819646;
        Thu, 02 Mar 2017 03:40:19 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id s3sm16712466pgn.55.2017.03.02.03.40.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:40:19 -0800 (PST)
Date: Thu, 2 Mar 2017 17:00:22 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: bcm2835-camera: replace printk(KERN_ERR) with
 pr_err
Message-ID: <873ea58099cfe40f563436342aba1ea5e0f12507.1488453518.git.aishpant@gmail.com>
References: <cover.1488453518.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488453518.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning: pr_err(...  to printk(KERN_ERR ...
For newer drivers, the convention for printing kernel messages is to use
pr_* family of macros

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 46814fd..21eaba9 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -141,7 +141,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 
 	if (changed) {
 		if (bcm2835_audio_set_ctls(chip))
-			printk(KERN_ERR "Failed to set ALSA controls..\n");
+			pr_err("Failed to set ALSA controls..\n");
 	}
 
 unlock:
-- 
2.7.4


