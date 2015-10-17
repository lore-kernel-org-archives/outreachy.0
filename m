X-GM-THRID: 6205612297408217088
X-Received: by 10.195.18.100 with SMTP id gl4mr4650723wjd.4.1445068849211;
        Sat, 17 Oct 2015 01:00:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.169 with SMTP id az9ls284686wib.1.gmail; Sat, 17 Oct
 2015 01:00:48 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr4636919wjb.1.1445068848868;
        Sat, 17 Oct 2015 01:00:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id q6si190926wif.2.2015.10.17.01.00.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 01:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ll6so36079921wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 01:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RXugeKtNxD9XLvx48P0Zdu0Z0ywr2OB/S559MQB0Qww=;
        b=Jo1x/iTY3VK7e+tAxV3WJyZCbJMQh9ZnHErDl+9S+WAChvJUwkFN9+dpfFoJptNQcw
         GdlnY5Mb99i+x4KQmyf9q1bBRNoIwdJ6bk0T5wPJbXlJZX65/picZ2GpCBFfDCgha8MI
         r1NAavKBI1LjwvFkcgeLwf/2vkxOxSv0bqDhW/W9pcc4aqYFsrzmhcUYqbtRq8bfkzpZ
         VN3gPEdcESEU7vtEihQaKtWA3Gc5+QJ0PRc9td7VBL+28R/SM2qJpFn1RAB1Hfz6HbGK
         SeMa+RmTo4BQXg4jCc+orVHsCdP54VTpLGMhYlY32l+QIbSxMemA+8wQzDCEpjwvJoDe
         u6Cw==
X-Received: by 10.180.35.199 with SMTP id k7mr9849625wij.13.1445068848752;
        Sat, 17 Oct 2015 01:00:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id wb11sm6165954wic.16.2015.10.17.01.00.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 01:00:48 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 3/4] Staging: lustre: include: Convert macro class_export_lock_put into static inline function
Date: Sat, 17 Oct 2015 10:00:40 +0200
Message-Id: <06e089928a1944c174da99f712e9d81d4f4e07a9.1445067394.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445067394.git.ksenija.stanojevic@gmail.com>
References: <cover.1445067394.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. This change is safe
because the types of arguments at all the call sites are same.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
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


