X-GM-THRID: 6475500386308325376
X-Received: by 10.101.80.9 with SMTP id f9mr282970pgo.35.1507775958710;
        Wed, 11 Oct 2017 19:39:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.56.12 with SMTP id f12ls718633pga.11.gmail; Wed, 11 Oct
 2017 19:39:18 -0700 (PDT)
X-Received: by 10.101.78.1 with SMTP id r1mr290306pgt.23.1507775958056;
        Wed, 11 Oct 2017 19:39:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507775958; cv=none;
        d=google.com; s=arc-20160816;
        b=UiHWqumVcuXnry51ugp2wdmIf5pmIm5nFnA2Q5xofDyTZCDZ3TlOQPk9xj9/vv7Rv2
         SR6RYMJZHkCsLWeTliTaE9nuVukCUqzYO5K5N3vto0PulYhxai64i7lWY/R+rKkxgvFH
         lWcEMxIjZsrcCxA4W6o5yr5Po3ej1nsZ6ZDW0yf7wpu8My1KSnr00dxMtS8eCgDMR4TT
         g2ZKblupP89gBobjaJRfnIGcHZj9riqjP8pjVtuTqFBu9du1QbKlKBxLhSP6mUOoWH9C
         o93GKOHYtdtxBVXbmsSBMKQLNNm3/dkQzM84SqIJYt7gTD5fc6dYUfvjmvc6j4M420CS
         2LAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=8ttOtKVZX3m0W0EuMWfAGD21AMF40cHjV8IGpevjA/g=;
        b=XoSzL83W0s9hQk37Z5bLyMxTH2s1U2cs7szgZZdYeCmn/Azp38vdmTITutkLad9+Cq
         bKfNp/jNfASkzWYgvsYh2XI4MU0s0D++MoMV9a6N8Jx9AsltCJEaoXU6YKteSAKzFOzJ
         CtVLoCmDMOtVNdUHhBleTYUEdz+idjvxHsXPW53joJZiFF0IvDm1iwhN/DCMVoiiXDTT
         VWnUlX5PyJdohSSC5qoDPUeW1BmNIKWAldYw0Yq9Ig2Tt8s78/kpchl7Mn1iDghT7Mqk
         68AiROfd2aghqT5piRcjGD6hZlZPMVqKd0Mib+g2zVIJF2KcWct1wsFdgRvSyPonFGs2
         Lc1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzsr2E+z;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 82si1603149pfz.6.2017.10.11.19.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzsr2E+z;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so4094312pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 19:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8ttOtKVZX3m0W0EuMWfAGD21AMF40cHjV8IGpevjA/g=;
        b=rzsr2E+zsbI+/Yrax3wkOeLmK4/tscmlBcDCyVHXZLdeM2RKHDVZPIp10m7Hu5q2Sv
         gunJOvKwN6MjWLbATCDn4Ut2jqv9nXVay3uk3GQ12qayMYXZKCJBgw7Ew25KMRZQC7Rm
         lAaXTDWMHI9Ohh60j0SccOLiiLCy2vY6uSH7yKYtRAbvbaRta37GSG+st1wujiIyIWho
         69scttFlSVLjMxr0afPm3mlFvWcCTQ3tVHYwpSQMkpAD9tpRDJhNRhz6mvXH4MRUiVMZ
         S/6Uj0rf/L7dpzxX4M2Yeej/nse6+JnTY5JHEdepHjQraKGL4i9mahyH+DwjAyBLAP9M
         IHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8ttOtKVZX3m0W0EuMWfAGD21AMF40cHjV8IGpevjA/g=;
        b=Om22yCIM7VjGtruJiveEMBriuiCnBoryVNA5BPdXzQvVXy+gnTcGCKQgxGkzLNSIH7
         1Pp75vu1fL3IACLHMebl4uLrzNXQDI4cb+zi+UhmCCu31VCiR1WrtI6YUrqS7X2p4K+s
         l576VpPVQ6/CKjlqc9VHivOPLEvfSwucPuAVgIBzyam7JwC5J7+q+i6/j07JDNhQW3bR
         nKM/EX0NfaDcrpU+EZ29Khz2dSaxWTK/lkFjqSUltcCk17n/4mcA9PyHNJA5IYdeog0p
         jNdW8ITFFY30iyMsGThsuKuEtoqjE+36wLQo0HkGeXYxVhUESk8pFuABE0k+8LQ/oxSp
         iLtw==
X-Gm-Message-State: AMCzsaUoaxYy4MFjGyOPvbsNxrZYDORV1lRjRWJ2H2692ICg0272imss
	0FkHKcwIIdfJH+0lNA6mjbE=
X-Google-Smtp-Source: AOwi7QBw/TTI6fb69Bhll7Mxlw2Q1iTDtAiIJOZIed4EsXLfgpW78/Kzm69PH+nV0cutbVJqBHAjlQ==
X-Received: by 10.101.77.74 with SMTP id j10mr861355pgt.324.1507775957853;
        Wed, 11 Oct 2017 19:39:17 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id d124sm25208425pfc.42.2017.10.11.19.39.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:39:17 -0700 (PDT)
Date: Wed, 11 Oct 2017 20:39:15 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] drm/debug: Add missing kerneldoc comments to exported
 functions
Message-ID: <7fc383433d651ee4e81e2c132afdad57ad04b9dd.1507773977.git.hamohammed.sa@gmail.com>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507773977.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add missing documentation for exported functions to avoid kerneldoc
warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v2: 
- Include this patch to avoid kerneldoc warning

 drivers/gpu/drm/drm_debug.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/drm_debug.c b/drivers/gpu/drm/drm_debug.c
index a79593f..6e66b05 100644
--- a/drivers/gpu/drm/drm_debug.c
+++ b/drivers/gpu/drm/drm_debug.c
@@ -29,6 +29,16 @@
 
 #define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
 
+/**
+ * drm_dev_printk
+ *
+ * @dev: device pointer
+ * @level: logging level
+ * @category: debug category
+ * @function_name: function name
+ * @prefix: prefix string
+ * @format: printf() like format string
+ */
 void drm_dev_printk(const struct device *dev, const char *level,
 		    unsigned int category, const char *function_name,
 		    const char *prefix, const char *format, ...)
@@ -53,6 +63,13 @@ void drm_dev_printk(const struct device *dev, const char *level,
 }
 EXPORT_SYMBOL(drm_dev_printk);
 
+/**
+ * drm_printk
+ *
+ * @level: logging level
+ * @category: debug category
+ * @format: printf() like format string
+ */
 void drm_printk(const char *level, unsigned int category,
 		const char *format, ...)
 {
-- 
2.7.4


