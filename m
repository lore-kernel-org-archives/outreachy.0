X-GM-THRID: 6950918029312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4f1aeb5db514fe54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.166 with SMTP id dx6mr266225lbc.17.1425668446624;
        Fri, 06 Mar 2015 11:00:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.10 with SMTP id s10ls109750lal.81.gmail; Fri, 06 Mar
 2015 11:00:46 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr2608692lbb.13.1425668446160;
        Fri, 06 Mar 2015 11:00:46 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id gj20si212787wic.1.2015.03.06.11.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:00:46 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id z12so24867132wgg.9
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Q9sD/4tP8+XasviOMDp3BZwETIEyOkR9OGyGPfN24SQ=;
        b=C8/zSSku3H7/gN667UETWOc3moD9VgMAL8otwSTuiC01yWFZR/UtWDU8U4iXg1SUrn
         AowBaPz9fgqJKd82qX7KRlBdscYQnpqcM1yea7AGdo140ZOrUCspgAfC4wvSTWIrPi4H
         AfjgrhY6TEZnJsRdw1GlT2VXZDVJ0JLycTTfPl/omwGn6DXgfYihO5vHQ9Nh0ecEWQ2r
         cLr8AXt+G3IgkkRBl2oAk/a48CJtu0WoUJXfJ0b0YSbHF2dD1FMrvOd8V4U6aI5kMxKD
         2PTSBfEcwTme+ChsqN4XVbI/dYpShhaNmbDHGhv6p8E+z4emC7M6/0gZCpdm9BBxFWPO
         913Q==
X-Received: by 10.180.19.9 with SMTP id a9mr35973953wie.85.1425668446041;
        Fri, 06 Mar 2015 11:00:46 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id vh8sm16143725wjc.12.2015.03.06.11.00.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:00:45 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 42DBE62672; Fri,  6 Mar 2015 22:00:43 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/8] Staging: gdm72xx: clean dev_err logging
Date: Fri,  6 Mar 2015 22:00:42 +0300
Message-Id: <1425668442-27374-1-git-send-email-hamohammed.sa@gmail.com>
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
 drivers/staging/gdm72xx/gdm_sdio.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_sdio.c b/drivers/staging/gdm72xx/gdm_sdio.c
index 7a0a0f2..a5fd079 100644
--- a/drivers/staging/gdm72xx/gdm_sdio.c
+++ b/drivers/staging/gdm72xx/gdm_sdio.c
@@ -223,8 +223,7 @@ static void send_sdio_pkt(struct sdio_func *func, u8 *data, int len)
 		if (ret < 0) {
 			if (ret != -ENOMEDIUM)
 				dev_err(&func->dev,
-					"gdmwms: %s error: ret = %d\n",
-					__func__, ret);
+					"gdmwms:  error: ret = %d\n", ret);
 			goto end_io;
 		}
 	}
@@ -237,8 +236,7 @@ static void send_sdio_pkt(struct sdio_func *func, u8 *data, int len)
 		if (ret < 0) {
 			if (ret != -ENOMEDIUM)
 				dev_err(&func->dev,
-					"gdmwms: %s error: ret = %d\n",
-					__func__, ret);
+					"gdmwms:  error: ret = %d\n", ret);
 			goto end_io;
 		}
 	}
-- 
1.9.1


