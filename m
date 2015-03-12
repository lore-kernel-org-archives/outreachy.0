X-GM-THRID: 7714883239936
X-Received: by 10.112.9.65 with SMTP id x1mr6775419lba.16.1426190357887;
        Thu, 12 Mar 2015 12:59:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.9.144 with SMTP id z16ls14571wia.32.canary; Thu, 12 Mar
 2015 12:59:17 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr6676099wjb.6.1426190357557;
        Thu, 12 Mar 2015 12:59:17 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id bz6si977599wib.3.2015.03.12.12.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id l61so18808040wev.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Pnma2PUSbf0uffRZsb8uufe7yKR4lqbQFcxx8eHByh0=;
        b=uT0O7fwZUXT3EHIOoXwL5wf2iD+pXbCiZrPy4pGpRdsYESsgGzydf2f/WCtoTlRROz
         H2ekXbjz7W4BqAoASFUqBtdVsc16jhxn3L8YhEAtvfKnS6ijj4P2lR3eMEz4UM33TcPW
         rhdSYY/EkmiUeUSXCpydyBJzkZSdjFbM59agUFmD7IseyGHmfH/MFCx8oJsM/Ko3m3Vi
         I/YQpPTb99cCvQfTAJlSR1arvsLN02ZXYMzzGtaX5OyqNgExeJsVEDmxL6pnCmZ84wnU
         QeOeQDIRcZAo4cBAUyfjbU4qACeHyuv/8qQBsEQbX0JUXyo6HGTcg3hp+GsXn7xQtBfm
         ShHg==
X-Received: by 10.180.207.6 with SMTP id ls6mr136426087wic.13.1426190357488;
        Thu, 12 Mar 2015 12:59:17 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:15 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 5/9] staging: sm750: Place open bracket '{' on the next line
Date: Thu, 12 Mar 2015 21:58:49 +0200
Message-Id: <73002c755cfd51cb124daf7f26ea81b686429f5a.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

Move open curly bracket on next line after the definition of a function, to follow
the Linux coding style. Also, remove the space before semicolon.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
	- Add to the patch description relevant information

 drivers/staging/sm750fb/sm750.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 6ac572c..f6083c4 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -60,7 +60,8 @@ static char *g_option = NULL;
 
 /* if not use spin_lock, system will die if user load driver
  * and immediatly unload driver frequently (dual)*/
-static inline void myspin_lock(spinlock_t *sl) {
+static inline void myspin_lock(spinlock_t *sl)
+{
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
@@ -68,7 +69,8 @@ static inline void myspin_lock(spinlock_t *sl) {
 		spin_lock(sl);
 }
 
-static inline void myspin_unlock(spinlock_t *sl) {
+static inline void myspin_unlock(spinlock_t *sl)
+{
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
@@ -419,7 +421,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0;
+		var->blue.offset = 0 ;
 		var->blue.length = 8;
 		fix->visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -640,7 +642,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0;
+		var->blue.offset = 0 ;
 		var->blue.length = 8;
 		info->fix.visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -772,7 +774,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
 	output->clear = hw_sm750_output_clear;
 	/* chip specific phase */
-	share->accel.de_wait = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
+	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
 	switch (spec_share->state.dataflow) {
 	case sm750_simul_pri:
 		output->paths = sm750_pnc;
@@ -1408,7 +1410,7 @@ static struct pci_driver lynxfb_driver = {
 
 static int __init lynxfb_init(void)
 {
-	char *option;
+	char *option ;
 	int ret;
 
 #ifdef MODULE
-- 
1.9.1


