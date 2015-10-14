X-GM-THRID: 6205612297408217088
X-Received: by 10.112.144.99 with SMTP id sl3mr1250847lbb.12.1444856849297;
        Wed, 14 Oct 2015 14:07:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.222 with SMTP id 91ls89650lfq.12.gmail; Wed, 14 Oct 2015
 14:07:28 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr1283920lbb.16.1444856848619;
        Wed, 14 Oct 2015 14:07:28 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id h2si985281wiy.0.2015.10.14.14.07.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:07:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id gb1so247040664wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T1j5dPK5XZzM6EaPmLErc6M6rycPQMeTxQntRzSci0s=;
        b=G7jbuECxtGF1MSHhkjYMVDMKSNfhahUe7L+GUb5/noNYSlR/L8oeQ2i5+lVlNmMGTp
         H66j7ftURxEVBDp4FVFvXbckAUtw7hKoCiePtCZiBDaue+obaCqg5tlAB3NtnHq3inwo
         FaQkAvnYHfRgAAcs90fq5YDQTOSTTowqr8YQiEY2pNplc6wGC7+hWP792ahszYMy0ucM
         +LGDKtiaL9B4ENtpNLZBIqJTjJWZMOElV+LCQD1RLkxuX44OZXBdHE5TFMz8Q5ZSdBlT
         1h2zg+SP+w6tSicxDfpGmCdYUb9Iu8ZnCpeNmsPAgjzOw8fVpK0zP5tnEq+Zd1ezeXio
         kxUw==
X-Received: by 10.194.179.137 with SMTP id dg9mr6411252wjc.55.1444856848519;
        Wed, 14 Oct 2015 14:07:28 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id s16sm20769749wik.16.2015.10.14.14.07.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 14:07:27 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/4] Staging: lustre: include: Convert macro class_export_lock_get into static inline function
Date: Wed, 14 Oct 2015 23:07:20 +0200
Message-Id: <177dcb20f3ef1cbdc03ebee64223bb7e69811313.1444856328.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. This change is safe
because the types of arguments at all the call sites are same.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 4c2076e..5a57876 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -223,14 +223,15 @@ static inline void class_export_rpc_dec(struct obd_export *exp)
 	       (exp), atomic_read(&(exp)->exp_rpc_count));
 }
 
-#define class_export_lock_get(exp, lock)				\
-({								      \
-	atomic_inc(&(exp)->exp_locks_count);			\
-	__class_export_add_lock_ref(exp, lock);			 \
-	CDEBUG(D_INFO, "lock GETting export %p : new locks_count %d\n", \
-	       (exp), atomic_read(&(exp)->exp_locks_count));	\
-	class_export_get(exp);					  \
-})
+static inline struct obd_export *class_export_lock_get(struct obd_export *exp,
+						       struct ldlm_lock *lock)
+{
+	atomic_inc(&(exp)->exp_locks_count);
+	__class_export_add_lock_ref(exp, lock);
+	CDEBUG(D_INFO, "lock GETting export %p : new locks_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_locks_count));
+	return class_export_get(exp);
+}
 
 #define class_export_lock_put(exp, lock)				\
 ({								      \
-- 
1.9.1


