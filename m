X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:834f:: with SMTP id l15-v6mr142932ljh.19.1541771645319;
        Fri, 09 Nov 2018 05:54:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4bca:: with SMTP id y193ls111301lfa.3.gmail; Fri, 09 Nov
 2018 05:54:04 -0800 (PST)
X-Google-Smtp-Source: AJdET5dgxzw4DVbXL+fzwELEf4S5rPP3rVK3mMiJcJFAhHvpAzoQrdVBY1aYKg1rImtsz8N/6T01
X-Received: by 2002:ac2:410b:: with SMTP id b11-v6mr139108lfi.11.1541771644507;
        Fri, 09 Nov 2018 05:54:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771644; cv=pass;
        d=google.com; s=arc-20160816;
        b=KC9Ck0vEzv8icCrO4kX0uI7aMIypRiRM8/dcmQwrHa+IOKAXmwTUUcCxUoL/dQ2Rkx
         W41An/LIoOroG514bMXc1WqvXQ1PKuRMCdv34O31O5pIlk64h37aJH+YclN2W+QPBmdq
         ikHtWJZJEmqTHA7zKhjb5zQM95fAorqmTu638PBC97VNOE+//zqNXTeQ477dhF8Nb+5C
         mm/hqlLEfz2/YXkSNrPkwF9FWZioZyuhqSLq9NeAiCbkUEOI0DIE0/EVgljUm2EsK9iL
         ybgB5GS5dQA69sq8vywsqysZ+ma/h34iR/B25M9OrHFOTBV5uFDcc6fnkah+kA7GCbY/
         506Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=;
        b=c3rHJFGUObD9ZeGlwmXP2/E20n5sRbWA6s/Pg6jmRXQEGHAaxb/GX6FAFqQIdvG57b
         2Do+YF+gDm8zJjKv6DXvzlRxUbkdqFbwsvVs2h3SKtOCZl/s213Iwrijm6+WSq4W5zvD
         l3t4kqmMa0hVs9aF0BnWdc8ntFvRxZKcY9c2SmFRpjcsX1Wg8EpkFna5hlW5GYvzPYqs
         G6kgWNG21seO7Ut5yOi6Xkn0PTEFMW2Id+LSd4XA9phhzaAgMis8C65P1fD5AT77uf4+
         HUO6RaozrpoUdxZSW3zU1FTjQWndTo/TnSXGMQyw/kx9x+uqf1MhdHwaU6UxCCPfq2SW
         NKiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FDKffd07;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a79-v6si263978ljf.1.2018.11.09.05.54.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:04 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FDKffd07;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771643; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=QcKDMvY5Uv3WYd5bqRg9QmdiS/M3ejYXzyc6/Qn/iafHG71KqorcbXRCiW5PSHEsnc+LUBiTYVgKS0pc5UNZEndimyndDOjuhCvI6SJbzX2n5DQqnv7/CDxu0/bR+zbG55QphGJj88qgctqy4gM3PJL6DlxnbFniYNErlQngxMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771643; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=; 
	b=P7MXKqRLM6dWWiSVW5Nl4v2IpllGB0W8HiQzIgn1BDMtnxbVgb5Qh/Xn4mFXD+iu4AXmioj4xbS0ntk/7sx/f41FD8BHGePmNRRfAVNcy9KuRibOW8BfFu63TwPdylSTwGC2eQxS11OKQMS+4/vfjvPm5iSot6kwzZeb6abhpoE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771643;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3670; bh=v+gwwI1UPJ0T1O+nw+QyGodBnfWEKjmdfkuWHy7dovY=;
	b=FDKffd07kmYWjvJjEgLNzzorQVCf4MXR0k6s7hervSAxOcQ607Mah3YCAIZOW7H4
	08KsMWjxbjCep7QkKMLTyJ/YmyYZpDmlC3pSt8Yyoz4Q3Dk8khWrpFavZQd84cUFRtL
	ymIEmAgwVTCNihFTROAOMXpkxbZ/ySmozf28bsCY=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771642193845.0996643533077; Fri, 9 Nov 2018 14:54:02 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:00 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 06/15] staging: greybus: correct SPDX License Identifier
Message-ID: <931248d74e59e988c8ddb2c6658ca2c2edeae917.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
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



