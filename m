X-GM-THRID: 6201725617113661440
X-Received: by 10.129.39.87 with SMTP id n84mr21515575ywn.4.1443951767218;
        Sun, 04 Oct 2015 02:42:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.204 with SMTP id s12ls937668igr.25.canary; Sun, 04 Oct
 2015 02:42:46 -0700 (PDT)
X-Received: by 10.68.222.104 with SMTP id ql8mr10529716pbc.9.1443951766775;
        Sun, 04 Oct 2015 02:42:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si3037043pbb.2.2015.10.04.02.42.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 02:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lk4so146359963pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 02:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9wQJzj3k7gdzCZOweJIrRpYCbJy5x4AteV2wFIF/KzU=;
        b=UABloxYmSP9f9nXXTJ3Auf9VIOwHnd9JXK+2K+UwXVSXs9AJTWi5v8MqJYO140rg1O
         Jjk61NYCQFhvKGupsUrarE90Q4Rvz7XsayB4tVjQ/jqz3FKnaD30JzpglpkxJXUBqtYE
         wba7B6imBXPxu0RhRi4+j+Rk34jwhv5Quv2fX8Hq91JPiqtZhC8qAWW74HDQ1j9BqjK2
         8M7oaKs+HV7W6JhG8NQV3tuygxV/8Vpi2EJLpvJt52Jewh1Fn7ouip3s9NTKm1tTQRmI
         yVRKaHQ0a7nbAME3xh89jG6WEHYzWtsVM2fZ6zkoqDIl9ahx0eA68+fY54VxjwxK3BGQ
         UbNQ==
X-Received: by 10.66.66.167 with SMTP id g7mr31527655pat.152.1443951766617;
        Sun, 04 Oct 2015 02:42:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.240.135])
        by smtp.gmail.com with ESMTPSA id pc8sm21316487pbc.27.2015.10.04.02.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 02:42:46 -0700 (PDT)
Date: Sun, 4 Oct 2015 15:12:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: Remove space before paranthesis
Message-ID: <20151004094242.GA4089@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space before paranthesis ')'. Problem found using
checkpatch.pl
ERROR: space prohibited before that close parenthesis ')'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        - Correct the commit message

 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 1683b3d..665238c 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -268,7 +268,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
 #endif
 
 
-	if (pInitParam->powerMode != 0 )
+	if (pInitParam->powerMode != 0)
 		pInitParam->powerMode = 0;
 	setPowerMode(pInitParam->powerMode);
 
-- 
1.9.1


