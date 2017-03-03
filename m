X-GM-THRID: 6393338025823174656
X-Received: by 10.176.5.229 with SMTP id e92mr608802uae.5.1488565273760;
        Fri, 03 Mar 2017 10:21:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls11517462otd.15.gmail; Fri, 03 Mar
 2017 10:21:13 -0800 (PST)
X-Received: by 10.200.39.202 with SMTP id x10mr1148044qtx.84.1488565273370;
        Fri, 03 Mar 2017 10:21:13 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si197842pfd.3.2017.03.03.10.21.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:21:13 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so10548694pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wRLr/szx56EpDsOs9zshBTvv3YGZNeMYBid1epK67i0=;
        b=BvkndWmC/fbkDRD7TRtKKfBNDYhYEXGDiWsj4VV41/qUBY0iDAA31EHfcs028xInp/
         Sg+7d69pKCR/rdd7HgEHBdewe5+hnGhe54pq0OpKz/JtBbl1KrZ5BHnxTFFaKsUdncl/
         qsQ4P1ZCS9YRAnvJX3Nxk4SgVqJ7fc5vJhvPA9Qrl9Y87McN7ppPrDRzHDD+QJ9fc+Nr
         L7mQ+Z/BLRa3jZMCFEYM6ufYrEekF7smvU7JYfWZDRvOyU83u33PIdlmvMxkmO4QfZKe
         Msh/yFG2p5M9U/zeld4WB53a4f/a7UXDAQ1KbvCK7/oITDZRFdEvm9XmCaZ+b5KlC8h5
         +r7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wRLr/szx56EpDsOs9zshBTvv3YGZNeMYBid1epK67i0=;
        b=W6nzns+Umw6mysLxVtYHRbNk733KQhZjNAGJ5fAaVdvYAUhsoUKCohmUhffIgNrGLF
         ZgRg95+CaH+5FbrgM8UkO5fdtWP3PIBaz7oASTqMxTGfPAZ7+Xw5fjYT0NIILrbH1Xl6
         GbCcZiwrB17LBzBTPM13opDcO+sJN5klMRSPvGJg1vPZFLGHV0KU9YGy+M7UZoPByR3P
         qi6BmPPMsgMGv+rQ73viSUGe/yxs0oJN/T81DrBjU9QVNeyi/q6Ic/uaQ3wmzq681/hY
         2PonPjoA6qnDpvdvZ3dAU545+y2F97jCsN3R9DAaPIMKLt7Je+tfha5VO+xVqg4kJF3I
         puRQ==
X-Gm-Message-State: AMke39nwaU8FruISf2nOoFh+pYk84TywWHCLp3edK+OYF5Aydb+IS2FSVCHLelGFvl5Tvw==
X-Received: by 10.99.172.2 with SMTP id v2mr5064987pge.100.1488565273117;
        Fri, 03 Mar 2017 10:21:13 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.136.156])
        by smtp.gmail.com with ESMTPSA id q73sm24690844pfa.129.2017.03.03.10.20.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:21:12 -0800 (PST)
Date: Fri, 3 Mar 2017 23:50:53 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: bcm2835-audio: use min_t() macro instead of
 min()
Message-ID: <b215b2fe26961e343950ebe0899d2656c2cfb117.1488564925.git.aishpant@gmail.com>
References: <cover.1488564925.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488564925.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

use min_t() macro in place of min() to replace the two typecasts of min.
Change suggested by checkpatch script.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 09168e7..c54bef3 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -856,7 +856,7 @@ static int bcm2835_audio_write_worker(struct bcm2835_alsa_stream *alsa_stream,
 							  NULL);
 		} else {
 			while (count > 0) {
-				int bytes = min((int)m.u.write.max_packet, (int)count);
+				int bytes = min_t(int, m.u.write.max_packet, count);
 
 				status = bcm2835_vchi_msg_queue(instance->vchi_handle[0],
 								src, bytes);
-- 
2.7.4


