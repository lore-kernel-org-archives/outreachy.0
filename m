X-GM-THRID: 6950918029312
X-Received: by 10.112.35.135 with SMTP id h7mr2510254lbj.23.1425668590205;
        Fri, 06 Mar 2015 11:03:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.226 with SMTP id t2ls110443laj.42.gmail; Fri, 06 Mar
 2015 11:03:09 -0800 (PST)
X-Received: by 10.152.29.97 with SMTP id j1mr2539984lah.3.1425668589718;
        Fri, 06 Mar 2015 11:03:09 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id l8si241046wia.0.2015.03.06.11.03.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:03:09 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so7969464wes.3
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NLra6KrIsGsZ0jcMefjE1OR9fat8pyn+eGjqOZjXEYw=;
        b=cHzEPiPaWkZaG40wWXhWkaEHAM1yCKzAkvja4iPvi6NLggxztwCWUuQKXBW6S+HLfw
         UPHHLcnfOTjS0MDx1K7zvpnanS5z+jcd0G0l14KLpDn8uCA4y+7YNVme+iSfRvafGY9z
         sWaBGPHgZivYFZAz29Ys/VaWcPmnpN2XO0FC3rOIgOWHUx26xVhxGs7cbJdt5RlwoRNx
         V79OY4/N4ZTlfW8W0gwNrPtrCT7MZTv78Dqv3atz1yfcGk5hLZ+9XQekWskph/+MFKq+
         dDe1Q8/gCT46i+WzJnQZn+1xfl1TJOIx5H0/9fIwzuHThYx8bHP0sjCIxx4aUVJOnzob
         3QKQ==
X-Received: by 10.194.177.195 with SMTP id cs3mr31306338wjc.141.1425668589594;
        Fri, 06 Mar 2015 11:03:09 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id pa4sm16152989wjb.11.2015.03.06.11.03.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:03:08 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 08CAB62672; Fri,  6 Mar 2015 22:03:06 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 5/8] Staging: rts5208: clean dev_err logging
Date: Fri,  6 Mar 2015 22:03:05 +0300
Message-Id: <1425668585-27475-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index c74f1b8..7f2c0c3 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -137,8 +137,8 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 
 	/* check for state-transition errors */
 	if (chip->srb != NULL) {
-		dev_err(&dev->pci->dev, "Error in %s: chip->srb = %p\n",
-			__func__, chip->srb);
+		dev_err(&dev->pci->dev, "Error: chip->srb = %p\n",
+			chip->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
 	}
 
-- 
1.9.1


