X-GM-THRID: 6389045903284502528
X-Received: by 10.36.33.66 with SMTP id e63mr2626009ita.38.1487565669987;
        Sun, 19 Feb 2017 20:41:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.115 with SMTP id p48ls6479664otd.37.gmail; Sun, 19 Feb
 2017 20:41:09 -0800 (PST)
X-Received: by 10.129.181.78 with SMTP id c14mr3151009ywk.126.1487565669675;
        Sun, 19 Feb 2017 20:41:09 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f7si2115667pfk.5.2017.02.19.20.41.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 20:41:09 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x243.google.com with SMTP id 5so11277260pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 20:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4wFYuO7boxMhDsjLSSFdVh1VfWF4IzMKETZJSEJ7lQk=;
        b=XML5/dCMWYz2Mgk8ldTU+GecJPo7ABsibQQRiALPh/Hp20Sfj5Z5fOAmX7kI+zYwON
         hvQWTrktw3QS96DqrP4/UwibWW2hvkuMeqJLP22jiSe4Ex3mVlEMXYPnuP8q7jcYeZoA
         DfdRl2JjPjfrqeR1qBERp1fnn5mAgKjrV1uoJu7kT2Ez77ZZBZtB/FM3oC8svdai96ex
         9cbU2g+0hDB4EXb33UJGspPim+ljCiZN+YGWbU5SsxTlf0/NyDW9+JFgt2V0t98mcYxh
         9MFkcYq2qpIxB78AO1qjQoeuYnLAVhj6I9cqvX210j3VRhKvcv/doFhe4Ej39NAdcgp6
         TjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4wFYuO7boxMhDsjLSSFdVh1VfWF4IzMKETZJSEJ7lQk=;
        b=IGKytdLlp8/30yR1ZS/myHtEaiZE1OoDi/X5pg5d9J9Zb/c21nz0jqqAw8D7DidcUi
         ddTd0QzpT+tozqM0Z4Zos2Y/aCRTKaZl/RDpmxMfjtVHN8ISTaxKF0C6hmkwHkbDsvI8
         aH6hL55idjQ/JqeQCuDtdIome/JMgzbtUdhcuMaeRMYmKMWaLPo8OCJcxrvgQN0qLM20
         og1gCX7rpHZD+ctlSunGFeXzMo+6KPoLES3vgvKtxHrwvyBMDbYDboLTq6FmLDSMk2ho
         qLashfoId56rI9NqDUEYMOoYi+nFsE5Xho7ZqdDTL+cW1FPcJQmRgoFD8Ngy2fWbONIy
         NwNA==
X-Gm-Message-State: AMke39l0oYnk9UGMNyQvv/gkhRCauhr4iTDi+S2ESoFu7rh+kBdKIDSYXUKpxaKMv7Xitb4f
X-Received: by 10.84.217.199 with SMTP id d7mr28647140plj.80.1487565669394;
        Sun, 19 Feb 2017 20:41:09 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id p6sm31857655pfg.6.2017.02.19.20.41.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 20:41:08 -0800 (PST)
Date: Sun, 19 Feb 2017 20:38:57 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: greg@kroah.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, sudip@vectorindia.org
Subject: [PATCH] staging: sm750fb: add curly braces to if-statements
Message-ID: <20170220043857.GA27717@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add curly braces to if-statements for style compliance.
These cases are found by checkpatch.pl

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/sm750fb/sm750.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index e49f884..332a3ef 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -954,23 +954,23 @@ static void sm750fb_setup(struct sm750_dev *sm750_dev, char *src)
 		dev_info(&sm750_dev->pdev->dev, "opt=%s\n", opt);
 		dev_info(&sm750_dev->pdev->dev, "src=%s\n", src);
 
-		if (!strncmp(opt, "swap", strlen("swap")))
+		if (!strncmp(opt, "swap", strlen("swap"))) {
 			swap = 1;
-		else if (!strncmp(opt, "nocrt", strlen("nocrt")))
+		} else if (!strncmp(opt, "nocrt", strlen("nocrt"))) {
 			sm750_dev->nocrt = 1;
-		else if (!strncmp(opt, "36bit", strlen("36bit")))
+		} else if (!strncmp(opt, "36bit", strlen("36bit"))) {
 			sm750_dev->pnltype = sm750_doubleTFT;
-		else if (!strncmp(opt, "18bit", strlen("18bit")))
+		} else if (!strncmp(opt, "18bit", strlen("18bit"))) {
 			sm750_dev->pnltype = sm750_dualTFT;
-		else if (!strncmp(opt, "24bit", strlen("24bit")))
+		} else if (!strncmp(opt, "24bit", strlen("24bit"))) {
 			sm750_dev->pnltype = sm750_24TFT;
-		else if (!strncmp(opt, "nohwc0", strlen("nohwc0")))
+		} else if (!strncmp(opt, "nohwc0", strlen("nohwc0"))) {
 			g_hwcursor &= ~0x1;
-		else if (!strncmp(opt, "nohwc1", strlen("nohwc1")))
+		} else if (!strncmp(opt, "nohwc1", strlen("nohwc1"))) {
 			g_hwcursor &= ~0x2;
-		else if (!strncmp(opt, "nohwc", strlen("nohwc")))
+		} else if (!strncmp(opt, "nohwc", strlen("nohwc"))) {
 			g_hwcursor = 0;
-		else {
+		} else {
 			if (!g_fbmode[0]) {
 				g_fbmode[0] = opt;
 				dev_info(&sm750_dev->pdev->dev,
@@ -1168,13 +1168,13 @@ static int __init lynxfb_setup(char *options)
 	 */
 	while ((opt = strsep(&options, ":")) != NULL) {
 		/* options that mean for any lynx chips are configured here */
-		if (!strncmp(opt, "noaccel", strlen("noaccel")))
+		if (!strncmp(opt, "noaccel", strlen("noaccel"))) {
 			g_noaccel = 1;
-		else if (!strncmp(opt, "nomtrr", strlen("nomtrr")))
+		} else if (!strncmp(opt, "nomtrr", strlen("nomtrr"))) {
 			g_nomtrr = 1;
-		else if (!strncmp(opt, "dual", strlen("dual")))
+		} else if (!strncmp(opt, "dual", strlen("dual"))) {
 			g_dualview = 1;
-		else {
+		} else {
 			strcat(tmp, opt);
 			tmp += strlen(opt);
 			if (options)
-- 
2.7.4


