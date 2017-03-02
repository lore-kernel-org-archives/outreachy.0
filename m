X-GM-THRID: 6392947471116402688
X-Received: by 10.129.99.195 with SMTP id x186mr4554739ywb.41.1488474093518;
        Thu, 02 Mar 2017 09:01:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.138 with SMTP id y132ls2342036itc.9.gmail; Thu, 02 Mar
 2017 09:01:32 -0800 (PST)
X-Received: by 10.99.185.1 with SMTP id z1mr5274076pge.51.1488474092036;
        Thu, 02 Mar 2017 09:01:32 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si1596928pfk.5.2017.03.02.09.01.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:01:32 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so9883969pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=TQVwF4pnOtL+lYuN8u1ZeHP+88R6LQBx4gdDCM/xsJA84/WYkRS/nRxIq9LjbnnZK6
         3pcWWNAMo9rEUntgYscGz4DwSrixx0w35UW2gxbFV+2uqUYUr2Vw8oimEf6+mxQP8oOE
         20ACwtHnOyPXMKgk5UW201CTtJaMpHShVijjZhXqkmy9OnKeUFtJqZtW79vBWk/5Xk1h
         9q2+5hXskMYb56xEEt0ETJip1elg74LCRzJRhfVG4yzO7Rs9VAz7RZ22ubRHAqZ3L94P
         SSMn4h86DXMigTvDKjVm7jcw1HmPOvqj0tpHpl0hV+OOjrTnrjfVf/UyCDHp5brSTbh+
         jDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=fYtu31/1sLXl+9iBENGLtrQHixQ9dj9D04kXoXjU8U76k+is4nPi9SLxnYO7VtGRpo
         oAnsSdXsbFqGn3gDAwUz7yJUrEWv4noAUSH0PVyPNXQgeHwetTd61Ly6FienmkOT5HTa
         uz8TViZ+iDdv1rx4kZHythMlphBeP00Kb0ebdTcnpd6UXFK8JWOSJnly3UZgzGeIxddB
         Ei+uhcHgVLm4flb53vICvwcO31aEdOfYiugZJWyyT1dgJxgzfnM5Bq4NjrqTnAOv9a/u
         A8jpzOQQXuKIz6q+rw+haK9XPULN2H8Zw+gdT+zoHTKrPGSnB9dJxcdKYghibe+S9UtC
         N/3Q==
X-Gm-Message-State: AMke39nw6RgMEXZf4Ws6Ae482QrUeTwNGSNSs3O/Xg3MR/kcuQTIjEuitS1Wpbz0uyrMbQ==
X-Received: by 10.98.216.202 with SMTP id e193mr16927608pfg.80.1488474091784;
        Thu, 02 Mar 2017 09:01:31 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id v86sm18217900pfa.58.2017.03.02.09.01.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:01:31 -0800 (PST)
Date: Thu, 2 Mar 2017 22:31:25 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/5] staging: bcm2835-camera: fix no space is necessary
 after a cast warning
Message-ID: <845a46f44fdc14bf896d03a9edd388716329cb47.1488473946.git.aishpant@gmail.com>
References: <cover.1488473946.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488473946.git.aishpant@gmail.com>
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


