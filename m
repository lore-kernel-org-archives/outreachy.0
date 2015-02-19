X-GM-THRID: 694052454400
X-Received: by 10.112.168.104 with SMTP id zv8mr614612lbb.10.1424355912956;
        Thu, 19 Feb 2015 06:25:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.137 with SMTP id p9ls300232wic.42.gmail; Thu, 19 Feb
 2015 06:25:12 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr618180wjc.3.1424355912653;
        Thu, 19 Feb 2015 06:25:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i7si6420114wif.0.2015.02.19.06.25.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 06:25:12 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id r20so9548548wiv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 06:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=BYNmyg/aOWLUnFzvXzOkPa9n5odsgzbYYDTrUOfe8gc=;
        b=LetQkFTel0ywyAfXrvmY7rx+WhojzBOWtXbt0zhOBo8E4CAWe7SgxmrSv0+aeF8bc2
         QsjxykKbS8Adwz5VjNvx0jwgTr9uYjT3aGubbgIUVlzyfyOSIL/dwGPbatxBvoGnJisU
         bMLTZAKtvQhdM8s8UGTNDK9XU/Z/n7rpUZHNlxdEJGSbk7J8AEMWmJQu8qmFxoTJzBuO
         gRRyr5+hYnddjcP4TDqpfypxpKInxKyFNUOPBbXppgCwtd1x809INxxILHcEP8hZoDVq
         qUuMcucKp2WRDkc8+qCv1MJFvTM7rNrpTMjLsDDHLnpn7kl9brJKSJYpAGYnv0OznbTn
         6JxA==
X-Received: by 10.180.198.37 with SMTP id iz5mr10183646wic.95.1424355912533;
        Thu, 19 Feb 2015 06:25:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dj4sm37619767wjc.13.2015.02.19.06.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 06:25:11 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: drivers: dma: ste_dma40.c: fix checkpatch.pl error
Date: Thu, 19 Feb 2015 16:25:02 +0200
Message-Id: <1424355902-23419-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixed the codes indent style using tabs character.

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 15d4946..f410b5e 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -3744,8 +3744,8 @@ failure:
 }
 
 static const struct of_device_id d40_match[] = {
-        { .compatible = "stericsson,dma40", },
-        {}
+	{ .compatible = "stericsson,dma40", },
+	{}
 };
 
 static struct platform_driver d40_driver = {
-- 
1.9.1


