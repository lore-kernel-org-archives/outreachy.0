X-GM-THRID: 6475500386308325376
X-Received: by 10.99.169.26 with SMTP id u26mr2859927pge.75.1508229822965;
        Tue, 17 Oct 2017 01:43:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.240.136 with SMTP id z8ls286333plk.2.gmail; Tue, 17 Oct
 2017 01:43:41 -0700 (PDT)
X-Received: by 10.98.73.204 with SMTP id r73mr2841612pfi.23.1508229821696;
        Tue, 17 Oct 2017 01:43:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508229821; cv=none;
        d=google.com; s=arc-20160816;
        b=KatOEFtsx5VORpT3CHPfV4+lA/ORh8rILwLMWCe4xGUnO2usNRRJ+KoRt/hAyEJnyf
         Ib8raZA6MIboQY5YtB3qe28YLRPRscvDUlaEcBFTtO2hKpXe11x1IZN59Lzg/L3lwTFI
         yoyscD0y9k3Bm0hqseoayY2GQuPHSWH4TmbYtHugMDQMC1up6eMIV7qLkorG/aCwapzH
         tToNMmFl4iO38+uhTaOzirCNHHuy2xddHnUGBEkQCg2lk12EDYft0irCTKz073NdBMpk
         yk5Qomh5EaHZqKeCOG2biggnx+OaUgxz9qmJooSiiUGCthU8hlP+aIZxmTVG2F/sb77Y
         a9Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=guj9SRHKLBm8tIYEOjh7HMmHNkQIXy6o3PnfPl46ZmY=;
        b=kBSJp9QmMkxZyLF6Y1k7y7q+tEO0m18T5MX1WC5MN94bKgFHN9uBIUXBxM8Xpvwt59
         ffFknFl1KhgV8sjFY/cnSrQ6wbYK0SwYXGtc7Uo14OKNofWecv4KxMvrLB9mQJC02599
         hBx3pMqBiJKHUKIdj5+NezFh7Hl69gAXXnUyvpls4rJp6bq3qRKvFy4y8M2uZFvJJoCG
         CqKZACbN2GJTw/WjYMxmaVKj86hOWEVG6HaV096g7jGeOYgDxQ4OY3hCpsc96Yz4L507
         DdEtNWLOCFP3gcGBe/sasrrwY+qa2lc2S7ekBhlRCkz0IbIVDY2DH/fX6eK6owXWKlxK
         GQtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VORie5G/;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id w4si873890plp.5.2017.10.17.01.43.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:43:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VORie5G/;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id b85so840445pfj.13
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 01:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=guj9SRHKLBm8tIYEOjh7HMmHNkQIXy6o3PnfPl46ZmY=;
        b=VORie5G/sMkkNAbIYAs3BBP1RbtAfpgPn5Z82V9kXdtnEj9oS8dTy5NFFEeS9lYfsA
         jsVJaos/N+mF8c0Ui8LW/xUC5Ar0nRdjlJaJFNedSZTndutYgDXgitKzXeSSzXk04hgm
         qGOrf7jV0k468Z0G8vkwMXMx4GrmswGTHrHmiilQN5JgwGOmszZjYWQetdi1EtLBNfhk
         zwqSX+t1UB7f8fXRccdWHGGVxViq6o5ZJ5xgED6pvMCffy0hgyM+qpHmrAy3hwB3IBib
         0nD42ouAHFi8+HLu49BRlyhvsPmJj8HA0HWXxvDoMz2L3tMCdcvnzaXjVx6MX2euYdk8
         iwMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=guj9SRHKLBm8tIYEOjh7HMmHNkQIXy6o3PnfPl46ZmY=;
        b=sz2RPfqM7tcHiioCxu/1AVlpU2OSD0WXCA/G75MbaalSoGBz3qkOvS8guSEN2skcKc
         /SCv8sEF8grBc/9w3H8EIPhvzd2BkTjh6C9LqI5x+9HBq87VKUqc4edOtc0NjyZtS6gI
         rUdm0Jc/leF6fDt4swFAucD1FxiAMpCZIE+Nm3WAclh5Rwm72cg9EtWtdDYiq+Hhp/bC
         zZ4xe/Lte7AjiXk72S1U0R8b0QQV6OBUImE5RrlW5NEjnJrRiLsYC9t+aFSFrdDxs277
         1WH1cmQi+2cFXMRep/tVn+vYc5Zfs15D6/sUNSUqMnFm/F0R3TKzK5BJhnduqt+UQwrE
         aAWA==
X-Gm-Message-State: AMCzsaWRT/6sxsIobe02uogqxYDTf1A4LVT0OVs5oFUwGVSdhnjHwJPG
	cbcsynaCq5SWYs77ZngxWCw=
X-Google-Smtp-Source: AOwi7QDVG6LFlH4qyFzlGDyMlwdEhFpnzyx1NtWRDjxm39cmgxoV92aLRYWAOUJyySwKL6dQir75ug==
X-Received: by 10.159.207.134 with SMTP id z6mr11312326plo.258.1508229821207;
        Tue, 17 Oct 2017 01:43:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id y83sm19537477pfa.31.2017.10.17.01.43.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:43:40 -0700 (PDT)
Date: Tue, 17 Oct 2017 02:43:38 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v3 1/2] drm: Move debug macros out of drmP.h
Message-ID: <c20e22c2a478cc0be5d23458dea9375a89bf5f80.1508228315.git.hamohammed.sa@gmail.com>
References: <cover.1508228315.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508228315.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch extract DRM_* debug macros from drmP.h to drm_print.h and
move printing related functions used by these macros from drm_drv.[hc]
to drm_print.[hc].

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v3:
- Move debug macros and print functions into drm_print.[hc] instead of
introducing drm_debug.[hc].

 drivers/gpu/drm/drm_drv.c   |  47 -------------
 drivers/gpu/drm/drm_print.c |  47 +++++++++++++
 include/drm/drmP.h          | 150 +-----------------------------------------
 include/drm/drm_drv.h       |   7 --
 include/drm/drm_print.h     | 156 ++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 204 insertions(+), 203 deletions(-)

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
diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index 74c466a..0b3bf47 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -63,3 +63,50 @@ void drm_printf(struct drm_printer *p, const char *f, ...)
 	va_end(args);
 }
 EXPORT_SYMBOL(drm_printf);
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
diff --git a/include/drm/drmP.h b/include/drm/drmP.h
index 7277783a..2ba73ff4 100644
--- a/include/drm/drmP.h
+++ b/include/drm/drmP.h
@@ -75,6 +75,7 @@
 #include <drm/drm_sarea.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_prime.h>
+#include <drm/drm_print.h>
 #include <drm/drm_pci.h>
 #include <drm/drm_file.h>
 #include <drm/drm_debugfs.h>
@@ -142,160 +143,11 @@ struct pci_controller;
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
 
 #define DRM_IF_VERSION(maj, min) (maj << 16 | min)
 
-
 /**
  * drm_drv_uses_atomic_modeset - check if the driver implements
  * atomic_commit()
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
diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index ca4d7c6..9dacc5e 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -128,4 +128,160 @@ static inline struct drm_printer drm_debug_printer(const char *prefix)
 	};
 	return p;
 }
+
+__printf(6, 7)
+void drm_dev_printk(const struct device *dev, const char *level,
+		    unsigned int category, const char *function_name,
+		    const char *prefix, const char *format, ...);
+__printf(3, 4)
+void drm_printk(const char *level, unsigned int category,
+		const char *format, ...);
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
 #endif /* DRM_PRINT_H_ */
-- 
2.7.4


