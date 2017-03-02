X-GM-THRID: 6392925539112321024
X-Received: by 10.157.12.189 with SMTP id b58mr4928832otb.41.1488468983698;
        Thu, 02 Mar 2017 07:36:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls4779988otf.16.gmail; Thu, 02 Mar
 2017 07:36:23 -0800 (PST)
X-Received: by 10.157.7.78 with SMTP id 72mr3380604ote.55.1488468982982;
        Thu, 02 Mar 2017 07:36:22 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si1544857pfa.4.2017.03.02.07.36.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 07:36:22 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x66so7041816pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 07:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=qnivrY0mQ3iFKS5363UA+LO0UgU3aahbDOW31boaXmq+EHZn2AWwWWVT4JNK4D9U/m
         5dW2QWZL5TdNviKfd55GF3FvdcS21si4W43N+VwQOxGU3kZsfPrOMiIeyo1GP7dGBm6j
         dildvuHUVosBJa5389v75IpzO2GkIob6ytQr+jYvDNbAE/EI1XuikDAditcvy3fnlMJk
         yU6F7USj5cPpXggJ7r4Dw0yfWRyjV1lYUoH/mrCPtqrq3IHcewX56++Azq6d4ZY7XtKL
         QliXIS8VVU+3GfTlTwbf49CBJJy1tnhCseXTY8HUGLkXilrDt6F3GgtXyNqZQuHz8w5C
         5eyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=GdxC5i7TnzVVeqZblkeiWuqyT0hNMjmD2krZnL/TWRlkNTEsvC8oB0yfbpJ3evJLQj
         CCDqgak54O3h8mJqCZNHfppNnt+fbcL8Civ7B3bcYW+ap7PtATp0b2GhCmuPBWCR9d+d
         ZQ8MqlOD+pc8OC3VZNir3IqR4gtdhXvgg1weL+p1cSuc4rK5MMoZHdyWjictn2N69BID
         FkOYRYc+NCzuSDX90Z5b4C0bBrUMQ1w5z84Hxpv43dSjbg6WtT/HJTIZORI5PywRBVWd
         mu4ZDBtn2NY27rNvV1J1ECgM5cbHGyu4C0j8GoRGF949vgc2UUJa4gCUosrbnnn+fF7r
         VfFA==
X-Gm-Message-State: AMke39kHlS3KPxXPu/ftWmZ2WTgBHHn9p7RhBY2WdIRLLkPSIaKhW14h1Kv4AOn0uqnsEg==
X-Received: by 10.84.254.75 with SMTP id a11mr2456162pln.57.1488468982751;
        Thu, 02 Mar 2017 07:36:22 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a62sm17940188pgc.60.2017.03.02.07.36.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 07:36:21 -0800 (PST)
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
Subject: [PATCH 3/4] staging: speakup: identation should use tabs
Date: Thu,  2 Mar 2017 21:05:59 +0530
Message-Id: <20170302153600.13803-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170302153600.13803-1-arushisinghal19971997@gmail.com>
References: <20170302153600.13803-1-arushisinghal19971997@gmail.com>

Indentation should always use tabs and never spaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.h b/drivers/staging/speakup/speakup_dtlk.h
index b3b3cfc3db07..46d885fcfb20 100644
--- a/drivers/staging/speakup/speakup_dtlk.h
+++ b/drivers/staging/speakup/speakup_dtlk.h
@@ -24,11 +24,11 @@
 				 * usec later.
 				 */
 #define TTS_ALMOST_FULL	0x08	/* mask for AF bit: When set to 1,
-				         * indicates that less than 300 bytes
-				         * are available in the TTS input
-				         * buffer. AF is always 0 in the PCM,
-				         * TGN and CVSD modes.
-				         */
+					 * indicates that less than 300 bytes
+					 * are available in the TTS input
+					 * buffer. AF is always 0 in the PCM,
+					 * TGN and CVSD modes.
+					 */
 #define TTS_ALMOST_EMPTY 0x04	/* mask for AE bit: When set to 1,
 				 * indicates that less than 300 bytes
 				 * are remaining in DoubleTalk's input
-- 
2.11.0


