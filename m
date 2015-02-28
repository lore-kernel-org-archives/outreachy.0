X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr2703194lbb.9.1425122730892;
        Sat, 28 Feb 2015 03:25:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.136 with SMTP id si8ls278164lac.11.gmail; Sat, 28 Feb
 2015 03:25:30 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr2662578lab.0.1425122730500;
        Sat, 28 Feb 2015 03:25:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id i7si288631wif.0.2015.02.28.03.25.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id k14so24969106wgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7O5yhJzr+BxdrM3+Zc81XufpubY9JWrBgCpxhdxAwYE=;
        b=zvzUIz4X70XzXU0itxOGG4KH2Ub+gkmZqQGgX9NH3Z2ZOhSZxpQRdhHgjrGYKZv1YF
         AtaQXKAe/kZB0hhkxvZV4gHlyrWwqgRbfjcX0BbD8pP/wO+V1Q14Vkdom3rx/FXifafe
         PsKXjPNkZTE0B4BzU/lc2boNFQw/DSXf7yzM7oyVre+s8i7VCVnpwvhNet9B6AIg1cao
         JBgsfPW8Wa7QMLo1K11AuwksHjAAobiY+1GesVp/VQsJVXjhaTKfWYtphcTeh3FVfQb5
         3g2Z7jdthapvqo3P5GZGlBPRrRVRPv/M9GVO6yrjjXzrOOznjhZBNGX67PfoVjmDTfUj
         cBnA==
X-Received: by 10.180.214.99 with SMTP id nz3mr16023687wic.82.1425122730378;
        Sat, 28 Feb 2015 03:25:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:29 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 04/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:09 +0200
Message-Id: <1425122715-2938-4-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 0e2071b..af72f5c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -166,6 +166,7 @@ const char *ll_opcode2str(__u32 opcode)
 	 *	ptlrpc_internal.h needs to be modified.
 	 */
 	__u32 offset = opcode_offset(opcode);
+
 	LASSERTF(offset < LUSTRE_MAX_OPCODES,
 		 "offset %u >= LUSTRE_MAX_OPCODES %u\n",
 		 offset, LUSTRE_MAX_OPCODES);
@@ -239,6 +240,7 @@ static void ptlrpc_lprocfs_register(struct proc_dir_entry *root, char *dir,
 	}
 	for (i = 0; i < LUSTRE_MAX_OPCODES; i++) {
 		__u32 opcode = ll_rpc_opcode_table[i].opcode;
+
 		lprocfs_counter_init(svc_stats,
 				     EXTRA_MAX_OPCODES + i, svc_counter_config,
 				     ll_opcode2str(opcode), "usec");
@@ -1026,6 +1028,7 @@ LPROC_SEQ_FOPS_RO(ptlrpc_lprocfs_timeouts);
 static int ptlrpc_lprocfs_hp_ratio_seq_show(struct seq_file *m, void *v)
 {
 	struct ptlrpc_service *svc = m->private;
+
 	return seq_printf(m, "%d", svc->srv_hpreq_ratio);
 }
 
-- 
1.9.1


