X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.164.171 with SMTP id yr11mr2981220lab.4.1426123425020;
        Wed, 11 Mar 2015 18:23:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls1087711wid.5.canary; Wed, 11 Mar
 2015 18:23:44 -0700 (PDT)
X-Received: by 10.180.75.232 with SMTP id f8mr9086415wiw.0.1426123424757;
        Wed, 11 Mar 2015 18:23:44 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id sf8si421720wic.2.2015.03.11.18.23.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id ex7so42959235wid.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=E1AUQkVfG0kQ1bJ3QapI0i43bk/oMhT75kbq7+Rv/GQ=;
        b=iv6+tuU8060c3RT0+OsT7J7uL/BHjdHdxICvCPhM3alK58Lk//ombDACy/jvSh+sss
         Ik8T9CNCUo3Q/mTbFSGVWGzgQqbvJ5IHjZMMFchm/5Bf46EpHWYyXnGnGeKiOKiLJ+b4
         y3mtROKHK1xNhyQ8ZTn6Iwrv61k4z884xwPnJ/S0eAERiuMH7rNS+bndFtocmGgEOYLg
         B5jErULs5IKqWc85a+O+MvUWVtqxGHizOJeOLZqr70wYCROQ7HVykv+tq6FFdO5Klfgl
         WeSn6tt47fTL+yEMTtbX3GzxQ+YAX4GjmHJOV+oH33Mb9XIPipiMIXC5nRhbUEmR5UZ9
         maOg==
X-Received: by 10.180.182.67 with SMTP id ec3mr58943380wic.32.1426123424702;
        Wed, 11 Mar 2015 18:23:44 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:43 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 7/9] staging: sm750: Remove space before ')'
Date: Thu, 12 Mar 2015 03:23:12 +0200
Message-Id: <dc9a353f0623e2e1ada333f76573f3417e4e8a51.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Remove space before ')' as it is prohibited by the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
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


