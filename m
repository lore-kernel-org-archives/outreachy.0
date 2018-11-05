X-GM-THRID: 6620380698493583360
X-Received: by 2002:a7b:c013:: with SMTP id c19-v6mr829470wmb.23.1541427570212;
        Mon, 05 Nov 2018 06:19:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8d95:: with SMTP id p143-v6ls1269559wmd.3.canary-gmail;
 Mon, 05 Nov 2018 06:19:29 -0800 (PST)
X-Google-Smtp-Source: AJdET5cbms1ucwHhN5EieCuCIAHGS8De3Lf9yIE5IWw0ckMJdRCq4b+Jy1YJYMgNzbkWXwokTuvi
X-Received: by 2002:a1c:f20d:: with SMTP id s13-v6mr835928wmc.3.1541427569649;
        Mon, 05 Nov 2018 06:19:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427569; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2aTJHaKc0TSVCzwKeptb9zYQQW/gCPIPmRNozzKBYTYcydoK12UJQ+YUVHIWPMIUR
         pjbW9+F+ebO6ckO14S4M+PkUSEeMEwEFBjF0eboWwwGJ8lIEj2L55lQSaxz0eByWr+A6
         J3+scxz/fXYsD3aH5kRFDsg6mZ2+bJwwnBs4+zRJQxJJ1hKJkpj5WXYcKiJyIXqPdr3b
         Fx62mT98nluD+gAVl1CxYiNh72lsHCNBAd4UnJ6zpJjey5G3fLYRHev5xdtGVQxhdAwb
         tf8cikEfoLA6ESCmNfGyJ4OtaE2XvvW83acQvewQhWuZeixoXEhI6wbuGz1LlheVrRdO
         aAHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ny/FKcZ3qmissBHlf9gIJ9H4rlhE++ALSYz1pOOTNoU=;
        b=Sl3RHZF1gS4bN2IyVaOdgeUM9gXhqq+OQ7nXjCu92c5eQIwinjb/fek/44nGLTQ/Kl
         wX0j/gd1M1KI+jlOSpUvl7u8hK3iOJd7D1noGEql4cTaQWKGuMdgvWiWV1kFRcMxIbzm
         8IA525LU/yAqyNrLrUeiZRpt3OK/K4yfdvf+MnvmTYkx00cGSiy8+y7cxkSfmPYbop31
         HGCsXAq+Shc/L7pMyJgGML94rjYL1/RY/KjyksYuoqXu3J3Vft46v8PtXCoK+G+OQMzS
         tC1JL5F99Vtvj9sPMUXQne0cAhe9hd7KCT0Ah9rs8pklt738SVjZ2ESnFTzsf0KkLYYU
         V2QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=beRao9lU;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id v6-v6si1358653wrn.0.2018.11.05.06.19.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:29 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=beRao9lU;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427568; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=K4QEWtb8pvnl/U2oghfTmNPBpfWOmxegmNQm8bF5W7nOPBETRzYl+TmDTTuKTVxtY6Lw+wR01Xl6mxqypmBez9sj56czQrUht/AKFMZKPKRr85+ErxQWeGXj+UQ1UVDz4LsOb+HD5OIGklJCBRj4ypFJhTYRcbielaRkMEAbAr0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427568; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ny/FKcZ3qmissBHlf9gIJ9H4rlhE++ALSYz1pOOTNoU=; 
	b=PltZPheRlccKSC5DAmtH8/KtRLR6FQepvm7PFS7rzshZiAEqp4e95PU0/DuhKoTvKJocEr9u6nQwKljkH9nUR7+jlZ0vYkdAEQ5KzhfvE/dqTsSpOekDgNHGtWimLcUy8vfZIW1mycCFsa3CWSs7Y0D8azg3L42+atXN02/Yees=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427568;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3674; bh=ny/FKcZ3qmissBHlf9gIJ9H4rlhE++ALSYz1pOOTNoU=;
	b=beRao9lUZ2j7dbXxJNBSBT6zmFr2bukYJaUtyA6wvgBc5p2qtUAJDewX7Xf7acPk
	93FlAbfCeGZpM8wvZU0Mrv/qr5aL0z+KMmJ9OVbgtAWesmsHI/a2gTt2JMQb1cYqKWI
	/XpB/6GtSSeu9sRGTbLdaZn1jFYZHCDpWhTQvbHM=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154142756699481.19710291200954; Mon, 5 Nov 2018 15:19:26 +0100 (CET)
Date: Mon, 5 Nov 2018 14:19:25 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 06/14] staging: greybus Correct SPDX License Identifier
Message-ID: <cbf917ebaf9c07330b023267bcb4d0d57bb76652.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Correct the SPDX License Identifier by using C style comments
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



