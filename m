X-GM-THRID: 6392947471116402688
X-Received: by 10.13.229.196 with SMTP id o187mr4585313ywe.12.1488480913534;
        Thu, 02 Mar 2017 10:55:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls6637322otb.8.gmail; Thu, 02 Mar 2017
 10:55:13 -0800 (PST)
X-Received: by 10.129.153.201 with SMTP id q192mr5501423ywg.118.1488480913195;
        Thu, 02 Mar 2017 10:55:13 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si33944pfb.7.2017.03.02.10.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:55:13 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so3118164pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=GIOH7W4axDwnxJN42oTeUR59RQL4eJI/zSrg6kgep67z1rqPjm6zjRFkbF1eiu5fKt
         31cpSIkfm14PI5Aug8ba8tguj0XZmeH91VYCRCBhfKX0UhtGjtvAdkoYWvf1q+BORZTH
         Mfv/60xMRycnIS1q7TeOOsIj481crFGODPn86ennChT4kWE1GfceUrOdehDoSFImnPV+
         rbPCWK3hkZ36X7x7tLh13hXU7oF8Od5hrwdPFMa8Ork595cxuwnBsLYpJrOCi9tTHSQG
         lQouuJU0ABkjgmOdR9MZWl0C6+MxFkwxSyn5ihD5QSZR9Amzf18MXwqQ4V8F8V41E5G1
         xzKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=LHmMT0Ub3tuS3DjRL8LzVBXRlean7sfcQq2SX443V6XW1JOXPEauS6a5sE7dmnhbZc
         cUNISTwYPHz9StMiWySZay7Bsb7gyr9TUAPLhgpeGwXW0Drw0TEoYzXmfEwyVEO690pZ
         GgueIIkNGJQew96lY5hp4AHDHBn1Y4gNQh3sPjpIk8Ipzkuf16l0bzEFXYLswJ21X0ts
         QMB6A75f2kONt+i6YGb7KRpIchL7erKcL8ViDQXedf7lZoN2WSmF7DCO8JHdOQDMhtRb
         JSEC9JxhduGFsbnVAwhpWS3ZkfHp+24dqNBdz4smRcgqydSczvepwydCkPla1WF/btdM
         dcGw==
X-Gm-Message-State: AMke39mLuJupMvO/ziMbL3I9L8zBXNEsp+n7R5x35xPW3Uws1ch2KAZkR+UhZ811nRjagg==
X-Received: by 10.84.217.205 with SMTP id d13mr14014284plj.141.1488480912921;
        Thu, 02 Mar 2017 10:55:12 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id f21sm18515994pfj.111.2017.03.02.10.55.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:55:12 -0800 (PST)
Date: Fri, 3 Mar 2017 00:24:58 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 1/5] staging: bcm2835-audio: remove space after cast
Message-ID: <845a46f44fdc14bf896d03a9edd388716329cb47.1488480443.git.aishpant@gmail.com>
References: <cover.1488480443.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488480443.git.aishpant@gmail.com>
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


