X-GM-THRID: 5271474667520
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b251f69e5d11924f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.228.106 with SMTP id e100mr18933736yhq.21.1425162506537;
        Sat, 28 Feb 2015 14:28:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.163 with SMTP id k3ls521984igx.13.gmail; Sat, 28 Feb
 2015 14:28:26 -0800 (PST)
X-Received: by 10.66.140.66 with SMTP id re2mr19539434pab.29.1425162506013;
        Sat, 28 Feb 2015 14:28:26 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id nt14si939470pab.2.2015.02.28.14.28.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 14:28:26 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x232.google.com with SMTP id nh10so6035151pdb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 14:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=X0+kCkE06XWXKEEunbup0vx0GiJivSKTA5bmP2y8xxM=;
        b=ZjlwX2ob7yS0tFI4pbDPMDGs+CCVDkut3wd5/faD+dw7/k7jXylZe9wvDdCjsdn9O9
         VGlyf0k/40AN95EBUjHrQCvIDJME1PjH27UVcTp43q/cymQood/ZB4N+unrdamzHZIrr
         qGb5blhL2yKjRLH7N7LdonMbEuUwm0NKfuO3ZTK/mZsazUtZmdetEBSkYQYBP1xfXNhe
         qOK8MVCjqjLbjFX8aDUUnH8hT5QKE+KToIlTFYT3RG+KF0H6Zld11AuJbfznhihNWU2I
         yI1M6zMDS1dvWerlsjYtx29kuzINYgk+RFDqjdGBs5cFW7ubTCaiBaoqKw01ntYLGJYC
         Hqhg==
X-Received: by 10.66.97.7 with SMTP id dw7mr35166232pab.56.1425162505907;
        Sat, 28 Feb 2015 14:28:25 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id c2sm7748627pdi.25.2015.02.28.14.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 14:28:25 -0800 (PST)
Date: Sun, 1 Mar 2015 03:59:39 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: Use kasprintf.
Message-ID: <20150228222939.GA6046@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kasprintf as it combines kmalloc and
sprintf, and takes care of the size calculation itself.

The semantic patch that makes this change is as follows:

// <smpl>
@@
expression a,flag;
expression list args;
statement S;
@@

  a =
-  \(kmalloc\|kzalloc\)(...,flag)
+  kasprintf(flag,args)
  <... when != a
  if (a == NULL || ...) S
  ...>
- sprintf(a,args);

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 0c1b583..52daba9 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -978,19 +978,17 @@ int ll_fill_super(struct super_block *sb, struct vfsmount *mnt)
 	CDEBUG(D_CONFIG, "Found profile %s: mdc=%s osc=%s\n", profilenm,
 	       lprof->lp_md, lprof->lp_dt);
 
-	dt = kzalloc(strlen(lprof->lp_dt) + instlen + 2, GFP_NOFS);
+	dt = kasprintf(strlen(lprof->lp_dt) + instlen + 2, GFP_NOFS);
 	if (!dt) {
 		err = -ENOMEM;
 		goto out_free;
 	}
-	sprintf(dt, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
 
-	md = kzalloc(strlen(lprof->lp_md) + instlen + 2, GFP_NOFS);
+	md = kasprintf(strlen(lprof->lp_md) + instlen + 2, GFP_NOFS);
 	if (!md) {
 		err = -ENOMEM;
 		goto out_free;
 	}
-	sprintf(md, "%s-%p", lprof->lp_md, cfg->cfg_instance);
 
 	/* connections, registrations, sb setup */
 	err = client_common_fill_super(sb, md, dt, mnt);
-- 
1.9.1


