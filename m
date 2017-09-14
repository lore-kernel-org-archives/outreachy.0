X-GM-THRID: 6465611589668044800
X-Received: by 10.176.21.100 with SMTP id p33mr13643068uae.72.1505421962370;
        Thu, 14 Sep 2017 13:46:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.65 with SMTP id c62ls6335432itb.6.gmail; Thu, 14 Sep
 2017 13:46:01 -0700 (PDT)
X-Received: by 10.36.53.208 with SMTP id k199mr806375ita.22.1505421961378;
        Thu, 14 Sep 2017 13:46:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505421961; cv=none;
        d=google.com; s=arc-20160816;
        b=E2MtCJsviylggLBM5wswqXLU2ciYi1SpredMItvjvUQ7QVOVesUr4sRGrZQop+0R0W
         bvsrHmQXanAvouulUljnRqN8fGibezEOCswbH+rDrIdb+vWeG/8/IRX/zYLvh9zs42Cw
         saD3N7oYkMvJV/kJd5UjbQnqdRqB7Ni0bbqMUVGHMW2oulejhsmYMrvSJuLy4M8O4QLg
         9Ulsu0witlmp7ef68RF3l5uAgxNtAm1lZoW8cJ18sZK12g58leYVP1zFthTrN6f+SdZ8
         42JpKxFsOIPtdz8X7tncqmnQvlYgBhiNoledEc3bNoOkisf3s/gKOi8Og/9QBbOU12lH
         qeNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=JnAcfQFERG68ZOV/9F0aA26G0TiRone3dIcyD0djRYU9MNXY2cT9N5gggXKnKrVcdU
         sIKulphSRC8TE1Q/2zPeDhhzP4THLi0Muh8goVCtlePAS/VQ54PAYoirxxpm6YQysAxH
         nsmJ3XzmaCIFnlo14XirHo8NFPJE488RFn1H/5pW0QSiUKVOhZEYIoYyj/pWJmukDQoy
         ghJ3YolLnzDRIV/f9VJPhBNNKuCEBNmnQ9evdvuk/0Mfn8771sbvQKq3iXIcGCi2gTCX
         eNl6mKjQBNee5FxAb3UHxkSEhKxDss5QxrwsQBbhRRykdLZ917qb+iNI1qQsocgkpTvd
         ey8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f+6hqCRo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si127471pfb.5.2017.09.14.13.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 13:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f+6hqCRo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so233495pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 13:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=f+6hqCRokw152artqdwl6W7Wqxx1WUUEzaID2WzRFMf6UFi+M0dsG57pmcO/hsY3tf
         ckKR5iROTlZEA94b60awDEf6VcE2MZWW7lbaWOfruVRGkRRzXLGqrmqY1ZZCDKmmjHsh
         tH2bovlgJ+UPBJpyyMMPhtZCWCzPv8q47raGBZb0wZPlasQlXDfpbOqRZeAgeDlPK0CT
         HKvO4N9h+pOSeDP5RvvgROpRG9JnOPggtOZwCHF5b5r0irA7WD8kaZgWi3EScNYTCTtf
         gxQK67wFggG2PsknUwHnRPLJUK/RHVtDeIc9uCyAcuWP8ofs081ZtObR0WqWOOBC+3X2
         WVpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1wLzM48xk6XcmE6ODsehPZh7z1aV7WQjD+Yfb8tQaC0=;
        b=NXJ+UR9UG4Whg6fUyfPbZ9fHLWJ66N/ngE8/axjn0pYPb5YEeoEpXE0TPR9Swz+Qs1
         NXsNFAJhjKA0wkUt3HzgV3F/9R176knDoZ1B9ELzI/vhW30QNwueeAPOpnUSGdsrRlob
         zljONGMskoloHAXCAEWiikpeqC4NUsrEjCcv5go/nZJ5ca/G+bvoAZ5W3Wy/FhQOy2vM
         AVvFUvzNfZsaMVfrPQVqyP6oR9NAb68gIwiu2nd5kHeKDHo8ql+Krs1b0jRhl4cyxZ3Q
         VPZx6xZxamyWN5v3MOxFSIJpa1WK4SvSUZQnSTGfoPkHmBsaX64Rpp0T5i90Y2O9Nd5e
         VXWA==
X-Gm-Message-State: AHPjjUjsDlQdWu6ByrYWdCxTL7j5iqcch/pP3FFxvjH8+cnt7OSw5qhJ
	fSsQ/SiS0Fwjaw==
X-Google-Smtp-Source: ADKCNb7QMGop2EGQSQvVXv3ZiDlejyuFRZ9e/AVkfNWHAFVJCJ3WOtaptWJJnfjr4aT1or9XZJDTVA==
X-Received: by 10.98.0.199 with SMTP id 190mr11083887pfa.298.1505421960949;
        Thu, 14 Sep 2017 13:46:00 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id a75sm32354499pfe.48.2017.09.14.13.45.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 13:46:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 1/2] staging: lustre: fix macro definitions warnings
Date: Fri, 15 Sep 2017 02:15:33 +0530
Message-Id: <b2fc843770e35e8fc84e1c4acbdecee869633560.1505421269.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505421269.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709142137000.2650@hadrien>
 <cover.1505421269.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505421269.git.aastha.gupta4104@gmail.com>
References: <cover.1505421269.git.aastha.gupta4104@gmail.com>

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


