X-GM-THRID: 6394250573317668864
X-Received: by 10.36.124.71 with SMTP id a68mr3288302itd.13.1488777476384;
        Sun, 05 Mar 2017 21:17:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls11558567ota.23.gmail; Sun, 05 Mar
 2017 21:17:56 -0800 (PST)
X-Received: by 10.157.55.198 with SMTP id x64mr6057231otb.110.1488777476033;
        Sun, 05 Mar 2017 21:17:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si1177637pfd.3.2017.03.05.21.17.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 21:17:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so5514042pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 21:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HpMaQiZzt7ad7PvYl91fZy9JjkqLoFVV73zDsIrOTo8=;
        b=aKwl1+ld4epqxaSGmDA+fMfatXJfOLN0RF/gtA0pTFSMsul61Wtwi+tiVmvNErZWG2
         ca69ybWS5fAXaXk620ae0T6Ynpj+j5fNOwfJjVPfxbTnYyU1Ddn2N1T4N2SyDJDtDN5g
         KfUa4mv5eu1y59BoGutmYWUw4FqL58WtEQEMDBFwJOFBJB5XMcQvtWHxTFn5+ahsnTYH
         3WLq3uqXDDN+EnEtiZ9LswXfJSESRWxKTHQ0j0GgGnfFiQ2S14/XjHCfrrN7Biobv6D4
         C1g9jtp6M3Wt2eKy/Feo6nkFWZs+bMzFTXTMwxBy+CO0l6WNNahr8Gn1Fbt7t07APo+G
         8u1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HpMaQiZzt7ad7PvYl91fZy9JjkqLoFVV73zDsIrOTo8=;
        b=q4YLIojGPaK1aBpcHu7akJ3uW4Jlu5IOSjtSR/10X41TGMQGcj1ID4XayrfUk19Cbe
         DzKpYzAQWfMfhjTpPCoPEReYIGRRI20n35vaq8IkTQCxwBtQBLKJ8Wlvxlcc2zp0tsNf
         vUDJaPdaSuFG5GKeDT9DN4k3BMf+sBT84grXqtyn3t9sLJDQ7/U4DJ6pV621exsTwgtU
         nGI4gtAhdCuhjotb9WsBvjG8GamA2Y8/1PtgbhMUZ54QKCKOk7xtXBgpkA/KuEQ0INE3
         dKRdwnmWDEdD+LezkzN7+ypolRAO9jMWKHqxjqCUI35zEsjKDGpgf96CVYMGial88LWa
         jx/Q==
X-Gm-Message-State: AMke39kFHnh+iTLCTvjXXAWcDM6w1nZ6pCbo9SYJ9SspVz25UcJ5xXl4KnsC2CUU8VhYHw==
X-Received: by 10.98.95.70 with SMTP id t67mr18499452pfb.37.1488777475766;
        Sun, 05 Mar 2017 21:17:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id x15sm36602125pgo.56.2017.03.05.21.17.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 21:17:55 -0800 (PST)
Date: Mon, 6 Mar 2017 10:47:42 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: bcm2835-audio: refactor code
Message-ID: <20170306051742.GA21192@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch contains the following fixes:
-Merge two if conditions into one
-Remove initialization of unused semaphores
alsa_stream->buffers_update_sem and alsa_stream->control_sem
-Modify goto label err_free_mem to kfree vchi_instance if vchi_connect
fails; add label err_init to add debug log and return error value
(pre-existing functionality)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c   | 8 ++------
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 9 ++++++---
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index d60d702..32b3793 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
 	audio_info("Alsa open (%d)\n", substream->number);
 	idx = substream->number;
 
-	if (spdif && chip->opened) {
-		err = -EBUSY;
-		goto out;
-	} else if (!spdif && (chip->opened & (1 << idx))) {
+	if ((spdif && chip->opened) ||
+	    (!spdif && (chip->opened & (1 << idx))))	{
 		err = -EBUSY;
 		goto out;
 	}
@@ -156,8 +154,6 @@ static int snd_bcm2835_playback_open_generic(
 	alsa_stream->substream = substream;
 	alsa_stream->idx = idx;
 
-	sema_init(&alsa_stream->buffers_update_sem, 0);
-	sema_init(&alsa_stream->control_sem, 0);
 	spin_lock_init(&alsa_stream->lock);
 
 	err = bcm2835_audio_open(alsa_stream);
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index df1f3dd..557ba8e 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -402,7 +402,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		instance->alsa_stream = alsa_stream;
 		alsa_stream->instance = instance;
 		ret = 0; // xxx todo -1;
-		goto err_free_mem;
+		goto err_init;
 	}
 
 	/* Initialize and create a VCHI connection */
@@ -413,7 +413,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 				__func__, ret);
 
 			ret = -EIO;
-			goto err_free_mem;
+			goto err_init;
 		}
 		ret = vchi_connect(NULL, 0, vchi_instance);
 		if (ret) {
@@ -441,9 +441,12 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 
 	LOG_DBG(" success !\n");
 	ret = 0;
+err_init:
+	LOG_DBG(" .. OUT\n");
+	return ret;
 err_free_mem:
 	LOG_DBG(" .. OUT\n");
-
+	kfree(vchi_instance);
 	return ret;
 }
 
-- 
2.7.4


