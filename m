X-GM-THRID: 6467514574021066752
X-Received: by 10.36.69.198 with SMTP id c67mr762853itd.16.1505835598040;
        Tue, 19 Sep 2017 08:39:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.151 with SMTP id 23ls13172807ios.1.gmail; Tue, 19 Sep
 2017 08:39:57 -0700 (PDT)
X-Received: by 10.36.179.3 with SMTP id e3mr799218itf.6.1505835597419;
        Tue, 19 Sep 2017 08:39:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835597; cv=none;
        d=google.com; s=arc-20160816;
        b=YDkaVkzfiKLt00/gsSPwNDaoLZPMmCOq6OZeR9HegG/NL5Dta1N5Zyf1HwWjIaTPlR
         /L4ECGXsyT6GtGSdxoNgvMgblGFjtiOKhO7V8p1duuY2wNirWHRRI1227Ufugm7PawpH
         n7q58PBuZBXkHVOIrKcqz/xXutcl+jwTwtS5iQcCmyuG/zIUbh8PnwcrklxiM5fYktqY
         mnc1Q2qc4swrpJ+eLRq4PhzXeTxcOWTjF776AUv+Z7kw79jJc7gxo0GaOIeXjIJogRz3
         bo83RZ2qQyjIdcGfNqZLokWMknLA5wY+Lg69/Pp72vJvTd4lJE2s1KOdVKPUjFfdwVZB
         7OoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=/FXKcjV4o6tTRq30VqH8rtjDS+u0OIAer8E+LGET1yU=;
        b=pxIGmh0MOihUo7JU8qucZAUGpTS+OFl2x5VmqqG+JUd4S9bKTNbG2nBChbquHKbO3r
         pHeADftc6I39V3mvsUaVkpDwEh7BY00GdN+kXIXrS52z3uhVVNn5MEBSVyLRcXCY9UEo
         q/6MStCWaq4lNH3ituRQCVwzU4xitpC+wUREnaZicu/2L2c5YUQxus9iQhvLLkhdOlHy
         2mVtrEKo0P8+ICPUOp6d/4cWiWHpqctOp8cDEzu3xXYghifJcFMst3YxDMHWaIneX1Po
         Z3F720SBLKMIIZqg+USJUlY70xnQAycCqKWCunPt+gIxG0KyHicn8hg1tSEorKmZs75q
         sJAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kRG02N9u;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u70si188829pfk.12.2017.09.19.08.39.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:39:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kRG02N9u;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so1662649pfj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/FXKcjV4o6tTRq30VqH8rtjDS+u0OIAer8E+LGET1yU=;
        b=kRG02N9uuskV1CHkve9kFSjS2LhQff9fV/op2J/x3U0t25SrNYPGI9zUbk/jDsM03q
         R/Wv5DsWGHxmCHJbuENVI+xP63Dk3jcCb+GwOt1X1J6RXFlJZZAZkqsBQhxaUN/vzVLl
         Op5Z43rGnaLB2T9chQnRTddnci9G7rsdsv5SWjkTPYy167GN9BKSAyF+Ssc3vkr/lnjR
         7xgEx1ROANxjAkjUM7SExkZgXQcs+HFwZX3RR+bqQqq8KDQZMXV6JA08lavQKf2/vYaH
         YStCCOMFCYTX+hogoQsbdFGx2qmfP0RnRa/d6/uDlfuuv1jSoOH0Hwz+I7x1p86C++CE
         fy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=/FXKcjV4o6tTRq30VqH8rtjDS+u0OIAer8E+LGET1yU=;
        b=lbHgF0z6ih+PxqCJql7QCUWJB2C0E7duOL1UG+4JcJV7I3vQ8gamEZ/RFyaphfralB
         bT7ESYwz8AaovjMdoRLz0cWvVGUlxg2cG5FkkdZbYch3kSQgOv3jKlMoIPoS259CssHT
         ogFEU/1CNAcuTKi5BH9gxjUwA+92/ucfv0zbw9rNfRDkrvtffINJ1M7ic50GGywQjS2y
         y4KExHYDPyWgzNtxmX9jaYhfRU6AyAjsnB2LTbebgPkPdKxSFy6XZ9XY3Im7hpSQCTV/
         E2m4Bwclhi257K7+EpEM215B2yh1Jfjx/xGfWu0bcVEHPlRdTFD7uFWtD6xxJshTkd1+
         leJQ==
X-Gm-Message-State: AHPjjUglgDecO/BS7ty4O5xhtJ3V1qd4UgyG0GKqdUh/TbKQwCRhl3PI
	aiYsbP3qObqeVG/9l95YoSs=
X-Google-Smtp-Source: AOwi7QBpKq1KcaYC2j107ND2PUsTDfE5LsxzBm7Zgcd47pzZkkVoABn5HyU0DxBgcF0iL6tKRWG13Q==
X-Received: by 10.99.60.77 with SMTP id i13mr1770966pgn.114.1505835597143;
        Tue, 19 Sep 2017 08:39:57 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id o78sm4150883pfj.19.2017.09.19.08.39.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:39:56 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 03/12] staging: lustre: fix macro definitions warnings
Date: Tue, 19 Sep 2017 21:09:15 +0530
Message-Id: <024c64dded13702e8d446895556fa0a3ad43b5f3.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes the checkpatch.pl warnings related to macro
definitions.
1. macros with single line should not be enclosed in do-while block.
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


