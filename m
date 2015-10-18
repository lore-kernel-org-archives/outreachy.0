X-GM-THRID: 6207040745324412928
X-Received: by 10.66.240.138 with SMTP id wa10mr21490546pac.43.1445189291314;
        Sun, 18 Oct 2015 10:28:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.243 with SMTP id t19ls668855igr.15.gmail; Sun, 18 Oct
 2015 10:28:10 -0700 (PDT)
X-Received: by 10.66.136.40 with SMTP id px8mr23106801pab.11.1445189290895;
        Sun, 18 Oct 2015 10:28:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id fa8si141457pab.1.2015.10.18.10.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:28:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id hk11so5575229pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 10:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=vI0OVl/HVQPvEhxnzwoK/atiD+yrH5n/V8fEWbWzH0k=;
        b=ivYkX46mJrrCJElhY7+O49FXMGxFVGxVBcgdD/UhkiIOz6wRcSeUb165sV7Gx96TIU
         j+q1ZjeyTp9f71rFrnBSj1Av7Nn8uwlecUK6X7PyRUZmy+8I0QsRQJiDi17tZmaB7WPu
         QLbgoPHKyuiQTQn2ldZoQ2sGm8EkzdBJ3AvostnefTVhW2NLaZsvoqkplYj9jH0lsjsH
         Mi7RURo7rXSk8Cwx49eVw2WEg1xxb3DjzEWkV32YBmsAWzJxVItwtcpZXOYMrc7r74uc
         6kkm+xpfcqTca0nvvuzeY7wZ0sxFJd6KlNmH2QzhOsX/4cpfIPrS0tFqQLrgt/J+rNMB
         tBkA==
X-Received: by 10.68.204.197 with SMTP id la5mr3905754pbc.159.1445189290808;
        Sun, 18 Oct 2015 10:28:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ch3sm31868095pbb.18.2015.10.18.10.28.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:28:10 -0700 (PDT)
Date: Sun, 18 Oct 2015 22:57:57 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: glimpse: Fix block comment style
Message-ID: <20151018172757.GA32840@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Block comments should be aligned correctly.

Fix checkpatch WARNING: Block comments use a trailing */ on a separate
line

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/glimpse.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lclient/glimpse.c b/drivers/staging/lustre/lustre/lclient/glimpse.c
index 8533a1e..0e2bdbe 100644
--- a/drivers/staging/lustre/lustre/lclient/glimpse.c
+++ b/drivers/staging/lustre/lustre/lclient/glimpse.c
@@ -97,7 +97,8 @@ int cl_glimpse_lock(const struct lu_env *env, struct cl_io *io,
 	if (!(lli->lli_flags & LLIF_MDS_SIZE_LOCK)) {
 		CDEBUG(D_DLMTRACE, "Glimpsing inode "DFID"\n", PFID(fid));
 		if (lli->lli_has_smd) {
-			/* NOTE: this looks like DLM lock request, but it may
+			/* 
+			 * NOTE: this looks like DLM lock request, but it may
 			 *       not be one. Due to CEF_ASYNC flag (translated
 			 *       to LDLM_FL_HAS_INTENT by osc), this is
 			 *       glimpse request, that won't revoke any
@@ -109,7 +110,8 @@ int cl_glimpse_lock(const struct lu_env *env, struct cl_io *io,
 			 *       if there were no conflicting locks. If there
 			 *       were conflicting locks, enqueuing or waiting
 			 *       fails with -ENAVAIL, but valid inode
-			 *       attributes are returned anyway. */
+			 *       attributes are returned anyway.
+			 */
 			*descr = whole_file;
 			descr->cld_obj   = clob;
 			descr->cld_mode  = CLM_PHANTOM;
-- 
2.1.0


