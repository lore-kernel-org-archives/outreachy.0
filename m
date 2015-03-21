X-GM-THRID: 9381605277696
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5ac3f70b1eabe1bb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.160.34 with SMTP id xh2mr87762505pab.6.1426942275952;
        Sat, 21 Mar 2015 05:51:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.34 with SMTP id s34ls1326548ioe.76.gmail; Sat, 21 Mar
 2015 05:51:15 -0700 (PDT)
X-Received: by 10.67.29.201 with SMTP id jy9mr87157557pad.9.1426942275704;
        Sat, 21 Mar 2015 05:51:15 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ri9si1055519pdb.1.2015.03.21.05.51.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 05:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id c3so135739411pdn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 05:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EuJiTZKMbiCkxRDjw/L65Ha+RFDQkcL0uozCAPijAsA=;
        b=Wxz3t7XUcXGA0zMuEdtM0jVhFHMqr5dGTLdTb/kwJqotZV/cAy+wXbjR1XvJS+64+t
         99BlFUI3Y0xvgBBMktctbxmrcqfWSXJHRlJh2JkZztxtBsFmq7/PvIaSmeNDv7aVy3U2
         GSQiMTSFVuo4V32KDij/35g6pTB3m6L8/GI/euzHlmpdpuxDv6W4cX0Cj3l9ARQWG4U0
         e/LK8vnPW9vtTwYLrO/+2ercXfn0XUy6hQhFLq/mWG4c4wmwHr31dVhwGWme4U9iLBNj
         jAhvlvJVP2hNvlaxrjUvN6H5RDSTAaiSsPmFt370TyCAegbMRb8rWvci8++XWeNKxmaS
         N3sQ==
X-Received: by 10.66.100.138 with SMTP id ey10mr190537382pab.142.1426942275645;
        Sat, 21 Mar 2015 05:51:15 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.52])
        by mx.google.com with ESMTPSA id dl1sm11495578pdb.75.2015.03.21.05.51.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2015 05:51:15 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 1/2] Staging: lustre: Convert macro class_export_rpc_inc into static inline function
Date: Sat, 21 Mar 2015 18:20:24 +0530
Message-Id: <1426942225-7634-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>
References: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>

This patch converts the macro class_export_rpc_inc into static inline
function. This is possible because the types of arguments at all the call
sites are same. So, the type of parameter is compatible with the types of
the arguments at all of the call sites.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * Reword the commit message.
 drivers/staging/lustre/lustre/include/obd_class.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 4a29261..9f528d4 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -222,12 +222,12 @@ extern void (*class_export_dump_hook)(struct obd_export *);
 
 #endif
 
-#define class_export_rpc_inc(exp)				       \
-({								      \
-	atomic_inc(&(exp)->exp_rpc_count);			  \
-	CDEBUG(D_INFO, "RPC GETting export %p : new rpc_count %d\n",    \
-	       (exp), atomic_read(&(exp)->exp_rpc_count));	  \
-})
+static inline void class_export_rpc_inc(struct obd_export *exp)
+{
+	atomic_inc(&(exp)->exp_rpc_count);
+	CDEBUG(D_INFO, "RPC GETting export %p : new rpc_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_rpc_count));
+}
 
 #define class_export_rpc_dec(exp)				       \
 ({								      \
-- 
1.9.1


