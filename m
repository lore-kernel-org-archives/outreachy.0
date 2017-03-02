X-GM-THRID: 6392947471116402688
X-Received: by 10.13.228.196 with SMTP id n187mr5121614ywe.109.1488474140818;
        Thu, 02 Mar 2017 09:02:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls7818467otd.42.gmail; Thu, 02 Mar
 2017 09:02:20 -0800 (PST)
X-Received: by 10.157.39.22 with SMTP id r22mr5379853ota.151.1488474140405;
        Thu, 02 Mar 2017 09:02:20 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si874230pfz.1.2017.03.02.09.02.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:02:20 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so2877184pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=DkPojmD59HJmEoehU+hrYxjV2WKXEGf84/PJbWNCLYzKhpVHMoQlgKH6owdSL052cj
         rbJBXozwh12WivCfdjColQ1bo+uCIrRPGR/krueemozHjMUgsX3Q6vydpUW4ibUZGuIS
         fNa541L0bMVuFY1InEwkUyxS0ZV3EoQKXRVm4233i6vz4AKkRJ3j4GBzY7pG+ZOlF5yQ
         AjXbjuHYarM5KL3k2TfY8ZRl3X9WTl9VKkRl63hoM1SKdmip42Wi7ROZDqcIXGiacbgV
         IDR8plo5ii3DD8TG4v1Jk+6aUqgJuiH5b/dwa0q2lhhxkgLRHAFmQOBJCO/XHxU9RAz4
         lCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=QP4K5r9irEHn9di9ctXpYA33hYCm9aLZCa6FPB7SIqYe58UcGV7Elb9cvDNyXe9cFk
         pIKNd/2sfkyslbEfT5UIiiWAlHXqruBToneGay07ZJGsx1ZHHzHDOyr3VeFQD5pgxFrP
         iaYUmZrAeaNEaKFk/Zo1QjyNNlBgxzOkf/4fbPhcRZDv7qvvpW1LukrlG+4wzrElvdl9
         gmHUWuo8FuY1+xXll+l87Cjr1r+CMWgixooBXXPat2P7uMxMtS3jKrZR42Bg5ohbflue
         LIkkBOsf66U06sDzYb+ecJWje3Ly8CWNEF1kCkxm4aK4ep6uyT+1wLMUNOL07T21P2MW
         2bug==
X-Gm-Message-State: AMke39n8Uix6sj5z02pJSVOMIx8PHr+MBsOgNwK7t/E7kwGeXtjeCLHC+fx8s8fWfLa+UA==
X-Received: by 10.99.132.198 with SMTP id k189mr16676798pgd.112.1488474139949;
        Thu, 02 Mar 2017 09:02:19 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id m67sm18218873pfj.32.2017.03.02.09.02.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:02:19 -0800 (PST)
Date: Thu, 2 Mar 2017 22:32:11 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: bcm2835-camera: remove extra blank line
Message-ID: <fb39b13393c7f9ed193e5d9af84886b58eab1aed.1488473946.git.aishpant@gmail.com>
References: <cover.1488473946.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488473946.git.aishpant@gmail.com>
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


