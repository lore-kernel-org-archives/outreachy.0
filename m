X-GM-THRID: 5152931053568
X-Received: by 10.152.45.7 with SMTP id i7mr2822992lam.9.1425151328795;
        Sat, 28 Feb 2015 11:22:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.75.46 with SMTP id z14ls322148wiv.41.gmail; Sat, 28 Feb
 2015 11:22:08 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1231820wid.1.1425151328505;
        Sat, 28 Feb 2015 11:22:08 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id l8si383077wia.0.2015.02.28.11.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:22:08 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so26199044wev.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 11:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=G/OvhnycacYoe1GnRYaK0+5DvaDshHaJuGOaKYgDikQ=;
        b=Wv45ylSqrwpHlOC5pDO1sOiaZUy1E1gRB1tm1QFSBt7XcPaMFBm8T9oVS9CGUa1duj
         02EiiYvmLiEXwJ0yJlML2XNKi8daR6q60lhuRPYjKgP0Y3vMI197LCI0q6NVjldKdR9p
         hkMpK75OqaOpbaXr5g1vYJHs0I7dJ4sOk0sVdHHm4EUN32O7R5ht14Zag8kY1jSX+jZY
         5EGtQq/VzZYj8yn8djCjbX+uh4abkLmk/fbcgtmy3sko4gcbAD/5ZjBglHTax1qyeeEL
         xXSJT1VvGPXupT97ujsd/6kDXQ9NXITU+Ws4JMWq+sluop4IpgSGBrTOJJ4kxTwghb+B
         m9eA==
X-Received: by 10.180.92.71 with SMTP id ck7mr7608212wib.48.1425151328364;
        Sat, 28 Feb 2015 11:22:08 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id hv5sm11375339wjb.16.2015.02.28.11.22.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:22:07 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 6EEAE63456; Sat, 28 Feb 2015 22:21:56 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/5] Staging: lustre: lustre: ldlm: Fix externs should be avoided in .c
Date: Sat, 28 Feb 2015 22:21:55 +0300
Message-Id: <1425151315-31031-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>

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


