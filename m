X-GM-THRID: 6122635264000
X-Received: by 10.180.211.199 with SMTP id ne7mr510031wic.5.1426947496368;
        Sat, 21 Mar 2015 07:18:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.70 with SMTP id gs6ls529110wib.12.gmail; Sat, 21 Mar
 2015 07:18:16 -0700 (PDT)
X-Received: by 10.180.11.34 with SMTP id n2mr518324wib.2.1426947495960;
        Sat, 21 Mar 2015 07:18:15 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id bz6si108420wib.3.2015.03.21.07.18.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 07:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x242.google.com with SMTP id h11so1763049wiw.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 07:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8vi582uy8iY3+lnaB+wKfSKW3c+T5pQrDXE5+QYCQBQ=;
        b=zjNrKGVnAIOJd9MzvrGolk3ybC4lSQ84m0c1vS8zs/fxEmD9Kb1+hPB3pROEBCBIZ8
         2Qx4ic5Gx+o48S5SmJsaxBzw48tyPAJ3FjaQVCat1EzBJCd4C9KpeQ2hILjKZdZyM78q
         B1YESrg+SbuwejEaEaKZ82VwBwWyeLDKOIERz/wKq2hOEt7Sc+kFdwthOQEC4kJHu/o4
         zpbzg36s0YGAIL7tBpwv8D4qrGyj1znhBaHAP6SC6jovq9Ml11I6PlPO7No1P7mZH/dx
         SN2Hult7jqMQK9vfL12Sf4vf4u5jWq0AJvYj03Pa/4w7QNomgrjAjfyhTVmHlWRlXaqb
         QY4g==
X-Received: by 10.194.2.43 with SMTP id 11mr170166762wjr.104.1426947495855;
        Sat, 21 Mar 2015 07:18:15 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.138])
        by mx.google.com with ESMTPSA id lx10sm10798064wjb.17.2015.03.21.07.18.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 07:18:14 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 0604EC1FE4; Sat, 21 Mar 2015 08:51:36 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5] Staging: lustre: remove extern in .c file
Date: Sat, 21 Mar 2015 08:51:35 +0300
Message-Id: <1426917095-29463-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20150303170342.GA1708@kroah.com>
References: <20150303170342.GA1708@kroah.com>

This patch removes extern from .c file; for the variable is not used
anywhere else in the file.
In addition, it mark it static in the one file it is in
"ldlm_resource.c".

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: mark struct as static
v4: remove extern instead of adding its declaration to .h

 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 2 --
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index 7574502..a9f4833 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -141,8 +141,6 @@
  */
 #define LDLM_POOL_SLV_SHIFT (10)
 
-extern struct proc_dir_entry *ldlm_ns_proc_dir;
-
 static inline __u64 dru(__u64 val, __u32 shift, int round_up)
 {
 	return (val + (round_up ? (1 << shift) - 1 : 0)) >> shift;
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index c6f62a9..f750d42 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -62,7 +62,7 @@ LIST_HEAD(ldlm_cli_active_namespace_list);
 LIST_HEAD(ldlm_cli_inactive_namespace_list);
 
 struct proc_dir_entry *ldlm_type_proc_dir = NULL;
-struct proc_dir_entry *ldlm_ns_proc_dir = NULL;
+static struct proc_dir_entry *ldlm_ns_proc_dir = NULL;
 struct proc_dir_entry *ldlm_svc_proc_dir = NULL;
 
 extern unsigned int ldlm_cancel_unused_locks_before_replay;
-- 
1.9.1


