X-GM-THRID: 6394401254530875392
X-Received: by 10.200.1.193 with SMTP id b1mr1460334qtg.67.1488984558203;
        Wed, 08 Mar 2017 06:49:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls9843otw.5.gmail; Wed, 08 Mar 2017
 06:49:17 -0800 (PST)
X-Received: by 10.129.82.134 with SMTP id g128mr2725488ywb.18.1488984557851;
        Wed, 08 Mar 2017 06:49:17 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si620315pfd.3.2017.03.08.06.49.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:17 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so3637042pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=nZCmcLR3CZZa5pZYuAxBvF/TeI0r3eIMJpwW87bwkgbLCOLnBlCxsBVHEAQh2RMRFQ
         oEJnHxZAYFjAy1Gnex+/w//SxSIUnVy9rmKEB6P1q+JkujE5cXt3yZ5EIid1TF9TRGmU
         MB22ogTleiBMrIRLyYDB4UhvTEtAQG3JxGUceRdWiC0A8RMgZ4jFPfC544lTlV1N1uZk
         x4V4qfdvqQK5l7BFXfyuBQu/MBBjt7jNxFuYkqZQHToNFylQln7AlLZY48BNgcIyMkxq
         hreE6Ov4QJw6XrN9Dn6w02agFle3aaPcKZ6uv5FIBsJkik65SuS0LLhrsFI/iM2K6Ca3
         89Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=EvaxY/jaFcaGXwTGfaSEr/rRQ7/Am5jDcVAyV3oAo4FAtdR/qM1QYrS5Iq6rG5erHw
         oL2Gv11la2N5WrLL7TDzi/S6zxOJEQcYo/JUDiAyxLOD7qD5C7d1z9KyDFLPdHk0CkV1
         OXJxIiIlDIi1yt0Tb3advMpGk8gOHzHVuu3HFGiU2mZD3id8bsrwu1tsZeYmri4hbLUI
         +bYYB6ezrn7s6Da/Vfv4Yus5U5ZrdyzZ242f1Xw99qpAdY7mrmwy25fSOqSlQqt3sKez
         FVxGwE9gAGflN2i3LY1UrjeyUSNmvCP+Z/NxrmUGXcPzwGVGTMWHTfeYjbkok4u2kNpL
         RyIQ==
X-Gm-Message-State: AMke39kv5LshJYQS6dlo3xe2IIahg+zFvvzaPlCIK69Oi1hxiFD7NramSpemtppwwpVgSg==
X-Received: by 10.99.210.81 with SMTP id t17mr7537909pgi.80.1488984557463;
        Wed, 08 Mar 2017 06:49:17 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id p6sm6851532pgn.40.2017.03.08.06.49.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:17 -0800 (PST)
Date: Wed, 8 Mar 2017 20:19:13 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 3/8] staging: bcm2835-audio: propagate PTR_ERR value
 instead of -EPERM
Message-ID: <03b75ff90f8658b13fa967527392bbf8d83b6eac.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is better to propagate PTR_ERR value instead of a hardcoded value
(-EPERM here)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index d2686b4..c5f3be8 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -435,7 +435,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
-		ret = -EPERM;
+		ret = PTR_ERR(instance);
 		goto err_free_mem;
 	}
 
-- 
2.7.4


