X-GM-THRID: 9381605277696
X-Received: by 10.42.89.205 with SMTP id h13mr9152436icm.25.1426942280807;
        Sat, 21 Mar 2015 05:51:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls1957098qgi.34.gmail; Sat, 21 Mar
 2015 05:51:20 -0700 (PDT)
X-Received: by 10.236.53.10 with SMTP id f10mr91322091yhc.17.1426942280629;
        Sat, 21 Mar 2015 05:51:20 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pj7si182044pbb.2.2015.03.21.05.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 05:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id we9so137447059pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 05:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NsmQyOhlrmwDuGac8n8JVUVitH4YarApsPnAY80+yFk=;
        b=WFt8oXwQ+nT55EN9GwQBcxKF+vc2WY8hxOTTtMI0wIphIvDyErsc/EIq3wNDgH/pRh
         m7DyALujIqsYHm0LzvWti/T7tBIdE8iQUfXyZRXcE7bvPkSZGfgkHYUHfNTOGsv7FDSy
         82JvdXDye7OvH1X6BjJeputm7qWotWrPxvjEY6ULFdK0PT9oqZE+8SQlPe3Ai+7imlfy
         dur3cXMCKDb1Beg2egfv2CnnHtIvRN0elgVkYiSmCUx1mPezheS2DWoVvq+QMAs6EGql
         jF+QqqFJffzJSH6y+pyTPW02T/x1ogNBIPUw4nTpkiTfQgEga2htlQ2rUdsOdSf6kAna
         6z/Q==
X-Received: by 10.68.135.233 with SMTP id pv9mr4791192pbb.67.1426942280496;
        Sat, 21 Mar 2015 05:51:20 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.52])
        by mx.google.com with ESMTPSA id dl1sm11495578pdb.75.2015.03.21.05.51.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2015 05:51:19 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 2/2] Staging: lustre: Convert macro class_export_rpc_dec into static inline function
Date: Sat, 21 Mar 2015 18:20:25 +0530
Message-Id: <1426942225-7634-3-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>
References: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>

This patch converts the macro class_export_rpc_dec into static inline
function. This is possible because the types of arguments at all the call
sites are same. So, the type of parameter is compatible with the types of
the arguments at all of the call sites.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * Reword the commit message.
 drivers/staging/lustre/lustre/include/obd_class.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 9f528d4..3565660 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -229,13 +229,13 @@ static inline void class_export_rpc_inc(struct obd_export *exp)
 	       (exp), atomic_read(&(exp)->exp_rpc_count));
 }
 
-#define class_export_rpc_dec(exp)				       \
-({								      \
-	LASSERT_ATOMIC_POS(&exp->exp_rpc_count);			\
-	atomic_dec(&(exp)->exp_rpc_count);			  \
-	CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",    \
-	       (exp), atomic_read(&(exp)->exp_rpc_count));	  \
-})
+static inline void class_export_rpc_dec(struct obd_export *exp)
+{
+	LASSERT_ATOMIC_POS(&exp->exp_rpc_count);
+	atomic_dec(&(exp)->exp_rpc_count);
+	CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_rpc_count));
+}
 
 #define class_export_lock_get(exp, lock)				\
 ({								      \
-- 
1.9.1


