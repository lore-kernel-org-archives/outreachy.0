X-GM-THRID: 6475500386308325376
X-Received: by 10.99.106.72 with SMTP id f69mr261988pgc.139.1507775577846;
        Wed, 11 Oct 2017 19:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.55.65 with SMTP id e62ls779623pfa.2.gmail; Wed, 11 Oct 2017
 19:32:56 -0700 (PDT)
X-Received: by 10.98.19.155 with SMTP id 27mr277591pft.29.1507775576875;
        Wed, 11 Oct 2017 19:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507775576; cv=none;
        d=google.com; s=arc-20160816;
        b=02oMGLilHpdEGJW8v8wg3ktIafrhmVDUVzS5edjLlzPU0o/ddZ9/BbBgbAeDTarbxN
         jOxweV6BoILzf8m0roj608+4LyU+b7Ldb/LhGxcIjJQvBBLroOeiqdlFLcgBmXjQ205W
         6Uv3JqwU8NACPUgsMF32KRUU4ussr0v1xwhty7k1AejhUhQ8XvOAEpdgPBjoF2UWZtN4
         CvaEr1qgaaQOrZ2gF8So3Z2pttgEs02LcK3gqLQcnYDXL84wgpNOls9kMMLRbilExu/S
         bPgY461b9u/Vbe9p3/Ibn8CscmJzmGuYLxlaHKulpQYy43Zzl9wo96I0CAz27wWeD+7u
         vMSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=bDAlP5mPp4Br/o2qK4ruH7aQTUjJAB1+A38WZldO/8Q=;
        b=qQ02PWkZaygdWmOHQYxhwKKlXNcS5DShFgfKoz7lVeF5pr+ylZ1B5JCGlA8nY+zsJZ
         Nu0/T34wL85TElDUkZcePvzilwvFLewLttVMECJUYZYjNvYiHw90pQQnA/aUy0/3I41T
         /QkhoG6ep2wAsSrKOu9HXdTv+UUb8qse+YhiDu1rxxLiQbXvC8kDbcfjxo8pLNLIWi0g
         KxnASj74GLc7I9NAqeOxLIgyKCmeagIVczlOec/Szhiaqcw8WxZ138PCte5h5iPp6qMJ
         9nRrDI5I/bun5yHaJbnLrri4/RTPtizcSAndF5pxOyrh3Z8Z7QMy79Iw3jjkCxaqJQIP
         CjPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mXS5+uQ4;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w11si1594024pfk.4.2017.10.11.19.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mXS5+uQ4;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z80so4055989pff.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 19:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bDAlP5mPp4Br/o2qK4ruH7aQTUjJAB1+A38WZldO/8Q=;
        b=mXS5+uQ4h/ZLnPmDlWXQguUMWG/nS7axWAYZgD2ozWMtDVsiPDRMaNdz7M4XUnakoo
         fIwltVxpc50AhBLrDfx431gT0+uW0Yo24f7/MaezSgG3dJONOr3jGejST6yN7moehQGl
         Tva/SwpJIZWEpmL29NKy5gfFuKX+/GA9bjESYQM0Vcbwxnc1zTPn0fUhnaBCV66wQ4QV
         XD1gQfUcVkiICm0koXIvSjujB1o2CO+VTBJMGSOpMKhuARiqQpfDa6qkDbIeyi1+R0xK
         coaMs0PoKTSfuR9wTy9ublbpdWz/wupQmGOjT0vUdnexOVkGjV1LW9qyrwEzdTjMrtbE
         53kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bDAlP5mPp4Br/o2qK4ruH7aQTUjJAB1+A38WZldO/8Q=;
        b=FvRq97JLbHwi5G9WY1WoHqAfgio0Gz+9KaTjCUt50z1Mtky8qWQ5erCCtGA0IDjAKU
         9APEBHS5NLpejAZy6f7T0eYHN10A4LF3DPBzxoVV9JzYr3HQS3R66YPFINtut+h9NmLU
         u8hm7o+/ajril1npHhufKFaqmOsl/l3Mv4F2G4P8Mr60Sn+JfMoofHe2riq+8sP9Eh9D
         uIqfM//VKcno8BNZNoskGzKbQ9Kundi/R5u3/ay4V0h2TWElPMKsrOGML/FDZCJEicoq
         6xeJx1IkOnor+GPkR5pHpJkyljiudGhotui6+5nzIN5krL70oF8lEQt85rde8INDP5xp
         n1zA==
X-Gm-Message-State: AMCzsaWqDIoz1XJPickcDtH23vCTSt1J05ouRR5OnpPKTWDHJZDhmiqY
	6EL393jmEUtH2t7VQw7ITgk=
X-Google-Smtp-Source: AOwi7QDc8EqB4EWmzxIx+4AKwcRSN9KmKvjMPge4TvCU7/n1gNmd6hCkKF8hhZHfp6DTRhO5yuCTfw==
X-Received: by 10.84.169.4 with SMTP id g4mr877297plb.328.1507775576366;
        Wed, 11 Oct 2017 19:32:56 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id u131sm14252274pgc.89.2017.10.11.19.32.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:32:55 -0700 (PDT)
Date: Wed, 11 Oct 2017 20:32:53 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 1/3] drm: Extract drm_debug.[hc]
Message-ID: <61b5de2721575d5fded00cce1944a6369dc93c24.1507773977.git.hamohammed.sa@gmail.com>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507773977.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Extract DRM_* debug macros from drmP.h to drm_debug.h and move printting
related functions from drm_drv.[hc] to drm_debug.[hc].

Update kerneldoc include directives accordingly.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v2:
- Place kerneldoc include directives in drm-internals.rst

 Documentation/gpu/drm-internals.rst |   8 ++
 drivers/gpu/drm/Makefile            |   2 +-
 drivers/gpu/drm/drm_debug.c         |  75 ++++++++++++++
 drivers/gpu/drm/drm_drv.c           |  47 ---------
 include/drm/drmP.h                  | 149 +---------------------------
 include/drm/drm_debug.h             | 193 ++++++++++++++++++++++++++++++++++++
 include/drm/drm_drv.h               |   7 --
 7 files changed, 278 insertions(+), 203 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_debug.c
 create mode 100644 include/drm/drm_debug.h

diff --git a/Documentation/gpu/drm-internals.rst b/Documentation/gpu/drm-internals.rst
index 5ee9674..c17f7d2 100644
--- a/Documentation/gpu/drm-internals.rst
+++ b/Documentation/gpu/drm-internals.rst
@@ -230,6 +230,14 @@ Printer
 .. kernel-doc:: drivers/gpu/drm/drm_print.c
    :export:
 
+Debug Support
+-------------
+
+.. kernel-doc:: include/drm/drm_debug.h
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/drm_debug.c
+   :export:
 
 Legacy Support Code
 ===================
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index a8acc19..d09bd06 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -3,7 +3,7 @@
 # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
 
 drm-y       :=	drm_auth.o drm_bufs.o drm_cache.o \
-		drm_context.o drm_dma.o \
+		drm_context.o drm_dma.o drm_debug.o \
 		drm_file.o drm_gem.o drm_ioctl.o drm_irq.o \
 		drm_lock.o drm_memory.o drm_drv.o \
 		drm_scatter.o drm_pci.o \
diff --git a/drivers/gpu/drm/drm_debug.c b/drivers/gpu/drm/drm_debug.c
new file mode 100644
index 0000000..a79593f
--- /dev/null
+++ b/drivers/gpu/drm/drm_debug.c
@@ -0,0 +1,75 @@
+/*
+ * Copyright 2001 VA Linux Systems, Inc., Sunnyvale, California.
+ * All Rights Reserved.
+ *
+ * Author Rickard E. (Rik) Faith <faith@valinux.com>
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * PRECISION INSIGHT AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
+ * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+ * DEALINGS IN THE SOFTWARE.
+ */
+
+#include <drm/drm_debug.h>
+#include <drm/drmP.h>
+
+#define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
+
+void drm_dev_printk(const struct device *dev, const char *level,
+		    unsigned int category, const char *function_name,
+		    const char *prefix, const char *format, ...)
+{
+	struct va_format vaf;
+	va_list args;
+
+	if (category != DRM_UT_NONE && !(drm_debug & category))
+		return;
+
+	va_start(args, format);
+	vaf.fmt = format;
+	vaf.va = &args;
+
+	if (dev)
+		dev_printk(level, dev, DRM_PRINTK_FMT, function_name, prefix,
+			   &vaf);
+	else
+		printk("%s" DRM_PRINTK_FMT, level, function_name, prefix, &vaf);
+
+	va_end(args);
+}
+EXPORT_SYMBOL(drm_dev_printk);
+
+void drm_printk(const char *level, unsigned int category,
+		const char *format, ...)
+{
+	struct va_format vaf;
+	va_list args;
+
+	if (category != DRM_UT_NONE && !(drm_debug & category))
+		return;
+
+	va_start(args, format);
+	vaf.fmt = format;
+	vaf.va = &args;
+
+	printk("%s" "[" DRM_NAME ":%ps]%s %pV",
+	       level, __builtin_return_address(0),
+	       strcmp(level, KERN_ERR) == 0 ? " *ERROR*" : "", &vaf);
+
+	va_end(args);
+}
+EXPORT_SYMBOL(drm_printk);
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index be38ac7..9710c78 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -74,53 +74,6 @@ static bool drm_core_init_complete = false;
 
 static struct dentry *drm_debugfs_root;
 
-#define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
-
-void drm_dev_printk(const struct device *dev, const char *level,
-		    unsigned int category, const char *function_name,
-		    const char *prefix, const char *format, ...)
-{
-	struct va_format vaf;
-	va_list args;
-
-	if (category != DRM_UT_NONE && !(drm_debug & category))
-		return;
-
-	va_start(args, format);
-	vaf.fmt = format;
-	vaf.va = &args;
-
-	if (dev)
-		dev_printk(level, dev, DRM_PRINTK_FMT, function_name, prefix,
-			   &vaf);
-	else
-		printk("%s" DRM_PRINTK_FMT, level, function_name, prefix, &vaf);
-
-	va_end(args);
-}
-EXPORT_SYMBOL(drm_dev_printk);
-
-void drm_printk(const char *level, unsigned int category,
-		const char *format, ...)
-{
-	struct va_format vaf;
-	va_list args;
-
-	if (category != DRM_UT_NONE && !(drm_debug & category))
-		return;
-
-	va_start(args, format);
-	vaf.fmt = format;
-	vaf.va = &args;
-
-	printk("%s" "[" DRM_NAME ":%ps]%s %pV",
-	       level, __builtin_return_address(0),
-	       strcmp(level, KERN_ERR) == 0 ? " *ERROR*" : "", &vaf);
-
-	va_end(args);
-}
-EXPORT_SYMBOL(drm_printk);
-
 /*
  * DRM Minors
  * A DRM device can provide several char-dev interfaces on the DRM-Major. Each
diff --git a/include/drm/drmP.h b/include/drm/drmP.h
index 7277783a..8186a96 100644
--- a/include/drm/drmP.h
+++ b/include/drm/drmP.h
@@ -77,6 +77,7 @@
 #include <drm/drm_prime.h>
 #include <drm/drm_pci.h>
 #include <drm/drm_file.h>
+#include <drm/drm_debug.h>
 #include <drm/drm_debugfs.h>
 #include <drm/drm_ioctl.h>
 #include <drm/drm_sysfs.h>
@@ -142,154 +143,6 @@ struct pci_controller;
 /*@{*/
 
 /***********************************************************************/
-/** \name Macros to make printk easier */
-/*@{*/
-
-#define _DRM_PRINTK(once, level, fmt, ...)				\
-	do {								\
-		printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
-			     ##__VA_ARGS__);				\
-	} while (0)
-
-#define DRM_INFO(fmt, ...)						\
-	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
-#define DRM_NOTE(fmt, ...)						\
-	_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
-#define DRM_WARN(fmt, ...)						\
-	_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
-
-#define DRM_INFO_ONCE(fmt, ...)						\
-	_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
-#define DRM_NOTE_ONCE(fmt, ...)						\
-	_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
-#define DRM_WARN_ONCE(fmt, ...)						\
-	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
-
-/**
- * Error output.
- *
- * \param fmt printf() like format string.
- * \param arg arguments
- */
-#define DRM_DEV_ERROR(dev, fmt, ...)					\
-	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
-		       fmt, ##__VA_ARGS__)
-#define DRM_ERROR(fmt, ...)						\
-	drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
-
-/**
- * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
- *
- * \param fmt printf() like format string.
- * \param arg arguments
- */
-#define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
-({									\
-	static DEFINE_RATELIMIT_STATE(_rs,				\
-				      DEFAULT_RATELIMIT_INTERVAL,	\
-				      DEFAULT_RATELIMIT_BURST);		\
-									\
-	if (__ratelimit(&_rs))						\
-		DRM_DEV_ERROR(dev, fmt, ##__VA_ARGS__);			\
-})
-#define DRM_ERROR_RATELIMITED(fmt, ...)					\
-	DRM_DEV_ERROR_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
-
-#define DRM_DEV_INFO(dev, fmt, ...)					\
-	drm_dev_printk(dev, KERN_INFO, DRM_UT_NONE, __func__, "", fmt,	\
-		       ##__VA_ARGS__)
-
-#define DRM_DEV_INFO_ONCE(dev, fmt, ...)				\
-({									\
-	static bool __print_once __read_mostly;				\
-	if (!__print_once) {						\
-		__print_once = true;					\
-		DRM_DEV_INFO(dev, fmt, ##__VA_ARGS__);			\
-	}								\
-})
-
-/**
- * Debug output.
- *
- * \param fmt printf() like format string.
- * \param arg arguments
- */
-#define DRM_DEV_DEBUG(dev, fmt, args...)				\
-	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
-		       ##args)
-#define DRM_DEBUG(fmt, ...)						\
-	drm_printk(KERN_DEBUG, DRM_UT_CORE, fmt, ##__VA_ARGS__)
-
-#define DRM_DEV_DEBUG_DRIVER(dev, fmt, args...)				\
-	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_DRIVER, __func__, "",	\
-		       fmt, ##args)
-#define DRM_DEBUG_DRIVER(fmt, ...)					\
-	drm_printk(KERN_DEBUG, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
-
-#define DRM_DEV_DEBUG_KMS(dev, fmt, args...)				\
-	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_KMS, __func__, "", fmt,	\
-		       ##args)
-#define DRM_DEBUG_KMS(fmt, ...)					\
-	drm_printk(KERN_DEBUG, DRM_UT_KMS, fmt, ##__VA_ARGS__)
-
-#define DRM_DEV_DEBUG_PRIME(dev, fmt, args...)				\
-	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_PRIME, __func__, "",	\
-		       fmt, ##args)
-#define DRM_DEBUG_PRIME(fmt, ...)					\
-	drm_printk(KERN_DEBUG, DRM_UT_PRIME, fmt, ##__VA_ARGS__)
-
-#define DRM_DEV_DEBUG_ATOMIC(dev, fmt, args...)				\
-	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ATOMIC, __func__, "",	\
-		       fmt, ##args)
-#define DRM_DEBUG_ATOMIC(fmt, ...)					\
-	drm_printk(KERN_DEBUG, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)
-
-#define DRM_DEV_DEBUG_VBL(dev, fmt, args...)				\
-	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_VBL, __func__, "", fmt,	\
-		       ##args)
-#define DRM_DEBUG_VBL(fmt, ...)					\
-	drm_printk(KERN_DEBUG, DRM_UT_VBL, fmt, ##__VA_ARGS__)
-
-#define _DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, level, fmt, args...)	\
-({									\
-	static DEFINE_RATELIMIT_STATE(_rs,				\
-				      DEFAULT_RATELIMIT_INTERVAL,	\
-				      DEFAULT_RATELIMIT_BURST);		\
-	if (__ratelimit(&_rs))						\
-		drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ ## level,	\
-			       __func__, "", fmt, ##args);		\
-})
-
-/**
- * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
- *
- * \param fmt printf() like format string.
- * \param arg arguments
- */
-#define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
-	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
-#define DRM_DEBUG_RATELIMITED(fmt, args...)				\
-	DRM_DEV_DEBUG_RATELIMITED(NULL, fmt, ##args)
-#define DRM_DEV_DEBUG_DRIVER_RATELIMITED(dev, fmt, args...)		\
-	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, DRIVER, fmt, ##args)
-#define DRM_DEBUG_DRIVER_RATELIMITED(fmt, args...)			\
-	DRM_DEV_DEBUG_DRIVER_RATELIMITED(NULL, fmt, ##args)
-#define DRM_DEV_DEBUG_KMS_RATELIMITED(dev, fmt, args...)		\
-	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, KMS, fmt, ##args)
-#define DRM_DEBUG_KMS_RATELIMITED(fmt, args...)				\
-	DRM_DEV_DEBUG_KMS_RATELIMITED(NULL, fmt, ##args)
-#define DRM_DEV_DEBUG_PRIME_RATELIMITED(dev, fmt, args...)		\
-	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, PRIME, fmt, ##args)
-#define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
-	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
-
-/* Format strings and argument splitters to simplify printing
- * various "complex" objects
- */
-
-/*@}*/
-
-/***********************************************************************/
 /** \name Internal types and structures */
 /*@{*/
 
diff --git a/include/drm/drm_debug.h b/include/drm/drm_debug.h
new file mode 100644
index 0000000..24fbea4
--- /dev/null
+++ b/include/drm/drm_debug.h
@@ -0,0 +1,193 @@
+/*
+ * Internal Header for the Direct Rendering Manager
+ *
+ * Copyright 1999 Precision Insight, Inc., Cedar Park, Texas.
+ * Copyright 2000 VA Linux Systems, Inc., Sunnyvale, California.
+ * Copyright (c) 2009-2010, Code Aurora Forum.
+ * All rights reserved.
+ *
+ * Author: Rickard E. (Rik) Faith <faith@valinux.com>
+ * Author: Gareth Hughes <gareth@valinux.com>
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * VA LINUX SYSTEMS AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
+ * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+#ifndef _DRM_DEBUG_H_
+#define _DRM_DEBUG_H_
+
+#include <linux/kernel.h>
+
+__printf(6, 7)
+void drm_dev_printk(const struct device *dev, const char *level,
+		    unsigned int category, const char *function_name,
+		    const char *prefix, const char *format, ...);
+__printf(3, 4)
+void drm_printk(const char *level, unsigned int category,
+		const char *format, ...);
+
+/***********************************************************************/
+/** \name Macros to make printk easier */
+/*@{*/
+
+#define _DRM_PRINTK(once, level, fmt, ...)				\
+	do {								\
+		printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
+			     ##__VA_ARGS__);				\
+	} while (0)
+
+#define DRM_INFO(fmt, ...)						\
+	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
+#define DRM_NOTE(fmt, ...)						\
+	_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
+#define DRM_WARN(fmt, ...)						\
+	_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
+
+#define DRM_INFO_ONCE(fmt, ...)						\
+	_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
+#define DRM_NOTE_ONCE(fmt, ...)						\
+	_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
+#define DRM_WARN_ONCE(fmt, ...)						\
+	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
+
+/**
+ * Error output.
+ *
+ * \param fmt printf() like format string.
+ * \param arg arguments
+ */
+#define DRM_DEV_ERROR(dev, fmt, ...)					\
+	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
+		       fmt, ##__VA_ARGS__)
+#define DRM_ERROR(fmt, ...)						\
+	drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
+
+/**
+ * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
+ *
+ * \param fmt printf() like format string.
+ * \param arg arguments
+ */
+#define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
+({									\
+	static DEFINE_RATELIMIT_STATE(_rs,				\
+				      DEFAULT_RATELIMIT_INTERVAL,	\
+				      DEFAULT_RATELIMIT_BURST);		\
+									\
+	if (__ratelimit(&_rs))						\
+		DRM_DEV_ERROR(dev, fmt, ##__VA_ARGS__);			\
+})
+#define DRM_ERROR_RATELIMITED(fmt, ...)					\
+	DRM_DEV_ERROR_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
+
+#define DRM_DEV_INFO(dev, fmt, ...)					\
+	drm_dev_printk(dev, KERN_INFO, DRM_UT_NONE, __func__, "", fmt,	\
+		       ##__VA_ARGS__)
+
+#define DRM_DEV_INFO_ONCE(dev, fmt, ...)				\
+({									\
+	static bool __print_once __read_mostly;				\
+	if (!__print_once) {						\
+		__print_once = true;					\
+		DRM_DEV_INFO(dev, fmt, ##__VA_ARGS__);			\
+	}								\
+})
+
+/**
+ * Debug output.
+ *
+ * \param fmt printf() like format string.
+ * \param arg arguments
+ */
+#define DRM_DEV_DEBUG(dev, fmt, args...)				\
+	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
+		       ##args)
+#define DRM_DEBUG(fmt, ...)						\
+	drm_printk(KERN_DEBUG, DRM_UT_CORE, fmt, ##__VA_ARGS__)
+
+#define DRM_DEV_DEBUG_DRIVER(dev, fmt, args...)				\
+	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_DRIVER, __func__, "",	\
+		       fmt, ##args)
+#define DRM_DEBUG_DRIVER(fmt, ...)					\
+	drm_printk(KERN_DEBUG, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
+
+#define DRM_DEV_DEBUG_KMS(dev, fmt, args...)				\
+	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_KMS, __func__, "", fmt,	\
+		       ##args)
+#define DRM_DEBUG_KMS(fmt, ...)					\
+	drm_printk(KERN_DEBUG, DRM_UT_KMS, fmt, ##__VA_ARGS__)
+
+#define DRM_DEV_DEBUG_PRIME(dev, fmt, args...)				\
+	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_PRIME, __func__, "",	\
+		       fmt, ##args)
+#define DRM_DEBUG_PRIME(fmt, ...)					\
+	drm_printk(KERN_DEBUG, DRM_UT_PRIME, fmt, ##__VA_ARGS__)
+
+#define DRM_DEV_DEBUG_ATOMIC(dev, fmt, args...)				\
+	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ATOMIC, __func__, "",	\
+		       fmt, ##args)
+#define DRM_DEBUG_ATOMIC(fmt, ...)					\
+	drm_printk(KERN_DEBUG, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)
+
+#define DRM_DEV_DEBUG_VBL(dev, fmt, args...)				\
+	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_VBL, __func__, "", fmt,	\
+		       ##args)
+#define DRM_DEBUG_VBL(fmt, ...)					\
+	drm_printk(KERN_DEBUG, DRM_UT_VBL, fmt, ##__VA_ARGS__)
+
+#define _DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, level, fmt, args...)	\
+({									\
+	static DEFINE_RATELIMIT_STATE(_rs,				\
+				      DEFAULT_RATELIMIT_INTERVAL,	\
+				      DEFAULT_RATELIMIT_BURST);		\
+	if (__ratelimit(&_rs))						\
+		drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ ## level,	\
+			       __func__, "", fmt, ##args);		\
+})
+
+/**
+ * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
+ *
+ * \param fmt printf() like format string.
+ * \param arg arguments
+ */
+#define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
+	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
+#define DRM_DEBUG_RATELIMITED(fmt, args...)				\
+	DRM_DEV_DEBUG_RATELIMITED(NULL, fmt, ##args)
+#define DRM_DEV_DEBUG_DRIVER_RATELIMITED(dev, fmt, args...)		\
+	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, DRIVER, fmt, ##args)
+#define DRM_DEBUG_DRIVER_RATELIMITED(fmt, args...)			\
+	DRM_DEV_DEBUG_DRIVER_RATELIMITED(NULL, fmt, ##args)
+#define DRM_DEV_DEBUG_KMS_RATELIMITED(dev, fmt, args...)		\
+	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, KMS, fmt, ##args)
+#define DRM_DEBUG_KMS_RATELIMITED(fmt, args...)				\
+	DRM_DEV_DEBUG_KMS_RATELIMITED(NULL, fmt, ##args)
+#define DRM_DEV_DEBUG_PRIME_RATELIMITED(dev, fmt, args...)		\
+	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, PRIME, fmt, ##args)
+#define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
+	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
+
+/* Format strings and argument splitters to simplify printing
+ * various "complex" objects
+ */
+
+/*@}*/
+
+#endif /* _DRM_DEBUG_H_ */
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 71bbaae..4f3cc25 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -592,13 +592,6 @@ struct drm_driver {
 	int dev_priv_size;
 };
 
-__printf(6, 7)
-void drm_dev_printk(const struct device *dev, const char *level,
-		    unsigned int category, const char *function_name,
-		    const char *prefix, const char *format, ...);
-__printf(3, 4)
-void drm_printk(const char *level, unsigned int category,
-		const char *format, ...);
 extern unsigned int drm_debug;
 
 int drm_dev_init(struct drm_device *dev,
-- 
2.7.4


