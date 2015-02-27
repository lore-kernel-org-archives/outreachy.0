X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.44 with SMTP id eb12mr828930wic.4.1425080492210;
        Fri, 27 Feb 2015 15:41:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls216171lac.94.gmail; Fri, 27 Feb
 2015 15:41:30 -0800 (PST)
X-Received: by 10.112.219.102 with SMTP id pn6mr2386258lbc.12.1425080490755;
        Fri, 27 Feb 2015 15:41:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id o3si206773wib.2.2015.02.27.15.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:41:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id x3so23223715wes.6
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7O5yhJzr+BxdrM3+Zc81XufpubY9JWrBgCpxhdxAwYE=;
        b=FwGM+iG3Gu3tk+9rDrq+/su8Ytq3XWwIRYkb4UEt+Zi9sucPvaAP3bsNacJqGRBFuW
         Sp/tKLD32aGGU8yf5Q8RZ3KBrJCNvfDYne+aZWtCvqsjj5G64v+oFe0P4b5+xsvnx9np
         8Y3vsE+emLgXo+1L4r9MdTWEp02mHWOEtFVnrNa3SNUfAem2uE4d11xDxFaM4ae1bg/Z
         k5FkUajC4aFE7z1a7dlWjCUeJjTzXupqKUoZkLS0CP0EZTAthwyFXt8tPNP69CWZRkeo
         NXwDPWhMp6uIMw+XcMVkissIPQZaJFm93aotAojYKAAB9O0S5lx6F1CUzKOUUH/f4K5Z
         CuVA==
X-Received: by 10.194.235.71 with SMTP id uk7mr33232009wjc.13.1425080490677;
        Fri, 27 Feb 2015 15:41:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id fu1sm4862515wic.2.2015.02.27.15.41.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:41:29 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 01:41:19 +0200
Message-Id: <1425080479-4345-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

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


