X-GM-THRID: 6394409513300000768
X-Received: by 10.13.226.145 with SMTP id l139mr7039842ywe.95.1488830236426;
        Mon, 06 Mar 2017 11:57:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls13041586otg.18.gmail; Mon, 06 Mar
 2017 11:57:16 -0800 (PST)
X-Received: by 10.129.29.2 with SMTP id d2mr2928210ywd.85.1488830236059;
        Mon, 06 Mar 2017 11:57:16 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si218692pfa.4.2017.03.06.11.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so3807016pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rJ7/cdrkqaMjZUYYZwcIAv5hPok9T6+kqjxQJUHXfOs=;
        b=cfZ75ZFxJmWY5GKlYfPrp5MCVle8fBzMXxt6KiAHRJcu45JxgVowi4C7Yd6F//GB/q
         Tnote1hilLqSBbQu1l5pABzNJRWyYAlQQkenrkKB1f1PG/d+zqfLhc/cpCNdTuIkk4oH
         lQz9qb5AmZ0pR5AxU2t+KkgLUBhy6/uePFBJAmGAzjU5zwxRTK1oYgsRyCiS795n3gS7
         +OkeF/ZoncZzuTukXs5fqnZYwpreKu+ybNkB6nHYk8XQuKCQ4kkKpeay8wF5N1CsMjrJ
         LC1IoKsCXfTWEjqTDzaBq6cCEwbW2nCWDvphy579KloOVr5USjNqUQIuL9bovTwB+Pd2
         +KzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rJ7/cdrkqaMjZUYYZwcIAv5hPok9T6+kqjxQJUHXfOs=;
        b=XQMwGw5pI6TNL5Eb/1uufLqU79dcBulnnKpy2yhyDWbGcb0e/vTorspWIayfkxrZBY
         Ft8QAcZuyoVgRUVYVJoMo9GcYl5evvq2ucob0gl6UlDR440/sKLujJbIdfdIO7KPcR9M
         CwtofDXLd/Kcfil6DUqtT1GNfDLVoo+pu78C2kZ9tXZsuDTqbBTWGAgOIz5Wj35yup1j
         WaDgJF9DSNf6AzcSMFfWWnR9jgwtX0q2RWsRYkP5pDLN9oFmqsf4P/A52dlqE8OqVFlc
         I44GsJvYDq3IQDln96EEUzkIjenasUS8VYyvDT7iIZumtlyB3J31hJR1x5Oi990ZKB4N
         Ri6Q==
X-Gm-Message-State: AMke39lggHCJtERcc0ofixBttlWN2ENRafckQUnRT/d4YS4XteObrBl/nrS/jvQcvRy4cw==
X-Received: by 10.84.137.106 with SMTP id 97mr28927528plm.68.1488830235814;
        Mon, 06 Mar 2017 11:57:15 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id d63sm41151885pfg.132.2017.03.06.11.57.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:57:15 -0800 (PST)
Date: Tue, 7 Mar 2017 01:27:09 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: bcm2835-audio: merge two if conditions into
 one
Message-ID: <e6a2881d03ee9414c462177f5b437bc1a1733679.1488830058.git.aishpant@gmail.com>
References: <cover.1488830058.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488830058.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch merges two if conditions doing the same work into one.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index d60d702..f4ce4801dc 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
 	audio_info("Alsa open (%d)\n", substream->number);
 	idx = substream->number;
 
-	if (spdif && chip->opened) {
-		err = -EBUSY;
-		goto out;
-	} else if (!spdif && (chip->opened & (1 << idx))) {
+	if ((spdif && chip->opened) ||
+	    (!spdif && (chip->opened & (1 << idx)))) {
 		err = -EBUSY;
 		goto out;
 	}
-- 
2.7.4


