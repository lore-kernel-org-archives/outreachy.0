X-GM-THRID: 7583885688832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1710fc2133602604
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr5036741lbj.23.1426041327396;
        Tue, 10 Mar 2015 19:35:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.2 with SMTP id ci2ls94144lad.38.gmail; Tue, 10 Mar 2015
 19:35:26 -0700 (PDT)
X-Received: by 10.112.35.135 with SMTP id h7mr5036739lbj.23.1426041326848;
        Tue, 10 Mar 2015 19:35:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id o3si1197024wib.2.2015.03.10.19.35.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so5996403wev.6
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oyw0NY58WYkXzIOorguSk1uPVZ0fP9vMzK17aqYkQac=;
        b=vZVq4J6IHSl42fTfpqnEfKnU13KshuqV0/dg+0vJYBMAQ6m5NRU+ZSJt4bQYa1pDuv
         CRb8puDCZT3pbWi3mtQ/Vu84z8PYa2Fpjlf7nhOp3wpjodGgehM3kqzTmBaJhzQp7Vrt
         5oLYdEkA29TLuQnBRDPLyz6uFjZ+i1yrmyyVDY4R14QJtMrGxHKMB6tbeLZAXs8BwmnJ
         x/z+WR6/yV5mAv1q8DhpAUvSA7W3sQDlk22bnHAzskZbzSZe9J4Zu4crxDFUZmvrCU/b
         gnL1JvYOHRhdyfoGzT3MqgRySFVnfs8i6zOV/bjRjn3RAQTwfnVAn/iTvUkEKlDL1cyb
         N8jA==
X-Received: by 10.180.198.37 with SMTP id iz5mr72100439wic.95.1426041326749;
        Tue, 10 Mar 2015 19:35:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:25 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 2/7] staging: sm750: Place blank line after declarations
Date: Wed, 11 Mar 2015 04:35:05 +0200
Message-Id: <614b3e2eda27d2869a8db7b20ed43ade65302d34.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>

Place blank line after each declaration, to follow the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index d1e6004..f2c9f89 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -62,6 +62,7 @@ static char *g_option = NULL;
  * and immediatly unload driver frequently (dual)*/
 static inline void myspin_lock(spinlock_t *sl){
 	struct lynx_share *share;
+
 	share = container_of(sl,struct lynx_share,slock);
 	if(share->dual){
 		spin_lock(sl);
@@ -70,6 +71,7 @@ static inline void myspin_lock(spinlock_t *sl){
 
 static inline void myspin_unlock(spinlock_t *sl){
 	struct lynx_share *share;
+
 	share = container_of(sl,struct lynx_share,slock);
 	if(share->dual){
 		spin_unlock(sl);
@@ -161,6 +163,7 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
 	if(fbcursor->set & FB_CUR_SETCMAP){
 		/* get the 16bit color of kernel means */
 		u16 fg,bg;
+
 		fg = ((info->cmap.red[fbcursor->image.fg_color] & 0xf800))|
 				((info->cmap.green[fbcursor->image.fg_color] & 0xfc00) >> 5)|
 				((info->cmap.blue[fbcursor->image.fg_color] & 0xf800) >> 11);
@@ -708,6 +711,7 @@ static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
     if(info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
     {
         u32 val;
+
         if(var->bits_per_pixel == 16 ||
                 var->bits_per_pixel == 32 ||
                 var->bits_per_pixel == 24)
@@ -1247,6 +1251,7 @@ ALLOC_FB:
 		else
 		{
 			struct lynxfb_par *par;
+
 			pr_info("framebuffer #%d alloc okay\n",fbidx);
 			share->fbinfo[fbidx] = info[fbidx];
 			par = info[fbidx]->par;
@@ -1264,6 +1269,7 @@ ALLOC_FB:
 			/* register frame buffer*/
 			pr_info("Ready to register framebuffer #%d.\n",fbidx);
 			int errno = register_framebuffer(info[fbidx]);
+
 			if (errno < 0) {
 				pr_err("Failed to register fb_info #%d. err %d\n",fbidx, errno);
 				if(fbidx == 0)
-- 
1.9.1


