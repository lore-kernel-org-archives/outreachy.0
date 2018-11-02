X-GM-THRID: 6619390250222354432
X-Received: by 2002:a1c:730c:: with SMTP id d12-v6mr3772wmb.10.1541196892362;
        Fri, 02 Nov 2018 15:14:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4302:: with SMTP id h2-v6ls4464093wrq.8.gmail; Fri, 02
 Nov 2018 15:14:51 -0700 (PDT)
X-Google-Smtp-Source: AJdET5et3C4PzgDt+rKb2akZXc2hMaMth+04vn8Fb2SxQTIZUDWSMnGoayTJ6RuWs2sNgirxlnKe
X-Received: by 2002:adf:b651:: with SMTP id i17-v6mr1398763wre.10.1541196891509;
        Fri, 02 Nov 2018 15:14:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541196891; cv=pass;
        d=google.com; s=arc-20160816;
        b=OTqSJVHfb8SAUIRzc3QIlVy+u4rHvgiofeivUAOnjoHcqwUsx9P4YhgrOm6Ccsg6bE
         3ukQS4L00LjtW0IvPMrdI/x95mS8S1N8h2UsbAHVp9BBDPeVtJofPkJgDyr1NOCmlM1V
         9NtAzeNgeElQIG+UojrDLFGzHdj5GWyGjfHFMxbeDdsOeG7bhR8kfbOmoONNHY//brRZ
         I4jCgFqzOCFykFI/BPufAM6AlUS4qGtv/SXyr31zlMVdEpW9dvkhPJESH3fixhcdk/MR
         t2qZPdO90ugCTiRKKGOALx65Oue9EzkuUeKP7cqkhA5tP/ICodDhrIa5Td4mX6wo15vC
         NJkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=PB3bRveQOPxHtFRYEkWX3KaEgVwxCmDWTho7Jg8Zi7k=;
        b=G7wp+TFXd7advl/Fo0LN4UkavF5zz5Na9FRIfT9tVj37jO61JL6gPRsKTUHVmVttkK
         gSk3tPZY3X/HsX+fIhlbH0O0G8zANl6rPtfK7utFyXzbGwC9esWUNhy7FEbNQeO/RNsg
         kArbWt0xvZci+JKFyEbv09EQxWs+67sEGuRHipa2IDiJLEFBuPEmhqpZq/GvkQzmgGwY
         pdsRCwDmq8wZ+xJdJO7DRtksfwivWs84+Vq+nCJGfb3BgyBgUOCIt6PRMrvFoifEzCWs
         rPDJaOSwN6O7v+KBaaDS9NCNHjDEd1Rqb09fjPXgXGHmWbN3S9ptgYbCk8LQoCpS0ChJ
         Zsxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=ThQlC+RO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id h137-v6si939855wmd.1.2018.11.02.15.14.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 15:14:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=ThQlC+RO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541196889; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=d9KjTn8HCMWUY8n7+r62NzonlY48EEub64zmRt3RQDqxGtXisty9ySrV7eMTF9x02vxkhHgcM98g/l94yLIu+L/TYjcFQE5HFVN0+vNtafilvoiuXkRnUe4BI4XhYmMubymB5UM7W9Gfgy2EhFbBWS10hofTa0AU7C7WPdsXhNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541196889; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=PB3bRveQOPxHtFRYEkWX3KaEgVwxCmDWTho7Jg8Zi7k=; 
	b=cfoyBEupYgTJzKQKNlCIIUzVUmxmBqZuuL0iE7O4+oCNydGCvywp7qxDMhJ9mrWc/bGz4GpWA6vUApSfjoGeG7VYRpvDSCyPvbGxZ32D9W6x3tjTrm/LSV0iKMEN5zLXMKCKD6vUnkchon3IByiYULmn/sZBPLAp/+cZEdK15k0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541196889;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=4085; bh=PB3bRveQOPxHtFRYEkWX3KaEgVwxCmDWTho7Jg8Zi7k=;
	b=ThQlC+ROZol90yomkd0JGRNEoXnom0M6VubvgHV1tZKIMPgXTsqBrZIRJOCJgh9z
	t2rHinLdPifzidKJrQ1jgVDDaIgjQYrJEPdAmyIY4Pq6xGd99B/XobMaRhBxotAOPp2
	Jm56Y680xXwnj/e9tvyyW2FbtcEKPu5Ul7HKNH+M=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541196888550204.09079164573086; Fri, 2 Nov 2018 23:14:48 +0100 (CET)
Date: Fri, 2 Nov 2018 22:14:47 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus Correct SPDX License Identifier
Message-ID: <20181102221447.GA19866@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
 drivers/staging/greybus/control.h               | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

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
diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 643ddb9e0f92..9eae2726ba3d 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus CPort control protocol
  *
-- 
2.19.1


-- 
ta
ioannis


