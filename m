X-GM-THRID: 6392863906268708864
X-Received: by 10.157.17.123 with SMTP id p56mr2209345otp.116.1488454643866;
        Thu, 02 Mar 2017 03:37:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls5899486otc.44.gmail; Thu, 02 Mar
 2017 03:37:23 -0800 (PST)
X-Received: by 10.129.95.133 with SMTP id t127mr4869612ywb.94.1488454643520;
        Thu, 02 Mar 2017 03:37:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si1430106pfd.3.2017.03.02.03.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:37:23 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so6578016pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=qBBfnyVB526fVMdS3EhlQG7jV0pTzQYLsvw3SgsMO2PKKFztrFPMnP3DY+skq2XShi
         lPJbQdTT3jRGIY90UDwho+MoM82abUeopS6W0B/qNS9jz2Lj64IZGCmyMqSR8F6qXYTY
         2JzYCM7lqARlHdExCgRyk+RCkKu4rhVmMWlzRI6zoSFWZUQx+r7wgUoUskZPbde8vk9X
         7/1flSEIawr1MCtGrRQk5pBJnM/3Im98UToCozvj/IMY230f0N1l3T9/beQuTOfeMKsh
         Z9tfTY3XpiuWdeaTuYNLWGWVYxkKuhJeQmLoLwQHgywaycvn7NwVsCG7gRI43RKHy0pu
         XlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=WY9eWnYJfAePdGiEF/+Jen/uvtPJueRAYNxIuYpJHdxp5Y9j7Rya+1+A1XOHzP2uVF
         h315ki7/Drbt0c2zydUPBupN/C8/U+QHSF/TuG+N3FrfarWgK5PmZ0gpPPHcywbWYriz
         as2eIvW68gqCx58SqYhDD4qlYcDe/HR03PjlK1HzuUeNDokbCrCjmcYE1GdGpAcwb1G+
         QI+ibpVnumHdQCL/9QvVuiUp/lDsv/dLFApIevORyxZK3XicqAYNQ+O6kodTEHhLOywr
         uBeP8W7QZ9h6nc1RSsnRRAkxz7Ir8DEYtYRYMiiT1slKereeIJ7EaiSwuxn8yGRnEZWo
         PXqA==
X-Gm-Message-State: AMke39nveaC81sNOagGTYA5OQq5LqRkuk2uxXHCntnr40WN5alkuJVtfPhpDz3ysBaPd9w==
X-Received: by 10.84.197.1 with SMTP id m1mr18046657pld.123.1488454643284;
        Thu, 02 Mar 2017 03:37:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id 128sm16584340pfe.23.2017.03.02.03.37.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:37:22 -0800 (PST)
Date: Thu, 2 Mar 2017 16:57:25 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: bcm2835-camera: fix no space is necessary after
 a cast warning
Message-ID: <845a46f44fdc14bf896d03a9edd388716329cb47.1488453518.git.aishpant@gmail.com>
References: <cover.1488453518.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488453518.git.aishpant@gmail.com>
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


