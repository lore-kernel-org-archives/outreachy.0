X-GM-THRID: 6394409513300000768
X-Received: by 10.129.1.197 with SMTP id 188mr7024140ywb.3.1488830266169;
        Mon, 06 Mar 2017 11:57:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls15112897otr.34.gmail; Mon, 06 Mar
 2017 11:57:45 -0800 (PST)
X-Received: by 10.129.78.73 with SMTP id c70mr7163155ywb.152.1488830265806;
        Mon, 06 Mar 2017 11:57:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si227576pfb.2.2017.03.06.11.57.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:57:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so18574535pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dp1P68NPQhrdD/6qcT/AZdWyZFxTXEsxQfvG9WCPICE=;
        b=Vl5SKVXf9bwG2q75JsDd1P6a9SBBQO/U+kYl/X06QfkKdFhJJwuLedi68ReLUg07Y4
         mVOzGoU90HUxfEUCfjZt0eX0qs7W+eXFivjqO1J6/LtWFXcM50+e2x6Fjf0akj9gDRXW
         MUYqCX85YWkHD6eKFCuGmFknAlQZi+qBgMv/IJ98stAjJc/drOdIpHKPNbxmSsEbjCuv
         nYs2GaDsjWTT9UZpJgGwT+PrsjIF4Su0WCdjM3neqkR9Jy6KsX6NSYaelxV3QMYaRpYX
         +BzS9IHTWdQ1q4gMtcOfTFgaIof5lWhbU5PDo88ofllYrDTqbmCR0WOX2lefnHyTG/Pu
         vgMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dp1P68NPQhrdD/6qcT/AZdWyZFxTXEsxQfvG9WCPICE=;
        b=EzFzOrgQG9PY+FBDyUe/xLw/Anq99cirxkltXVZB1jxoCQR8zAW95T30/Aflit8Mbq
         M+rURIN+ctR+J7C2tVNicKK5q7+RBRzt4waRfOFfXJ81Vnu7uwQDqkVNgz9xnmYvWPJU
         xcrSI+6RG4Jp3jdc3JwV1RBpx8RHcFfHssBW4PNFDyhASBeg/TLbil8ZSyEQDF1aT7Rm
         RDWFlIBdnfejOByPa1hl9IOsiwb7NVueTIZI6x6JI1qGcKs6xavQbtmU4dxtnq0McT4o
         Sc8FwHjRy92eYjHtrpVn4dSiJ+JLqSaTan+25BoqpucrdMBIDk2uiBGDAQB++5YanPHf
         NjoA==
X-Gm-Message-State: AMke39mnrRLbQtsID89k8U/A7lyNW1+7OuvKM6TKq2RwVmcUZpnUxmpB2/lt5/UVbuzbfg==
X-Received: by 10.84.206.37 with SMTP id f34mr29211193ple.175.1488830265542;
        Mon, 06 Mar 2017 11:57:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id m3sm41199132pfc.66.2017.03.06.11.57.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:57:44 -0800 (PST)
Date: Tue, 7 Mar 2017 01:27:41 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: bcm2835-audio: remove unused semaphores
Message-ID: <1d19a12dc4e8550804b0b27341aedb27494ab6b6.1488830058.git.aishpant@gmail.com>
References: <cover.1488830058.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488830058.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes unused semaphores alsa_stream->buffers_update_sem
and alsa_stream->control_sem from struct bcm2835_alsa_stream

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v2:
	- Remove the unused semaphores from struct bcm2835_alsa_stream

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 --
 drivers/staging/vc04_services/bcm2835-audio/bcm2835.h     | 2 --
 2 files changed, 4 deletions(-)

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
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index 2f9d1c9..c53c2bd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -122,8 +122,6 @@ struct bcm2835_alsa_stream {
 	struct snd_pcm_substream *substream;
 	struct snd_pcm_indirect pcm_indirect;
 
-	struct semaphore buffers_update_sem;
-	struct semaphore control_sem;
 	spinlock_t lock;
 	volatile unsigned int control;
 	volatile unsigned int status;
-- 
2.7.4


