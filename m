X-GM-THRID: 6475500386308325376
X-Received: by 10.31.9.211 with SMTP id 202mr8311322vkj.80.1508301087108;
        Tue, 17 Oct 2017 21:31:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.73.174 with SMTP id e43ls869694uad.21.gmail; Tue, 17 Oct
 2017 21:31:26 -0700 (PDT)
X-Received: by 10.176.19.195 with SMTP id n3mr5950785uae.76.1508301086245;
        Tue, 17 Oct 2017 21:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508301086; cv=none;
        d=google.com; s=arc-20160816;
        b=MFZSIsh+m+Efg2/nkCFieRwrrEp3OBDRMnsCmHWuTkpMaAgrrGM/YxPK8o7tD/V6wF
         jEYHSrToPKYAm9qxoe7W2FAxklKAoGpc6IxYPqYhlfplwefhqrmaozlnnJUoSX5JZC1T
         LENJjegi1bDgNXLRqiVfzruid0L4FovhhAsPYiWBWG9lkDeZyQSDq8juWFQhQuZioy4M
         or31MLgBkz8PS9f8AN6Gu80+oZPOmIMizxdumRZmYiuphj4DKjSMLNVonzbpqRI1eaQk
         EN1DxORxBOfbh94nyI99BjAuqgrJVLswmz++tmIJPI3WIx7OvfEvvVXoD9xB21HtdAgY
         IMAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=NNxvah3afOu410eQCBuWixcEsn2cez8flJpowNwco7I=;
        b=jV06Xjx4beYb6wRP7hW5CzQxnrsfIUpkd9PaIykEs/Upgghn0F6JU0tvAdb4uxGQN7
         eWkZBY9bu5IWfwmywUASOO7Bp3gd63abrWeEqmuLvgeVi3mrvnq39Zo3fdGJXomI4H9M
         E0u1LZbGI1E2ef0gQ6cgQoaj5Mn7w1Vcb3kdRSeYHp8ieEdNFN/AAMTDvgOfCNpBazI9
         +3r+lA68BA5hxer1udqpBHmNWqhhuEOLwQFdpLH6LZ16kMLuwOecqxA9R/zNXh8Uy5ZG
         VFqxuAOeXz72ZWL2l5snPsVRkoJm2/5ZFiFx8ffrtwc0GCOAR3qjMO/NDOrswm7luK8D
         gFXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nLBs+Jfy;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h54si787982uaa.4.2017.10.17.21.31.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 21:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nLBs+Jfy;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id a192so3226087pge.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 21:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NNxvah3afOu410eQCBuWixcEsn2cez8flJpowNwco7I=;
        b=nLBs+Jfy7WkcfF41z0UgArDJbvMBR5HQ1dkb7ny0u69yxiEx6XGOo/J7dZrz/g8WyU
         /miiwmvQZUBMArplwey18Ofe6DdtuTMmOCoq27s8vNE5PoUZmzHyb557GbNKCLnpoULw
         3TMkx540oAymda00i0+7bqUEW2gIFxlsoaa2kNsG6PGyWo6hD8huX0joaaW8aZFH4roa
         ahi8pnj3cveFimRmPA34OXqsfVvJkR3t3nStM5H0ALlitMwJxvYKR6Kn5ajpZy6EDi/w
         REsKM6hwnL3qZN0XDwXm2740deRuJoOGOL04R3BDuUlI7gfI9nhqryZs/5OEFnlJ1MQx
         o1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NNxvah3afOu410eQCBuWixcEsn2cez8flJpowNwco7I=;
        b=RCUAsr3N4hmdkULgqi2JuhWA8xuo7YKmlwBZ97fiHP/A7erULFJm+UZIh4EPzw/QK3
         7UmxnMGNcNVobVsRm+BeJjCYoGrb2w15VbKCKBln0UY0C/d/59mE6oh6sPBhpMvWvDbW
         3E08Vl/Z7lbpPY6gLl1tjOpAl9Q3Buc5FRzROQ6ioIBlBbDDHT7GkkB6SMD/XI+K25Al
         2QDKPsFR3tiWudZ5vEReI1YXm2ppbjHTUSNO9ebxrZe3UQ+aB03gs3ZyOv1TqBlqXq8d
         DQTe3IUQiXcSc5rPPe1hUxaNuSOQ5ZNTM0p9TwZqn8n7GYeDFENZgg+PVyyFb5P3wdmB
         LClA==
X-Gm-Message-State: AMCzsaUevvKYbk6rFw96oyMSEQk2r6i08zppZ51w3hVHobl7tdsABtDF
	KSUM+F5wYHmaJWgY4eyrpvfs9v45
X-Google-Smtp-Source: AOwi7QDqbQoIpSy4nbuq3jCCvg5tbGotU9K1RfoQow6fXuNric7ktIT59+Pcac5hQ5qzIpqH4ieNew==
X-Received: by 10.99.1.7 with SMTP id 7mr13091710pgb.251.1508301085456;
        Tue, 17 Oct 2017 21:31:25 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id h29sm13500613pfd.65.2017.10.17.21.31.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 21:31:24 -0700 (PDT)
Date: Tue, 17 Oct 2017 22:31:22 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v4 2/2] drm/print: Update old comment style
Message-ID: <4d89eef3945dbffd402d2ecdc130108b0565c158.1508297716.git.hamohammed.sa@gmail.com>
References: <cover.1508297716.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508297716.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove old comment style used by doxygen.
And remove comment left from commit 99cdb35e787b ("drm/doc: move printf
helpers out of drmP.h") after refactoring drmP.h.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v4:
- Nothing.

 include/drm/drm_print.h | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index 41dd757..7b9c86a 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -179,9 +179,8 @@ void drm_dev_printk(const struct device *dev, const char *level,
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
@@ -206,8 +205,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -218,8 +217,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -249,8 +248,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -301,8 +300,8 @@ void drm_printk(const char *level, unsigned int category,
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
@@ -321,10 +320,4 @@ void drm_printk(const char *level, unsigned int category,
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


