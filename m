X-GM-THRID: 6391475391095111680
X-Received: by 10.46.69.7 with SMTP id s7mr1372780lja.18.1488131329751;
        Sun, 26 Feb 2017 09:48:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.17 with SMTP id z17ls360907lja.50.gmail; Sun, 26 Feb
 2017 09:48:48 -0800 (PST)
X-Received: by 10.25.169.14 with SMTP id s14mr1324527lfe.3.1488131328896;
        Sun, 26 Feb 2017 09:48:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id y19si621072wmd.0.2017.02.26.09.48.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 09:48:48 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id m5so1923703wrm.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 09:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ygaUdjnR8nJjvY1iDxGysK23Z1mgh7W4wXUKmXJ0KcY=;
        b=qE6bsFX+QbeLfhIKHo+fbUComrh/8TMXlAY9zNRLX2Dej5LFJXjT6+/si85nUWgoPp
         QU8papfdx9N5p1QeqVQCTwofQxybR61rhy8yFpGTJdi0yN4tNcYTxat9E5CpV5+nF+cG
         1FGaJiu64SOg53XnWm8q0C0uNn4YlVtYFIb11d/lTen0k0vdMSu22/4vjRHaotHu12WM
         8VUOzODHIqsU3h3BmxJgGs/oQuS7fLKN/LwaG+dQQeCOEV0wCkMck9uWY3ASMVPMEiB1
         gSX+Gbjnihb0Mepyf6g/zV8Zik+OHed7RPJhTiaQiZu61JFrfOlHPhapoS4e6ohS6L74
         Rp1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ygaUdjnR8nJjvY1iDxGysK23Z1mgh7W4wXUKmXJ0KcY=;
        b=WpnTTnD7U3V7nYwQMai9Ot2PtOaJeJyNjCpCPPnJfhnXpoamursPsO29wPE1FlcWAE
         Od3/l+sUPMt/DWteE6IDRbIVHCCXaAhAaTC2e7hHhI7eQu7KdFjbjXzOGT2dVlMMsJ0K
         kv+YCzTx/oZxcvXtRks+3wT4QzhWWlRmMpHGo35q0Joc0ggjvbYrmKsdYaanNscSn+wT
         aStRgoqSiVV0pVYhN7QAVd1G2Nx7F1MQ3qJghilpDgN4Dcx1+EUy6JCdsbxj0pq5ZYwt
         yJKdLoADc+TZ6ZcFaRroKhhij6xCCFdFuKxUwJDkUx4tkBJMrqbccWmISvGU+85uRLyW
         V8ew==
X-Gm-Message-State: AMke39l4504WzqABCDqiOcjxf+MrreWsrhyqLFyB0bkf21tZ0F5P+/ufsS3svDf9XBhsRA==
X-Received: by 10.223.176.143 with SMTP id i15mr11407724wra.136.1488131328735;
        Sun, 26 Feb 2017 09:48:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([109.166.128.3])
        by smtp.gmail.com with ESMTPSA id 73sm10998354wml.19.2017.02.26.09.48.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 09:48:48 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: daniel.baluta@spamfreegmail.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	bcm-kernel-feedback-list@broadcom.com,
	mzoran@crowfest.net,
	danielperezdeandres@gmail.com,
	dan.carpenter@oracle.com,
	devel@driverdev.osuosl.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: bcm2835-audio: Fixed spacing around '&'
Date: Sun, 26 Feb 2017 19:47:51 +0200
Message-Id: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

This was reported by checkpatch.pl

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/bcm2835-audio/bcm2835-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/bcm2835-audio/bcm2835-pcm.c
index 9e79236..328bee4a 100644
--- a/drivers/staging/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/bcm2835-audio/bcm2835-pcm.c
@@ -91,7 +91,7 @@ void bcm2835_playback_fifo(struct bcm2835_alsa_stream *alsa_stream)
 		frames_to_bytes(alsa_stream->substream->runtime, alsa_stream->substream->runtime->status->hw_ptr),
 		new_period);
 	if (alsa_stream->buffer_size) {
-		alsa_stream->pos += consumed &~(1 << 30);
+		alsa_stream->pos += consumed & ~(1 << 30);
 		alsa_stream->pos %= alsa_stream->buffer_size;
 	}
 
-- 
1.9.1


