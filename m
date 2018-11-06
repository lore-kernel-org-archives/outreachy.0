X-GM-THRID: 6620561568029474816
X-Received: by 2002:a17:906:6dc7:: with SMTP id j7-v6mr2161635ejt.10.1541469622966;
        Mon, 05 Nov 2018 18:00:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1903:: with SMTP id a3-v6ls4347805eje.3.gmail; Mon,
 05 Nov 2018 18:00:22 -0800 (PST)
X-Google-Smtp-Source: AJdET5cBimNcO3H4Z9m3AKKfrMxm1QSDOTAKcvivQN/uJVXuNfEbCixo5GVqCiG2nCjHt7PzJIDk
X-Received: by 2002:a17:906:3041:: with SMTP id d1-v6mr3254132ejd.1.1541469622245;
        Mon, 05 Nov 2018 18:00:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541469622; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yb9lmkuLQNY43YjhoPbSti7cGD7/CN1NaM7+b/ZztlZIx3iU4A/4RDQ3mnaK55QoAM
         F8OaCXV4e6hbVmaogjyhOm0l5YJws4l2EqwCpiA2PPUpWzmxmXj1mJzsMs8NefrUpbqL
         o366CE8HmQDQkm8LaPWrx6lD0uUlR4o6I+fXJ0dqFlSa9aCY90wtssgAQPmC/m8LwyYP
         guf3Ceha+6lt4rStLVa0iuokNlLR2U84b5+idmucWCe/mQlon5e2/EceNURt8e/9qunP
         d/Fjt2R5xBLkCR3bVLxPl5aKMD2kJzxrWmgCT4jv/tlsfzpBkHnlNXGA80Jk1IainEUI
         pTLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ir5BqQ/YwFlXjwb1UfqSR/GsrhKSFvaJCfOkV0KJq1E=;
        b=qhcFggIm1kIF0qD5pHTlEJrU3WksqQnb76bNKtAn3XUNby0sd7TYg9yxOhwE9yAoTz
         LIibGNY/QQPXShS/Y9xONyTkydD9rlBQBBitUfWAfAyz2Je/gb9/lzi0tJ6qV31BDmio
         3+l4OSBjR26wd/v/unfclNLjornWiMFAgtd2DtVIqSb7M6hwAlErV2fIguZPNz+qc8zY
         zGkqmJ4lQpgE7l5cltz4ckGTXbE9Mch3RZ25afvxadRCslHAk7U66ovrdHl3JjgXzDzv
         LsmjP1kuJWB8xRNBVP4M8Kh2t3QkgOwX27MthMeUfKIDRtDGuJt8ytrQB+WbsnBXUoas
         qyhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=P5KcmpKH;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y16-v6si1738716eds.0.2018.11.05.18.00.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:00:22 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=P5KcmpKH;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541469619; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=M1CyAqC7UfX/4S4dnuZWBmSr4I/XllNDlKK23OBeb/O+fxzKT+W7aqCdQAIps/7JZGR8+uxgmBgTK0VOe/bwEmAxdUZdxKQrTL1Xm9+jWDUE0ACW51ltrYI6VQj5NzrxV9iQo+LUxy800PnD9G4eo+EUTBZhM8PmCKAmBUSf5WY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541469619; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Ir5BqQ/YwFlXjwb1UfqSR/GsrhKSFvaJCfOkV0KJq1E=; 
	b=h/Ff+3lYnPpRy/pkfl5oLAy5T6cuX5Aqno47NCrZB/12i9V5hJ2IyUdsVh5r9YwAuoYOKKHrBMeWJaBkV/yuKyCJjH8iPEG4uzlSWleUPH0OSp7CsqM0x4emVyYz4QRXpJhLcNEpIo12o6PqXntPNZNWZ1/MC06ToA6Bt6g1dZY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541469619;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=8168; bh=Ir5BqQ/YwFlXjwb1UfqSR/GsrhKSFvaJCfOkV0KJq1E=;
	b=P5KcmpKHpkM6bFinXY5O0lT261UYtly2akXSy/VIC219uVdcJOL0WoCAJFV0xk1E
	C4FWaZCdQcAu/DlLrNfsV96fhiPO4E3+3upH6QqTzb22FAZ73JVeBpkLPEUs9jsbNS9
	4fYqpcXzkQd6Zw6tv0eJM2dVCSANB80hAGc26gpI=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541469618643452.85674070603034; Tue, 6 Nov 2018 03:00:18 +0100 (CET)
Date: Tue, 6 Nov 2018 02:00:17 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: davinci: add missing SPDX License Identifier
Message-ID: <ff509e2f19850380003eda16d312bb9a505aadad.1541469543.git.code@wizofe.uk>
References: <cover.1541469543.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541469543.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add missing SPDX License Identifier from source and header files.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 1 +
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 1 +
 drivers/staging/media/davinci_vpfe/vpfe.h               | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 1 +
 18 files changed, 18 insertions(+)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c9ebe6..69594bb70a2b 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index dcfeac818451..85151113ca91 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index d81b29e19309..39bd29a3aa89 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index dbb7ddc70bef..76d1d0fe982c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 7ee157233047..84c152611712 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index a53231b08d30..24bb1e93af23 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index cea3d61335af..a27b76fb593c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
index e2a69b59554a..c04d0535cbc5 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 39eb0819ab4e..728a443ea60d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 89e814e9c0d7..44ec7249ccfd 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 64fbb459baa2..fafdc693a9bd 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 72bbbc34d18c..ca1ddae50c22 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index cf560a33d862..74f359a96160 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 0587bc52a840..06dd68ef3712 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index bdf6ee5ad96c..da2b5dcbd269 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
index 8ad8d743f4e0..3df319cde290 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 5e9769ea8a50..204bc238d67b 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
index 4bbd219e8329..c6b9befff401 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
-- 
2.19.1



