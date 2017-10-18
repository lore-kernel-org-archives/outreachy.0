X-GM-THRID: 6473410411176656896
X-Received: by 10.55.24.219 with SMTP id 88mr12839276qky.62.1508328890088;
        Wed, 18 Oct 2017 05:14:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.72.84 with SMTP id v81ls1839997qka.3.gmail; Wed, 18 Oct
 2017 05:14:49 -0700 (PDT)
X-Received: by 10.200.44.69 with SMTP id e5mr1430826qta.17.1508328889563;
        Wed, 18 Oct 2017 05:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328889; cv=none;
        d=google.com; s=arc-20160816;
        b=pKTXG5LkQRqaJnESPeQPrOjxqd8CDZVtISXbCxRGWX2QZxFIqMXa/Ikn6ed7T/gp/4
         YsOujejGUx6fr1isWca+bID82uceIo/44QMVNi6PZnAix1BIgW+cbEsHJXC32aNXCeRT
         T65j/lHT5mi6VxoI7cXollq4USRiZlibzsSph/TDow7qZ+AY3kNWaOGYHkvjXeBOuWFj
         Mtc8PbTei4z60wghZK1on/K6++wcFkVWdKRv0scgQ7tBpKsnORscmiPq7SH245Dsjzjx
         MQjjViKyFCuqG8Kb145CXIQ+KW3Ym8PhjKMsQIPDdWnVJJITXmE24T6L8NNE1KlG3fmK
         cdNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=B4WReIiD3u2hpNgIq+peP1iDnbLaGPRUu+EU8kikB8B7S4I8PO8nzAOQYrI/PJnb7Z
         LI+LprCh9jzwLiyLHTWHVJ9z2PmTWGHMFJepUqiiQ1Nv6bFrMxD4hRCt4o0W2TwK3IV1
         tAP641UWTTRW1uR21fvhWMLlMlj32A7zoDPHXUTLI0vBHLk+SIa5NSmstKoSGheMryv9
         fIF7lFpF9xxBDy7eX+n2gpgDQqQLNfJFh34hN37ZTezO8wwCYUnJ64YzRjJW0pFnXx3k
         3FDWO2+tP0i1Os4EAH3xTj6mAlEE42K6bW1zQQAQA4iQOb8fy9gUpDw0TBUrBTAOO0MJ
         yJSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W9wBnYPW;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id e51si712746qtf.2.2017.10.18.05.14.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:14:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W9wBnYPW;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j3so4136956pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=W9wBnYPWgOqMNXRJxMrU6L5Q0hIuyw3PKv8cJtmfVqsHTAAErZyNBc7Ot9w9sNL9WG
         +/5hyHUDu9+3Oc9LoCsCAdmeSnyP/yJpwV2O+Kf7bo62+x5W1Z0YZjm//Dp13QnxFs2j
         MY31OYCsHISPKIRI+OpYfThh9DKpHqNnalObwMjJUrgLISvrQGnz5so29pOB6fOxsofH
         YVhVorty9+7JjVo2Ff+m6YoDuKJwUbOFreNz8mRhJHo57/QFA+ywXN9aTlqIyu8JMDLS
         5e125EHyzFHCY0Is/vWZCgJpE7Mge33vM5RVqUud6wNwIBALP5Y04INgsyZOYAzoIqj+
         aIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=EGAUCKefQfp8i8KDJMvsbraJorMT2Y6c+ALpSO+bNzynYcWErvScEQtR4VOAbVNmRT
         PvMEcwMawwjrvHKEijwRGXqDDtyOMMhlCBx9/4SUi6dbOVwWjdtcEubaurKfx6GZ59+f
         t5huBQTmfpohMIHqq2La4J7iVyGWXeXU5i6KCqDV2u87evVInXNhPWKD/bK3MfD+nnxU
         vLJFZkXWAsuTMoRBBS9Pw60P+Vv+wx0BTV0EQvpl1D/fNekfNjC7FvUzKRH016nLC7+e
         0lWvg+XsS8TjeVv+3llsCUs1LYgmagJPleoHFpAKmKIwN62DxdS/22dDZQoLSZM9GEsV
         sBWw==
X-Gm-Message-State: AMCzsaWLpSFvT2y8o77hBbW+j0RJhLDjMVHckECEAnStc05V0B3maxgQ
	VLsfxCOyRbLCXGNAAQd221E=
X-Google-Smtp-Source: ABhQp+TLgU2448kH45R5vtLSBmCsfQrjBtC8LnTRFbMa6ELaxdOU6LdtY7XhQ1OFKAiHO5l31gJXGw==
X-Received: by 10.98.93.136 with SMTP id n8mr7109623pfj.215.1508328888782;
        Wed, 18 Oct 2017 05:14:48 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id y84sm23494773pff.158.2017.10.18.05.14.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:14:48 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 03/10] staging: lustre: fix macro definitions warnings
Date: Wed, 18 Oct 2017 17:44:23 +0530
Message-Id: <1508328870-9416-4-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

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


