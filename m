X-GM-THRID: 6397080703466471424
X-Received: by 10.107.17.163 with SMTP id 35mr10371658ior.98.1489499729494;
        Tue, 14 Mar 2017 06:55:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.211 with SMTP id 80ls4863517ioq.0.gmail; Tue, 14 Mar
 2017 06:55:28 -0700 (PDT)
X-Received: by 10.107.135.91 with SMTP id j88mr10821948iod.82.1489499728636;
        Tue, 14 Mar 2017 06:55:28 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si3674855pfb.2.2017.03.14.06.55.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 06:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so24609723pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 06:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SMwEHaeOOyT5N6d7v77n0SmfjoYQd3WMDfJiht9mJEw=;
        b=fp0DyE/0sTs7cCybx/+yVI34Ky4UA91s7s+RlaBvxFdeR4Q3WA3pSsDs0LrWK3AkJe
         s+Saz1pRrq1qeENjfo2gVvjAbKso+uIPpbxQiwAf52s/BhTXvylUMlcUbFnXt1te1BMX
         zomcSIWW+SEXY9RAKGyqCcKisu0vX/iLHS3a5iYsrMCNveqhApc/85ncPEG5XLKvum1L
         zTqY788XW2Fa93iaJ/mlMewaRCHdsf9h0WWcBQ/3BQq8zncc9ii5zqefkfpYJAeUygBJ
         P57l1JzyR2/QbV4+yaZTg2fcuQb6ChoKYFi3bRC8hjixTbcTUNOB/yN5qWKdLLU36KNW
         Q5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SMwEHaeOOyT5N6d7v77n0SmfjoYQd3WMDfJiht9mJEw=;
        b=YjZo/tLE9wdSu86+8D8tz7H2sfT3ZNSRh1VwyQfIKB6uoCiSRfIh0lJ4eq/jH8BBZ6
         HVuOgRlGWmK3HDmjuALR69CTmtwPW9RQDQoo8CvboHB/SqrACk+SFPKeLN1ZU55+Hiy6
         qlF7CdBR6+Ej3mcJEip60Yq6BBq8IMXRIl84ERBz2twpUIbcetoZU+BEQanQ5AhYMdhF
         PFkWP5tGoc6IemQJbd4FifEMRJuNg++0OIFs5MvNIMY32iUcUkng2GE8AIGHALQVpXjC
         BG3x7Na3EsW+JX9vyvcyjtrgb+dE+QVnkZ+haGxrLAeBZwBbjE2gEO36xJYXEYqa0dJ6
         qE4Q==
X-Gm-Message-State: AMke39nSlGepsom4Nn9y03StN9s9EHYdNCpJYJ4+ABeFi/p24gqwqO1pUKaTsr0OQizDPA==
X-Received: by 10.99.5.82 with SMTP id 79mr43654857pgf.8.1489499728406;
        Tue, 14 Mar 2017 06:55:28 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 67sm38859228pfd.120.2017.03.14.06.55.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 06:55:26 -0700 (PDT)
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
Subject: [PATCH v4 1/2] staging: speakup: identation should use tabs
Date: Tue, 14 Mar 2017 19:25:06 +0530
Message-Id: <20170314135512.11198-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314135512.11198-1-arushisinghal19971997@gmail.com>
References: <20170314135512.11198-1-arushisinghal19971997@gmail.com>

Indentation should always use tabs and never spaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes since v4
-Added the changes done since v4.

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


