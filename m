X-GM-THRID: 6758181371904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f603dc428f6faf02
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.201 with SMTP id eg9mr2238742wic.3.1425584551962;
        Thu, 05 Mar 2015 11:42:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.69 with SMTP id kw5ls124715lac.86.gmail; Thu, 05 Mar
 2015 11:42:31 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr1734274lbc.1.1425584551506;
        Thu, 05 Mar 2015 11:42:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id l8si1404602wia.0.2015.03.05.11.42.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:42:31 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so5424131wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 11:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=r4kaGIBNbr1XcBOQ3BtEicxFp+yDkl8AOzX2drQ5850=;
        b=aly2nJkAAgJAOYE/MDhbbfwqAvsHQZ1HRppARggaVYw3cYoKGDauLroKMURsrifWoN
         tLVD0Dd3SucvtMGN5O/gezpQD29379pIzmD4b62lAdPodMZE8DerJ1bTBqW5aznpXSUm
         ejzfnu/19i15Z16qo/xCZ4FUE6ZgLeOQOFCOujPIQ6qThn2CJrnRik3xfUeaZkEICZ0E
         GDbUCYWzlyUFwalyQbgIS5COpHfKR24ZX5KSztBL53xl/QBBgEcajYrQvAo/1KcT+L/k
         Y7tF1NzOll0YqoTUdeoztFg+3Guc46mpOI1oalfsDvAgCdEflt1qXpCqgsGqKrVs2zLB
         uT2Q==
X-Received: by 10.180.206.83 with SMTP id lm19mr26105937wic.41.1425584551380;
        Thu, 05 Mar 2015 11:42:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id bf8sm10207336wjb.37.2015.03.05.11.42.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:42:29 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 619C462672; Thu,  5 Mar 2015 22:42:39 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 6/7] Staging: gdm72xx: Clean dev_err() logging
Date: Thu,  5 Mar 2015 22:42:38 +0300
Message-Id: <1425584558-28392-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@git rebae -i
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
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/gdm72xx/gdm_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_usb.c b/drivers/staging/gdm72xx/gdm_usb.c
index eac2f34..5ca5f81 100644
--- a/drivers/staging/gdm72xx/gdm_usb.c
+++ b/drivers/staging/gdm72xx/gdm_usb.c
@@ -301,7 +301,7 @@ static int gdm_usb_send(void *priv_dev, void *data, int len,
 #endif /* CONFIG_WIMAX_GDM72XX_K_MODE */
 
 	if (!udev->usbdev) {
-		dev_err(&usbdev->dev, "%s: No such device\n", __func__);
+		dev_err(&usbdev->dev, "No such device\n");
 		return -ENODEV;
 	}
 
@@ -470,7 +470,7 @@ static int gdm_usb_receive(void *priv_dev,
 	unsigned long flags;
 
 	if (!udev->usbdev) {
-		dev_err(&usbdev->dev, "%s: No such device\n", __func__);
+		dev_err(&usbdev->dev, "No such device\n");
 		return -ENODEV;
 	}
 
-- 
1.9.1


