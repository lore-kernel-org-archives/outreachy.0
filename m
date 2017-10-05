X-GM-THRID: 6473410411176656896
X-Received: by 10.99.101.131 with SMTP id z125mr2313634pgb.151.1507208324782;
        Thu, 05 Oct 2017 05:58:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.210.203 with SMTP id a69ls3884124pli.1.gmail; Thu, 05 Oct
 2017 05:58:44 -0700 (PDT)
X-Received: by 10.98.233.2 with SMTP id j2mr511308pfh.22.1507208324082;
        Thu, 05 Oct 2017 05:58:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208324; cv=none;
        d=google.com; s=arc-20160816;
        b=XzcM/WiZHLwUGuB+R2yEAyjlkcMKPgIEExnVEZh/29ODcyj5QwRqG2SL9ic5s/ND6W
         PeRBguHxsrUROLfes+zIBxBE01/0nRl8Msw5ew+f+zYWITdmvxK3CfyfMdaIrTs34bDO
         uXVF26TtgebyZz3sgUeO92r9fC51JNxaFKQaeW+Z/HJvmylszcSUStHZZ/G5Ggj19Br9
         ie1ET+2u5deFb26UttvW4sXGAzs8FVUEOloBw/TcYTaFmNbUI7zAS9r93of0i5PpOjCS
         UdHO5H2d6HQecyiE1jSNtnRF8CZC1Jp0VOBe74CE+AkXMtAs0cpHbUb94Sk9pOKd93R7
         vNGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=tNGHg3V3wLKoETRSdjIWA5EZ2kjeSFyTggbTIaTExjFg4EFSlMAAlBr2lGgdNVoCC+
         mcJ/d7rKhtIYPgeRak1hZd8dCezBi2sG+yEAaxw1uMESsD9IR4p0w8t9j29GAaE74VFk
         aBKDVUW5UX3abICz7mHaND/LYrIUCL05FfGz1nRWHh37VKjg59Ht09b/bm3ojRLFG65S
         PQb+2yR1inmwTaiPYAKyCr8dUvc92a3jShYGysv/X4jSn9zLzEp09wJpLOFvzkGUYlpC
         asW+A9TF7q34u+EoiPCpJWGSn+9htYyhrh12pyEOerhQb5e8dSo5n0eoMbtR9O7FhgP/
         28pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yv/3ngKN;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id t77si1863530pfi.13.2017.10.05.05.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yv/3ngKN;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id j3so39544pga.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=Yv/3ngKNh4P9kKLXx3x30C+ahql/ld4QgqH2ePlGmP3IOx7jor3GkzFDp7h8PQE/pM
         ZZHYgbNKoV1cW9H+0Dw3vJod4voHSNwk8T4fI4Qud+cjxKUeHS8Gu3i/yM8fLsvZWvZA
         LuLISOprBtTfztHCvxazbSi00YWQs0LS36+N0VF5Df+jN2zviHjCEhAviWPX37yoYffD
         Iw67Sgofvrh4l7zmWC5xtp8cIEtTLl1ItpiXM63ozEqxq1Ccr4zEWCDP11hQK2XNY0k6
         2OVvA4bQjgeUfmSdcX5mMLb5ceMFMY5QHAtQ1lxwDnoaCcdeffob/oGkcb/QbdNPlKdq
         Tmiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=Xn5dY00u5JdKpsH5ox1A5G8Y0rB1qGC/4XD9JihahAJE7CtH0llyL7i71tyCcWJRxM
         ozhYiW2hsqybzTu7HRc2BX7Ib7QIEAQ2GMLkwpzhEVBEVBUHLxLQbpTvsBU9nzpUYyOi
         V5uY8/HewQyMz4gMFqzMGDp9ssxHulQ2JqP8AGsHTPSG//o6+9jEHsbEwcNRzp24P6vn
         bW6RWTSytWegS/Ti99d7BItkvLcuVzzsCq6fYEauMfu+wPkO1KNzQpckxeca1GYuafym
         oRSb7GyfDVy0jj/8q5kgP1lUvuml+yWZaiLWI8/rYslp62rLdRLTfeslF5GlZlIMD1wJ
         Qapw==
X-Gm-Message-State: AMCzsaVBHGxZbM6R6pIB2ZlJVTxnPCA9ygWzq0F2zhSfc8mVKoxp7wmX
	oM0QrZLQypAZr5UIpEcam3A=
X-Google-Smtp-Source: AOwi7QD2N+MvAODZknm+O0ukrdU0NV/seKUq8Gp1o7Bg25vjQ7gAwxBLUHz4xow93ZqGRUFw+2cAWg==
X-Received: by 10.98.152.156 with SMTP id d28mr4295326pfk.267.1507208323816;
        Thu, 05 Oct 2017 05:58:43 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id 66sm8225632pgh.31.2017.10.05.05.58.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:43 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 03/11] staging: lustre: fix macro definitions warnings
Date: Thu,  5 Oct 2017 18:28:15 +0530
Message-Id: <1507208303-17615-4-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes the checkpatch.pl warnings related to macro
definitions.
1. macros with complex values should be enclosed in parentheses.
2. macros with multiple lines should be enclosed in do-while block.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index a3c0481..c8d5e0b 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1151,8 +1151,10 @@ struct lu_context_key {
 	struct __##mod##__dummy_fini {; } /* semicolon catcher */
 
 #define LU_KEY_INIT_FINI(mod, type)   \
+do {					\
 	LU_KEY_INIT(mod, type);	\
-	LU_KEY_FINI(mod, type)
+	LU_KEY_FINI(mod, type); \
+} while (0)
 
 #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
 	struct lu_context_key mod##_thread_key = {      \
@@ -1161,10 +1163,8 @@ struct lu_context_key {
 		.lct_fini = mod##_key_fini	      \
 	}
 
-#define LU_CONTEXT_KEY_INIT(key)			\
-do {						    \
-	(key)->lct_owner = THIS_MODULE;		 \
-} while (0)
+#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner = THIS_MODULE)
+
 
 int lu_context_key_register(struct lu_context_key *key);
 void lu_context_key_degister(struct lu_context_key *key);
@@ -1223,10 +1223,12 @@ void lu_context_key_revive(struct lu_context_key *key);
 	struct __##mod##_dummy_type_stop {; }
 
 #define LU_TYPE_INIT_FINI(mod, ...)	     \
+do {						\
 	LU_TYPE_INIT(mod, __VA_ARGS__);	 \
 	LU_TYPE_FINI(mod, __VA_ARGS__);	 \
 	LU_TYPE_START(mod, __VA_ARGS__);	\
-	LU_TYPE_STOP(mod, __VA_ARGS__)
+	LU_TYPE_STOP(mod, __VA_ARGS__);		\
+} while (0)
 
 int lu_context_init(struct lu_context *ctx, __u32 tags);
 void lu_context_fini(struct lu_context *ctx);
-- 
2.7.4


