X-GM-THRID: 6251859755441061888
X-Received: by 10.107.135.209 with SMTP id r78mr21797740ioi.19.1456034692932;
        Sat, 20 Feb 2016 22:04:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.213 with SMTP id z204ls476525iod.46.gmail; Sat, 20 Feb
 2016 22:04:52 -0800 (PST)
X-Received: by 10.50.20.135 with SMTP id n7mr5388738ige.5.1456034692641;
        Sat, 20 Feb 2016 22:04:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ff2si2683636pad.2.2016.02.20.22.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 22:04:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id q63so74384102pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 22:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7ej0SpQtzobRDzIBFvdVkOnW3QkJdUGBBUUcWXsd/xg=;
        b=y26abkKQWvgYjm6v5nXHZgRo01xwhWSfBJQMkTMd87qOPVPKZYNXs+wUXY7VsNn/DH
         ZHeBXo2WuOSL/zGh0HsyAUlkYEyKoKRjvzcDf1GMYU+oQOHbFSs95L+Mdu7lmYyjB9c/
         rkKy/qpCMOj401PFhidebcIgYSQ/0FrPQhraYDZlM88+htzRlBT8JkfXJoM/UDHf6VUm
         oMAdj163S/YfHTsEO3/W8DnkDUFsceDOSuLZdfpzbSaLT89544NSUrz664dsUEZuf1+n
         Z0ZssKIy6VsTbVAGjfSm8DYAZFnErbmyTIUbWd8nglqjtuRkfFIW/emq3w7F4lNCd8nU
         wEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=7ej0SpQtzobRDzIBFvdVkOnW3QkJdUGBBUUcWXsd/xg=;
        b=JgTeGcJNBoQXWddmD8GKWdX3N0I9v20wiJAHv281sXF+vHB/fnBOwB9zzkocEYZ40b
         5xMt5wfNU0VV9bYGqBArR0N+hcaCCaLGK/NyPVv5cYvHutFcuQsw7WqFJskkRyGY0xhS
         74BnnscTMKuRIWGcO7xsVDN/39YqlxNHZC2sZJuY+WqRIFipWGyDEGlgX2nmvELsYZwy
         bzIEETIL8CoUBbfs6eKj+oM1zfV1DIpzN6zjnds6C9DCesdd+aBgINYLcnK6FXBm2TxT
         SJgVjyLJLk6kXsUzHLdBWJn+rmuATIcFP++BPJ+N6iVNPPGgXaebUMYTDX+8tFx8E+JE
         XWkA==
X-Gm-Message-State: AG10YOQGzWGzVzOOJJdVsVyaZNt7PcFlr2z9XvKV4AFRlZkOq5wSZ63H6K4RnrE11HWAKA==
X-Received: by 10.98.17.92 with SMTP id z89mr29597452pfi.16.1456034692450;
        Sat, 20 Feb 2016 22:04:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.49.90])
        by smtp.gmail.com with ESMTPSA id c68sm11266409pfj.41.2016.02.20.22.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 22:04:52 -0800 (PST)
Date: Sun, 21 Feb 2016 11:34:48 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: lustre: llite: Remove IS_ERR tests
Message-ID: <20160221060448.GA16055@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

ll_iget() has been modified to always return NULL in case of error and
not a ERR_PTR.

Consequently, remove unnecessary IS_ERR tests as now ll_iget()
function can never return a ERR_PTR.

Additionally, reinitialising root and inode to NULL has been removed
since they have already been tested for the same.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v4:
        -Rebased patch
Changes in v3:
        -Modified ll_iget() to only return NULL in case of error
Changes in v2:
        -Remove IS_ERR test instead of replacing it with
         IS_ERR_OR_NULL

 drivers/staging/lustre/lustre/llite/llite_lib.c | 10 ++++------
 drivers/staging/lustre/lustre/llite/namei.c     |  2 +-
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 4de085d..322a694 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	md_free_lustre_md(sbi->ll_md_exp, &lmd);
 	ptlrpc_req_finished(request);
 
-	if (IS_ERR_OR_NULL(root)) {
+	if (!(root)) {
 		if (lmd.lsm)
 			obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
 #ifdef CONFIG_FS_POSIX_ACL
@@ -502,8 +502,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 			lmd.posix_acl = NULL;
 		}
 #endif
-		err = IS_ERR(root) ? PTR_ERR(root) : -EBADF;
-		root = NULL;
+		err = -EBADF;
 		CERROR("lustre_lite: bad iget4 for root\n");
 		goto out_root;
 	}
@@ -1964,15 +1963,14 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
 		*inode = ll_iget(sb, cl_fid_build_ino(&md.body->fid1,
 					     sbi->ll_flags & LL_SBI_32BIT_API),
 				 &md);
-		if (IS_ERR_OR_NULL(*inode)) {
+		if (!inode) {
 #ifdef CONFIG_FS_POSIX_ACL
 			if (md.posix_acl) {
 				posix_acl_release(md.posix_acl);
 				md.posix_acl = NULL;
 			}
 #endif
-			rc = IS_ERR(*inode) ? PTR_ERR(*inode) : -ENOMEM;
-			*inode = NULL;
+			rc = -ENOMEM;
 			CERROR("new_inode -fatal: rc %d\n", rc);
 			goto out;
 		}
diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index 7e62198..8ea63c8 100644
--- a/drivers/staging/lustre/lustre/llite/namei.c
+++ b/drivers/staging/lustre/lustre/llite/namei.c
@@ -127,7 +127,7 @@ struct inode *ll_iget(struct super_block *sb, ino_t hash,
 			}
 			if (rc != 0) {
 				iget_failed(inode);
-				inode = ERR_PTR(rc);
+				inode = NULL;
 			} else
 				unlock_new_inode(inode);
 		} else if (!(inode->i_state & (I_FREEING | I_CLEAR)))
-- 
1.9.1


