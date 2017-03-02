X-GM-THRID: 6392863906268708864
X-Received: by 10.107.198.201 with SMTP id w192mr4488367iof.42.1488454689275;
        Thu, 02 Mar 2017 03:38:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.9 with SMTP id l9ls2043336ita.1.gmail; Thu, 02 Mar 2017
 03:38:08 -0800 (PST)
X-Received: by 10.99.226.3 with SMTP id q3mr4892925pgh.129.1488454688802;
        Thu, 02 Mar 2017 03:38:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si659720pfz.1.2017.03.02.03.38.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:38:08 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e66so910048pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=QCvdluC/vplppj1HtSwOnVGfRcVNcZOi2ghagT/ItNW9Omr7lrG3wlAFNzxJd1FoAN
         yIQ/9XIYdiXGZ6gV6PdXc5W+8+gZsGBII0cHs68UdhZzdtOGSMZ4fmJRwPZt8/d2xqqp
         eeYBPYzoZqQJ2q5dknfCA488JtiBoroFO0QtwHdNC4BY08gJFCteZIQJMOYWXU4rSvyV
         Qs5kT+8af+5LTSDEzRsx3WcEFr6kc4SVd4eRt6JfNE3LsV4JvoyikTvBJAxToGCE5Er6
         5VzTtenTLKE/T1GZ5zKFOl/6mWXG1WRfUaZBFtpqSHzFun1/PZEEQqGglfj08eDtXf2u
         44mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=VUOfPE4JMlxnmXkPrG/CjEpJBZZ6YnKeMiqdStgxdwegbO3GvyV10il+yS8CWmF4jy
         TpAcy6fW+OF5z0MnrYxdzpFKTp6Srd5wVHglAAhBjWJCRyWeU2XrPdQu7uwiw/THJVRQ
         s8Ev6dMaA2L8XAXSz+H20E4M6lFty2UJZWfCBqKwvQlwqaqpEPeVIY3IlKuSgWHGvGdi
         EPfzfC1nW46y+1M/sP3ToiPNo45RJ6zp3sV2sY7B5oaZjULAQjjay5SP2ZtvCjjilCmW
         fyg+fA35/TklGBDVk/R/2HTU+jHSes4q4Md5whNlHPulgNFkMwkhd5M+fNu6gOaSMTqb
         wUlA==
X-Gm-Message-State: AMke39k2wzMDCH4Ce6rAnxjXh2HANgdLb9yLxdByJHmKvKhUuUbMBXDDEID0cd+lmJPtxA==
X-Received: by 10.99.117.3 with SMTP id q3mr15142182pgc.222.1488454688609;
        Thu, 02 Mar 2017 03:38:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id h25sm9816826pfk.119.2017.03.02.03.38.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:38:08 -0800 (PST)
Date: Thu, 2 Mar 2017 16:58:12 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: bcm2835-camera: Logical continuations should be
 on the previous line
Message-ID: <3ef2134adc43bc842339c2e81db48c97a31e43fd.1488453518.git.aishpant@gmail.com>
References: <cover.1488453518.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488453518.git.aishpant@gmail.com>
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


