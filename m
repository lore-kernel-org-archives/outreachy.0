X-GM-THRID: 6475502407668203520
X-Received: by 10.98.144.15 with SMTP id a15mr1478207pfe.33.1507695393986;
        Tue, 10 Oct 2017 21:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.140.69 with SMTP id q5ls89051pgn.1.gmail; Tue, 10 Oct 2017
 21:16:33 -0700 (PDT)
X-Received: by 10.99.124.24 with SMTP id x24mr2020472pgc.40.1507695393166;
        Tue, 10 Oct 2017 21:16:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507695393; cv=none;
        d=google.com; s=arc-20160816;
        b=DlCtMjbvSGjTaz6g+XzKJboueRdjclBBkNc87nyWUMqUkmL34D27y7oTVm33FIi9Iy
         TeBeR+4AEljVRGAkw+DMzMqKsM0sjHsgXZOfMLRLwrJg7gbA5OJucBhzfcPd5qAvC7JO
         tuvyYcYjyYHTFbRqFwDlVbJttg3nm7K/rSDNxTOV4Yyt4mM+/L1E/uanUyug/r/hzoAq
         yKcjXm1MbV5m4pnXabYwafZq/YqVzYKgZZ7QataPudjoJ4ZM3EIYn8YXv/Hyr3+D28Tg
         s67Hqd2K38Plt1M67XhaXjPdLJfb/ZlHRXlrx5LhVthr7cvs5a3MXZrmEflRJQPfiJ32
         9T0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=rF3AZfm8CZUg/i3c2geZ8d1wKzM7zylOZowajMSO0B0=;
        b=P/QwlK3kFsY8E33cUCl/b0q6iex0IBiM/H+bIKHCwomb5W+hXX3lS+nfgGyXgT8ZDz
         0tUQCkAbDNjWr8ntaIGA41ACJrrSGsCaCHAJJkqGUKqpZwDFUmgyWemSxmaVxKXl2yZk
         LumuDO4wROVLKCzZrA+L2kJsgDleZkMChb7sGnGweaXiDPvvhKbcYr30VZ+A12o4H5PU
         ZnpA66696G7AqcZAAMh4/XKYKdFkh7N9jcnEf+BHC7+STO44/x6gWj7M/LpRGScONteC
         UD0mnTC9o5qh6rH0j+JTEqPvwMWzccwmDKKuByiY/klb9mWEx0L6/rug9iNF5VG5d6Yc
         Xe6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cGJ9GdP2;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c200si1435575pfb.14.2017.10.10.21.16.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 21:16:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cGJ9GdP2;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z11so1059298pfk.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Oct 2017 21:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rF3AZfm8CZUg/i3c2geZ8d1wKzM7zylOZowajMSO0B0=;
        b=cGJ9GdP2enQEjXTqWuDPIYOL1vv35tXlRs7X2xZ6MMk6ewK7ABizsscfWRChPL17gM
         hm/IiGWa8c+5irUCYhpg+1itN/JQcmwK82hKKK/VeIKSua4z1QL05gaKq+q+ZGCI0Rxf
         7rqM8uaAopnNbvLwLyaXV3RI2WRluw8+uMh4gvH+7LMXVV6RPZoit7/THDcH+lSszHDl
         C9a4Hhig6cnXG6gITUaEUOGhMR5uFPynjNlmP+FfUeSLNSbNjGg5BPw0NpPw6zmHFHrY
         2xPdRwuQ7Q1o2TMn/QeJ6/gJ1se/kXZC0IlTHTkmAhAz6LAel8Kucq8tsf1ZNTEVkZmA
         XG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rF3AZfm8CZUg/i3c2geZ8d1wKzM7zylOZowajMSO0B0=;
        b=SIu+KWVE+ZNA+I26ihoTk6BVGCZoctYzkqISUU9Jv3u1Z89T8p96YwLi3UqaLeskAW
         lyChnIT8IkAvYMO3BDlwyib2HE0P9QIzBEMqtRNZx89ICm4vN5Bn7Q+r8+GC6f+aqBA9
         LtGmzOUZqFA9GT/P+RzIzO/VdRMXkDBLLVNAyvGjbMwFMbhKLAgU5G5tmtfXNmcEdyR9
         LyxOZhlxdL9sj0EmOO0cjGdTECk+Uk2p7c3LrtFMSkXW+G45ZSVHTYn48UMzDds8bwFM
         GN9OKgJCVnOnHGFkEpK/8Sa4KDRAL190YdxygMQJ6G41Zr4+J0lxS8DsJbC73a6p+sUp
         d28A==
X-Gm-Message-State: AMCzsaWMMNly86Dvz6j3hOoUNZItNeN0EZJ2mG1WLRb9n2ry9+6kcIRW
	RI9JUHoCAFc/wjUWX/CdVNM=
X-Google-Smtp-Source: AOwi7QCdHhZuWCopFCnrX0f59cIQDx/kICMDc/UBDUqP78tqY5Y2mnnX94xEyBCFiSZfG0Z7APFtpg==
X-Received: by 10.84.252.147 with SMTP id y19mr7964957pll.88.1507695392956;
        Tue, 10 Oct 2017 21:16:32 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id z76sm3239716pfi.117.2017.10.10.21.16.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 21:16:32 -0700 (PDT)
Date: Tue, 10 Oct 2017 22:16:30 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, gregkh@linuxfoundation.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	David Airlie <airlied@linux.ie>
Subject: [PATCH 2/2] drm: Update old comment style
Message-ID: <89f342899ff9acc1645e6cc58451e9aafccb5e77.1507693829.git.hamohammed.sa@gmail.com>
References: <cover.1507693829.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507693829.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove old comment style used by doxygen.
And remove comment left from commit 99cdb35e787b ("drm/doc: move printf
helpers out of drmP.h") after refactoring drmP.h.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 include/drm/drm_debug.h | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/include/drm/drm_debug.h b/include/drm/drm_debug.h
index 24fbea4..78e3702 100644
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
+ * @fmt: printf() like format string.
+ * @arg: arguments
  */
 #define DRM_DEV_ERROR(dev, fmt, ...)					\
 	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
@@ -81,8 +79,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @fmt: printf() like format string.
+ * @arg: arguments
  */
 #define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
 ({									\
@@ -112,8 +110,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Debug output.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @fmt: printf() like format string.
+ * @arg: arguments
  */
 #define DRM_DEV_DEBUG(dev, fmt, args...)				\
 	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
@@ -164,8 +162,8 @@ void drm_printk(const char *level, unsigned int category,
 /**
  * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
  *
- * \param fmt printf() like format string.
- * \param arg arguments
+ * @fmt: printf() like format string.
+ * @arg: arguments
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


