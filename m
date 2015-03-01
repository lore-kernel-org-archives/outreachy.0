X-GM-THRID: 5271474667520
X-Received: by 10.66.153.16 with SMTP id vc16mr21320746pab.42.1425195406677;
        Sat, 28 Feb 2015 23:36:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.253.2 with SMTP id zw2ls665656igc.41.canary; Sat, 28 Feb
 2015 23:36:46 -0800 (PST)
X-Received: by 10.42.81.68 with SMTP id y4mr21697614ick.17.1425195406480;
        Sat, 28 Feb 2015 23:36:46 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id nt14si1056086pab.2.2015.02.28.23.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 23:36:46 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablf10 with SMTP id lf10so34525932pab.6
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 23:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ovA1sZzQtzhc97o7TWEQPfK9mN2Dd7G51hx5zm9LWl0=;
        b=vezuG2K3K1NmYzKWDULpKaL++9vbWrg1uv46iJ0c5ZWOPQr46LUyp5JlVD8aTSKqEq
         CI5tvvcKAmUxOiRzLlZZEIBteBJmt91Bmqyil7B6wANTovJ+Y2RfxxIHd8HvG4bTvzvy
         tsfeV3eahJbsMDKyDCvRkyqk5yllbUs/hv0zeuF3j/dUnSz7cHUgXW9jd034CI833iAt
         2XuJM1ootiEs947Qwh9rJjZwnPUGsc6cZXuYFE9x8gE7Wmlae5VLFXNIhcXC0SCCBzg5
         BTjMfTEOoxpmMV0lTc3LK+U62EtuR+vpcyn6cR2nVbwLvWij6qxvWO5evHLEdWoHU57r
         fdNQ==
X-Received: by 10.68.204.73 with SMTP id kw9mr37908652pbc.48.1425195406328;
        Sat, 28 Feb 2015 23:36:46 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id z2sm8435263pde.94.2015.02.28.23.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 23:36:45 -0800 (PST)
Date: Sun, 1 Mar 2015 13:08:00 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: Use kasprintf.
Message-ID: <20150301073759.GA21185@localhost>
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
Changes in v2:
     -Change arguments of kasprintf to the right ones.

 drivers/staging/lustre/lustre/llite/llite_lib.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 0c1b583..26e8626 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -978,19 +978,17 @@ int ll_fill_super(struct super_block *sb, struct vfsmount *mnt)
 	CDEBUG(D_CONFIG, "Found profile %s: mdc=%s osc=%s\n", profilenm,
 	       lprof->lp_md, lprof->lp_dt);
 
-	dt = kzalloc(strlen(lprof->lp_dt) + instlen + 2, GFP_NOFS);
+	dt = kasprintf(GFP_NOFS, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
 	if (!dt) {
 		err = -ENOMEM;
 		goto out_free;
 	}
-	sprintf(dt, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
 
-	md = kzalloc(strlen(lprof->lp_md) + instlen + 2, GFP_NOFS);
+	md = kasprintf(GFP_NOFS, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
 	if (!md) {
 		err = -ENOMEM;
 		goto out_free;
 	}
-	sprintf(md, "%s-%p", lprof->lp_md, cfg->cfg_instance);
 
 	/* connections, registrations, sb setup */
 	err = client_common_fill_super(sb, md, dt, mnt);
-- 
1.9.1

