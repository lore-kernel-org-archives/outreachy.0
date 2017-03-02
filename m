X-GM-THRID: 6392947471116402688
X-Received: by 10.107.16.8 with SMTP id y8mr3611704ioi.99.1488477416499;
        Thu, 02 Mar 2017 09:56:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.6 with SMTP id q6ls1802727ioe.4.gmail; Thu, 02 Mar
 2017 09:56:55 -0800 (PST)
X-Received: by 10.99.151.10 with SMTP id n10mr5430069pge.9.1488477415848;
        Thu, 02 Mar 2017 09:56:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 207si3140pfu.8.2017.03.02.09.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so10014244pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=IpSGgmCJDFV37wIAsFulbBee+4N7+YGnkVMOrCAYWyjmb0P/fcb0Pv6SAnsiE4zzrD
         mIWayJWwDzQDtI/kkBc7fn4YGSGP5ycGys4E2tcXPQYUIS6QHE6dEeg4q/pT+BB1u7/c
         3J78cvo3DsG8ASEW2/w3dZtCdJ+cPYAbu8eustHNezy6k6sLQu8zl61rBwg3bvQ3Rc13
         tGeLAR2RkazGK+X6ntGAYy4cIDTCOoA1Gykj1BOxbKvxU+y+YH/oI7lHTaA/frqsA4Lw
         AndA4MvO/ffi7HXY4IdWOGdMRk3UE/68ZzF3Z2hxJUxMaHXLfbptyT5EiVsyhwgkhL9C
         SEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=AMw1G2eJ9Mcw+8ra1Gqh5RzbyJBvAraiLjn06xuq8FyHtBrv8iQTmCF6Ead6EWtQ0O
         MiD2wjpUtxr0g4XhSzeSDyPp7ZOxQBsWt9anCBgwq9WTocpmAAV445GMPO+bUEvLnPza
         5wd3Ub8PsmPHH9S0Ar26ivazXZ+uBLMBNrsdcnwxs8Ssaq1G4BHZP4HfpP4z43uT5TLQ
         CB6I0s9CAymZsjcKTDNE5PBhcmzkD5FRyAzsNAMDRlJg9XJ0UP+LYT65JIjy8+0Ze326
         X2V0w8OmEZ6+MZ1A2raj6vwjQENII8lgIjkwjwuQRnWqDCNg3YW5r+hTBLIQTjCbN8iE
         OxGQ==
X-Gm-Message-State: AMke39n7eXejwUFrFUP1loui3zRtXWuLVmWY16rUeWSVGlf0iYsl9yv1E8WLX1LpQBGp+g==
X-Received: by 10.84.172.1 with SMTP id m1mr20221873plb.5.1488477415664;
        Thu, 02 Mar 2017 09:56:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id h9sm18351112pfd.103.2017.03.02.09.56.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:55 -0800 (PST)
Date: Thu, 2 Mar 2017 23:26:46 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/5] staging: bcm2835-camera: remove extra blank line
Message-ID: <fb39b13393c7f9ed193e5d9af84886b58eab1aed.1488477174.git.aishpant@gmail.com>
References: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488477174.git.aishpant@gmail.com>
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


