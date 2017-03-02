X-GM-THRID: 6392947471116402688
X-Received: by 10.157.14.74 with SMTP id n10mr5141468otd.34.1488477368734;
        Thu, 02 Mar 2017 09:56:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.193 with SMTP id i184ls29081ita.10.canary-gmail; Thu, 02
 Mar 2017 09:56:07 -0800 (PST)
X-Received: by 10.99.149.10 with SMTP id p10mr5457759pgd.77.1488477367786;
        Thu, 02 Mar 2017 09:56:07 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si1641829pfk.5.2017.03.02.09.56.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:07 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 16so1521851pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=vLCYds9e5hK2zzqXKn/TP6w9BrnZsi8Cnls8/KLGv0TsUBo5aj/1j6QihJ91AINbaz
         Leo3+yPF3BK0s81jboqpsPW6WdUbPJPWprwuHQGfphN/JFMX/2nrjBNg+1TVPjk+HgFF
         yOx/m3FDDhjcL6Y2ZTE9ZZjwP6C/ewUtnsFOGbFftds60IQ0HS4k/xI3dtuGCkAWdtgb
         FklV0IdezXnxsTZ5beOF3FDLjaVQYkTV9CcQoYXhtlajNWqxLFezH+4ddyZQ/rka+ZJ1
         8bUP8myMgTr3SlsbQUiSNZQ0PhjP7UUJpg10/pyKXKv7O7rWeuHTdb/B9pdrZNI2qvf0
         b90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=Li0/9hXtdQntO49uu3zS1dmjhZ06wJT401tl6QOeyqXLaytLYiCI+WjVWv2E7a6QSc
         ckW8RN9nEvi74xadyuTXEEoR//q6po2Nq05N4UYBfunZkstc449mXciPqIeSkhZQ2Gvw
         sdrTLsxPQKHTfCNl+c/NSMM/KvDWuFehoCgFh15IgWKTSP5bwLAOXM4iGF+4NFZNBXfl
         WseJqa2UxJbiEfuKlJPQTv3JipTNqGQdXxFZtgEi8RHv/YcTDRCT6zPGaq2TNEt0oEDp
         C05Pm91JpVPoJv37clOlv24XazegXHVEUrWwabPIRUy/BC7A+eYj9FUUxcZlWgn6wEXG
         HJ1w==
X-Gm-Message-State: AMke39ksXKPNnzFJiXHa2L3OjGH+ciKBd4Qcr3tI+FlznFsd63TxsZSWMXcW/ZV67sAi3g==
X-Received: by 10.99.8.4 with SMTP id 4mr16865617pgi.204.1488477367552;
        Thu, 02 Mar 2017 09:56:07 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id e70sm5446898pfh.84.2017.03.02.09.56.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:07 -0800 (PST)
Date: Thu, 2 Mar 2017 23:26:01 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/5] staging: bcm2835-camera: fix no space is necessary
 after a cast warning
Message-ID: <845a46f44fdc14bf896d03a9edd388716329cb47.1488477174.git.aishpant@gmail.com>
References: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488477174.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove instances of unnecessary blank space after cast in bcm2835-ctl.c

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index a4ffa1b..99e9ca3 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -116,7 +116,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 		return -EINTR;
 
 	if (kcontrol->private_value == PCM_PLAYBACK_VOLUME) {
-		audio_info("Volume change attempted.. volume = %d new_volume = %d\n", chip->volume, (int) ucontrol->value.integer.value[0]);
+		audio_info("Volume change attempted.. volume = %d new_volume = %d\n", chip->volume, (int)ucontrol->value.integer.value[0]);
 		if (chip->mute == CTRL_VOL_MUTE) {
 			/* changed = toggle_mute(chip, CTRL_VOL_UNMUTE); */
 			changed = 1; /* should return 0 to signify no change but the mixer takes this as the opposite sign (no idea why) */
@@ -226,7 +226,7 @@ static int snd_bcm2835_spdif_default_put(struct snd_kcontrol *kcontrol,
 		return -EINTR;
 
 	for (i = 0; i < 4; i++)
-		val |= (unsigned int) ucontrol->value.iec958.status[i] << (i * 8);
+		val |= (unsigned int)ucontrol->value.iec958.status[i] << (i * 8);
 
 	change = val != chip->spdif_status;
 	chip->spdif_status = val;
@@ -289,7 +289,7 @@ static int snd_bcm2835_spdif_stream_put(struct snd_kcontrol *kcontrol,
 		return -EINTR;
 
 	for (i = 0; i < 4; i++)
-		val |= (unsigned int) ucontrol->value.iec958.status[i] << (i * 8);
+		val |= (unsigned int)ucontrol->value.iec958.status[i] << (i * 8);
 	change = val != chip->spdif_status;
 	chip->spdif_status = val;
 
-- 
2.7.4


