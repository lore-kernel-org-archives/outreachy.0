X-GM-THRID: 6397080703466471424
X-Received: by 10.13.194.199 with SMTP id e190mr18479199ywd.93.1489436428100;
        Mon, 13 Mar 2017 13:20:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.77 with SMTP id v74ls3262242ioi.41.gmail; Mon, 13 Mar
 2017 13:20:27 -0700 (PDT)
X-Received: by 10.99.163.92 with SMTP id v28mr18322107pgn.147.1489436427502;
        Mon, 13 Mar 2017 13:20:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si3175074pfz.1.2017.03.13.13.20.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:20:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so19447373pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=kT8m6Dh9RXfW2H8zty3K7ku1uxHLw7fJ4/RkCICZp/v/jqUWufw+TLX4U4kC/mZ0wq
         QQIGK3u2iricUJrMkXpSPF54xBhNHt7hWBAi7a2UiO96AhugiIG3HtBWNUgAeRWMrvy9
         K2ZdaLEORz6LY+0iHW81NH93ojnLAxmc+ft5tQNQjxIWBVF9ArVUwQIKln88vuCIzo/j
         YO82mdxON/2bv1IE9U6Ch4CJQhhSc7EjzV7+2AyJ2ZMj2vV/x3t5MuRLgQac24+fJzlN
         xhhyc59LtfsdgRIMHnGvdTbMscO7gsLVmno2Itbdi1j4zVGm81KFkH4MwLAhnk4qbhgJ
         Wxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=PT51EvmGWc6VBgz0kU0v45PT05srsOaeXPyOdC7NKbgvV0QZCGesodf8o2fc9IMWeU
         V6C/WmoqCTNdBCHdnHBBSWsNEt+VAAircwz0H1TR2w6gH/lJSwWzncRg7DFXNsYskyXo
         KM/qSOquP30suumEXLuFwxIGhOq4nCccpQaFYig6m2W1h4UpJXVHqRA1fdb+Ts0FdxAD
         HVdwCUSzc7OB2wzFgRx7qCWhx5+GQ9/4DI3HJZPKG6WrcEDRQi1H+Lp0thpabI0RFI8A
         BHrR+JDqipBb7zHFpy4+4vRRfoE9JM9ZjEPNGy1AE+FpaTF+pjZlabt1+AUrZcrziz8+
         ETXA==
X-Gm-Message-State: AMke39mfjl+VsReW/aWvEEKseJewq0KtlELt2ZnQX92BYL3Xm3G9r2HXxZdvtYVFoh9liA==
X-Received: by 10.98.34.211 with SMTP id p80mr39225574pfj.174.1489436427308;
        Mon, 13 Mar 2017 13:20:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c11sm34283846pfe.68.2017.03.13.13.20.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:20:26 -0700 (PDT)
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
Subject: [PATCH v3 1/2] staging: speakup: identation should use tabs
Date: Tue, 14 Mar 2017 01:49:54 +0530
Message-Id: <20170313202004.24382-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
References: <20170313202004.24382-1-arushisinghal19971997@gmail.com>

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


