X-GM-THRID: 670124998656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5ad4158f03824452,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.47.228 with SMTP id g4mr3691212obn.5.1424339982952;
        Thu, 19 Feb 2015 01:59:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.194 with SMTP id re2ls195734obc.29.gmail; Thu, 19 Feb
 2015 01:59:42 -0800 (PST)
X-Received: by 10.182.47.228 with SMTP id g4mr3691200obn.5.1424339982777;
        Thu, 19 Feb 2015 01:59:42 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com. [209.85.192.180])
        by gmr-mx.google.com with ESMTPS id nt14si1094743pab.2.2015.02.19.01.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 01:59:42 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.180 as permitted sender) client-ip=209.85.192.180;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.180 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-f180.google.com with SMTP id z10so7736502pdj.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 01:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eQPFcM+vjYXTHR0b94wXs4p3wDdPWMQNSxGgTHJ1xjU=;
        b=FIH9kpURygOXNO3usUSLeZiZApGC5KhfycJCjRgCA5RX+ddOz2p0pZy4FClza/9lUg
         SGXbQvaDoSXqUzKUSh+3KMXZ87eutWBvqwFfoPjh0RpA7VNqOZiYYmCZfzjcPITw0PAQ
         Dfjitv4/fQeZ/iCDwFSgtLpdy0UB/JUn8ZpEDDvbAyMV+DoP1JnPvWSZkSq7UQBXuGsk
         hoeGslYj35qBbFX1eXKJLOxaNnj/5XwXBQp+y+eGHr83ABBwhQ5Vst0zaJciycRmTFS0
         bvi/Ms+23+5sGPtWErQoxdYl3gmDB5KMWpCSLEr8iAZbKLcfZ+a5f12AEuKpmtlfLPtv
         xXkA==
X-Received: by 10.68.190.5 with SMTP id gm5mr6348779pbc.164.1424339982680;
        Thu, 19 Feb 2015 01:59:42 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id sy2sm23190991pbc.8.2015.02.19.01.59.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 01:59:42 -0800 (PST)
Date: Thu, 19 Feb 2015 15:29:28 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Remove space before tabs
Message-ID: <20150219095928.GA28559@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove space before tabs to follow
kernel coding conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/media/tlg2300/pd-alsa.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/tlg2300/pd-alsa.c b/drivers/staging/media/tlg2300/pd-alsa.c
index dd8fe10..e23f437 100644
--- a/drivers/staging/media/tlg2300/pd-alsa.c
+++ b/drivers/staging/media/tlg2300/pd-alsa.c
@@ -23,7 +23,7 @@ static void complete_handler_audio(struct urb *urb);
 #define AUDIO_BUF_SIZE	(512)
 #define PERIOD_SIZE	(1024 * 8)
 #define PERIOD_MIN	(4)
-#define PERIOD_MAX 	PERIOD_MIN
+#define PERIOD_MAX	PERIOD_MIN
 
 static struct snd_pcm_hardware snd_pd_hw_capture = {
 	.info = SNDRV_PCM_INFO_BLOCK_TRANSFER |
@@ -61,7 +61,7 @@ static int snd_pd_capture_open(struct snd_pcm_substream *substream)
 	if (!p)
 		return -ENODEV;
 	pa->users++;
-	pa->card_close 		= 0;
+	pa->card_close			= 0;
 	pa->capture_pcm_substream	= substream;
 	runtime->private_data		= p;
 
@@ -78,7 +78,7 @@ static int snd_pd_pcm_close(struct snd_pcm_substream *substream)
 	struct poseidon_audio *pa = &p->audio;
 
 	pa->users--;
-	pa->card_close 		= 1;
+	pa->card_close = 1;
 	usb_autopm_put_interface(p->interface);
 	kref_put(&p->kref, poseidon_delete);
 	return 0;
-- 
1.9.1


