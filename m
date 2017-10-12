X-GM-THRID: 6475500386308325376
X-Received: by 10.101.65.141 with SMTP id a13mr269332pgq.149.1507775799568;
        Wed, 11 Oct 2017 19:36:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.119.132 with SMTP id s126ls201342pgc.0.gmail; Wed, 11 Oct
 2017 19:36:38 -0700 (PDT)
X-Received: by 10.101.73.138 with SMTP id r10mr299895pgs.124.1507775798953;
        Wed, 11 Oct 2017 19:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507775798; cv=none;
        d=google.com; s=arc-20160816;
        b=C5f2pD4y2rYGnJge8ulBJGXG3i39CIx+W9GQpQZeN3OEvct9wfjdmRmjtPmgZhkey2
         GskYwiPxyWOo1fOBKcdtfriUbu4e66vUjGiHY1c3ZsaEa553yAzNJ6SRI0zpXWV+cF5g
         OPAFy8R+PLF+ofhy5Sd8+I3lvgvXmrg7BlciBTHeh8j5+32ZOp+n9+uDHD9nXUqsD9g0
         0LXWYj6XvSpBSv7FIIkEbEwl6JpiDxSW799/6r4YhLMzJpgqAHl0pZgRZEyn80mWEMqd
         KRvuztjtJF7mS4H5EU8OBRRBm0j5zsVZoO2Ae5Q8w0ozlLARcVuKqUB0XnATynUzTSb6
         MKBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=kTwVl4l3T0hNUis8VWwp9ysD3/1BNy/YhcHfGyJp2Xw=;
        b=khRTbZyQvaYdmLh4uEQeYA1OqVsGF3oAO2axtzyfI+qmG5FCh7T7DATnggdUuo8IYp
         Y3BAjT/tFCQys2VaNkkS43TyWD32zAiPbdbnr29AwYt+zGf+bmdmosi1PhekH+NiPfBr
         pcWHtwOKGumsCn7eK83jrg94J3baM79s5Znf6m1oBfiYUkry2X0ex1We01cStTm0pPqL
         7wiVXzurKf4lh+P/sv7E4OXYi8X/Xu45Mx8TbhH6+l7M4zV+geHSPmlm1BmlU9S6gUcp
         pbNMmCm2jkLIxe+u6pUOMGCBNrP0dfIrAuRR7AYStRSF/Z/y21aYHvWbZCEeX9ZBaANp
         8BDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=royGpbdG;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id l80si1677061pfg.25.2017.10.11.19.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=royGpbdG;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id p87so2937078pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 19:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kTwVl4l3T0hNUis8VWwp9ysD3/1BNy/YhcHfGyJp2Xw=;
        b=royGpbdGYJf6oVXUf7tjNRz+c/dNHI+Fc82aFS6tzm0jCCJAyOAdGJQRXcU7W7iB5V
         a6Lx6vsB0wxzJZAYpq1CtzaFHunaVskbMVpUjoSIHDtE7TBm1PWnKZAgmFny/rff+gTi
         UNuk8YD1dtqqF4tFRX2C4SrSCpWoutmVpKc6OhvWQztaUY2eIBy76UrtdInKHi6/qjBb
         uIxFSU3JYDvnC2ROKhq8GmsDg7NqtCXUIx13jYsoLf4m5snKv87MNEJdtGn4Jfty9kr7
         dzOAIbGGu8ai0eibgPXjU+hGh0I2cjqe+IxGh6XfyNRK557CkGsKczSMIdwcxrFUPcxG
         VZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kTwVl4l3T0hNUis8VWwp9ysD3/1BNy/YhcHfGyJp2Xw=;
        b=LTmS33a/FhCS/0QKIbMudFJtEeh8vUbzIS9v7DawL5J2wKkBG8yYQgrP2wFOyGX76o
         CNwRc3L6TkmqQ/CtiFwLppGLYhItm42nCqMgsZU6V9p+Kmt/YpyW+uvx+mdJIZWTBuNw
         Km3YNhbgeJ10CHoEUROw40fJqapY+O7dZvuTcEIfekw1x2VhwVBAwWVxLoyG0wKsZMrc
         iJ53oUxO7hfBZ+eINbNm0hA2/UCrgXqMe4zOvnc394B9/copqV8X/xbSWR2f0PNkuZmN
         /CVV6KPiAQjXuzlQ2frIsruLaEEWBEJQ8CWJZO3mYgouTbSCl0XSGwqVGVq16jsxE5bu
         RW7g==
X-Gm-Message-State: AMCzsaVYMOXzjaIJuiMv/uCqgfFkBkB4z21Dvp4zAYoxlldkNfhHGf+R
	PzVPzeDHRE5f7SiRGi4d7LM=
X-Google-Smtp-Source: AOwi7QB9FmMBMfKfF9T8rMVtEJ0bTZxS3bh5ubQQr7PtzWNFsy0ZiLln3KwTK/QIcCO3zkdi1uCVvg==
X-Received: by 10.98.219.195 with SMTP id f186mr908001pfg.69.1507775798709;
        Wed, 11 Oct 2017 19:36:38 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id n12sm21246974pfb.149.2017.10.11.19.36.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:36:38 -0700 (PDT)
Date: Wed, 11 Oct 2017 20:36:36 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 2/3] drm: Update old comment style
Message-ID: <a26172920a8a9bed501c76ab48ca241e74dee996.1507773977.git.hamohammed.sa@gmail.com>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507773977.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove old comment style used by doxygen.
And remove comment left from commit 99cdb35e787b ("drm/doc: move printf
helpers out of drmP.h") after refactoring drmP.h.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v2: 
- Fix kerneldoc comments

 include/drm/drm_debug.h | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/include/drm/drm_debug.h b/include/drm/drm_debug.h
index 24fbea4..b40b0ef 100644
--- a/include/drm/drm_debug.h
+++ b/include/drm/drm_debug.h
@@ -42,9 +42,7 @@ __printf(3, 4)
 void drm_printk(const char *level, unsigned int category,
 		const char *format, ...);
 
-/***********************************************************************/
-/** \name Macros to make printk easier */
-/*@{*/
+/** Macros to make printk easier */
 
 #define _DRM_PRINTK(once, level, fmt, ...)				\
 	do {								\
@@ -69,8 +67,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -81,8 +79,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -112,8 +110,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -164,8 +162,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -184,10 +182,4 @@ void drm_printk(const char *level, unsigned int category,
 #define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
 	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
 
-/* Format strings and argument splitters to simplify printing
- * various "complex" objects
- */
-
-/*@}*/
-
 #endif /* _DRM_DEBUG_H_ */
-- 
2.7.4


