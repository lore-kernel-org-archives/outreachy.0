X-GM-THRID: 6470748769991262208
X-Received: by 10.99.44.72 with SMTP id s69mr543610pgs.85.1506588601771;
        Thu, 28 Sep 2017 01:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.223.28 with SMTP id u28ls1005234pfg.4.gmail; Thu, 28 Sep
 2017 01:50:00 -0700 (PDT)
X-Received: by 10.101.73.198 with SMTP id t6mr577377pgs.181.1506588600773;
        Thu, 28 Sep 2017 01:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506588600; cv=none;
        d=google.com; s=arc-20160816;
        b=Xxrz8ZQK5F6C3JfKfJeAcSx9+qM8Y22tXYiMpqFLu6KO6zgVezdt570sQRX3I18nCB
         Tb+PzIAFYiek/woPCbH+O+QTRpkWcrSKiu5AgvquV3o8UhTQ5kX+vrRI8weiQR/RDZLP
         Lm2i3xzkM5jT5Lb5mnkvMCDulHDmNq8Xql+agH0zMoc32C2HU5yd2Fbk5s+zbr5GQ4xV
         1i5tfVeDfwvqN0u5zHjFaiFxZcv3bMg9zqlaSLSn2AZ/ri64rp3U94IU9sfFeoi6ZBPX
         18cHLzqlUCMpbrcUPy1olO+7AZ1eYM+SxQHnZkNKMc1WvndOXwAgc5zr4+Ie82JGvq+g
         dtZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=WzVP/hKR71JC+C/gN9kiZEyR9WU4ooob5rNLFmZAOHE=;
        b=yp01M3NJhxEWiyta2nu6mGeLB/X+4gr+cbKVY3TSKOtjTScIr9vvfGTNlfRPGBQCQH
         5h09tm/eyVSsfD33rLRrpB/LvwoNjR9NZpLBzeyguaOBrAYhwOI2PALYZmPNiPMEY6Qi
         Ekgeg2uI3vYCAYM0AJQLEQUslnAyi5/O1fPlCe/NnrNDqbtGFba+80IbCOGiOIn9/MjD
         jUPyT2lIH2D/Cs+d5Tg0CcG/SOdj86cM0t9yZ1QIjyqBAY1yvlqY4sYJnvCfg/pRmscA
         xvvlex1AGBcgf9b3w4oAG2wONRLPFzH7r5ijnqEtBNLFgF639fmdvcBT2WSpoCxkYsG0
         HYWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I6L7NB7A;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id d207si130406pfd.16.2017.09.28.01.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 01:50:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I6L7NB7A;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 125so935820pgj.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 01:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WzVP/hKR71JC+C/gN9kiZEyR9WU4ooob5rNLFmZAOHE=;
        b=I6L7NB7AtQM+PxU+doS39ka+qR1FidtLquzzKqpZ/USKIrFINmXecxVuaD1z/9QcH6
         2dRq+FUo1ygrrNTfgoZO6xoJ+Bz0menQc0Dz0Lx7OpHEAG7/9nCv22ttYtBRhvOt3je7
         WX10R+bkGYiKsG8YOQCy8ejnSmQfcNzSvYFB00ggbOim+VAJp0wp8RvdQ2sDcYRRMegd
         NwNetHAQjKTISSfZGmXjbUMOKIETid1nnPvYh05F0u6jkk4+fwPmQlk0XDyPlsygqWUx
         xrIOXX9gNdeJExH99+M57kBcDpA/LqeB0OzZGYNcc7CQj1h58f7t9WkHy3Vb3XvDgdGk
         dGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WzVP/hKR71JC+C/gN9kiZEyR9WU4ooob5rNLFmZAOHE=;
        b=tX7LvdzOMfmJxlTrtxbtGwRAoFuoiq728WcSi919kYVI3o2Kg5Y0JllLKTmUxgWhrZ
         aGXat6VjIP1bSK6JFSHSkqv+s1PYLB/bnHmWN8jf8BJNWAheQlgmFwufDGXkX6uadDsA
         m381rdNWDnXRbyNRHCE7kawALfNERBb3u3FQN394Ws/BiWd4X6vZUAj9dipwW47R/QZi
         voEenwpC6ZdYFd71mgMWMsNsjSiBb+DgLQE8854nqbyyBbx7MjqxzMdJfuZXJVsK9AjL
         0S1nv1G7Qkhk2HuX2AQ6wmkbkNacIvTEG99u1gLw1zMkHk0Rui0rsAHSGXgGg/a5TPy8
         woHA==
X-Gm-Message-State: AHPjjUjZNAl6P++JWHZK/wdewPHxb6dhlyz+aPENtwDwBdXfllTAd+aU
	APuY24gLGSu7SDETcMS/vWzLxycV
X-Google-Smtp-Source: AOwi7QCBMlqSh7y90DVN9Cm5rh8ztpP7bcYRL46kgrSGnn/LwEsEF038zVJgSRZeFiWNmrh6E/iwHA==
X-Received: by 10.84.191.129 with SMTP id a1mr3436669pld.272.1506588600554;
        Thu, 28 Sep 2017 01:50:00 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id 5sm1978372pfr.151.2017.09.28.01.49.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 01:50:00 -0700 (PDT)
Date: Thu, 28 Sep 2017 14:19:54 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vc04_services: remove unused variables control and
 status
Message-ID: <20170928084954.GA4170@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

the volatile variables control, status are not
used. Delete them.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index 379604d..f1e43e4 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -123,8 +123,6 @@ struct bcm2835_alsa_stream {
 	struct snd_pcm_indirect pcm_indirect;
 
 	spinlock_t lock;
-	volatile unsigned int control;
-	volatile unsigned int status;
 
 	int open;
 	int running;
-- 
2.7.4


