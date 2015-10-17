X-GM-THRID: 6205612297408217088
X-Received: by 10.112.184.170 with SMTP id ev10mr4800654lbc.4.1445068795475;
        Sat, 17 Oct 2015 00:59:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.199 with SMTP id he7ls295138wib.16.canary; Sat, 17 Oct
 2015 00:59:55 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr4635548wjb.1.1445068795089;
        Sat, 17 Oct 2015 00:59:55 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id d7si174588wiy.2.2015.10.17.00.59.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 00:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id p11so37375835wij.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 00:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=O24OdW0p5dgYzq1Y1Z1fobPJkrB2WKJeAKf+f7mjlGs=;
        b=jbofY0bz0npf1SjPWGkdFwoW170+DbQB3NyKTnA4Y2jeFPCE3a9HuwyvnKr8bL7nvZ
         LYak576iB9LjBfSnjl3Rzu/gyUpH+SVGtRqi+n9rxJKB5n08FL8oNAfsamWwG4gLJ9Aj
         KdVNqJahee5+UXC1yIxoS3ZedZmYb9rsaZ2EdsTD8xpEi8K3YmSUH+Ii+dl7tBa/uZn+
         f3d4wbYQDvwyB8sAR1jf7fJY3ZOrBDmPlqIXqvWEePTKREaJ0qz0F///k/tt7aDa5n+I
         DL59xRTdahmdjxGfHP3yW/EdnThY1fq33AQshGDKxtwRri9Zbw0D7QnMkM6KPTI0tM7E
         Yw3g==
X-Received: by 10.194.234.40 with SMTP id ub8mr21208414wjc.95.1445068795012;
        Sat, 17 Oct 2015 00:59:55 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id gl9sm7373289wjb.10.2015.10.17.00.59.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 00:59:54 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 2/4] Staging: lustre: include: Convert macro class_export_lock_get into static inline function
Date: Sat, 17 Oct 2015 09:59:46 +0200
Message-Id: <177dcb20f3ef1cbdc03ebee64223bb7e69811313.1445067394.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445067394.git.ksenija.stanojevic@gmail.com>
References: <cover.1445067394.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. This change is safe
because the types of arguments at all the call sites are same.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
Changes in v2:
	- nothing

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


