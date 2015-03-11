X-GM-THRID: 7583885688832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1710fc2133602604
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr5104533lah.8.1426041338167;
        Tue, 10 Mar 2015 19:35:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.97 with SMTP id it1ls105378lac.1.gmail; Tue, 10 Mar
 2015 19:35:37 -0700 (PDT)
X-Received: by 10.112.242.7 with SMTP id wm7mr2297921lbc.1.1426041337735;
        Tue, 10 Mar 2015 19:35:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id i8si200733wif.1.2015.03.10.19.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesp10 with SMTP id p10so5937839wes.11
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=7T1bEwz5YeACYj0thS8wXFZx8mK/SNDVtJ/DIQZFSiY=;
        b=mdkomTzaPXgbQdkXUuOk0mHFhVO8SHdevuYg25I08QnV+UzQFoSTSZBxr9Z1tYDtrK
         dzmBci9MXwbN1l7ZaxjAHL+BFzcXD8Wy90iEADRvgnA0oJEJR5qRVv2BvI7MMj5/VEzQ
         XKELbDbqYl+IXcHViGb5IMLd44cE2OJOrWfSy0XBkXn7teEBlLigWYQwvArLid2Q7sjL
         E38UMXRU+dPowOsm38lrwV0IRD8SGYaUJsfZjU/Jce6Heaudkqja9o+s0QlmztOTm6fa
         afYuBbNyrlFMoV/SEy/aE0ZfobEWPSeraN6PdlhGmv9xQIvCnMdgaYr7ZK24+zFhGcJj
         4SPg==
X-Received: by 10.181.8.75 with SMTP id di11mr118618806wid.26.1426041337650;
        Tue, 10 Mar 2015 19:35:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:36 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 6/7] staging: sm750: Indent conditional statement
Date: Wed, 11 Mar 2015 04:35:09 +0200
Message-Id: <6efddd67c1984031b87c495880c7903d66680557.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>

Indent the conditional statement in the proper way.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index d34ae13..770b51c 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1074,25 +1074,25 @@ static void sm750fb_setup(struct lynx_share *share,char *src)
 		pr_err("src=%s\n",src);
 
 		if(!strncmp(opt,"swap",strlen("swap")))
-		swap = 1;
+			swap = 1;
 		else if(!strncmp(opt,"nocrt",strlen("nocrt")))
-		spec_share->state.nocrt = 1;
+			spec_share->state.nocrt = 1;
 		else if(!strncmp(opt,"36bit",strlen("36bit")))
-		spec_share->state.pnltype = sm750_doubleTFT;
+			spec_share->state.pnltype = sm750_doubleTFT;
 		else if(!strncmp(opt,"18bit",strlen("18bit")))
-		spec_share->state.pnltype = sm750_dualTFT;
+			spec_share->state.pnltype = sm750_dualTFT;
 		else if(!strncmp(opt,"24bit",strlen("24bit")))
-		spec_share->state.pnltype = sm750_24TFT;
+			spec_share->state.pnltype = sm750_24TFT;
 #ifdef CAP_EXPANSION
 		else if(!strncmp(opt,"exp:",strlen("exp:")))
-		exp_res = opt + strlen("exp:");
+			exp_res = opt + strlen("exp:");
 #endif
 		else if(!strncmp(opt,"nohwc0",strlen("nohwc0")))
-		g_hwcursor &= ~0x1;
+			g_hwcursor &= ~0x1;
 		else if(!strncmp(opt,"nohwc1",strlen("nohwc1")))
-		g_hwcursor &= ~0x2;
+			g_hwcursor &= ~0x2;
 		else if(!strncmp(opt,"nohwc",strlen("nohwc")))
-		g_hwcursor = 0;
+			g_hwcursor = 0;
 		else {
 			if(!g_fbmode[0]){
 				g_fbmode[0] = opt;
-- 
1.9.1


