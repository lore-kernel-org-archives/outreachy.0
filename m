X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr2879580lbo.8.1425169388023;
        Sat, 28 Feb 2015 16:23:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls322741lah.33.gmail; Sat, 28 Feb
 2015 16:23:07 -0800 (PST)
X-Received: by 10.152.9.199 with SMTP id c7mr234031lab.5.1425169387578;
        Sat, 28 Feb 2015 16:23:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id r6si393318wix.0.2015.02.28.16.23.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:23:07 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so26859892wev.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=G/OvhnycacYoe1GnRYaK0+5DvaDshHaJuGOaKYgDikQ=;
        b=H3akns43pV7dquqCFaPKkFIDklT/EHq2RX3AO54uNm5blJjeusrA9wBkJ5yg65XFIR
         TD4OmrMs7gUP0IoVkbz0jTFQAaC/UhsnK7aOu8sYM9/kautx3st/xdyoUwwyzSgQd087
         ptpDIEkrj7A4fK6T6ivVogXYU6S5ugXDewR42MLhjqmfC6xizG7s6ZrvTAfoO2XYum2e
         tfkeaMVvPw7V4Lf6mKR3Dc6BIhsZwmHKgFMru18Skv1Q5bJAdZADvc+Rz5h9dA8LpCPa
         NEG12/njA1uHLJ1gTyh4V4WtHMqAyZU+NqyQCvqH/PhxmWxC1EIhFY096hEqJgLX8jrZ
         YJig==
X-Received: by 10.180.211.206 with SMTP id ne14mr20707458wic.79.1425169387468;
        Sat, 28 Feb 2015 16:23:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id j7sm9130452wix.4.2015.02.28.16.23.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:23:06 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 0087E63424; Sun,  1 Mar 2015 03:23:04 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 3/5] Staging: lustre: Fix externs should be avoided in .c
Date: Sun,  1 Mar 2015 03:23:03 +0300
Message-Id: <1425169383-20179-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>

This patch moves extern declaration to ldlm_internal.h.
Remove prototype from ldlm_pool.c.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 2 ++
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 5bf9488..a694f01 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -208,6 +208,8 @@ struct ldlm_state {
 	struct ldlm_bl_pool *ldlm_bl_pool;
 };
 
+/* l_lock.c */
+extern struct proc_dir_entry *ldlm_ns_proc_dir;
 /* interval tree, for LDLM_EXTENT. */
 extern struct kmem_cache *ldlm_interval_slab; /* slab cache for ldlm_interval */
 extern void ldlm_interval_attach(struct ldlm_interval *n, struct ldlm_lock *l);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index 3af2687..54e2478 100644
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
-- 
1.9.1


