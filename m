X-GM-THRID: 6392947471116402688
X-Received: by 10.31.162.195 with SMTP id l186mr1149493vke.18.1488474105563;
        Thu, 02 Mar 2017 09:01:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls5918999otr.34.gmail; Thu, 02 Mar
 2017 09:01:45 -0800 (PST)
X-Received: by 10.129.153.201 with SMTP id q192mr5281290ywg.118.1488474105113;
        Thu, 02 Mar 2017 09:01:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si1646368pfd.3.2017.03.02.09.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:01:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so2875632pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=sqh0snRTzsG8cACqyyeBasQMg9j8rjzc2Ny2nktfUpPgdbchDAgpy25fBQacj82UE8
         /uF6uibR49WH/a7keJezs/y5w4B/RNgleqXgCVJzxSDJzmFCVy6QuicslMWN+IOLH2RY
         E9J4JbYRRMHZnxzzK7h/ETZNGG5woHXEAovJuxjTgIcaY58z73KlvoLrThVWoODSIAwn
         XMjVzqxgv2c3wzE0rEuYUtSqwuWGYUhLa2b+pYaH3/7cQu84Y+Whwj/N3n4hv+6i103M
         RKp2ayc5upBX1azMtY2PQ73RfBK1DBSB0Isyu9iFENd6R1arCXu/H/ve/qxXSmjpXNcC
         WaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1xoEkjyKRblkR1BHP/OL1Beloq1vPFS9GT8YDQhgCW4=;
        b=Kglk0cvgoXugqGN612XZMe6gLbfH+siRV71KnvuO6fdbCjziES7i5t9tCjPluC1ObC
         gZjhxFrfhtDF+w1y4TFDfMdFKKYlG/fPebodKCAWf7SXFdahMBk7sVZfUm2U7fW4hiRi
         kfPcccNg4VnjWsC2ZaE1MVknHCXKMygrqZqPflIh6ntWv74imEoD+ATZGILaBRNkvRUZ
         wDL4oQTD/qNgkofDS/9IMRB6nB7v0CaIDl2J2xiEBmHUU+3Ts3fwrap4vecpvpg/bg6p
         aHqa5CR0T5ZIqgXlYPDCuKsKPohbDMZ49YTUGmIG8aAhOcraLaHo8tBDNRj1lArlnB5C
         7VUg==
X-Gm-Message-State: AMke39l/S+I7xwOpbGA43dZ/ZPTDOU/wfBkPyB6zKfEWnhJr7S85xHpyP9iy+PgqBswiiA==
X-Received: by 10.84.232.198 with SMTP id x6mr19885165plm.74.1488474104803;
        Thu, 02 Mar 2017 09:01:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id s65sm18310127pgb.64.2017.03.02.09.01.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:01:44 -0800 (PST)
Date: Thu, 2 Mar 2017 22:31:38 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/5] staging: bcm2835-camera: Logical continuations should
 be on the previous line
Message-ID: <3ef2134adc43bc842339c2e81db48c97a31e43fd.1488473946.git.aishpant@gmail.com>
References: <cover.1488473946.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488473946.git.aishpant@gmail.com>
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


