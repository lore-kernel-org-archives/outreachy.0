X-GM-THRID: 6392947471116402688
X-Received: by 10.107.22.4 with SMTP id 4mr4990614iow.61.1488480964287;
        Thu, 02 Mar 2017 10:56:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls8240646otb.26.gmail; Thu, 02 Mar
 2017 10:56:04 -0800 (PST)
X-Received: by 10.157.89.203 with SMTP id u11mr5532845otg.146.1488480963965;
        Thu, 02 Mar 2017 10:56:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si1673470pfk.5.2017.03.02.10.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so10154233pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=VscVxU2m0tz2x+4RiXihisJ1JKqyg0S3PKijOotYxtUqa90mwDayUVJJenQMVrUyrD
         PpxEAp+t8bBqrA8suF2CZIOzXbC6S+K8SGxqimkk+SfgPSHu866HRKeUYFzkdke06uXd
         ZOf25O+SkQAeXonmbGfILuhjcgL+2jUw1fJQeskbNMatT9rl06mNIHA+oHZvHAB5jE2j
         K0FFAvUH8RHu8a21J8y9x7xmzPB/Q0pq31kyZYso8E/T0FQC1EE6Vzp6pgwMBu/AKabx
         k7iSxE+iHMSoFtzrcbCqlw6sLG0PRNpmMc0TpWRKimq/6xIashwjwu1G8pe5Z7GKRXOw
         x8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=R3/Q3n5PUpmkvB55uBwG7pwZ7487642tKaobeUprlqYiSF/uNQam3RM4iTH9NGk9jI
         Q4nFEqRTgF0wtgvDbhDkTBr8hxWCkU9gJkMHtVMIDJhnVZ2zIwjcedbHH/lUUiSj8Ipg
         baFbTBpq+JbMaIEC6sqPA8P8vUsBw+WPnkstsKw7dXXsxlPEQ4MG9/hVU14rf1nOS0FW
         t27jltMDYH0jgzr5NxcDngfiri4JQQ8pgI/E8+cK3McXVeRXCbB6V8uxNBGH2YIPQTRI
         RcCs0TIdi82ieDYF3/m6sU8mo7JdInH5mNUk2NFqifLhLxBZQcN1WbkWQhbwHQSWojGb
         8KHQ==
X-Gm-Message-State: AMke39n7FyVoUoqx6BbnPVqVCnXeFsdJIxndjnYLju18WESW0kGBEjQQQoCWC4xeCKJyPA==
X-Received: by 10.99.216.85 with SMTP id k21mr2573344pgj.10.1488480963733;
        Thu, 02 Mar 2017 10:56:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id p17sm18557044pfi.97.2017.03.02.10.55.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:56:03 -0800 (PST)
Date: Fri, 3 Mar 2017 00:25:56 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 2/5] staging: bcm2835-audio: move logical continuation to
 the same line
Message-ID: <3ef2134adc43bc842339c2e81db48c97a31e43fd.1488480443.git.aishpant@gmail.com>
References: <cover.1488480443.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488480443.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Keep logical continuations on the same line to improve code readability

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 99e9ca3..17d34c0 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -122,8 +122,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 			changed = 1; /* should return 0 to signify no change but the mixer takes this as the opposite sign (no idea why) */
 			goto unlock;
 		}
-		if (changed
-			|| (ucontrol->value.integer.value[0] != chip2alsa(chip->volume))) {
+		if (changed || (ucontrol->value.integer.value[0] != chip2alsa(chip->volume))) {
 
 			chip->volume = alsa2chip(ucontrol->value.integer.value[0]);
 			changed = 1;
-- 
2.7.4


