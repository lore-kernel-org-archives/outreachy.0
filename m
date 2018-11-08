X-GM-THRID: 6621495393645494272
X-Received: by 2002:a1c:968b:: with SMTP id y133-v6mr325048wmd.12.1541687181847;
        Thu, 08 Nov 2018 06:26:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f0d0:: with SMTP id x16-v6ls680075wro.22.gmail; Thu, 08
 Nov 2018 06:26:20 -0800 (PST)
X-Google-Smtp-Source: AJdET5flZhMb5bWeAoy3vj0sZwQa8uSk92PO7GCVjdQ9xT7I7FZNnwa5IGfpSsSlApZ6rKZDKJdX
X-Received: by 2002:adf:eed2:: with SMTP id a18-v6mr1026512wrp.27.1541687180780;
        Thu, 08 Nov 2018 06:26:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687180; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAemYpG7N3E1jBtn9fc4OAtQgcl1pf1QlwlEA/GdRFCcPbiQM7KH4sNCwft1VfZXRh
         bwswernVr5r5QzCYbSnl8EyC1gAcL4l72vupoqR98JO8w/JzypoYs68It6Eva9nag89B
         13n0wn0t6zEpLp/hKthjzGM2Lsae1WdgmJVgdYL5HstHngXuhCM1/TyEJDzWDZo2lG/B
         PptfoV7pue6eLEQOfDieE10YbjNQW6ucKsHMaDg+IdRszC1CBGxZGpYcjTtWn0MKSYAS
         Mj1ymkTGskqU6E4SXC+V19866lCrV8W7nRVI01phjkf/DoN7r27m3d6XZY58xmDwoLUu
         8WMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v8zW8UEHt8Uo49CegczvBtfbJ6Q4MuDAMJmX9TbzykY=;
        b=fgxH9fu/m5Cd9bD+mH47PPM5Dlo6RLqrBs6PkjJaonLJprdwJVxw1ImfBRxz2cCU+W
         Dpx3W3GYu9o0R+X8EhuJMDpU1bOW4+yfDzVXezGT50sDUPdCjfEHZrL/PaCrijnwCGiO
         mEWHuIvcio/8kDS6mm/sCR0/cEcMWSN259yXisTCbVShXJ7KcHpIU3awJ57TunPgpmh+
         1qdTrLAm8vVaCUs18m5DKLVh53iHmmM9VtgGnLY5ymB5CoN44Ter16TmwQi89/JG/1IH
         Z9uu1NxyVf9/UAxtYoYLcOPM6N0a/Q9tB5tFN5Fl0xQmUNsGJIMLI48E4brQlR8kt5o+
         kdmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=W27RZ2Tt;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o8-v6si185034wmd.2.2018.11.08.06.26.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:26:20 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=W27RZ2Tt;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687178; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Ct3tsaphVmIqbwKqqcGT+/yiRW8T17isfScJhKBURtyoOTOVfBO2OzQ86PpD5RA0NwmxXT8X8U4aiE8XMe3ZNyPluwPwuIX3uPA3V1wS44zeWwT0DwKye6EdAy44TSFIMfC5z5/lAkk1YQ8mligvwO765v/MG4IU5m5UR6QjDgk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687178; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=v8zW8UEHt8Uo49CegczvBtfbJ6Q4MuDAMJmX9TbzykY=; 
	b=gvzp6QAaFQ9FiAfs2Fd592Kr3wLVUtE3rveUZYIUa0NimhxRu/YlUq7LZqlKT1tOrh8jBPE3UDvthO0dK1ghAkM4MCY8WtQ69ggE9IQFS/Ke9YIgA0BX5FoWkRgrAmn5gh7FWDGHDcYERNl72kf17qhzf6lEOH24cO2UipzBYKU=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687178;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=6864; bh=v8zW8UEHt8Uo49CegczvBtfbJ6Q4MuDAMJmX9TbzykY=;
	b=W27RZ2TtDGlrVDa+n8NVbgqVMQqTVAa2oTIc/A7AQN2s4lGgaEcAbnrbP40usmsX
	m7d/SpiPo4lbrq6Av04qFUNvjeZBSuzqUW9Rw0+4l1peGGKKC5GsNbcchX4yKjkhe64
	YGxrT16UMrC1Dy7IGA6yFu1kP5/UB5xM1sYPLEso=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687177394333.12223088497274; Thu, 8 Nov 2018 15:26:17 +0100 (CET)
Date: Thu, 8 Nov 2018 14:26:14 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 13/15] staging: greybus: correct SPDX license identifiers
Message-ID: <2050e6df7f08c64aa6c390bb1f1b6d3c04d3683e.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
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



