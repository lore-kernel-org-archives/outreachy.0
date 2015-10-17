X-GM-THRID: 6205612297408217088
X-Received: by 10.180.87.164 with SMTP id az4mr2634660wib.1.1445098794758;
        Sat, 17 Oct 2015 09:19:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls444066lfi.59.gmail; Sat, 17 Oct
 2015 09:19:54 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr5142347lbb.2.1445098794159;
        Sat, 17 Oct 2015 09:19:54 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id w4si377183wiz.0.2015.10.17.09.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id gb1so43145330wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 09:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7/lxXNgAKTR8VbGcTn4/4UmYDNqDqc6BEQ8TpmSeWpQ=;
        b=I3qfMrIQgNs1aEFdhLngOi4RxYzvr8H1MVuut2agLzVrJiJ9Ww1/toqigmAnbLcr4d
         r64d7ykFB3CKZEyk2mA4anDYWDqY3G0tACbGr8lK6BbNU46CHEX74Sg7KTEErWruNPEB
         QYen6RZIacjcH4ioubumRu6gRS/y3vKhwTacsVndnmcUBRx5EiIm3P5ORctP5hszvQc+
         MqhowOPi5W+kvGIqFrIu76TAKr83Oj48BC5siZLHoi1PeH1XzgydGxI58KmmvQyUC79l
         qsHmaG44WiJB+mGKmlpdZ75WX/E6dWc457sypOQ+4ZyxCAlSmGEbMqjs9veHBY5hjn0u
         n0OQ==
X-Received: by 10.194.187.72 with SMTP id fq8mr23870086wjc.131.1445098794025;
        Sat, 17 Oct 2015 09:19:54 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id lf10sm29132546wjb.23.2015.10.17.09.19.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 09:19:53 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 3/4] Staging: lustre: include: Convert macro class_export_lock_put into static inline function
Date: Sat, 17 Oct 2015 18:19:46 +0200
Message-Id: <06e089928a1944c174da99f712e9d81d4f4e07a9.1445097871.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
References: <cover.1445097871.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. This change is safe
because the types of arguments at all the call sites are same.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v3:
	- add space in signed-off-by line

Changes in v2:
        - nothing

 drivers/staging/lustre/lustre/include/obd_class.h | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 5a57876..4871b6a 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -233,15 +233,16 @@ static inline struct obd_export *class_export_lock_get(struct obd_export *exp,
 	return class_export_get(exp);
 }
 
-#define class_export_lock_put(exp, lock)				\
-({								      \
-	LASSERT_ATOMIC_POS(&exp->exp_locks_count);		      \
-	atomic_dec(&(exp)->exp_locks_count);			\
-	__class_export_del_lock_ref(exp, lock);			 \
-	CDEBUG(D_INFO, "lock PUTting export %p : new locks_count %d\n", \
-	       (exp), atomic_read(&(exp)->exp_locks_count));	\
-	class_export_put(exp);					  \
-})
+static inline void class_export_lock_put(struct obd_export *exp,
+					 struct ldlm_lock *lock)
+{
+	LASSERT_ATOMIC_POS(&exp->exp_locks_count);
+	atomic_dec(&(exp)->exp_locks_count);
+	__class_export_del_lock_ref(exp, lock);
+	CDEBUG(D_INFO, "lock PUTting export %p : new locks_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_locks_count));
+	class_export_put(exp);
+}
 
 #define class_export_cb_get(exp)					\
 ({								      \
-- 
1.9.1


