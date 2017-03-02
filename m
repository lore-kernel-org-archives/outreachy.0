X-GM-THRID: 6392863906268708864
X-Received: by 10.107.47.168 with SMTP id v40mr4399070iov.97.1488454785916;
        Thu, 02 Mar 2017 03:39:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.138 with SMTP id y132ls2133841itc.9.gmail; Thu, 02 Mar
 2017 03:39:45 -0800 (PST)
X-Received: by 10.107.15.96 with SMTP id x93mr3879070ioi.85.1488454785387;
        Thu, 02 Mar 2017 03:39:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si1392984pfa.4.2017.03.02.03.39.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:39:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 16so620562pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=hlJ/LHqeb6nD+KmQ4YppshxSqO1iix2T3oe5ijGSxJh7Tk+vIOm7wg5Q9GPHz+A2ph
         uQ2PNFSjMwctejvKdLpoi1BsMSz8MH4mKuOwJoQww0tx3tgrGXHRKLdjShRWlEB/vpU1
         o+0+CbPHDbvcc6Kn4Kv9Ab0fZ7VJC4KFsgg79kZHs84sucIk2QVWB9zrNmq3StC1lxGo
         jN246yJeXDJqd7/PErodh/aPmVkcPGFWr8J3lbWsubM+g2VIZETx2d/TTHGQczQo8pVg
         Glod3OKkMIoFj6pxWNPgL+1rW2V8QBxBCYS30ikD1G8ZJ2uZrhwCbU8Fzi92qv8mr2Ro
         zLkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=YrqY2ehEDhk/Cf1WV2H0riQN/9iFl8FOmyhXfa6FvFuwPGViTo/tDoFlD8aQ+/6D2b
         ETefwWV4w2EbXVnFJ9C6u//Rh5yCP6krK5mBZT6xc43bmN/5Maap9vT2AfJtq/fROY48
         2+cQgNdIggCn+ptDhIfAzhoRideWwXq4QH7vciySXpuqeQ1CL0Tjc+IM5/iufAQwg8O2
         p+LpWIh24RmfwtXfqvnuEbdWoHtOfTDWenYHAoSgY4wU5QwdiwNAhVITMAdvFMHWNSsO
         QkWU5w4GifJrw4t9ws8R9ZdQsLAMryynN5cSEhxcEGtl992WhOnspPgSzjaQH5lo+UDN
         C3og==
X-Gm-Message-State: AMke39nJ2Kd3Iwr8rGvwRu+k9hx3R9YATKNPfQ9ZLOL7itmQk3tzY+Y+rFB3/cLmKWY2jQ==
X-Received: by 10.84.231.198 with SMTP id g6mr18100004pln.20.1488454785163;
        Thu, 02 Mar 2017 03:39:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id 73sm16610578pfh.56.2017.03.02.03.39.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:39:44 -0800 (PST)
Date: Thu, 2 Mar 2017 16:59:49 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: bcm2835-camera: remove extra blank line
Message-ID: <fb39b13393c7f9ed193e5d9af84886b58eab1aed.1488453518.git.aishpant@gmail.com>
References: <cover.1488453518.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488453518.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix the warning: Blank lines aren't necessary after an open brace
'{' issued by checkpatch on bcm2835-ctl.c

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 80b2062..46814fd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -123,7 +123,6 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 			goto unlock;
 		}
 		if (changed || (ucontrol->value.integer.value[0] != chip2alsa(chip->volume))) {
-
 			chip->volume = alsa2chip(ucontrol->value.integer.value[0]);
 			changed = 1;
 		}
-- 
2.7.4


