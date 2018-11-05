X-GM-THRID: 6620380698493583360
X-Received: by 2002:a25:ba8a:: with SMTP id s10-v6mr1269044ybg.81.1541427639093;
        Mon, 05 Nov 2018 06:20:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:2f8e:: with SMTP id v136-v6ls16229028ywv.7.gmail; Mon,
 05 Nov 2018 06:20:38 -0800 (PST)
X-Google-Smtp-Source: AJdET5f7zfJDp+qp1ulKW+c05yF0UEyMME8uhHrJ1xMNIXXQrvd+fJIGmGA8FhXXVFqXvLY3FDzW
X-Received: by 2002:a81:9ed4:: with SMTP id v203-v6mr12788747ywg.13.1541427638504;
        Mon, 05 Nov 2018 06:20:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427638; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYHcVjB+i6hFDs5dxcGxwhEEP9Jb6qV6VsvIabWmnUcdOyKGktRwSpj+FtVgDIkUUC
         nrpYi3BD4XyUvCGhM4sqLzAFgIkV91jhi8jzpi0f0sXqwUuyzZ+RBNDweRSVeBx85m24
         i6ibZHaWSbl3iT9+MO4mPM0p1JnfokIlGk5te3nyaqQXQ7gDSNIMIoZXLpXtsnUVoL0f
         nV855Ac/cCpij5PcR8RtYekMC5GzV76oy8C92Wviqtfln7WR8I9m+1czB4y09tH1fzK4
         btOmHlefziG/RISJfDoERo7IAl9E/6KKRulqC2MBqlEI9bfTt19OJUbQSRf3J5XPDVyo
         fh6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zXJMoXIC4rOldvseHaZHQJ0YlgkgNzik+8t2sjV7Nj4=;
        b=OreuJZu+GYQHG74taHE6rwYoKfAoalgbOMpjFHpVZxhN0Fh94CFTEhGAHH/v4QyovS
         c+PNriLwmPyWUWLorSF014EwwwXLCoGUgAfyW0gTB2n2DCKbz+fHDGXfXN5yjRxE9yz4
         G0o2wi6M/o/iLNpVaYeOLBh7aCw9DBWEdIilNoNSHI1jhMBJVVRyAEUfRuC6Hja6s6m4
         jJfD0JrlEcaqvH8oKo/CTgEw//es1I7trKnrsl2gJms4KhZpbBuyPwybzdujuZj3pb6n
         QvlW++HhX6DTPDxj3qtb+byiz0zUhOPzgTlmjgq74PrVZIy7RzXCMzxJPoFqSBe6Ab14
         Y6Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bc3mlCYy;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 134-v6si134063ywe.3.2018.11.05.06.20.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:20:38 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bc3mlCYy;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427635; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=OKuBq0c0nZCrKXvopvcxgljrh0X0j0p6vqo0krycsG1W8tw8iksHd5BLiXZq2T4g8GGx3SD0s7E2OQIQ527bkz/chlVJ6mJpUwuVpbgTRiIlXNSaC0P5L9bvajYX6b6vhLXEYPJfqQ6xN69S6lleAtAQxpNPn/yQGWuAfRKXM+U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427635; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=zXJMoXIC4rOldvseHaZHQJ0YlgkgNzik+8t2sjV7Nj4=; 
	b=id0FZLqjZo9YYgesepmXno9g8parwd9drsXfRnzbyRzilF1+C1QOf3mByYp64V6Yh+4OYuXu6y81h/MMW/KhddIa10T6rrI2xW2Qs09YFnJIBL5D+m1oN6HfMFn89I0SkwFoOuRncSchkZsr/rIrqTVF1FYOuWBxHQsq/gA6qSc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427635;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=6865; bh=zXJMoXIC4rOldvseHaZHQJ0YlgkgNzik+8t2sjV7Nj4=;
	b=bc3mlCYyl3CsGQFgzG/Vj6UA3bc2BriwiKFbPaEjQs1nm91e3+EZXBSvXu1oSyFO
	tS0NSBjjeLhdhDYx6B9rBQ3M+T/xZnlXC3iDwrrvdNJws4wMzPAV5ARXSuOZUswojPL
	mVVpk5Gl+T9hqFDksHARi50AqCVVblr5SlHsXjG8=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427635107812.1727215136882; Mon, 5 Nov 2018 15:20:35 +0100 (CET)
Date: Mon, 5 Nov 2018 14:20:33 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 14/14] staging: greybus: correct SPDX license identifiers
Message-ID: <49f114439b666b531a0adb8fb750a7e5be5c0ed7.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Correct the SPDX License Identifiers by replacing the comment to C-style
comment.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/firmware.h               | 2 +-
 drivers/staging/greybus/gb-camera.h              | 2 +-
 drivers/staging/greybus/gbphy.h                  | 2 +-
 drivers/staging/greybus/greybus.h                | 2 +-
 drivers/staging/greybus/greybus_authentication.h | 2 +-
 drivers/staging/greybus/greybus_firmware.h       | 2 +-
 drivers/staging/greybus/greybus_manifest.h       | 2 +-
 drivers/staging/greybus/greybus_protocols.h      | 2 +-
 drivers/staging/greybus/greybus_trace.h          | 2 +-
 drivers/staging/greybus/hd.h                     | 2 +-
 drivers/staging/greybus/interface.h              | 2 +-
 drivers/staging/greybus/manifest.h               | 2 +-
 drivers/staging/greybus/module.h                 | 2 +-
 drivers/staging/greybus/operation.h              | 2 +-
 drivers/staging/greybus/spilib.h                 | 2 +-
 drivers/staging/greybus/svc.h                    | 2 +-
 16 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/greybus/firmware.h b/drivers/staging/greybus/firmware.h
index 946221307ef6..72dfabfa4704 100644
--- a/drivers/staging/greybus/firmware.h
+++ b/drivers/staging/greybus/firmware.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus Firmware Management Header
  *
diff --git a/drivers/staging/greybus/gb-camera.h b/drivers/staging/greybus/gb-camera.h
index ee293e461fc3..5fc469101fc1 100644
--- a/drivers/staging/greybus/gb-camera.h
+++ b/drivers/staging/greybus/gb-camera.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus Camera protocol driver.
  *
diff --git a/drivers/staging/greybus/gbphy.h b/drivers/staging/greybus/gbphy.h
index 99463489d7d6..087928a586fb 100644
--- a/drivers/staging/greybus/gbphy.h
+++ b/drivers/staging/greybus/gbphy.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus Bridged-Phy Bus driver
  *
diff --git a/drivers/staging/greybus/greybus.h b/drivers/staging/greybus/greybus.h
index d03ddb7c9df0..f0488ffff93e 100644
--- a/drivers/staging/greybus/greybus.h
+++ b/drivers/staging/greybus/greybus.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus driver and device API
  *
diff --git a/drivers/staging/greybus/greybus_authentication.h b/drivers/staging/greybus/greybus_authentication.h
index 03ea9615b217..d654760cf175 100644
--- a/drivers/staging/greybus/greybus_authentication.h
+++ b/drivers/staging/greybus/greybus_authentication.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
 /*
  * Greybus Component Authentication User Header
  *
diff --git a/drivers/staging/greybus/greybus_firmware.h b/drivers/staging/greybus/greybus_firmware.h
index b58281a63ba4..13ef3aa5279e 100644
--- a/drivers/staging/greybus/greybus_firmware.h
+++ b/drivers/staging/greybus/greybus_firmware.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
 /*
  * Greybus Firmware Management User Header
  *
diff --git a/drivers/staging/greybus/greybus_manifest.h b/drivers/staging/greybus/greybus_manifest.h
index 2cec5cf7a846..db68f7e7d5a7 100644
--- a/drivers/staging/greybus/greybus_manifest.h
+++ b/drivers/staging/greybus/greybus_manifest.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus manifest definition
  *
diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 429a952c5200..ee3bbdfa1477 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
 /*
  * This file is provided under a dual BSD/GPLv2 license.  When using or
  * redistributing this file, you may do so under either license.
diff --git a/drivers/staging/greybus/greybus_trace.h b/drivers/staging/greybus/greybus_trace.h
index 7b5e2c6b1f6b..1bc9f1275c65 100644
--- a/drivers/staging/greybus/greybus_trace.h
+++ b/drivers/staging/greybus/greybus_trace.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus driver and device API
  *
diff --git a/drivers/staging/greybus/hd.h b/drivers/staging/greybus/hd.h
index 6cf024a20a58..348b76fabc9a 100644
--- a/drivers/staging/greybus/hd.h
+++ b/drivers/staging/greybus/hd.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus Host Device
  *
diff --git a/drivers/staging/greybus/interface.h b/drivers/staging/greybus/interface.h
index 1c00c5bb3ec9..8fb1eacda302 100644
--- a/drivers/staging/greybus/interface.h
+++ b/drivers/staging/greybus/interface.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus Interface Block code
  *
diff --git a/drivers/staging/greybus/manifest.h b/drivers/staging/greybus/manifest.h
index f3c95a255631..88aa7e44cad5 100644
--- a/drivers/staging/greybus/manifest.h
+++ b/drivers/staging/greybus/manifest.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus manifest parsing
  *
diff --git a/drivers/staging/greybus/module.h b/drivers/staging/greybus/module.h
index b1ebcc6636db..2a27e520ee94 100644
--- a/drivers/staging/greybus/module.h
+++ b/drivers/staging/greybus/module.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus Module code
  *
diff --git a/drivers/staging/greybus/operation.h b/drivers/staging/greybus/operation.h
index 40b7b02fff88..17ba3daf111b 100644
--- a/drivers/staging/greybus/operation.h
+++ b/drivers/staging/greybus/operation.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus operations
  *
diff --git a/drivers/staging/greybus/spilib.h b/drivers/staging/greybus/spilib.h
index 043d4d32c3ee..9d416839e3be 100644
--- a/drivers/staging/greybus/spilib.h
+++ b/drivers/staging/greybus/spilib.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus SPI library header
  *
diff --git a/drivers/staging/greybus/svc.h b/drivers/staging/greybus/svc.h
index ad01783bac9c..e7452057cfe4 100644
--- a/drivers/staging/greybus/svc.h
+++ b/drivers/staging/greybus/svc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus SVC code
  *
-- 
2.19.1



