X-GM-THRID: 6392947471116402688
X-Received: by 10.99.170.76 with SMTP id x12mr5768254pgo.93.1488474165450;
        Thu, 02 Mar 2017 09:02:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.222 with SMTP id 91ls2173572iol.41.gmail; Thu, 02 Mar
 2017 09:02:44 -0800 (PST)
X-Received: by 10.36.81.17 with SMTP id s17mr2077671ita.33.1488474164275;
        Thu, 02 Mar 2017 09:02:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si874230pfz.1.2017.03.02.09.02.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:02:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so2877184pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rkMpAB5Wt5MLDg4uo8b8k4e7+z63Th5gbUHOBjLheco=;
        b=T7A3kUwck/GAzERuhP8JKBs7cex2yFT/hFZOYuhHzqzch5LxgpIDgx/LLSClDZ4KBc
         w5So/aCBqmS2/3KV651dltu5GE/TM2XW17iH2tYSdKx6/KM+x8jExSV4PR4/pymo9jC8
         5ZyCt6BmhRlGSCq4SAm7+TwJA5tsNzuKowKEouNH5EXBhYtcdAwtA03ntExFavAN6nh/
         hWkEHvjfiqqR9NEr5BhrohuhP4/7gbo9P2Nl4BFIyo10S9uNLyoPEYxZOjnRTzS3WFHz
         GNuPRhF7XfsUHuzff8cA+ZnRarqptlsoRRDx4ZM8MpaYCvpLBAKPGkcFeRG6Kp8XxyrN
         3Kwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rkMpAB5Wt5MLDg4uo8b8k4e7+z63Th5gbUHOBjLheco=;
        b=EOx1/vp/eaov5YkzDpJEOerhgIhUN5yy1Yw7gh3t43vYT0wnpO4VFaX10mx3sfqsbS
         6JOeda2ByZzZL4uUC5B/dskxrMLgc09i5/vx0IFnWWp+L6s7dnzj6QQEkJihSNwMaREE
         eQptMs4dGkm/JCr8JkqKiksH/WFEMMIIQxqur50vRoaK10kv82rNvkGnHg8tOTIKdwzL
         VFwz8o8+kl/eBYa5eZN5H8e8nqL3b3hIVLxAivsEbjSdCra44u8/FJcL+WppdVwTkqYf
         1bf5BpCnHEJ77ZPt669aYpEOTtd/Pl957hf+97qcQ3UriWMsxN5K6soKn0+N64DA7mO9
         kwqw==
X-Gm-Message-State: AMke39muNaw1ON4jRS/haMjeS+PKRdJJjxDLsvxI8ji8wV+wnlMr1od0x25UyOqNnC53bw==
X-Received: by 10.84.139.67 with SMTP id 61mr10856852plq.61.1488474164031;
        Thu, 02 Mar 2017 09:02:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id v9sm18185098pfl.102.2017.03.02.09.02.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:02:43 -0800 (PST)
Date: Thu, 2 Mar 2017 22:32:37 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: bcm2835-camera: replace printk(KERN_ERR)
 with pr_err
Message-ID: <2bc758017cfeb61511404784716e44f3fe689101.1488473946.git.aishpant@gmail.com>
References: <cover.1488473946.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488473946.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning: pr_err(...  to printk(KERN_ERR ...
For newer drivers, the convention for printing kernel messages is to use
dev_* (if device information is available) or pr_* family of macros

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
Changes in v2:
	-Prefer dev_err to pr_err where device information is available

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 46814fd..8cf7a02 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -141,7 +141,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 
 	if (changed) {
 		if (bcm2835_audio_set_ctls(chip))
-			printk(KERN_ERR "Failed to set ALSA controls..\n");
+			dev_err(chip->card->dev, "Failed to set ALSA controls..\n");
 	}
 
 unlock:
-- 
2.7.4


