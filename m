X-GM-THRID: 5595816001536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,283d475c7b646f20,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr3384462lbb.13.1425244700133;
        Sun, 01 Mar 2015 13:18:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.38 with SMTP id xt6ls333114lac.102.gmail; Sun, 01 Mar
 2015 13:18:19 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr3277459lbc.3.1425244699597;
        Sun, 01 Mar 2015 13:18:19 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id i7si548113wif.0.2015.03.01.13.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:18:19 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id h11so10752479wiw.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=F3uPqivxnNsZut8urnYTK12MD4ffVEM2MY3sTMm+Pdo=;
        b=MOKYulH9+MEnDfwbX1nsTfSWfKf8CZw9fvJG4o64J7+M66llL7XuwOBSKkRCGQvWZw
         JC2MB/gUufG3DrbLMfZNIYN5BXDjDA7ehtflsFE0cfwnj+hFXnazbKWOg2HERcUKdcR/
         S0FztDVDOprP09banzwOM7RD4EcTV/vcKiOI6ocSffMN8bUvQyWDf5L81QmECiBbAkta
         kLNFJuKAPGe+HaD2L9nDYBxoT3SoK3URSEab2QqfxuFt3MYJXNjJu2MITC8Zic0Ji6K+
         LjB8PMAdPFM82g2lJrornlJ0VxiqGfZPYwW4WwziNGOwpg/KJTsk28vd7Utmj4bSo8JD
         iEig==
X-Received: by 10.194.172.35 with SMTP id az3mr53042398wjc.43.1425244699490;
        Sun, 01 Mar 2015 13:18:19 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id k1sm16351608wjn.9.2015.03.01.13.18.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:18:18 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 7A0596339E; Mon,  2 Mar 2015 00:18:14 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Remove argument test from function
Date: Mon,  2 Mar 2015 00:18:13 +0300
Message-Id: <1425244693-8713-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes the test statement for an argument to  _nbu2ss_pullup function,
for it can't be null due to previous derefrences when its called.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 0bfd268..b2a89a6 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2257,11 +2257,6 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
 {
 	u32	reg_dt;
 
-	if (!udc) {
-		pr_err("udc: %s, bad param\n", __func__);
-		return -EINVAL;
-	}
-
 	if (udc->vbus_active == 0)
 		return -ESHUTDOWN;
 
-- 
1.9.1


