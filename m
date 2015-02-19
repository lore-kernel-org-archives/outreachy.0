X-GM-THRID: 904211202048
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5bccb709d5743bad,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.174.36 with SMTP id bp4mr813527lbc.15.1424376661799;
        Thu, 19 Feb 2015 12:11:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.10 with SMTP id s10ls208760lal.81.gmail; Thu, 19 Feb
 2015 12:11:01 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr825849lae.7.1424376661347;
        Thu, 19 Feb 2015 12:11:01 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ta1si6479720wic.1.2015.02.19.12.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:11:01 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id l18so9393756wgh.7
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=ZShbzaDyklnYb+FWu5jHdLHd1D4zZYJLyBFwOMjDXFs=;
        b=iWZqd6MMUd+idcuoHTRVG8VTyH1uU8KO/C1fqSxg4VYTRqGb+a8mMkUnm/jmCheF4v
         cKGsj7rLAD7yEvot/DQNSR4Ra+m6AUI+/btDwqc6FxX4NWvDKnA0P+4KUUcIMWpzBD9s
         r71qBG94uIJsIYaECHdzdjarqz1qMC8bxnGlJ8brKx8VLLMYqPFlMOIQLj7BcuFTNgFE
         SswpWA6cnb+DAysaoOgwWi70MsGM7zwFVdsMAvO+IltpaxvzHOlbSqaGNcS7jmNaivKx
         xiQmL61gA4BAN40nuQK3fJ7jZ6Eb2/I0j0G1P08wUEwtGWGBGKjlvm92NiC1xHbk/RtD
         fHRg==
X-Received: by 10.194.205.138 with SMTP id lg10mr12111635wjc.130.1424376659790;
        Thu, 19 Feb 2015 12:10:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id qo10sm38844964wjc.38.2015.02.19.12.10.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 12:10:59 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: drivers: dma: ste_dma40.c: fixed space before the open parenthesis '('
Date: Thu, 19 Feb 2015 22:10:52 +0200
Message-Id: <1424376652-29726-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixed space before the open parenthesis '('.

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index f410b5e..08b63f2 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -3551,7 +3551,7 @@ static int __init d40_probe(struct platform_device *pdev)
 
 	if (!plat_data) {
 		if (np) {
-			if(d40_of_probe(pdev, np)) {
+			if (d40_of_probe(pdev, np)) {
 				ret = -ENOMEM;
 				goto failure;
 			}
-- 
1.9.1


