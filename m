X-GM-THRID: 6392947471116402688
X-Received: by 10.107.134.1 with SMTP id i1mr4871430iod.10.1488481037450;
        Thu, 02 Mar 2017 10:57:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.73 with SMTP id 70ls2168460iou.37.gmail; Thu, 02 Mar
 2017 10:57:16 -0800 (PST)
X-Received: by 10.98.211.137 with SMTP id z9mr3107459pfk.34.1488481036807;
        Thu, 02 Mar 2017 10:57:16 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si34430pfb.7.2017.03.02.10.57.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:57:16 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 16so1658507pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=R2+hYPn1yKoq18N66LKcKaad5lpC4CBnmMYNCW6VLk1eXpYp9dcFTWfO9bU+JiQg3j
         17rF6X/4CvqR+JDRqMWd7nVRRcHDih5V3y58UyUbRYRuJyx1UlMINUrQssZe4KhqAz7v
         3R8VdQDvm5VfS4igeEITOZIyh6sc/vbF4gIBEaYOr2P7wpYg5hBf8XppUBdqzoEL5oQu
         Yw6KOMZ9nhb+G4yyT+mPI5IVtvOvvUXIcrOC7Z7EkqXi6DaLGwUYo2g84LUoNJAnu93R
         w2hvCBlXhk1EyOnnQ1dB6R1+1L2bJJkMHqZh96hBDdtGNst41HrV2/fr1jF0aiEjM8rt
         g8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JvSvrJ9W7PMgqOyNSjFUvzycrMQhbH3g6bfdNh1vBZg=;
        b=I7BTprlFJ0TK/g9LVGpsJUE7CN8AV4/m8oRYn6Eb4iJk4fFcqvTqz1dluj6Vl9qbaj
         IA2cNC2Hk7rfWi0VDjY+zjojGEGYh676Nt9wcp6EMWAPnf6HVgSodz0H77eHd8+8YvNC
         K8mNDzbJ4QMyK7agSeqgb2kmehXCcQiuxlpunuWVFfQQCqUNTuR2nhNMEqIp0oqk0mDH
         LE4eTHIxwH/ZtJGYYutg2lZwNlEG4rhQF/ToFfZ3+2jBwE0X2nXoYCg91VmlCJZ6FbZK
         jBHn4LUewT2rgsLFhxvFt8sBYNqerKsdM2rzFNKfP61Y66jtGVYlLlEr27YvUzxXVXUQ
         PjRw==
X-Gm-Message-State: AMke39llNNIYFJvf8JSdIx7K45vrzgykFtU+MlurubvAUQxkhTxVzLURS7P9e0ZIngEvOQ==
X-Received: by 10.84.197.131 with SMTP id n3mr20702569pld.43.1488481036627;
        Thu, 02 Mar 2017 10:57:16 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id m6sm18622976pgn.58.2017.03.02.10.57.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:57:16 -0800 (PST)
Date: Fri, 3 Mar 2017 00:27:11 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 4/5] staging: bcm2835-audio: remove extra blank line
Message-ID: <fb39b13393c7f9ed193e5d9af84886b58eab1aed.1488480443.git.aishpant@gmail.com>
References: <cover.1488480443.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488480443.git.aishpant@gmail.com>
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


