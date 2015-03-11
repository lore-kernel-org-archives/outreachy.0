X-GM-THRID: 7583885688832
X-Received: by 10.112.147.35 with SMTP id th3mr4993477lbb.15.1426041329340;
        Tue, 10 Mar 2015 19:35:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.229 with SMTP id el5ls199462wid.43.gmail; Tue, 10 Mar
 2015 19:35:29 -0700 (PDT)
X-Received: by 10.180.208.12 with SMTP id ma12mr2834137wic.6.1426041329084;
        Tue, 10 Mar 2015 19:35:29 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id i8si200717wif.1.2015.03.10.19.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so5973916wev.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CUQlFb8txnT76KxfV906hTQDOq7+Hfk3YVNwVAonDuc=;
        b=dHRiUYI12CkiW+61oF+uxeWeqY2HrJHYWiYrDHecBA3IGYMR2gRYOXPEpx+DVdJLgc
         u8ovsLpqX6ntZQyFfvpWuVG0XYswZOylizneNAx5odcbkVENvDxWVmkBxsZRGFl21ZLC
         M2kWh8VUr0bTJ3bYyjNjO4UJ6BO0dNvNjfUjPbMvPV3tTnpmIUfDKlJvNvYOXjRj0RYb
         /keynhzm3sbdQplAEi0uEuCiSM3rgXQgd/m+Pj2xV7aH49cU8YlKaesqXwt40IdtWSI2
         yAr80ZG5kh2R/9wF8s7qoMVj9mvD770WegzUzeIsGhBunA/Fu3M5w+pb/Hm5pUEZfDO3
         pK5A==
X-Received: by 10.180.73.205 with SMTP id n13mr73857708wiv.64.1426041329020;
        Tue, 10 Mar 2015 19:35:29 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:28 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 3/7] staging: sm750: Remove braces surrounding single statement blocks
Date: Wed, 11 Mar 2015 04:35:06 +0200
Message-Id: <6e1bb05955cc38470ca1722a7fd4749d5296b18d.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>

Remove unnecessary braces surrounding single statements blocks to improve
code readability

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index f2c9f89..65b1fbf 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -64,18 +64,16 @@ static inline void myspin_lock(spinlock_t *sl){
 	struct lynx_share *share;
 
 	share = container_of(sl,struct lynx_share,slock);
-	if(share->dual){
+	if(share->dual)
 		spin_lock(sl);
-	}
 }
 
 static inline void myspin_unlock(spinlock_t *sl){
 	struct lynx_share *share;
 
 	share = container_of(sl,struct lynx_share,slock);
-	if(share->dual){
+	if(share->dual)
 		spin_unlock(sl);
-	}
 }
 static const struct fb_videomode lynx750_ext[] = {
 	/*  	1024x600-60 VESA 	[1.71:1]	*/
@@ -151,9 +149,8 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
 	}
 
 	cursor->disable(cursor);
-	if(fbcursor->set & FB_CUR_SETSIZE){
+	if(fbcursor->set & FB_CUR_SETSIZE)
 		cursor->setSize(cursor,fbcursor->image.width,fbcursor->image.height);
-	}
 
 	if(fbcursor->set & FB_CUR_SETPOS){
 		cursor->setPos(cursor,fbcursor->image.dx - info->var.xoffset,
@@ -184,9 +181,8 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
 						fbcursor->mask);
 	}
 
-	if(fbcursor->enable){
+	if(fbcursor->enable)
 		cursor->enable(cursor);
-	}
 
 	return 0;
 }
@@ -198,9 +194,8 @@ static void lynxfb_ops_fillrect(struct fb_info* info,const struct fb_fillrect* r
 	unsigned int base,pitch,Bpp,rop;
 	u32 color;
 
-	if(info->state != FBINFO_STATE_RUNNING){
+	if(info->state != FBINFO_STATE_RUNNING)
 		return;
-	}
 
 	par = info->par;
 	share = par->share;
-- 
1.9.1


