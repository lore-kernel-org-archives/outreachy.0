X-GM-THRID: 6475500386308325376
X-Received: by 10.157.46.58 with SMTP id q55mr6841731otb.53.1508229954899;
        Tue, 17 Oct 2017 01:45:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.169.199 with SMTP id s190ls229741oie.10.gmail; Tue, 17 Oct
 2017 01:45:54 -0700 (PDT)
X-Received: by 10.157.26.100 with SMTP id u33mr6790157otu.113.1508229954133;
        Tue, 17 Oct 2017 01:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508229954; cv=none;
        d=google.com; s=arc-20160816;
        b=uiPHxMjTFhgKfB0kMZdbDysZLR9PEgxSGC9zTETX5pRQNEOpRAss/Ytx6Tt//NMGo3
         q+8rL4P1mgXYhHI1XDfKqFwIm3RuLpKa8mKoxArtjOK7vOnG/6Ps/L1BIpTRsHrb09Or
         +kcmZI8qfGLU57bWV10hUf3LETdwhpImIqV+B+l4YXMk9lLhaqYIfX6WEf5Pn/3/6jZg
         BuVXTZH26z0IjsB8zsSGkmnftDl/BYuWHOFTt59YY001XerZ3bZuil7XLxumcnokrIh0
         eOKlSdZ2K5hXd5jz6XUB3xBbIOaBDAxEKaF5SlxMGgPwbiWrMaEJkx07+XVchONuC16x
         hhIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=wL71eP2/MXm2INv39keHfrPMs2dXAs225+FCrs29JQw=;
        b=d8ONygFZdUwenTz24yPT1KC6J92n1H2iG/nQiN0PiclOM/A9YaTEMnpkXsGeOt5zsP
         hinyeztTwycJe8bBkrxHKqR5nXuR9ZgxUGeRQKqsqwjqGLBt58vvEnmSlJydBk/rHqW4
         3d3ZBaRT0ltrKjplX0nziTwkpP8mxizsXdmPNcUQGEXGD1L/3ldQnn3CIidvpf+c9w4W
         Im7UTWX0UWGPOYiJWXkA6yChXpioUPsS+H4f8e7g7HAgkxfGzQ59vjP5yfjyDTYkXx2Q
         tZpwSsBxSfZIRCU35MG22VyA7GQMnH3xvQH6P8yu6CGMe0gzjSUxEeqRmuGcsaGdq4qr
         ezOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rp5FfyIW;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f130si457856oia.2.2017.10.17.01.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rp5FfyIW;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e64so852439pfk.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 01:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wL71eP2/MXm2INv39keHfrPMs2dXAs225+FCrs29JQw=;
        b=rp5FfyIWvrun3hUwQs+VDqdGIWYl5+S0x4HlSnhPOMUk9M7xixzDb5WQ7x5qhyWot2
         JagfPPbSrI8csh7La0/UBEtK/xmTtIf6+5VzonPPJDStTZ7XRBxDYDuDlPOBMEzsSFqH
         hXvKlQ49JJMM4tWZJXsnYDTHzyT3VX/fg5FBRgwIJDgIsfhyXt1ZMXoPREagyGM+JcZl
         C+MUJxsxb84hsNOCWsNLbBNUulWN425lOlkuO/9YaQEiI9mHctgM7OLPCEl4sUQjp8s2
         KXJcuTQq1w2wFmVZr5+DPukmoe57jI7r6YzVtHZDt75d3pOjRfTp0RpSAW/jGfWMkxtU
         jikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wL71eP2/MXm2INv39keHfrPMs2dXAs225+FCrs29JQw=;
        b=Z6G+EjrvWIilAHmjVq0NZAmr/Zr1DTWSIuEiQu5k4nGzX/l4MXvDf8y+fnTWdO01t+
         +CHupKVAHG4wDDd0ubjEwajR83oTqaAdzzfVQ5vIVQbT77vh81KnakN/15hImAhWzB5W
         57CvvkTdTJxiYs9+6QWZoX4T2ErzX1cCKCCrsGnvgK7vFzjOzSdidpJ9NZUeyav37u1w
         LiuzOQIoH4QrjALzUrbSWegIk2TnobddCU1jotULhCWNP+pFqOFWptJica9qsRU3At1b
         3XoVW9ZSGzrVJYs9KriyxcXI74NskGjWU3oQgewOR/+ZwfK8jCYExXiFBwH5q+1afudb
         qBrg==
X-Gm-Message-State: AMCzsaXvN5VBf1Pc4KYJUijfgA2y80LJDNd3700XRIgzsdbMIqlOQSzo
	exQn31qr/vWRpQqJ9224Qv2qbMKY
X-Google-Smtp-Source: AOwi7QAsznC2p16t2RdiT9usdSNTpBzMogH4GJWwZYTHWD/0tL2FSkFBkVBi46Nspuk5DaKQp6NExg==
X-Received: by 10.98.160.90 with SMTP id r87mr11434523pfe.324.1508229953531;
        Tue, 17 Oct 2017 01:45:53 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id m74sm9156802pfi.2.2017.10.17.01.45.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:45:53 -0700 (PDT)
Date: Tue, 17 Oct 2017 02:45:50 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v3 2/2] drm/print: Update old comment style
Message-ID: <2d37692b811a36c06262ff53efbb520e2f26eb88.1508228315.git.hamohammed.sa@gmail.com>
References: <cover.1508228315.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508228315.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove old comment style used by doxygen.
And remove comment left from commit 99cdb35e787b ("drm/doc: move printf
helpers out of drmP.h") after refactoring drmP.h.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v3:
- nothing

 include/drm/drm_print.h | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index 9dacc5e..d208a85 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -136,9 +136,8 @@ void drm_dev_printk(const struct device *dev, const char *level,
 __printf(3, 4)
 void drm_printk(const char *level, unsigned int category,
 		const char *format, ...);
-/***********************************************************************/
-/** \name Macros to make printk easier */
-/*@{*/
+
+/* Macros to make printk easier */
 
 #define _DRM_PRINTK(once, level, fmt, ...)				\
 	do {								\
@@ -163,8 +162,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Error output.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @dev: device pointer
+ * @fmt: printf() like format string.
  */
 #define DRM_DEV_ERROR(dev, fmt, ...)					\
 	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
@@ -175,8 +174,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @dev: device pointer
+ * @fmt: printf() like format string.
  */
 #define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
 ({									\
@@ -206,8 +205,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Debug output.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @dev: device pointer
+ * @fmt: printf() like format string.
  */
 #define DRM_DEV_DEBUG(dev, fmt, args...)				\
 	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
@@ -258,8 +257,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @dev: device pointer
+ * @fmt: printf() like format string.
  */
 #define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
 	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
@@ -278,10 +277,4 @@ void drm_printk(const char *level, unsigned int category,
 #define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
 	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
 
-/* Format strings and argument splitters to simplify printing
- * various "complex" objects
- */
-
-/*@}*/
-
 #endif /* DRM_PRINT_H_ */
-- 
2.7.4


