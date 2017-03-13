X-GM-THRID: 6397080703466471424
X-Received: by 10.107.40.18 with SMTP id o18mr9365206ioo.6.1489436433780;
        Mon, 13 Mar 2017 13:20:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.72 with SMTP id z69ls4327372iod.16.gmail; Mon, 13 Mar
 2017 13:20:33 -0700 (PDT)
X-Received: by 10.99.123.24 with SMTP id w24mr17038129pgc.108.1489436433296;
        Mon, 13 Mar 2017 13:20:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si3259377pfa.6.2017.03.13.13.20.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so19421907pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AeroX9SvR5fqrIqRbQgkCKpH0Cj7y4uyv2By17iUG9E=;
        b=p9CacZpHIx4AxGycxOtuFbEDEpx1CslDBdqRUZIEDCrP6Fzl/IjGPBuG1Ls1wmYCjc
         Z3udwT74dcYunkCfjNgYKuCqwO4FZzMG3vIJ7vojJX88F7PoQLHXHwQse2IrU4vcRUdv
         ESpiSKdBb6Ig2RcMmWV9/Pr7hxVZhxGLOTUCbZrDd6MjpEzWtSmlkK6Hdmt6CzdN9bBQ
         rb7raI0rR3nM8H1DXqbjs1/aSolcsQIruyz+hHQZaCBtOa7X6E4s80qm/bm7/rSk7sqP
         RL3/r7MAbMpMfz1OvQBrwjGXCkAkf2wJylWS3tYq2h7jpTMGJCvopP26QlJI1yE2nE19
         W/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AeroX9SvR5fqrIqRbQgkCKpH0Cj7y4uyv2By17iUG9E=;
        b=cT/eo1o9TEcC4OCp3AW7XFDRMAoqAOgI05nYUW3I1cJAILF8In+n5WamQMRgvGJKhA
         VES4dHqFn9H5F8VVfO8oalDHPSs2yTj71zgfoquxJpa6UPtoUwIqv8jFl/YGUJav9WH4
         xyKy8dCFnRSvIGNDiCu9HANJ6pKi1FubIY/LDJ9oZ1VzZJBmlo4k5T7PFjf7uQchZuWs
         IRObssIuzN0RuRW190FY9AltNtsSc05a0tiQqHfTOYXfFj4PMhnnh0Nl+1yiIvnds7pt
         5dHXjl0ALJAX0QG1cbKPqrEaqo86UF6oPnoLZrwA1lyZhllhCT2+7zP1AusbkwbIGFjW
         V5vw==
X-Gm-Message-State: AMke39kOIpElIe8ykQpYE+H5NtKkOb21xNYTYkHS3aGl3LvrOraWb/eUPAH53O/awx4YNQ==
X-Received: by 10.99.122.13 with SMTP id v13mr39662869pgc.31.1489436433087;
        Mon, 13 Mar 2017 13:20:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x2sm34246762pfb.49.2017.03.13.13.20.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:20:31 -0700 (PDT)
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
Subject: [PATCH v3 2/2] staging: dvb-frontends: removed code in comments.
Date: Tue, 14 Mar 2017 01:49:55 +0530
Message-Id: <20170313202004.24382-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
References: <20170313202004.24382-1-arushisinghal19971997@gmail.com>

Commenting out Code is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in this patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
 - Improve the commit message

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


