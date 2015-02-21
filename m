X-GM-THRID: 2171028373504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cb269f3f13ac50bf,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.198 with SMTP id dy6mr462949lbc.22.1424552472925;
        Sat, 21 Feb 2015 13:01:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.132 with SMTP id q4ls101872laj.26.gmail; Sat, 21 Feb
 2015 13:01:12 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr441132lbc.0.1424552472679;
        Sat, 21 Feb 2015 13:01:12 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id ta1si372914wic.1.2015.02.21.13.01.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id x3so11423773wes.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 13:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TZKG3/CWRu4k4fq/yXeNCTvD0yDdRIHzSUV0Lepr2bY=;
        b=jCX8Puzov7vo6fF7LKzpQZkQczwC799BDXAVGrvBK9SK9J5MCiF7Try3xCYPZmOhsd
         H7vcgW8nIJSQBsucjJL5lxJUHqOU0+D6lmGB5JACwwhAh7HEoEKodziNkeqxa5EfAg3h
         72+0AjFd+9imaLFlKmQ426UgJ2LaR2f3iDVAwmj8PirDFBzgjzgY+Dv1URIXv76nBwhU
         xWN12ct+9U0A+Ltb+Se5vYAiM7PuPMpNW55ryOje/50rFcjmTX5CPkxQG2VPV7OGpBYw
         TOrw/ulh+hRiiRgOQK6phg7ucoVB6RDgZ0I9yGMGNmktYol6dwg/Feq1N73IpV4lp1+H
         oedA==
X-Received: by 10.181.13.39 with SMTP id ev7mr7003076wid.3.1424552472608;
        Sat, 21 Feb 2015 13:01:12 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id hi6sm48133084wjc.34.2015.02.21.13.01.11
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:01:12 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Fixed else after return or break warning
Date: Sat, 21 Feb 2015 23:01:16 +0200
Message-Id: <1424552476-6232-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
drivers/staging/emxx_udc/emxx_udc.c warning: else is not generally useful
after a break or return

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 0351728..36aca56 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1491,8 +1491,7 @@ static int _nbu2ss_get_ep_stall(struct nbu2ss_udc *udc, u8 ep_adrs)
 
 	if ((data & bit_data) == 0)
 		return 0;
-	else
-		return 1;
+	return 1;
 }
 
 /*-------------------------------------------------------------------------*/
-- 
1.8.3.2


