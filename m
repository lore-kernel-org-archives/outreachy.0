X-GM-THRID: 6392947471116402688
X-Received: by 10.107.53.15 with SMTP id c15mr4794398ioa.83.1488477451498;
        Thu, 02 Mar 2017 09:57:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.14 with SMTP id k14ls2185256ioe.35.gmail; Thu, 02 Mar
 2017 09:57:30 -0800 (PST)
X-Received: by 10.99.168.71 with SMTP id i7mr5612885pgp.116.1488477450901;
        Thu, 02 Mar 2017 09:57:30 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com. [209.85.192.193])
        by gmr-mx.google.com with ESMTPS id 2si919986pfz.1.2017.03.02.09.57.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:57:30 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 209.85.192.193 as permitted sender) client-ip=209.85.192.193;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 209.85.192.193 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-f193.google.com with SMTP id 67so2998287pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Vnqni+E8ieZBdU9qM8oA463+4oSSz5a9YT5KA7xXnZc=;
        b=a6HAgJ9ccJQHBhlSccTxcI2af3PoIkLr2pbSvte2udsf4+7FPJsZzcqRcfXiJxCY9C
         ArF/kKQw4svycXEOfAnUEXhRkAsnHL/xH5hvZTCTjZCChhGrBqLnFsjmM1bUcVSgtBiG
         EgINYbmef81f+UhlvAfISWszkI6W5DRWEWhrwCydufUEFj9z37zJf4fDN85jN+JzvDSp
         I67G6n6sxD5JSnVIq2DXMWdB3Bul9t2Njlqa0Fwim3b6vFaSfagdElrAP56JuAyrfxQ4
         x5mGqSHhJ8w0IIap7PkeihS1nKITSqIATBA7zh7b6PHP1eUxw+Y6z3lye7db3TSzKHQL
         3xCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Vnqni+E8ieZBdU9qM8oA463+4oSSz5a9YT5KA7xXnZc=;
        b=YNMTnUncIwkx/aFRAe0xRaac6yJMs3CvdHALpleW/uD9Xq11F6Rq7wTQurx+vgYxaw
         8ZGzmawrBdDD+uAWaVHayED0czGWVxW2vlYG8eFQRPE7jzjYRycchDZITV7uZX/ZoX23
         +1PsHG+fWLRQlpLP09jQPTv7x9zuHQytmljRA+49z09pHZ6hejdV/AGoHtxX8hXjaVLo
         0kfASCydQzuYQn9vPuCUO5a9/TZY5MfeI1umfCq+u9G+Bsn19tj2oLj53LpcQ4O101PA
         KGSZ2qpcxRZNxZz6PAXcf/+vYX5xIdzpsThKpixVm+30unf7/Eib1GRg9vZWigyxJCbT
         d/9Q==
X-Gm-Message-State: AMke39lCqA9q/uairnDVyHj+YejhY5wP9fOdJaouiiU17xq7rnoRGfU6bx0nh9bA7dSohA==
X-Received: by 10.99.213.81 with SMTP id v17mr16870004pgi.130.1488477446189;
        Thu, 02 Mar 2017 09:57:26 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id n123sm18498519pga.9.2017.03.02.09.57.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:57:25 -0800 (PST)
Date: Thu, 2 Mar 2017 23:27:19 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 5/5] staging: bcm2835-camera: replace printk(KERN_ERR)
 with dev_err
Message-ID: <9c5b6857fe9d2fd5076d099cdc950468615175c5.1488477174.git.aishpant@gmail.com>
References: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488477174.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Use dev_err(... in place of printk(KERN_ERR ...
Problem found by checkpatch

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v3:
	-Merge two if conditions
	-Edit subject and commit message
Changes in v2:
	-Prefer dev_err to pr_err where device information is available

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 46814fd..659c3d1 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -139,10 +139,8 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 		}
 	}
 
-	if (changed) {
-		if (bcm2835_audio_set_ctls(chip))
-			printk(KERN_ERR "Failed to set ALSA controls..\n");
-	}
+	if (changed && bcm2835_audio_set_ctls(chip))
+		dev_err(chip->card->dev, "Failed to set ALSA controls..\n");
 
 unlock:
 	mutex_unlock(&chip->audio_mutex);
-- 
2.7.4


