X-GM-THRID: 6395896934008094720
X-Received: by 10.129.111.65 with SMTP id k62mr16233884ywc.8.1489435534662;
        Mon, 13 Mar 2017 13:05:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.50.212 with SMTP id y203ls4293871ioy.7.gmail; Mon, 13 Mar
 2017 13:05:34 -0700 (PDT)
X-Received: by 10.107.11.196 with SMTP id 65mr9795419iol.96.1489435533961;
        Mon, 13 Mar 2017 13:05:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si3307633pfd.3.2017.03.13.13.05.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so19377978pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mkSixUVlT+VxmKI7sUneI+0cTE0JySUdqhobpEE7QHY=;
        b=NUjDr9vNfCkvwm6Ow+PwAxQNDJV4VxdBI4r+KVEWnFI7H2wKHOnObRtek575HBwgWz
         iC/S36C1e3x63o4YgmaqnP0MERhnucyzzgcqvh/CDDTwAHHmINzR3dy++JTO0EPvT+EE
         kgRD2w3KSEWQHYmH1Ifj/N1C0Q82bPlgTY79H94xG1YgzY4HIZMSOruLLUkMxGGlpMda
         oBh2+E16x4ZPvq0cFRbdBIEiHFbQWWHTxFinRDEhYIjPqVi+HiwUFj2RHe5PKpLMJ7c2
         Pv8jLrpL27tjevQucwZKMw/dDnHPB+bzUYpOXsJK+yelyxtTHXGOriZ+l+NqwwvzLrGu
         +DKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mkSixUVlT+VxmKI7sUneI+0cTE0JySUdqhobpEE7QHY=;
        b=lng2Yq6Vu7WWH6ba71f44oRaJaec1cIR/GMJ/rOC2I4oYyuHplGPUJ8qY9/KXBXO5Z
         jefdDD9cZtj1gmCP/bZ6rVPSCnWDC8NifH1RPa9bJzNWhOC2CtTXOGq+xBe+4wDy9DXF
         G0PWDYVJQjrxdEFnu/tZHO9b/68mVK342kYOXcVoPAl0Xindsijptw5D5yOgIhnT9mlC
         MeK4FeSVnPnGythSZQ84cX2hXDok0+SN6kYP9gxRUdOysR3Hg8rsXjlVuZhoozipyMmy
         IBf/fodHhRONhoPnhEXYDDjlHSg+0M51SlhQoHAGWFNDcvuXZwLeUjjJ2/WfXmipGEG0
         xGqA==
X-Gm-Message-State: AMke39mjlfQZC4/8BXP5eR3qA9pizQJEtFoDRzrmJ47TOgNeA3dVy4sAwuw1gnn98VrRow==
X-Received: by 10.99.127.71 with SMTP id p7mr38726202pgn.125.1489435533726;
        Mon, 13 Mar 2017 13:05:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z26sm34400376pgc.57.2017.03.13.13.05.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:05:32 -0700 (PDT)
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
Subject: [PATCH v2 2/2] staging: dvb-frontends: removed code in comments.
Date: Tue, 14 Mar 2017 01:34:10 +0530
Message-Id: <20170313200419.24210-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313200419.24210-1-arushisinghal19971997@gmail.com>
References: <20170313200419.24210-1-arushisinghal19971997@gmail.com>

Commenting out Code is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in this patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
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


