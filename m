X-GM-THRID: 6620726648786386944
X-Received: by 2002:a5d:5287:: with SMTP id c7-v6mr2651779wrv.14.1541508063957;
        Tue, 06 Nov 2018 04:41:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9956:: with SMTP id b83-v6ls1770542wme.20.canary-gmail;
 Tue, 06 Nov 2018 04:41:03 -0800 (PST)
X-Google-Smtp-Source: AJdET5cy2C1T3lN/DSxzmjFRaJvg5RZ0qeYaiWjsjcDLNkmyI/Y1vptKYyABXQelS6n9a4TJQBb2
X-Received: by 2002:a1c:8f94:: with SMTP id r142-v6mr308601wmd.5.1541508063182;
        Tue, 06 Nov 2018 04:41:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541508063; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJ5ubhn4kajGUcAXqsnG2OFc077sqFcUQ//zh1UCENSUtsSobMmymBbw4JN3jWM0CW
         YZUXvbes83aaJ+zn30AJRt91NqaNsGIN72hjLh8jPGeFxCUQbyNbxqRBRht5olgAxD6o
         GRCNevHBtWZeV+gkpVMhL0FFS8cCuMv95NAWZMkguAV5OLhLYon9kOLIrX1yrPWFc0bD
         catP2fPfZ3PfqCC7BbNjMAGXXvzHF0P9VNGLoKzH+7oge1W4jH+RD0eJoLMUHXwGGWYa
         4NiiqjQaqxAvlOy4GiCO4wys69OkWvYBdyhyFUyYkd5nzcVU1+buo0cMGqVebCKFvwar
         hP7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9Nfe6idOqEh7bxKADQqPl7+KzYYwj+dfkFyf3U0Mqmc=;
        b=qanzxp9NRRiMEgcZNIqbQ5JRJZLoUiXf8ouDIpOz8u10legpMj6NlMXfLozTm74JC6
         bJuDdiGZ41bdOSyecy+VvNGnn3IwOV2FWO4VaWqmeGq3xYw2N1eVmTh2vPMbguQYLeKG
         LGOlLOrDncKOLW5CaxrcNzKyQGbbhSLF+xKnKoQ6Dht5GIrPF78Wim3zio0Yrd4B1XOc
         q/Q0AZ98nRX6/tRB+9dn21DrwQPyK2KjEe6LBFzG5xR9/b/46DpKltnCHtXHiEQOhFK4
         BKcMAEy80dP4zXjB2Lix5AYrMZwgJULzwoJb/sLwPIOnP4S112ofxil+7xkqNT5phsu9
         AudQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=PWTnGuqw;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n6-v6si931256wrj.4.2018.11.06.04.41.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 04:41:03 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=PWTnGuqw;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541508061; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=SyksPKatEUquF1qevYJPbfgKPV0nMfB+LSCDuRsDlSvpDHTYpQtxqo5iRbjKLLG6qXMiX8FKnCt5XlwgoF6B1mAdBRfG5NUIi/4aSZaHepBviSFSNjM0cV6OsaN4TIiLRp3XDLWqHMftnUtWFiZtkz4z6RIBl5Xv56+w/KY4tko=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541508061; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=9Nfe6idOqEh7bxKADQqPl7+KzYYwj+dfkFyf3U0Mqmc=; 
	b=P33C9j+Rp9INWUyKx1BPnvmbd1Wtk0k/7Q+hZe0qiprL0KrzHS0K5vCIAb0aJ/85UjpSoZONUcRkxRTxE7oGwzJj7ZYEIpczgmBkDe3LOlJx5Y1zKYU4rkpws0gVWolJDEFBSWxBR3JmNHJEnRG+8EyGQZl5B/aW5C3AylAfciw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541508061;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=8170; bh=9Nfe6idOqEh7bxKADQqPl7+KzYYwj+dfkFyf3U0Mqmc=;
	b=PWTnGuqwQfC86RerCqPEhOTdsyRPs2zS4vzNbbkgC8b063YhQVo72aiHElz6TtMJ
	i/kWFgPa/C29jYklfK8Bgu5Z+7wjYymU6rkduJb3Q33Tq8dynJAZ2VnQvJw5FtJstAX
	IdweoeoOvF8KLsvQpi23VPhuR2BdjVBPY5wXPaoY=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154150805992062.191714077523784; Tue, 6 Nov 2018 13:40:59 +0100 (CET)
Date: Tue, 6 Nov 2018 12:40:58 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: davinci: add SPDX License Identifier
Message-ID: <c2b97c7922c4b66b3ebff295592689f8ed184738.1541507973.git.code@wizofe.uk>
References: <cover.1541507973.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541507973.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add missing SPDX License Identifier to the source and header files.
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
index fefb0f1f4695..8d772029c91d 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index ff3c31f8b304..c67816684291 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index 82cf1dce6428..174334b53f96 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index 5b31bd16840b..5618c804c7e4 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 7bddea6261bf..16b6a14b7058 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index f2440657c4c8..e62c054a12c9 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 2f2b8dc1831d..4685d64016de 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
index eda38f31e929..046dbdec67d8 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index a0887e2bcb28..625d0aa8367f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 445f2a50f1df..0e1fe472fb2b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 5f17bd24e44f..6695680817b9 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 3db25be2afc5..6098f43ac51b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index 4b3c122b855c..5e31de96b2c9 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 6a4fcb678778..1f8e011fc162 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index d92bae1f5e81..34d63c2e9199 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
index 28ac730160ac..fe4a421b5dba 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 256b565046b3..510202a3b091 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
index cd2834d482f1..5d01c4883ab4 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
-- 
2.19.1



