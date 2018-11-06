X-GM-THRID: 6620547167797903360
X-Received: by 2002:a1f:9d53:: with SMTP id g80mr16766525vke.3.1541466308689;
        Mon, 05 Nov 2018 17:05:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:1002:: with SMTP id 2ls3028155vsq.7.gmail; Mon, 05 Nov
 2018 17:05:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5dDmXtTCCdlneJivbdtHne1qYthZyU45QrW2uc5pHGuJR1b2DCnUbX4tlj65g+okP4Ielhu
X-Received: by 2002:a67:f613:: with SMTP id k19mr23100681vso.4.1541466307817;
        Mon, 05 Nov 2018 17:05:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466307; cv=pass;
        d=google.com; s=arc-20160816;
        b=DnhvOu/nveWo0BWt1AcEE6aUMDx1/276vquI/ncxlWSd31ZX+5N9rOc7LfZ8/hqcp0
         VP+Qm4xPuTInzglp9uas/feaGoq+3ONgHR8l7VDT5Mb4ziGa6lT2vBk5PByL4BULFtLH
         zKahXDVva/siHjsAOnlBO4bp1KJUMbRQgnmsxMxQGP3NhDr6S0hCig+J0yOAQwusJOON
         gwCvneAY48K1GeXN1cf2deOLJJWMh+TA1PrxRsFAz04/X2oY/Zl17Pk/HhN8LW+sQAHQ
         5dPeco9sBAfkP/ipqkkV1WKlcWv6MnnuAs0OpB+eKlNG8E3M0cXqXsPWxwM8CuTC0A9Y
         K6xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=;
        b=rrlCPILp5FPu6Mq2aC41egSKDiSIPAbMbZaALpQrzmq3UXTsnyjjMqdK4JCfL0BqA0
         exorpWau+G9Xj2TK/MUE/ah/tcfRnFIAMKQ9PYruIdludiM3ypxZgkUUosmaGyusbJvY
         mHgUx6SCxpXPPy4OCKbw6W4rTQuB8MSzR4PvXj24MHvabFyn+40RE8i0FkOlTX8315RU
         vTKTDnfD7d+9OXUY2y05VIi3CJFnPmDQBLBen9YSZw3tHjTbh4XwJMokFsYr3vxgVwvJ
         GjxLWM7k3LS3qC+g0Q9MO7bnJn1da7mzrALA4THA95Q6kewbuwwk2LW4bRFX2TFgDexW
         JBIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=W5qRUu+x;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id e2si78644uah.0.2018.11.05.17.05.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:07 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=W5qRUu+x;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466302; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=LIUdRNTTk5RXz5lrP1MWmal4g5wkCtLOObDlQobJIbgMBStHrdPShaWw7VG8VOtM+YnDeFydW++SlKb60rK/VPmk78WLeWE3gSX/bm2SlRQGAaPutz6S+HONGJIz+dOMohU3aiaq0nepvKscCzcQVN3LSom2kxsYmXxrAo6XtEU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466302; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=; 
	b=bUrdgCFY0tafEeSeKBodc1s0LA6LgI6ObdeGLy9YlqSet8QOQo0UIvSxYcmoyVVTTraYDqrEd7bYs10/zHZcLU/9Pg7dBiy3PsJZh7DX/9TMKHxKl4xYv+PaQq2kmvb0qrb2FKm49X2/0SJTvt0ZHD/AyJpzpeoqS6uN9sM6zjg=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466302;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3670; bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=;
	b=W5qRUu+x534Le4SEBhDfdZJkSfMj7mbO3eHR1m7KchQfZWFHW80qbUcv4rQiZ/rO
	QfN4oUSGB3iSO09U66akxOBV/6lIMGyWg8lnkBGnxTjOQSgUVWFw1U7gZ7SGCjepZnY
	Sp6mUUQmEboGLKJaH4ya1ASIKqhIdWE3na6rqrds=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 15414663012771020.8009934222803; Tue, 6 Nov 2018 02:05:01 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:00 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 06/15] staging: greybus: correct SPDX License Identifier
Message-ID: <44b0c0801747547de99e0389801cb5efd384596d.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace SPDX License Identifier comments with C comments.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/arche_platform.h        | 2 +-
 drivers/staging/greybus/arpc.h                  | 2 +-
 drivers/staging/greybus/audio_apbridgea.h       | 2 +-
 drivers/staging/greybus/audio_codec.h           | 2 +-
 drivers/staging/greybus/audio_manager.h         | 2 +-
 drivers/staging/greybus/audio_manager_private.h | 2 +-
 drivers/staging/greybus/bundle.h                | 2 +-
 drivers/staging/greybus/connection.h            | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/greybus/arche_platform.h b/drivers/staging/greybus/arche_platform.h
index 02056351d25a..9d997f2d6517 100644
--- a/drivers/staging/greybus/arche_platform.h
+++ b/drivers/staging/greybus/arche_platform.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Arche Platform driver to enable Unipro link.
  *
diff --git a/drivers/staging/greybus/arpc.h b/drivers/staging/greybus/arpc.h
index 3534ba1a4e6c..3dab6375909c 100644
--- a/drivers/staging/greybus/arpc.h
+++ b/drivers/staging/greybus/arpc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
 /*
  * This file is provided under a dual BSD/GPLv2 license.  When using or
  * redistributing this file, you may do so under either license.
diff --git a/drivers/staging/greybus/audio_apbridgea.h b/drivers/staging/greybus/audio_apbridgea.h
index 42ac6059bfc7..330fc7a397eb 100644
--- a/drivers/staging/greybus/audio_apbridgea.h
+++ b/drivers/staging/greybus/audio_apbridgea.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: BSD-3-Clause
+/* SPDX-License-Identifier: BSD-3-Clause */
 /**
  * Copyright (c) 2015-2016 Google Inc.
  * All rights reserved.
diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index 4efd8b3ebe07..d36f8cd35e06 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus audio driver
  * Copyright 2015 Google Inc.
diff --git a/drivers/staging/greybus/audio_manager.h b/drivers/staging/greybus/audio_manager.h
index dcb1a20f5ff1..be605485a8ce 100644
--- a/drivers/staging/greybus/audio_manager.h
+++ b/drivers/staging/greybus/audio_manager.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus operations
  *
diff --git a/drivers/staging/greybus/audio_manager_private.h b/drivers/staging/greybus/audio_manager_private.h
index 9d9b58fc54c4..2b3a766c7de7 100644
--- a/drivers/staging/greybus/audio_manager_private.h
+++ b/drivers/staging/greybus/audio_manager_private.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus operations
  *
diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index ffcfd43802cc..8734d2055657 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus bundles
  *
diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
index ec3f1d3ef3b9..8deeb1d5f008 100644
--- a/drivers/staging/greybus/connection.h
+++ b/drivers/staging/greybus/connection.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus connections
  *
-- 
2.19.1



