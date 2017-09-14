X-GM-THRID: 6465611589668044800
X-Received: by 10.31.136.130 with SMTP id k124mr11259129vkd.68.1505392508315;
        Thu, 14 Sep 2017 05:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.9 with SMTP id j9ls4957644ioo.26.gmail; Thu, 14 Sep
 2017 05:35:07 -0700 (PDT)
X-Received: by 10.202.195.130 with SMTP id t124mr12428767oif.28.1505392507482;
        Thu, 14 Sep 2017 05:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505392507; cv=none;
        d=google.com; s=arc-20160816;
        b=ba8AaDxaL1gPoK/lMs0eLMaP2sZ86qvDQNmJ4uXD14qVVDHRx91w3NeNVMjIlB2b//
         1lpDzFwKJUySORu4HG1bQRbD2mW+kPtwxBFVkh3O9/XGLhTJMvr0rqbV2CkwHH7quroJ
         fwyKE2EsQ6IQvpPF6vMMvRUe5wRfLeF1b95abUzWRBhH/+qToRGOiaeEl1dQiJv5lssg
         +DKtco46viA2Ryq+QxtvXxkAMjVUNcHkt7/7UFzWK3CoU06d/o/fFlzjdEwXm0J6Ig7U
         EiY0NBJtgmPuAIqwFkwpGbP6nCHfREIDxeYPzWBZ8kS9ipBPLx/tJcpbQmlQvFm4BMV1
         3SSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=OnQ9JW9t7dSggYnGnXt2D8H4Kyo2QeTGf2lRQRCRI7Y=;
        b=CK+gMWtSpUImr08LJouKeAuGcdeySa1UlK1bbbiqVmoFJDBFrwRJbuWfA2/WKYpLAq
         0v1OF6ZR5c71MRC647vzJtmYJPY+YGkMAKJVvST4cr/4IazMfGfLMq50JLOIj4wCk3ti
         D0XBPKf00HjtW5uq3jMepGrtys6+T3yxawDRCT8toGjUkEShKoDOPLkA7ygUdr+wDVih
         NTFhIySvQ21ABNLl1x6+FQgMOHYToK/nOgqzyETQAXRIJl4VZLhpmyrTyMoy3xBkRrJt
         eCvXZ+w72dGmnrZc2npBOxSgTacChDVE57TO614FnQovEofW4iUQWu3RM3GxWIacF998
         YJXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoDFwojR;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c19si1691178pfk.9.2017.09.14.05.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoDFwojR;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so1451353pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 05:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OnQ9JW9t7dSggYnGnXt2D8H4Kyo2QeTGf2lRQRCRI7Y=;
        b=ZoDFwojRdx9BYIUpIPCSsAqU+kfSiGNWPlGMlZN/H0JzZQLd+9sMIhK8loyIjfHIo7
         UzxWr4UJU6i6HIlAMSlMvqUtpW4TuTUZL+BXj1TzlHmlpEhhxh4LCbcFCLvJwzGRZjwl
         vWrURen4GeJjX9aJ16daGVVS99JdAb6gi6tClyEJlLzhTF+RGD4BE4FQPavfdLQoo/Ig
         Yi/o2qDJehMpaJVyHxZsvJ5MgH+4g/r4OUo095GnUEznQMSgWSArASIzdHWiN4KHuh/m
         RiCZa6PNAhfBA33A5HOXMTtlyZ5KcAA0QE0zvBLACU2QahNtr6VhpyX+hXAsgeJRGOyV
         hY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OnQ9JW9t7dSggYnGnXt2D8H4Kyo2QeTGf2lRQRCRI7Y=;
        b=mya6p7LnIQ5+M+qwXgrePPE0clQ+jS9hBgJBrWg32D96I2Gjtu1jsJxHpleQFAXHBt
         f99yBp8AVKbXu9p7McsfBbIkcJ4RWAaJMnQGOe/dA/svfED9EtfWlnmCEuSAPE61s/5R
         BCk3sD33Zi8Dub9nEK4NG1gwWxl1jMgfqAvu1KnCihNPrx+/qjIukZqpzFSZxaKH4O6Z
         ulil8STduIY6Jn42itsZdsQQMyDGruBD29bwDoCgfSPOIvr2bIdb1Yodaj26T+KDDN23
         VYRoXbJjyC8Dl03cYQZ+BVKEoamKCu9Jg8q3HUwcJhmeS5qebBS1lwVS4u5xjQDaBT0l
         O2xA==
X-Gm-Message-State: AHPjjUjODVBSMcDF5hGViJD4B4/ItzZDaLZRwUFIxLnU2YyHRXAYWOcR
	+zSdzTAnMZBsvw==
X-Google-Smtp-Source: ADKCNb6Bc1/iGLrLPhkMiSvQHmKRmUgFcCsnc2IeKNnJ8CzaiouFKWoVzp/RNs/YyUtNMhxFxO4imw==
X-Received: by 10.101.90.138 with SMTP id c10mr20984700pgt.350.1505392507142;
        Thu, 14 Sep 2017 05:35:07 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([122.176.131.114])
        by smtp.gmail.com with ESMTPSA id y128sm27363130pfy.125.2017.09.14.05.35.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 05:35:06 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre:  fix macro definitions warnings
Date: Thu, 14 Sep 2017 18:04:56 +0530
Message-Id: <1505392496-10261-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warnings related to macro
definitions.
1. macros with complex values should be enclosed in parentheses.
2. macros with multiple lines should be enclosed in do-while block.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index a3c0481..40ceae1 100644
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
@@ -1304,7 +1306,7 @@ struct lu_buf {
 };
 
 #define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
+#define PLUBUF(buf) ((buf)->lb_buf, (buf)->lb_len)
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


