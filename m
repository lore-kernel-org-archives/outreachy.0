X-GM-THRID: 6211756809938534400
X-Received: by 10.129.99.10 with SMTP id x10mr9805712ywb.21.1446287339321;
        Sat, 31 Oct 2015 03:28:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.93 with SMTP id 90ls839733iod.21.gmail; Sat, 31 Oct 2015
 03:28:58 -0700 (PDT)
X-Received: by 10.66.228.69 with SMTP id sg5mr9935353pac.12.1446287338766;
        Sat, 31 Oct 2015 03:28:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id iz5si994083pbc.2.2015.10.31.03.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy1so92148130pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nfK6iCoe79fX0dO/oRS60dyJ6z7UtmxhioFfjSVVFtU=;
        b=D+8+jxozY4ukPITBI7XcqA66SIbJwalEESBBsEETgJqsgfIeLhhLmNf0QfS0c63rJq
         D32Di5Tn29p0X3pdwed6ZKN84mayR2HC07jpAnv/qHEVfq1gjRMXNEK1mhpQX7yOCCZF
         cpqdQpLVDg5bUa/dyR9gyAc62G7MaMPsJ68XUeV0mU714K9bQkZwPTSBZnTx4FpgCiKM
         tqVe4gfPFVQMu3sEqSDzmcScvuoEMdWQIZHnSpokDl3NyBSwD1zjLgVGOzgxyh7EZvvX
         wfZvxIH7SsnNPCCAoXaMOPWk9HAJWTyaw8L/v6cblBjPgEy442JXNefd7vjrOKYhLJnM
         0xZA==
X-Received: by 10.68.225.41 with SMTP id rh9mr14431384pbc.116.1446287338657;
        Sat, 31 Oct 2015 03:28:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.28.56
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:28:58 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 1/6] Staging: lustre: lclient: Remove wrapper functions
Date: Sat, 31 Oct 2015 15:58:41 +0530
Message-Id: <1446287326-9404-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
References: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497E9.013B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The functions cl_isize_lock and cl_isize_unlock can be replaced with
direct calls to ll_inode_size_lock and ll_inode_size_unlock. Thus
drop the wrapper functions.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/lcommon_cl.c   |  4 ++--
 drivers/staging/lustre/lustre/llite/llite_internal.h | 10 ----------
 2 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
index 0b8e4d2..12c7f0e 100644
--- a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
+++ b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
@@ -427,7 +427,7 @@ static void ccc_object_size_lock(struct cl_object *obj)
 {
 	struct inode *inode = ccc_object_inode(obj);
 
-	cl_isize_lock(inode);
+	ll_inode_size_lock(inode);
 	cl_object_attr_lock(obj);
 }
 
@@ -436,7 +436,7 @@ static void ccc_object_size_unlock(struct cl_object *obj)
 	struct inode *inode = ccc_object_inode(obj);
 
 	cl_object_attr_unlock(obj);
-	cl_isize_unlock(inode);
+	ll_inode_size_unlock(inode);
 }
 
 /*****************************************************************************
diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
index 9096d31..157c3284 100644
--- a/drivers/staging/lustre/lustre/llite/llite_internal.h
+++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
@@ -1285,16 +1285,6 @@ static inline struct ll_file_data *cl_iattr2fd(struct inode *inode,
 	return LUSTRE_FPRIVATE(attr->ia_file);
 }
 
-static inline void cl_isize_lock(struct inode *inode)
-{
-	ll_inode_size_lock(inode);
-}
-
-static inline void cl_isize_unlock(struct inode *inode)
-{
-	ll_inode_size_unlock(inode);
-}
-
 static inline void cl_isize_write_nolock(struct inode *inode, loff_t kms)
 {
 	LASSERT(mutex_is_locked(&ll_i2info(inode)->lli_size_mutex));
-- 
2.1.4


