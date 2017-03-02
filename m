X-GM-THRID: 6392947471116402688
X-Received: by 10.157.11.109 with SMTP id p42mr5421289otd.14.1488477382453;
        Thu, 02 Mar 2017 09:56:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.26.214 with SMTP id 205ls28414iti.12.gmail; Thu, 02 Mar
 2017 09:56:21 -0800 (PST)
X-Received: by 10.107.164.151 with SMTP id d23mr4964001ioj.39.1488477381572;
        Thu, 02 Mar 2017 09:56:21 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y90si2938pfa.6.2017.03.02.09.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:21 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so10012901pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=u9PVZ2vWatX5WHoFZDqE/ljAqhg7LrMHZoXF1bhnTpWmQkC7iwxlUEsUQjBgY2pWsR
         J1+vdyTxv7deBSER6hRIUusl16lQVUcDFAuGmO9CQwO7W+y3xscc3A2dvT9U9byuj7KB
         vkItU8G4LgL6Zqh1R4U0L0SWP8Q524NiwAt2iOwQ8HpgZv3mlOn/47EIYKqRguqxnMJo
         jRt0HGHtrbeHdpDcAvf2wQ/2K1OiuQu/CPuvrEtymuET4Vxffhoz8d25KuU030b+MEsC
         Wb+be6vPy85ho1JL/FmmZ553Kj78ul40mlzj7A1dOcSd7jJ9ZU6FpGQMD95zv6sWWwUD
         PYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=IOjdPvlBUT4x85bQU3ke/deOL5gE5/tdlasX8Upng7zxyv6KeIdSIVRGHzCMBaWzLN
         iCgPwAntn+9xMwF/xh+X6AB6YsIvNAVQruuz0LtAyi/EIyK3VN1uLevow0b4JD3wOq5+
         Cvnm/0KNijBHizMjq8CGQolsNL+jhdcvFqs3Uxy6k8vuVyq/AzuOs6OV3gjfn2e+4E73
         N4xF+1nnFwbckmbNMCQQsQD1yk8rwZjYtKS9745g0z5fDNLLHwciVFDX8EVBJnfBKaVa
         DGZnAXN6U6RR3u3N1MUEZxgvWDfS+E6V6pUwY0zRSnhSsUBeru6pwsAibjH/3d05Bs9S
         j0pw==
X-Gm-Message-State: AMke39mR0lF26RQ8ui7j5oymltEEqJpxmqLC8sjU6qbeenauqQOuJXAciwoDkwuZitUCuA==
X-Received: by 10.98.144.218 with SMTP id q87mr17192557pfk.51.1488477381218;
        Thu, 02 Mar 2017 09:56:21 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id m136sm18506961pga.22.2017.03.02.09.56.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:20 -0800 (PST)
Date: Thu, 2 Mar 2017 23:26:14 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/5] staging: bcm2835-camera: Logical continuations should
 be on the previous line
Message-ID: <3ef2134adc43bc842339c2e81db48c97a31e43fd.1488477174.git.aishpant@gmail.com>
References: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488477174.git.aishpant@gmail.com>
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


