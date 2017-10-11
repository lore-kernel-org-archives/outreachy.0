X-GM-THRID: 6475501667265544192
X-Received: by 10.101.90.11 with SMTP id y11mr1810011pgs.82.1507695221065;
        Tue, 10 Oct 2017 21:13:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.253.142 with SMTP id q14ls94494pls.0.gmail; Tue, 10 Oct
 2017 21:13:40 -0700 (PDT)
X-Received: by 10.99.114.88 with SMTP id c24mr1965342pgn.138.1507695220023;
        Tue, 10 Oct 2017 21:13:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507695220; cv=none;
        d=google.com; s=arc-20160816;
        b=dYnASRz6t09oKAyk0kUKRaSTdC+GB6xfV+gb8aORbgaP4ZSl6NNl3tcwHUMSFVVdeo
         cvp6fk8iXQSvkIBHVN7FlmAurpzWy46FzTctzdBK1LIHQ7sdC5XKwOXDExH5MhqsyMDG
         MlHKE7zwQGp6y6aYk8q7Yzl0jaTMsz+HqFi0zXBPrCF/jdHcPowVZMKVMIXwVeBqgsKn
         Giur+fe0is8Ix2rjgwYHDS5iFvzgGa1Dr3Vrderx8pJFBfTNadT6Wn7vJ2GZ2HOnSwlk
         9aiNFUqbLE0mC7BygzJbNyzZmFaQ6obfCFT7UOOtOiH5Q1guKB293FntXPw7AwUfhmP/
         qm/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=QS0AYjSr5nJ4lktHMIpx0KfJweRvSdAhV7l0hQRRON8=;
        b=S448B6/p+2gLII+E4EUL/euwiZQetGaHlXgKR2axcbSBg5YP4eVH/tTXhqGHrINoqO
         MxnQOrPhBZNUO55ucihhuKQ3j2O3zGO4sowcKkmXzEe6lv7G/ig5JiOHKcfLFt4bCSrl
         spyMMRCk5ZYTxMwR7Bis8/CHruNVwUGnc5UroXRiwzx5Zjtx8+y4CwJWLryo6wxxeOkR
         xaFIgylF69MlNDC7t/jtgLzjl5DYOP3/WOTjhikgyXS/pyglMjeCIaeEPYIfMOUtRKAw
         JzfPdBqNN8LNRBGGuWsSyjd85HS2rNJVu7B8GkmFDZAY6dcs1/TNL1G+m75HXDR/D02D
         lPOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fBpqGCTy;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id x71si1530266pfe.0.2017.10.10.21.13.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 21:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fBpqGCTy;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b85so1065282pfj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Oct 2017 21:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QS0AYjSr5nJ4lktHMIpx0KfJweRvSdAhV7l0hQRRON8=;
        b=fBpqGCTyfOvSqXmkn289UjeXd3qWhb0q0L9+6elnkYXGW5a9ghdymOw8y+GaHMrXgG
         z3q/Zj9CS7el9JP2HcnAEBZfsUxrrJkLjMlXKZot1gYq9RGgBvyZEPws8VRAHgqYF6FL
         W24BeFhdVu2oK7pRLrat6fR6S9XLBtOo7DB2JuudHV12KQOhsi+lcC2H2GAav2y9xQRS
         fL32badOHHKe1RHpEPucSc2JXBta6Xx7tj0kkJQdPsI7W29zWZfU6oCUY0vYdAsH6mVX
         RRng2GGG8dRPHceEoRJeIw6KUK8JXaX7J/KB1jaHYBG5u/cchAX5lXCH26Oyqd8bcdX5
         vVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QS0AYjSr5nJ4lktHMIpx0KfJweRvSdAhV7l0hQRRON8=;
        b=RA9kEjZuZO0kf4iDpJvcSuGfXAJ2pWD78BvX5pVwkbGszOJEOtHQPqKinU3uvL/6G3
         KdQubLKU7BFm9TucWO8eo3usoQTFQ+X9IE4GUDcI+wd7Mmk2mFdQ7EGqjH4Vr3NFCfg+
         XK95eNwb3IQMiCABGqHmz6SeXZA6/um8EQlIOfKos1ycI62W/ebgnlIUlVoS7hKO9BEs
         pzKsoeF+01WgLnmvEyS1R7xRbkHs46ig1j3yW/HF/M1dUMwey/BsuiGn776apNuur1K/
         mC9C3dwhEc30HP7DUEj7fImdhXoV2dLukQA1274YzknpzfKuLY+VUtQ9R+xdwYZRRh29
         0V6Q==
X-Gm-Message-State: AMCzsaUHy4JLlY4ZyOuG+bMDBM6X/MajjAIiaoU0O3XQ2zJRplkZBXGD
	EFFJ1FjsmetEXPu7XEi9GPI=
X-Google-Smtp-Source: AOwi7QCr5tJDOmIA3R7pMqOcitGfzUINKtm7aMv1V0eKWSoqc+0nzop6fkUW2EYxu776pHxILLCc+g==
X-Received: by 10.84.235.7 with SMTP id o7mr13827107plk.163.1507695219507;
        Tue, 10 Oct 2017 21:13:39 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id t6sm5670705pfl.142.2017.10.10.21.13.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 21:13:38 -0700 (PDT)
Date: Tue, 10 Oct 2017 22:13:36 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/2] drm: Extract drm_debug.[hc]
Message-ID: <830fcacb4513dc2ca7f44cb1828d8cfa0e4e15ae.1507693829.git.hamohammed.sa@gmail.com>
References: <cover.1507693829.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507693829.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Extract DRM_* debug macros from drmP.h to drm_debug.h and move printting
related functions from drm_drv.[hc] to drm_debug.[hc].

Update kerneldoc include directives accordingly.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 Documentation/gpu/drm-uapi.rst |   9 ++
 drivers/gpu/drm/Makefile       |   2 +-
 drivers/gpu/drm/drm_debug.c    |  75 ++++++++++++++++
 drivers/gpu/drm/drm_drv.c      |  47 ----------
 include/drm/drmP.h             | 149 +------------------------------
 include/drm/drm_debug.h        | 193 +++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_drv.h          |   7 --
 7 files changed, 279 insertions(+), 203 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_debug.c
 create mode 100644 include/drm/drm_debug.h

diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.rst
index 679373b..9a374e6 100644
--- a/Documentation/gpu/drm-uapi.rst
+++ b/Documentation/gpu/drm-uapi.rst
@@ -235,6 +235,15 @@ Debugfs Support
 .. kernel-doc:: drivers/gpu/drm/drm_debugfs.c
    :export:
 
+Debug Support
+-------------
+
+.. kernel-doc:: include/drm/drm_debug.h
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/drm_debug.c
+   :export:
+
 Sysfs Support
 =============
 
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


