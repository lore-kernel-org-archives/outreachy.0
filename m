X-GM-THRID: 6528063050610638848
X-Received: by 10.31.128.17 with SMTP id b17mr1320037vkd.49.1519933121260;
        Thu, 01 Mar 2018 11:38:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.35.86 with SMTP id 80ls873108uae.12.gmail; Thu, 01 Mar
 2018 11:38:40 -0800 (PST)
X-Google-Smtp-Source: AG47ELui9MYEh1WXlKq8wR4CUItb/8gevQizcIuHcbFRpuYtDhZWcFjSEvLphkLp7LGFWp4eYHTX
X-Received: by 10.176.75.2 with SMTP id h2mr1350709uaf.14.1519933120249;
        Thu, 01 Mar 2018 11:38:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519933120; cv=none;
        d=google.com; s=arc-20160816;
        b=k9JHW+PryQSOGyFyn+Jkp07Bmps8DeVvrpAo+m7tdj5iXPQzwbUFB2domUDsy03Tih
         hDIfynawgE1m0W/ket3517WhFzW4TvrhE6i/gqmMCAsXE7g5GqHsbFAj1jMS8S+Y27AB
         eeEURpYqUxtq8WfpmOSYDyw4xImmstKOMwR38akpxT/0OiccsUHPqBbHTSjpcObJMqMJ
         djxQ+sN4y5AIGn1j7UyYgm0lnsJfw1D417wPuqUfBPARmcBLdG3ySwsB0QmXDmrXY+vB
         yNOWoWYJvUw0jlXG329Zro/x0+E66USWuR8F5ugvwjol5Aa3IWkEaa2ZvSbZ88ZZliba
         Z6zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=2jHVoeI8FmhWlYGHC8L8bBHvAq/pQ6l/VHjkW3o+tBA=;
        b=AmAN5pFza4hx2PwyarZ9Zv/H85w+wrBJfhLwt2keJyldh17mxW+flKtXNnSHX7o1un
         dj8IHjmd4OdWZTK0bGrMzv5qLce15SNviaDLk4yqS+K0n+wh0wtSHZwDoWBFr6P2fgZy
         yM04eMjSIr+r+potXD2ENsZf0n5il/OOnmzMzg4phE0mqBrQNbZ53tSKCz49CM7b3wlV
         DtA6uQVU/584NBbfVDKSYT1i0sBWWWmtMxELiNe6QCarvyduCNNbI1TVDz7TkWrj7DBY
         ddG6CesvBCw4DgwBsFJqYt/PdIKTHlFywD5nSP08WoNqJssLvCTkk0KlHjO9jPUUsP0Y
         wtvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SoBO8EDg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id x135si283582vke.2.2018.03.01.11.38.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 11:38:40 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SoBO8EDg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id bb3-v6so4251634plb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 11:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=2jHVoeI8FmhWlYGHC8L8bBHvAq/pQ6l/VHjkW3o+tBA=;
        b=SoBO8EDgFn9od71wWpuU4Yb1Epa1nqeWSHQqk0gq935hHG5CXRLSRNFc84iQlM2KLE
         NkpIldPYRQ/c6TSIC2xeOFW/JYwN47iFjv45YB1MOX3etnDfWXnQ4eyp6l5XEK3Tp+Ly
         s/5eHLU1Ccia4ikhJSX9bozjBi7FOhxuJ0lsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2jHVoeI8FmhWlYGHC8L8bBHvAq/pQ6l/VHjkW3o+tBA=;
        b=IUfSQtiEOuazmrhD2+MVnFopc3ca+2boN0TJVWBpfiZ+eRJRgz7pQzJsZ9+Kpfee8i
         /+axO8UlZimFR79Hm9fucQvo6hGqy4gJhW8zBomQ0YcvwE2PWbuN2b5ucFnU10r5GBkj
         6pOxZV21aciO3/VdDcSCMvrTSHPr13nFiskP6Y2TE4TO5kingM6e5Als7tkC00Ahtc3t
         eCyhdhyl3Lsbd0MxF7SkOvJaSQ1E7GfOgvI+TcezSJqB00zFeKxk67BqPHSYjQ5gvSMH
         rg6m1AN631iCCtZbfeOBkFXyvWrpT1pP6DI/RKhvatIrm2wYpeRd9u+ROT4QrDhxM0j7
         kv0A==
X-Gm-Message-State: APf1xPBuYJCVy9fZZquMx0EF3nGamUpsMmE+Gppjdr9HY0bvOdVL2Iuh
	409Dq9DmGVYP+p5FtbZcTjexNA==
X-Received: by 2002:a17:902:e85:: with SMTP id 5-v6mr2891106plx.420.1519933119297;
        Thu, 01 Mar 2018 11:38:39 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id s78sm9996447pfe.162.2018.03.01.11.38.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 11:38:38 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: eric@anholt.net,
	stefan.wahren@i2se.com,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: vc04_services: bcm2835-audio: Add blank line after declaration
Date: Fri,  2 Mar 2018 01:08:27 +0530
Message-Id: <1519933107-15683-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Add blank line after declaration. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 5f7551f..22214ee 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -209,6 +209,7 @@ static int snd_bcm2835_playback_close(struct snd_pcm_substream *substream)
 	 */
 	if (alsa_stream->running) {
 		int err;
+
 		err = bcm2835_audio_stop(alsa_stream);
 		alsa_stream->running = 0;
 		if (err)
-- 
1.9.1


