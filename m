X-GM-THRID: 6758181371904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f603dc428f6faf02
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.222.131 with SMTP id qm3mr1795053lbc.1.1425592490043;
        Thu, 05 Mar 2015 13:54:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.36 with SMTP id b4ls4180lae.46.gmail; Thu, 05 Mar 2015
 13:54:49 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1846941lai.4.1425592489489;
        Thu, 05 Mar 2015 13:54:49 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id r6si676312wix.0.2015.03.05.13.54.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:54:49 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id hm9so18794799wib.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Xvu0AKqGYaMAadMfad7eN6KVTHkXUVRrSca7LK0ZC10=;
        b=YieKEtMk/bpDrO0wd+EpnVf7QIsuPOpRQ6dl8JEQy1DY8Ra+7KBkWcNIWra89hDKJP
         69gAtcLvKtjaLs/GynrMI4vdTA9Q2rBHT5OZppffgUO0xZqOhg/mvo5ahdjP5if81gCY
         JbPuuYHksK5MGPRkvwdtVJjFseelKI7Tu6UYiv1u3LM8f03eMfZHIH3jemcXZOJSgjK9
         sM6+SJ7CRvjTuEWdsTOJxXfs/2Nlp7ApmPvaZ2u2KhM4r5dMnq2mekrhuXU4tGJ6piFx
         zl6ACd2v1D7WAcs742CJ3ne/numVHgoEqj7vQS4uOENF0FrFr4O6+142ZIkAN9CiI28j
         i+Sg==
X-Received: by 10.180.207.237 with SMTP id lz13mr26736058wic.15.1425592489376;
        Thu, 05 Mar 2015 13:54:49 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id l6sm9951986wjx.33.2015.03.05.13.54.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:54:48 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id EAB6F62672; Fri,  6 Mar 2015 00:54:45 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 6/7] Staging: gdm72xx: Clean dev_err() logging
Date: Fri,  6 Mar 2015 00:52:38 +0300
Message-Id: <1425592358-29839-1-git-send-email-hamohammed.sa@gmail.com>
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


