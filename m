X-GM-THRID: 6211494140664872960
X-Received: by 10.107.47.219 with SMTP id v88mr8540448iov.25.1446232342626;
        Fri, 30 Oct 2015 12:12:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.229 with SMTP id 92ls1285931qgp.24.gmail; Fri, 30 Oct
 2015 12:12:19 -0700 (PDT)
X-Received: by 10.129.148.129 with SMTP id l123mr7566816ywg.35.1446232339407;
        Fri, 30 Oct 2015 12:12:19 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id iz5si768276pbc.2.2015.10.30.12.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 12:12:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so85611714pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 12:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lH6I04Nbvdo+drYtZ42kXegcxdYBa8kEsC2LvVh6u+s=;
        b=m2ynoEQME3/Zvw7XVkgmk+Ov7JpGe1qNV9raPbNKpSU0fs9hCxbIS0QivlZUAYDCpU
         XJUhRij1QUZhnaNtKkayC/D492/TOg8MWjUJSkZG29pyjY9ddnVbeYrnEgUDGRqeR1dt
         EBooCVyEYr6WTuD5nNpM908yy8shK3fnis4FabNUadyNoBMpRIVWnk3S5+zc2jqhuxfG
         +zT2+oJkMpqGOkW3zsoqo0wFbd2SGXzipgc6/PsxzdJxJWJdv0E78CV2dRdtp20PNQTG
         1FJ8XBtTcSqM9op+V/rFRN717B3pX1ifqPn+OQ7aA2QJSu+GAJvjudlSHeo2PE4O+9mk
         jRIA==
X-Received: by 10.66.172.6 with SMTP id ay6mr10551579pac.44.1446232339193;
        Fri, 30 Oct 2015 12:12:19 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id rn7sm9616616pab.23.2015.10.30.12.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 12:12:18 -0700 (PDT)
Date: Sat, 31 Oct 2015 00:42:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: dir: Add __user annotations
Message-ID: <20151030191214.GA15157@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following multiple sparse warnings by adding
__user annotations in multiple places including struct declarations:

warning: incorrect type in argument 2 (different address spaces)
expected void const [noderef] <asn:1>*from got struct lov_user_md_v3

warning: incorrect type in argument 2 (different address spaces)
expected void const [noderef] <asn:1>*from got struct lov_user_md_v1

warning: incorrect type in argument 2 (different address spaces)
expected void const [noderef] <asn:1>*from got struct lov_user_md

warning: incorrect type in argument 2 (different address spaces)
expected void const [noderef] <asn:1>*from got const char

warning: incorrect type in argument 1 (different address spaces)
expected void const [noderef] <asn:1>*to got struct lov_user_md_v

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Note:
This patch is in continuation to a previous patch that fixed sparse
warnings in this file. Now, this file does not give any further sparse
warnings.

 drivers/staging/lustre/lustre/llite/dir.c | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index 6a20e61..72900ea 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -1370,8 +1370,10 @@ lmv_out_free:
 	case LL_IOC_LOV_SETSTRIPE: {
 		struct lov_user_md_v3 lumv3;
 		struct lov_user_md_v1 *lumv1 = (struct lov_user_md_v1 *)&lumv3;
-		struct lov_user_md_v1 *lumv1p = (struct lov_user_md_v1 *)arg;
-		struct lov_user_md_v3 *lumv3p = (struct lov_user_md_v3 *)arg;
+		struct lov_user_md_v1 __user *lumv1p =
+					(struct lov_user_md_v1 __user *)arg;
+		struct lov_user_md_v3 __user *lumv3p =
+					(struct lov_user_md_v3 __user *)arg;
 
 		int set_default = 0;
 
@@ -1396,7 +1398,8 @@ lmv_out_free:
 		return rc;
 	}
 	case LL_IOC_LMV_GETSTRIPE: {
-		struct lmv_user_md *lump = (struct lmv_user_md *)arg;
+		struct lmv_user_md __user *lump =
+					(struct lmv_user_md __user *)arg;
 		struct lmv_user_md lum;
 		struct lmv_user_md *tmp;
 		int lum_size;
@@ -1446,7 +1449,7 @@ free_lmv:
 	case IOC_MDC_GETFILEINFO:
 	case IOC_MDC_GETFILESTRIPE: {
 		struct ptlrpc_request *request = NULL;
-		struct lov_user_md *lump;
+		struct lov_user_md __user *lump;
 		struct lov_mds_md *lmm = NULL;
 		struct mdt_body *body;
 		char *filename = NULL;
@@ -1454,7 +1457,7 @@ free_lmv:
 
 		if (cmd == IOC_MDC_GETFILEINFO ||
 		    cmd == IOC_MDC_GETFILESTRIPE) {
-			filename = ll_getname((const char *)arg);
+			filename = ll_getname((const char __user *)arg);
 			if (IS_ERR(filename))
 				return PTR_ERR(filename);
 
@@ -1483,11 +1486,11 @@ free_lmv:
 
 		if (cmd == IOC_MDC_GETFILESTRIPE ||
 		    cmd == LL_IOC_LOV_GETSTRIPE) {
-			lump = (struct lov_user_md *)arg;
+			lump = (struct lov_user_md __user *)arg;
 		} else {
-			struct lov_user_mds_data *lmdp;
+			struct lov_user_mds_data __user *lmdp;
 
-			lmdp = (struct lov_user_mds_data *)arg;
+			lmdp = (struct lov_user_mds_data __user *)arg;
 			lump = &lmdp->lmd_lmm;
 		}
 		if (copy_to_user(lump, lmm, lmmsize)) {
@@ -1499,7 +1502,7 @@ free_lmv:
 		}
 skip_lmm:
 		if (cmd == IOC_MDC_GETFILEINFO || cmd == LL_IOC_MDC_GETINFO) {
-			struct lov_user_mds_data *lmdp;
+			struct lov_user_mds_data __user *lmdp;
 			lstat_t st = { 0 };
 
 			st.st_dev     = inode->i_sb->s_dev;
@@ -1516,7 +1519,7 @@ skip_lmm:
 			st.st_ctime   = body->ctime;
 			st.st_ino     = inode->i_ino;
 
-			lmdp = (struct lov_user_mds_data *)arg;
+			lmdp = (struct lov_user_mds_data __user *)arg;
 			if (copy_to_user(&lmdp->lmd_st, &st, sizeof(st))) {
 				rc = -EFAULT;
 				goto out_req;
@@ -1530,14 +1533,14 @@ out_req:
 		return rc;
 	}
 	case IOC_LOV_GETINFO: {
-		struct lov_user_mds_data *lumd;
+		struct lov_user_mds_data __user *lumd;
 		struct lov_stripe_md *lsm;
-		struct lov_user_md *lum;
+		struct lov_user_md __user *lum;
 		struct lov_mds_md *lmm;
 		int lmmsize;
 		lstat_t st;
 
-		lumd = (struct lov_user_mds_data *)arg;
+		lumd = (struct lov_user_mds_data __user *)arg;
 		lum = &lumd->lmd_lmm;
 
 		rc = ll_get_max_mdsize(sbi, &lmmsize);
@@ -1818,7 +1821,7 @@ out_quotactl:
 		return rc;
 	}
 	case LL_IOC_HSM_CT_START:
-		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
+		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void __user *)arg,
 				    sizeof(struct lustre_kernelcomm));
 		return rc;
 
-- 
1.9.1


