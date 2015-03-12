X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr6844443lbb.13.1426190362959;
        Thu, 12 Mar 2015 12:59:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.225.132 with SMTP id rk4ls340541lac.50.gmail; Thu, 12 Mar
 2015 12:59:22 -0700 (PDT)
X-Received: by 10.112.41.131 with SMTP id f3mr6785486lbl.20.1426190362535;
        Thu, 12 Mar 2015 12:59:22 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id o3si1613780wib.2.2015.03.12.12.59.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id x3so18834999wes.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e3jx/ydu/016fH9L9FFrosANnQpCaLMe5z8maEl2icw=;
        b=tMuJUpM6jvQ/md08Y1VT9N3kAyGWxaE02rDzvlFtYj32uzk8+j/iryZWWQGAJMgfH1
         +Vap2skkwHaKi3/gU/Wp8zZExU7WqGxrXJd1sb37Wi6OoPrG15VhvZqiYbTO/4e82L5c
         tCn5r8uDVGucgenrJqCYg9qYRq6HATZcPhiNBIjEiW2iQaQx5UbO4btJw4fAiuWXbW92
         PRdY2GfyfKj0srl0Sf0R+esLkf4sH2U9MWsVOLTvdt3u6XFtxRdhos8TNvGh5WF1nocH
         2L0cCEj+8vV+vT18PSaJRmUFf/+bLZSbvS9XVBmDDeTMsF9RvXVfsCXGas4wA3BTFx4U
         zgjA==
X-Received: by 10.194.2.145 with SMTP id 17mr20514962wju.79.1426190362405;
        Thu, 12 Mar 2015 12:59:22 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:21 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 7/9] staging: sm750: Remove unnecessary spaces around ')'
Date: Thu, 12 Mar 2015 21:58:51 +0200
Message-Id: <f4970bede944d27ada642cf9b7de152751aa1777.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

Remove unnecessary space around ')' as it is prohibited by the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
	- Change patch description and subject to describe everything properly

 drivers/staging/sm750fb/sm750.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8f12370..f5b4dae 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -208,7 +208,7 @@ static void lynxfb_ops_fillrect(struct fb_info* info, const struct fb_fillrect*
 	Bpp = info->var.bits_per_pixel >> 3;
 
 	color = (Bpp == 1)?region->color:((u32*)info->pseudo_palette)[region->color];
-	rop = ( region->rop != ROP_COPY ) ? HW_ROP2_XOR:HW_ROP2_COPY;
+	rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR:HW_ROP2_COPY;
 
 	myspin_lock(&share->slock);
 	share->accel.de_fillrect(&share->accel,
@@ -699,7 +699,7 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
 	}
 
 
-	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 ) {
+	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256) {
 		u32 val;
 
 		if (var->bits_per_pixel == 16 ||
@@ -1154,7 +1154,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	}
 
 	/* setting share structure */
-	share = (struct lynx_share * )(&(spec_share->share));
+	share = (struct lynx_share *)(&(spec_share->share));
 	share->fbinfo[0] = share->fbinfo[1] = NULL;
 	share->devid = pdev->device;
 	share->revid = pdev->revision;
-- 
1.9.1


