X-GM-THRID: 6620547167797903360
X-Received: by 2002:a17:906:66d9:: with SMTP id k25-v6mr1954358ejp.4.1541466354159;
        Mon, 05 Nov 2018 17:05:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a93:: with SMTP id l19-v6ls1362030eje.8.gmail; Mon,
 05 Nov 2018 17:05:53 -0800 (PST)
X-Google-Smtp-Source: AJdET5eYd4OUOyrSjrNxpZ3PMzSgSzbCXUm245XB84HK7VgSkQ/ugBMGJqdcdaBo5mULOjgXTqVc
X-Received: by 2002:a17:906:66d9:: with SMTP id k25-v6mr1954350ejp.4.1541466353373;
        Mon, 05 Nov 2018 17:05:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466353; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsRUMdObyjHVi0ldrUFt/D4WKwA2cbteIU3Y6cs9SIJDoYf6I4++9q2woMSZONV6Z7
         ZTJ2tGwWtOskBar18rViYgb06cGQEn0OGBJp1yxqOFOzTGiShL9btk1BOn5l1ICc3jsL
         NJSNiggQeStIBsRAK1bQDP3IYhWwH5Gd/X+/hgZrZigh/t5/dKlSRUa5WnN8v5aLaUYX
         3vGScv2uuXdNXI8Ip93d1L2gH1scQQTGz5a9RTAZrmXE1To81s04skU/mlBCU5R4eD5B
         oSRu9aqwME1swmGb0+1uLPOEok1ZAYG48/B43yTf6De363LTGa/FKVlZvcNKqiGtqXKh
         YhGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v8zW8UEHt8Uo49CegczvBtfbJ6Q4MuDAMJmX9TbzykY=;
        b=H+q5FUaSLvxy7owyf8icR77Q6KhpyyYc4yjhS6x/smwnE8m/fzDlhDjmdzUYpKqB76
         YpOpQ4K5mp8zxXi+lE4HJJUalAAF+yinUc/Wbk5pTqvwnHJhyJWLwRXMKNVfbEwfVd9y
         1arvSiwaN/mxaeE4anwwIXPj6J3UmeMPasJtejPrBQ993FiSDLAKxj5H2HdpDK/K8Mmq
         Cc7zT3VuTXq3AWLlZdbC5FZYFf0HEQmIyP1pr0rhUlC26CHDqtQpTm6Kv436l2q20Ugm
         4EhKj5hP8QP8xkQYy7zw4N/g6BsPXXcFF1zmKZVpU6L2axlO9fxnFhHseDHeORLhiqts
         hGhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FQzYyFNQ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id c7-v6si309128edi.2.2018.11.05.17.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:53 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FQzYyFNQ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466350; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=g3IzWvsSxvG6X8EEaIQ0EWyBC5qhwnvwFF2qX4hp7HKsvF+AnbwDXLH/l7hjjLDOHml6eo96S29wKC6/Jpmu/zFeyZIxaBfDY7ElRAaOIaubE9lQdb7JzCUaLTi6LqnmXVg74wlt1aalec72QKzi7CbCMjXEYusWCHKX9aUeHJ4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466350; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=v8zW8UEHt8Uo49CegczvBtfbJ6Q4MuDAMJmX9TbzykY=; 
	b=evRSOVjQukcU9odyclnUIlnhpb/VJnqa4jzsiZbDbRIYzY4rDDpi2oNMX7YHh9Nw9wuprGGIietsyMLze+iE37vIM6rgDk+bAW65AZx6HR/Mjtd/nAZM4p8+FCZ1k94Y0MmCHZpKd4kQ4EbAT3X5Lc2Bumo5PpNKObC2I8ksK7s=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466350;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=6864; bh=v8zW8UEHt8Uo49CegczvBtfbJ6Q4MuDAMJmX9TbzykY=;
	b=FQzYyFNQYdOvWG0mrOXKpFZQeivKIWjQ8DYkhfgCdFxPSAwksinDYICQmaQ8OCzq
	9xWPqDXrnvcpBDu3/mUE8F7mXWQdyi9lmMm37rUafcWqps03UqelvPpPm+CatBC/Y7z
	MjzW8q+OqgHj+1PW1KOyhlUZs08MDywRjrfdcZPg=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466349862638.3279864414429; Tue, 6 Nov 2018 02:05:49 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:48 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 13/15] staging: greybus: correct SPDX license identifiers
Message-ID: <2050e6df7f08c64aa6c390bb1f1b6d3c04d3683e.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Correct the SPDX License Identifiers by replacing the comment to C-style
comment. Reported by checkpatch.

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
index a0eb72cb225b..071d946bd14f 100644
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



