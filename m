X-GM-THRID: 6394409513300000768
X-Received: by 10.13.198.2 with SMTP id i2mr7135677ywd.116.1488814533083;
        Mon, 06 Mar 2017 07:35:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls2500323itc.10.gmail; Mon, 06 Mar
 2017 07:35:32 -0800 (PST)
X-Received: by 10.98.139.154 with SMTP id e26mr3964688pfl.30.1488814532490;
        Mon, 06 Mar 2017 07:35:32 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si86406pfd.3.2017.03.06.07.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:35:32 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so7328768pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jZ1ij2dXxv8lGJGBL1AwJg6fByUPLa67MSJ2+31LM9M=;
        b=NxWjWtymxaqe9XfCq9+wRoWoc4kLGjC1ZLXML2jitFeiLt13SXHY3EvOU+apSIiTtN
         K0FhngC+/MZ0MjScGocYCsESVPqkzOgRKZS5GzTXR4BgJkyrgpNTNbbwt0+Bs32aw3nG
         laQ5ke+7yUZaaUpzSL3gmlxD6vRir3GaiRIjWg/FU/Ns+MMj/io6vq8DNsa5q12m6L35
         J/cQtytUhXmZiUZxCgZ4GF1+1M71RcNOJhGwiJ01PH4qQJmzHd1cR8Yw1XS6jIR9MfDL
         rCUDB4feu0zDtXmnc0QYp4qUHmKTWWQPaBTjAgUo9ylh7KCtUTwmGNA8pGm7WCavaamA
         zVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jZ1ij2dXxv8lGJGBL1AwJg6fByUPLa67MSJ2+31LM9M=;
        b=tFiMV86w9XDwhci6yjqjs7WuRNjn80UbJupQSOkQnc7CP/Ei6x6iYZmmMhInrDcdVx
         AM4mrpmSzGI7rKLM9+y6Gn86fiWvwELjoFxTb3gUlQSARf3EUAmLhIcvVe8vNfFWqaiD
         aHzklIdaWZbH0kr93OAF2+RfY//TziMlo1QI9/uxOW90vee36vzpOgvS9Wo4v2MFtBMH
         iMjYoobD94Ifzpwh0smXF+w/39jVNqQuhD43Rz7CR0IWjEjFbjj/SOr3+OV5V66TS/3Q
         LOoWPJyVjwLbs2IAV7YSIcCgLwoW83rvUhrvCNep4kfpftKJRaJsAWxXKMnS+Nj50/AM
         88CQ==
X-Gm-Message-State: AMke39njlHGboZQFVq+41ctnbZjdi8N+HnSbN4TRezAaxtrN9Z8Gt/VNVNwO45jLrnPSeg==
X-Received: by 10.84.217.215 with SMTP id d23mr27437694plj.33.1488814532306;
        Mon, 06 Mar 2017 07:35:32 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id e7sm29332621pgp.2.2017.03.06.07.35.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:35:31 -0800 (PST)
Date: Mon, 6 Mar 2017 21:05:12 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: bcm2835-audio: remove unused semaphores
Message-ID: <3751b0b72869975ee0e829f6aaedf3b6f044452d.1488814329.git.aishpant@gmail.com>
References: <cover.1488814329.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488814329.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes initialisation of unused semaphores
alsa_stream->buffers_update_sem and alsa_stream->control_sem

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index f4ce4801dc..c0a511e 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -154,8 +154,6 @@ static int snd_bcm2835_playback_open_generic(
 	alsa_stream->substream = substream;
 	alsa_stream->idx = idx;
 
-	sema_init(&alsa_stream->buffers_update_sem, 0);
-	sema_init(&alsa_stream->control_sem, 0);
 	spin_lock_init(&alsa_stream->lock);
 
 	err = bcm2835_audio_open(alsa_stream);
-- 
2.7.4


