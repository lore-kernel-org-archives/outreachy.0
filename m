X-GM-THRID: 6205612297408217088
X-Received: by 10.112.16.229 with SMTP id j5mr5160809lbd.6.1445098724251;
        Sat, 17 Oct 2015 09:18:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.139 with SMTP id l133ls150912lfe.46.gmail; Sat, 17 Oct
 2015 09:18:43 -0700 (PDT)
X-Received: by 10.112.14.4 with SMTP id l4mr3141344lbc.20.1445098723571;
        Sat, 17 Oct 2015 09:18:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id d7si220537wiy.2.2015.10.17.09.18.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ll6so48018027wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 09:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=h+IkThpEzopUZUEGdqQ/jb3fDFBASMYgoVcRRDa+cdE=;
        b=Yd2I/cc3CTwVHnx+SfbpNMfxnrPKzsG8LS6JfpFNzKfd2XHdtGndhtcmu1Na3jsblX
         jjwzKrrv1hWHOkrH7bMaieDo+YUThcKtW9Bje+oELtsEbz0rEofjAqVtDt/J7IRtO6uh
         Yt1V9mwn/AQVgfsQqS+xFMhg6M1G/T1uCDh6LmL3zYWdUynGCf8Oc06KzXS5qBEmkjJl
         tf0oAsUxAAUTBsvBV2hqNAgftksyVLB/tv/4b4AwaW/2+uJl91B3SpSctZKutTjFgRHJ
         KQoHhs5zwFkuixzPBZOTRRfqXLqt+RRWIThHX/CHBdhCASvqtXyYWtlBIE4U5uBWAfw/
         aaAA==
X-Received: by 10.180.102.230 with SMTP id fr6mr10789504wib.66.1445098723461;
        Sat, 17 Oct 2015 09:18:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id gt4sm7631029wib.21.2015.10.17.09.18.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 09:18:42 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 2/4] Staging: lustre: include: Convert macro class_export_lock_get into static inline function
Date: Sat, 17 Oct 2015 18:18:34 +0200
Message-Id: <177dcb20f3ef1cbdc03ebee64223bb7e69811313.1445097871.git.ksenija.stanojevic@gmail.com>
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


