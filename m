X-GM-THRID: 1022972919808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,af8b4c5ca6ab5cb3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.160.3 with SMTP id xg3mr1273799lbb.5.1424439374373;
        Fri, 20 Feb 2015 05:36:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls98377wib.37.canary; Fri, 20 Feb
 2015 05:36:14 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr1276575wjc.3.1424439373956;
        Fri, 20 Feb 2015 05:36:13 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id o3si101231wib.2.2015.02.20.05.36.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 05:36:13 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id a1so13193837wgh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=O+KLn9coucWc0OgubR+OIrl4x8uRywH70x346L6zwTA=;
        b=DWpVn2r6FrxB8GDVn8+VaO72weOmSfi2JCxbTnpLtYismXqUwY+CV1nghVSh9+cw8z
         gE2go209s/rbDTTN5DzaR2sQ4uKF/3vuReJkTu4+ioa/WFeACAtpP4awGqHWKchwnc+a
         VqhiNud3BctiEQO6yL4HIaH9iAmul51wQUcxXhPfnR+vNjpuXXTQF85/eS2qxmwSTCU2
         aiOKPCNJJH7EjvmQHSUbRl6AWfFwOjHYN7tA9V/xUsQW5qIy9RZio2q67X54pQKQU7Gq
         MrRzndey3brI6oMSBy0N05cxAcoiiIlTIR6TN6UxuxdbK4JB3G3Rcg3xooBUVinC4V8u
         pfGQ==
X-Received: by 10.194.2.43 with SMTP id 11mr19256478wjr.104.1424439373856;
        Fri, 20 Feb 2015 05:36:13 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id qb8sm36014117wjc.4.2015.02.20.05.36.11
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 05:36:13 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2 2/2] Staging: lustre: lnet: klnds: o2iblnd: Deleted space prohibited between function name and open parenthesis
Date: Fri, 20 Feb 2015 15:35:30 +0200
Message-Id: <1424439330-7371-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: space prohibited between function name and open parenthesis '('
checkpatch.pl warning in o2iblnd_modparams.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
index 8036d8b..eedf01a 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
@@ -177,7 +177,7 @@ kib_tunables_t kiblnd_tunables = {
 };
 
 int
-kiblnd_tunables_init (void)
+kiblnd_tunables_init(void)
 {
 	if (kiblnd_translate_mtu(*kiblnd_tunables.kib_ib_mtu) < 0) {
 		CERROR("Invalid ib_mtu %d, expected 256/512/1024/2048/4096\n",
-- 
1.8.3.2


