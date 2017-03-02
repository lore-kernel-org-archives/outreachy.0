X-GM-THRID: 6392947471116402688
X-Received: by 10.107.50.198 with SMTP id y189mr2043814ioy.81.1488474123575;
        Thu, 02 Mar 2017 09:02:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls6960303otl.41.gmail; Thu, 02 Mar
 2017 09:02:03 -0800 (PST)
X-Received: by 10.13.236.204 with SMTP id v195mr5719128ywe.62.1488474123186;
        Thu, 02 Mar 2017 09:02:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si1596928pfk.5.2017.03.02.09.02.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:02:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so9883969pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=bnzL8cmTUEJ9U+NwVYw9LNzwtPBE1LCh7OenPKdB9BLew/6+6FGe1APKY8VpX1ie/j
         qGyy8DsaczpUd0xYccAvzbu/Vm06Jr+3rat2TGTQIYsb4wMLQi7tvfElB8sYmxiOn7bs
         croJSquNBKMUYtm/h/n9p3O33S1KoVFoNqujrXh/Ey+wxrMW9/0rXpbJNccOf1+Es/XG
         lF9rdfWSPQ+4J0gkpGhbo1H+ggwkjN/T8Kei1c01izWu+xIozLYbOnocbMpF7hIoESNk
         U4Dxsoan1a6VinddazDKkb5+icWZ3Ujars/7xpMwcgh9uwq7wDtb6NjAnjG5XgI/909P
         8nAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=TZ5+kRW0Zw6wU99Y/6xSmwWBNFCWYrInd5r9cFZhoxIlv2PU7p69rlnILWhhGFcbJs
         g8KT7bsy0f5LScp7jvyKQeMIGOKjJHBih9cmKJpF+IC9uPIlDP9Nyu2DDWPwdMPVl7vS
         AYmcUrcQXyzPx1d4WoSYIuE3HdgE4VJ3zvPB7/1D/vj4fKjmGnGO7C6ZmDqPbo0HJ7ff
         +Na97aIbD00+iF+RJcx+fNLpAFWSpYtQ/F1rQBl7eKqrVoP2mUmKDfo/i8KKk/x20/NO
         y0C/+yw6ZSIvGRWmusdijrht25B6igNq1P7zoX3fpzr6M9h5SES5L6F/iQNPVOi5WFbc
         EFRA==
X-Gm-Message-State: AMke39mWPVEheXKLq6YkKm5R9BqDRC3msPq9cWiHI0PPRA9atOlZR3OZC5A288BGGGKRnA==
X-Received: by 10.84.205.70 with SMTP id o6mr20349455plh.176.1488474122934;
        Thu, 02 Mar 2017 09:02:02 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id t22sm18180706pfa.114.2017.03.02.09.01.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:02:02 -0800 (PST)
Date: Thu, 2 Mar 2017 22:31:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] staging: bcm2835-camera: fix block comment formatting
Message-ID: <eba770200e9f379dfb4a31dbbd1a0b02fc0637a1.1488473946.git.aishpant@gmail.com>
References: <cover.1488473946.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488473946.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix block comment formatting to suppress the following warning thrown by
checkpatch: Block comments use a trailing */ on a separate line

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 17d34c0..80b2062 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -245,9 +245,10 @@ static int snd_bcm2835_spdif_mask_info(struct snd_kcontrol *kcontrol,
 static int snd_bcm2835_spdif_mask_get(struct snd_kcontrol *kcontrol,
 	struct snd_ctl_elem_value *ucontrol)
 {
-	/* bcm2835 supports only consumer mode and sets all other format flags
-	 * automatically. So the only thing left is signalling non-audio
-	 * content */
+	/*
+	 * bcm2835 supports only consumer mode and sets all other format flags
+	 * automatically. So the only thing left is signalling non-audio content
+	 */
 	ucontrol->value.iec958.status[0] = IEC958_AES0_NONAUDIO;
 	return 0;
 }
-- 
2.7.4


