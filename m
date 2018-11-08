X-GM-THRID: 6621495393645494272
X-Received: by 2002:a1f:178e:: with SMTP id 136mr3864981vkx.11.1541687099742;
        Thu, 08 Nov 2018 06:24:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7a58:: with SMTP id v85ls290913vsc.10.gmail; Thu, 08 Nov
 2018 06:24:58 -0800 (PST)
X-Google-Smtp-Source: AJdET5ffLpC73SrzewawEGhNsqLWx6j4cU3s4EmURe/YsFcNrj22I38xiYiZsZODG1kDvlUgnRuK
X-Received: by 2002:a67:68c5:: with SMTP id d188mr4018923vsc.24.1541687098357;
        Thu, 08 Nov 2018 06:24:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687098; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dwjisme7sEF46OPLW+YepSc+yJ0v04PU4z6ajt36wNC6xvFmgswRvu95WnPNZVQS3
         NYPsLeWB/h75Vr6wSv34CVsdqhf11rvkTdP1jFjohdxXBMd/jLcuy+vuASDQnkvP4DfE
         Im8MEEVeJlwlt/mpUwDxLO+FK1WkiDOfB6WEL7DqPmRcuOsXeG9Mi/6AcBKM5ZSoQtQL
         RoK94xG1tT7OQWUJioAQWVlPqc8PheDKZHYGQ2ccjl1PgUc86TZ64aALkQd5KPYkKewz
         f8mNDw2XI0zWoqrtqIAdjVs3VrD/hEi8ndJsufIsxgZEtOaVNs7qIPQAlv0GS9elZ6s0
         qK1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=;
        b=jeSxAEBfxPxYdxiA1FFMCzqc9vJYfczRcZtVNy8RP4TRuf1UVHAJ3qgha01sgCiZ5b
         iodrPe59gzpBChLo/BsuwX388PYe1waVdiwTvYdvHSsTAyQzNpIPk0paDhcdo9C1NjlF
         FJohn+9AM/4fG6gHgq8m7kQ0h5bRpITmlPcgKmm8bHiqDnrMT0zACzVdZx+/dgcClTuI
         8A8ovk3ttQt36LH0pg9+E3dFg8oWXw3bwYIdZcGE7bmN0B8NwL2g22K2CVXc0F8n/QA9
         F4DPlxxwBwo+77k0pRlP7Gb69kZj6dX0Zor8oakaGENFuYWjdICbc9sRmz4cb3mjSg4m
         JENg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=cxX5bB10;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id t15si229400ual.1.2018.11.08.06.24.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:24:57 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=cxX5bB10;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687094; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=eIL2Rf5goZ0e/7VJbytUSLjy4HBe7jMrOaTz4u1OOvQNGqAk1U0RpOC6SR2rzBhtZPcW7OzVPk/aWtJk+hhCg7Z1S/zItrt2bJaXM4yWsWvy7ojfG6o53a+52o1D9pjowpeZZ1WEO1clFUTLAInqeB1yy1zVAHByVjcyWNlrI84=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687094; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=; 
	b=SFMWpHRvneg84QJsGFNlejVi0dgYYBe2A/mWlPSjbLGaLybD62VaQQJXen32prmT0FSljhGHv8uLdYMTCPhI6WM/HvK09ahXjY2XYPabnqTWk4wyyiplfgXg2lmVHYH3AC/fcS97VExtfS5/pEtpeQBuQGmmuY3wrfELQ7+BLrs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687094;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3670; bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=;
	b=cxX5bB107RVk+vbyDhbwkpGYhfBEBwv5zSGQ5ap8FH7oTJwy03ahsWcefA05glQh
	gN/iVW72HhfFgkATh0bfLDIK7mxl3CtgzWgMIRCz+45F8251Y1OX2XnhzU5PSXw1Jmu
	orDg0OCsRH3aiUq/lQt8Cf7UbSudPGhOd8veC4Sg=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687093437999.9114893200285; Thu, 8 Nov 2018 15:24:53 +0100 (CET)
Date: Thu, 8 Nov 2018 14:24:49 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 06/15] staging: greybus: correct SPDX License Identifier
Message-ID: <44b0c0801747547de99e0389801cb5efd384596d.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
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



