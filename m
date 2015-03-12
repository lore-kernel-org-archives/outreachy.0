X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr9082952wib.5.1426123431395;
        Wed, 11 Mar 2015 18:23:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.71 with SMTP id fi7ls1095756wic.28.canary; Wed, 11 Mar
 2015 18:23:51 -0700 (PDT)
X-Received: by 10.180.87.166 with SMTP id az6mr861199wib.1.1426123431139;
        Wed, 11 Mar 2015 18:23:51 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bz6si782769wib.3.2015.03.11.18.23.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id em10so16361562wid.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=DGRUgYEBY77lJihl4RWuKPe+Lu9hLHLKSpHmyUyKSj0=;
        b=kuyNxgn7/wwNJ/nd2Po5GSqZbQecZ8//Bxq5HJ53FJ4jjohI0/3RgJkw3/oFS7QOja
         nXL7Sg2n23pesjHqBV/vs8jC3qBDP4WKabYULNBOMlFbJYk8w8j8586dLo40uzUU9Hxy
         AfF1Xmk2M+8wk8nkERva4BG13UlGsiUhoR60vtIFetefdlRCgkJVbGOhcy/o7wRIA/1c
         d3R5+z9moSXKe7blcGT3JkhS7JRl5d/b7Hp0rQlwx6jSRR9ukeXISUrscsN6wxKXoXcg
         nOo3sE1EUadNqp7i1/gf36cNnOvP6Bn6Zk0Y9CHFSedl6F5zHniPDhwCB2Jp96cj08CU
         349Q==
X-Received: by 10.194.75.168 with SMTP id d8mr83614925wjw.87.1426123431079;
        Wed, 11 Mar 2015 18:23:51 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:49 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 9/9] staging: sm750: Add space before and after '=', ':' etc
Date: Thu, 12 Mar 2015 03:23:14 +0200
Message-Id: <4b3b31362eee75a1c82c29e6ca359ca85b4d540c.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Add space before and after '=', ':', '!=' etc in order to improve readability.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index ffc977b..75d505a 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -766,7 +766,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
 	output->clear = hw_sm750_output_clear;
 	/* chip specific phase */
-	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
+	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait : hw_sm750_deWait;
 	switch (spec_share->state.dataflow) {
 	case sm750_simul_pri:
 		output->paths = sm750_pnc;
@@ -816,7 +816,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	return ret;
 }
 
-static struct fb_ops lynxfb_ops={
+static struct fb_ops lynxfb_ops = {
 	.owner = THIS_MODULE,
 	.fb_check_var =  lynxfb_ops_check_var,
 	.fb_set_par = lynxfb_ops_set_par,
@@ -1350,7 +1350,7 @@ static int __init lynxfb_setup(char *options)
 		strsep() updates @options to pointer after the first found token
 		it also returns the pointer ahead the token.
 		*/
-	while ((opt = strsep(&options, ":"))!=NULL) {
+	while ((opt = strsep(&options, ":")) != NULL) {
 		/* options that mean for any lynx chips are configured here */
 		if (!strncmp(opt, "noaccel", strlen("noaccel")))
 			g_noaccel = 1;
-- 
1.9.1


