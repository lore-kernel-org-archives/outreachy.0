X-GM-THRID: 6392947471116402688
X-Received: by 10.157.49.15 with SMTP id e15mr1513911otc.123.1488480320691;
        Thu, 02 Mar 2017 10:45:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls8210878otb.26.gmail; Thu, 02 Mar
 2017 10:45:20 -0800 (PST)
X-Received: by 10.176.1.166 with SMTP id 35mr1862228ual.36.1488480320267;
        Thu, 02 Mar 2017 10:45:20 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1718873pfd.3.2017.03.02.10.45.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:45:20 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 16so1633903pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=ntffZDrM5PltMg/2Sqv9aGvTiIS2TXDhL13tMcdvEWZqNLFaEa0RSCzIoJC2Ol6O10
         2mvu90W/JMADeZZ8//O5h788UBKmdMK9WXlJkd7044BEl8eMZgrEdt3o3IK8cnvJ9h3s
         r8HrEZCYUgfISGOWtcyGdrDasOzq2nXpAUhhhm5p3/bR4xpojiG1aGJLKMvSOAL8e/+o
         G67kW+TjcoPLRdwB4qHsp3AugWSXlc7pxl/nyok702rBvq3S99mcwz6ka98F0neq7g3x
         XYxM1udnBMD3jJ2ivG2VJbDxbd27OUS8DG+PZKihz/T8STg2Zqc0BU/OMwKmCUEngspn
         gaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OCIMcfR1rDyeARr/F2cOz8yChBwuJWHs6jYxDje4TA4=;
        b=S3XHIhjrK+vRoz4EA8xiNOkPMHuNJ3+DuM4AdybXLZ6qSA4xkz9SKcnLQ5eV7eDoUu
         aj8iW6sNzFXo1PCik0LA2KdI5so7DsmcQkK7YlLqo5rE3651/p40PNy8TGLbO3pRjSho
         uF9r1kf06WEIT8zm4qQauacqsnsJPiq3wzzw8d/U51I6oRpHZdEzCn2qmHH8XWO8GUyB
         fAW8LfXlN4UXm900kuVm9JDncRxqUbohSmfZp7CxBUTc8dk/xK4Qp11nmb/yqCAfXBjN
         f6HndiRLRntOy161yTKAIYXc3lIjsmVHubuH++odtyNk3yWUH+6BEN3aTKf49mxQUC9k
         zvZg==
X-Gm-Message-State: AMke39nHqKvl1zxtrio3N2Dns1njeMPsIprWEgPP/dB9yLJFBej+CNlQDx6sJjd7KrQciA==
X-Received: by 10.98.163.141 with SMTP id q13mr17511239pfl.72.1488480319762;
        Thu, 02 Mar 2017 10:45:19 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id z7sm18467477pfz.128.2017.03.02.10.45.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:45:19 -0800 (PST)
Date: Fri, 3 Mar 2017 00:15:12 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/5] staging: bcm2835-audio: move logical continuation to
 the same line 
Message-ID: <845a46f44fdc14bf896d03a9edd388716329cb47.1488479861.git.aishpant@gmail.com>
References: <cover.1488479861.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488479861.git.aishpant@gmail.com>
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


