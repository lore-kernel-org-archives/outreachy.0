X-GM-THRID: 6395896934008094720
X-Received: by 10.129.71.9 with SMTP id u9mr8078043ywa.142.1489160804571;
        Fri, 10 Mar 2017 07:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.74 with SMTP id b71ls2626488iod.32.gmail; Fri, 10 Mar
 2017 07:46:43 -0800 (PST)
X-Received: by 10.99.143.24 with SMTP id n24mr8852568pgd.132.1489160803664;
        Fri, 10 Mar 2017 07:46:43 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si1828634pfx.8.2017.03.10.07.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so10685289pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=J7Kfvk1rO//LZt+jlsxWPZ5TkRpRuwEEToCLLmEvdrLg9xVV5oOLQtorrE5CDUfXN0
         su1/uSkmqz4mNP1I8Raz/l6Zj5xE5egrq2A+kHOEsZdcbd1PpDpBzZ2v7wWAobdeebBQ
         w2blXmnlPUQmxcaZBPWJFL+zwG28nf4PrZxN+cRgcMHqLFJvJwxZBuYyxHTv4XcfDzsv
         AG1PiSM576zP26g3DV1Yp5jMfSluEm52Bb0ifnNOUC7vWVuhj6qzpecLJ8lMY6YK/YwM
         eDwQMt7gNrWVprLEAnBrnZGdMYQKEg9M8/GEAODCt2rDSUFaur8jilJ5EIm6vFjGRDX/
         LRHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=chqb9X+xESWqSDuahFW5LoL4oIA1DJPdeyYmV/mFRsTDj7/f2D9YpkOU/hSTy/himF
         VJ8sQMOeHMl3aYi5IPQ5neIDUss4EN7cWaA+yZIhAexW7GV1dzbwyowLz3QJQqR5ZNvD
         F/h86mIFSa+XmzMP6qE1Le8CrN8CdvrNrZ61Bt1Bpygif9eiUO7s9+dvJvB3i4zt/MJP
         DnZhWg8/nEXBT0nd4mOH2O0N0t7fved+4WTz1We9Rm/JISc8VwLDnFurUrmi31NE/h9s
         grs88NsjKIfGI7IK/m02FCDDhjLT9SSgkAcKCzDOCUZCoK3USXEqJkYzHhwOmqpXDNMu
         usww==
X-Gm-Message-State: AMke39nRn/SpzZdEJzRseoqjSw197kitQaKA1SaZpYXAXklK/WA2HmPxOrag8wdU+piKtQ==
X-Received: by 10.99.229.83 with SMTP id z19mr21213743pgj.55.1489160803488;
        Fri, 10 Mar 2017 07:46:43 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m29sm19473805pfi.54.2017.03.10.07.46.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 07:46:42 -0800 (PST)
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
Subject: [PATCH 1/2] staging: speakup: identation should use tabs
Date: Fri, 10 Mar 2017 21:16:31 +0530
Message-Id: <20170310154632.4445-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310154632.4445-1-arushisinghal19971997@gmail.com>
References: <20170310154632.4445-1-arushisinghal19971997@gmail.com>

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


