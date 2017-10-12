X-GM-THRID: 6473410411176656896
X-Received: by 10.101.72.13 with SMTP id h13mr326043pgs.92.1507782711057;
        Wed, 11 Oct 2017 21:31:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.93.4 with SMTP id e4ls769484pgr.24.gmail; Wed, 11 Oct 2017
 21:31:50 -0700 (PDT)
X-Received: by 10.99.4.130 with SMTP id 124mr327221pge.68.1507782710347;
        Wed, 11 Oct 2017 21:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782710; cv=none;
        d=google.com; s=arc-20160816;
        b=y2Xkpkpz5zdt2e/iZ7lqlZV7vPzi9y4Q4dz4cBI3Up1KyQgqKkBmYSiUWNXzpcTh+o
         gg66/hpVuQ6vXufMrSAHwBmYz2W2wG9GXuUxUFfcraDZTdNmplwl4A2oEAve6LLhxotc
         JnY/pJ4yElS+9Jn8LxhkwvjnBUsZrJAyYG83jV3sdtIoOZwsnAerTDoyVwTAmJUtPeLs
         nm8QOhB/jyUv/FVBe6JiqupIIqne8y0T24yL7RaG3wxOBHqJ8K14Gpee6yLXqrCe1168
         0h11VwHocDrgj9P4A37/0rh1/3cJxYtopZVM8eTqaL8IyOxS5AIqPhR2AY/DEKgsJqQ2
         reoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=aVpR1qdeX3p6WqTmcdLu049/i5cCJNY3XFzLIJtA9LcGxvFpA8FRi9FMvPK42u3v74
         MoSmYmYqsd0tzGCov215s65nT9pFWs/7k4YDSnc5j/fcBFEQwUMWnh9dfknH96ExKNaE
         lAl51sNKzn2QqaNSDFBO05mfd+T5NUUoUCxOYgwJ/yOJdq9qjPAAwPehT3GUQwHM24n2
         pMd/28IftS/Ant/6hLtvWpfHe3RwKTGTLOiAm6wceFD3a6s5sH5+H1Xm4sJUYoF5V/uY
         G3TP/H5Nig/O03opYTDfYEtRR2EsvBQ1ahgbyhtNUgiCar3yVp9k6bCcf80KA+se7yLF
         nc1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SwLu6Nqa;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e80si1674600pfb.8.2017.10.11.21.31.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SwLu6Nqa;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so4447479pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=SwLu6NqaYJlEDQ2/zPcGj8neWMZpVNhTmmyYZDIWP4kr7gmxHtNrpWb+MT2OEN1oMu
         dnl/AHRTkTkTxIZGiLiSYEVMdHlbDVEhuHkos9RZoxEB5WqE3Max6qudfoZ5XuR8ylug
         1KAcIesPp7ctnzW+y8DFjQbu975kx0CrP9jfmQrB4eNSxYnHnQJPVw3Q4dSb1v5HFXWb
         FqmmTE8guKlOGYKWWS216RThxy7gUj0EVlDyx8qf4bJ5/IkymGQI8zAbJqLjXddI0KRm
         MZMVHwM7TmX+QciTpOVPNhpN1WEDXDA5/8gaWILR5uOGonkCw/lwCvBUh0ffi7ofuBRX
         HA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=tTOleZ4r0L2c/NVaeiC4V97LYat5YrvpWbHHSW2ybHC//gE8/2ldQ3F/s8tO1H2QoY
         Mbb44bxHzRf3/VW6q1B/UVgUiHz31AuXLnY3Lz24MiLhdy9HdR3BB/w6/N9ohH4B87G8
         5gUpW8WKDvtr7r6w8+20wFSlxk3MKs4d9fXNwx6yk3a6f5pCuU1QWaalxWbJvCx1kbs4
         LoNKvPSzj5MW71/06FtByioIATVl4+fIcZ/UJXohCWZrPONAfbcDVMucJSYiBYoNprge
         1BkMYw0BN5LlEhzr9AYZ3c64wUsB1PWzZZhg0psSrr/ZskkrdgPZhhkwLMFTflIJO2hK
         EwJg==
X-Gm-Message-State: AMCzsaXxEGX3tACSwyz5DAqcRE53X0dhsXo/N369ET3qGDBY6sWLF48B
	yx3LneOukqszN9JSHwVaTt7q0Jb7
X-Google-Smtp-Source: AOwi7QAEEk6ACLWuSFjyKWIBuRYQx0gB+go7x1VhUU5SawPWpYqSQwcFAJR2gkSRtfw5WN8R6guimQ==
X-Received: by 10.99.114.19 with SMTP id n19mr1048009pgc.356.1507782710101;
        Wed, 11 Oct 2017 21:31:50 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id i186sm2918813pfg.75.2017.10.11.21.31.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:31:49 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 03/10] staging: lustre: fix macro definitions warnings
Date: Thu, 12 Oct 2017 10:01:16 +0530
Message-Id: <1507782683-12754-4-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

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


