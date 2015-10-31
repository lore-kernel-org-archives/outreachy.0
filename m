X-GM-THRID: 6211756809938534400
X-Received: by 10.129.53.14 with SMTP id c14mr9691865ywa.16.1446287353684;
        Sat, 31 Oct 2015 03:29:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.135 with SMTP id fg7ls576205obb.54.gmail; Sat, 31 Oct
 2015 03:29:13 -0700 (PDT)
X-Received: by 10.182.250.233 with SMTP id zf9mr10184953obc.7.1446287353264;
        Sat, 31 Oct 2015 03:29:13 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id iz5si994083pbc.2.2015.10.31.03.29.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy1so92148130pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Pr8B0yfCcy/yGMDaovPg9tK3xD11/s9RWBXkR0+Drgk=;
        b=k0y70jJ1JMIJgz7VcQKTdGRKev996gYDVLAt3cNLma8ZjB611CA3bVngGHou+oe3H8
         RA26LDpXVaHL0IkXlT+tG/v8Q7jaMyzgai+QnaaA+DMdWfN2JYtj4BW/iMsp3BuJcyrc
         FuHatQCJCp/cAmjxgu22Wa2FM1o/yrqim0tL3LqSqJVo5Qyxmtl/rg4Y6PfGAuELOidq
         xmatEz4eOT9DqD3J5CDIyfAMhRH9DaHTfG3LyzbXt49MnmfeQG8LeNZ2uUbAS2qlN5oz
         x6YHBIcRzDmI3YGJTNj7Kva2dl34JlDQIim5aBCwjDkWJsUAfQJSgIw56eBKAphvRTtl
         l/wQ==
X-Received: by 10.66.252.131 with SMTP id zs3mr14440003pac.69.1446287353141;
        Sat, 31 Oct 2015 03:29:13 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.29.10
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:29:12 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 6/6] Staging: lustre: mdc: Remove unused declarations
Date: Sat, 31 Oct 2015 15:58:46 +0530
Message-Id: <1446287326-9404-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
References: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497F8.0023,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The functions mdc_pack_req and mdc_getxattr_pack have been
declared in header file but not used. Thus remove the
declarations.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_internal.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_internal.h b/drivers/staging/lustre/lustre/mdc/mdc_internal.h
index 29b46f7..b01c75c 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_internal.h
+++ b/drivers/staging/lustre/lustre/mdc/mdc_internal.h
@@ -44,7 +44,6 @@ void lprocfs_mdc_init_vars(struct lprocfs_static_vars *lvars);
 
 void mdc_pack_body(struct ptlrpc_request *req, const struct lu_fid *fid,
 		   __u64 valid, int ea_size, __u32 suppgid, int flags);
-int mdc_pack_req(struct ptlrpc_request *req, int version, int opc);
 void mdc_is_subdir_pack(struct ptlrpc_request *req, const struct lu_fid *pfid,
 			const struct lu_fid *cfid, int flags);
 void mdc_swap_layouts_pack(struct ptlrpc_request *req,
@@ -62,7 +61,6 @@ void mdc_open_pack(struct ptlrpc_request *req, struct md_op_data *op_data,
 		   __u32 mode, __u64 rdev, __u64 flags, const void *data,
 		   int datalen);
 void mdc_unlink_pack(struct ptlrpc_request *req, struct md_op_data *op_data);
-void mdc_getxattr_pack(struct ptlrpc_request *req, struct md_op_data *op_data);
 void mdc_link_pack(struct ptlrpc_request *req, struct md_op_data *op_data);
 void mdc_rename_pack(struct ptlrpc_request *req, struct md_op_data *op_data,
 		     const char *old, int oldlen, const char *new, int newlen);
-- 
2.1.4


