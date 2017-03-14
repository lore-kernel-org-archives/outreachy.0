X-GM-THRID: 6397080703466471424
X-Received: by 10.107.136.36 with SMTP id k36mr10010294iod.41.1489499736282;
        Tue, 14 Mar 2017 06:55:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.137 with SMTP id f131ls2266256ita.7.gmail; Tue, 14 Mar
 2017 06:55:34 -0700 (PDT)
X-Received: by 10.99.114.70 with SMTP id c6mr18868584pgn.17.1489499734657;
        Tue, 14 Mar 2017 06:55:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g82si3657195pfb.5.2017.03.14.06.55.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 06:55:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m5so312104pgk.3
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 06:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6OsUeh60fjd8Sk4YcEGBDwgfpQJVjKPok91g6FusZ8E=;
        b=VOgLI80oImmStbG0SszqSjjE6SWu/vKVvTcrQIg/1wlJv6GI/lKB5jqAfcHjFM4vfG
         ZZcSv7w3S4Is9rs5/tP8WxypLbRr1okLUfKn4crGgQ4RepMzn0AE4mG6HJYtYJ6+0/K3
         Ctt0IIqNO5YTzgJO41VT6HAMbrk987H/FIfGt8Du2ER6bdnillnop817Iu3/Tm9LJSNF
         JdBY8NEyylN/xde4GKoSCN8h4LppTom8gJlc2zAxFXbI6yIVwNw2qHEOrgzYv1LPxQfR
         MKRlzYM6GVxkCkvkkA27AFUlCF5hQnkn0U15V4jUDnCN7NNZRAonyK4Ji+Lcb12MQyiY
         eDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6OsUeh60fjd8Sk4YcEGBDwgfpQJVjKPok91g6FusZ8E=;
        b=fYZoQdfTr/3NM4UVVQMYr636MhXIR4rk22f6wgb8po9YGmXCixvN0tKxgt3BAZ1coo
         UlqeYIo9kVAaLDWWPiYCig/Rd+TeGLlb/D170yV6XsXMnTCoykO0jUHHnce7t2XXAfLj
         +zBpSfecFDQ0S7W+/hz+hJiN7azCRI4SUbx98zcCrTiAnddXFfrb3MGjs3RVoKvLNRJa
         4MjGMjdr5oFeQzsOdwyy6nGxhus6i/UIDtt6ZG4pmqQwjsCXngufblhVSRFXXxPu2xHc
         cbBn8MllCteu3ntdQtUG1+r41Lyucl6JTBHt8DFuRrDljvKjR1qu/xP3BnzmbjJt90lk
         H7Ag==
X-Gm-Message-State: AMke39mx75vL3uPLscvCbXQg+/aFRGGPoSqWhmBXYzZpEaneS/H9m2Iekalyq9CldBZQQg==
X-Received: by 10.99.110.138 with SMTP id j132mr42295060pgc.217.1489499734453;
        Tue, 14 Mar 2017 06:55:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p16sm38944858pfl.97.2017.03.14.06.55.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 06:55:33 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v4 2/2] staging: dvb-frontends: removed code in comments.
Date: Tue, 14 Mar 2017 19:25:07 +0530
Message-Id: <20170314135512.11198-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314135512.11198-1-arushisinghal19971997@gmail.com>
References: <20170314135512.11198-1-arushisinghal19971997@gmail.com>

Commenting out Code is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in this patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes since v4
 - Improve the commit message
 - Added the changes done in v4 in cover-letter.

 drivers/media/dvb-frontends/drxk_hard.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/dvb-frontends/drxk_hard.c b/drivers/media/dvb-frontends/drxk_hard.c
index 7e1bbbaad625..2fe493768003 100644
--- a/drivers/media/dvb-frontends/drxk_hard.c
+++ b/drivers/media/dvb-frontends/drxk_hard.c
@@ -5283,7 +5283,6 @@ static int qam_set_symbolrate(struct drxk_state *state)
 	/* Select & calculate correct IQM rate */
 	adc_frequency = (state->m_sys_clock_freq * 1000) / 3;
 	ratesel = 0;
-	/* printk(KERN_DEBUG "drxk: SR %d\n", state->props.symbol_rate); */
 	if (state->props.symbol_rate <= 1188750)
 		ratesel = 3;
 	else if (state->props.symbol_rate <= 2377500)
-- 
2.11.0


