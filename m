X-GM-THRID: 6758181371904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f603dc428f6faf02
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr1787367wjc.5.1425584281911;
        Thu, 05 Mar 2015 11:38:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.130 with SMTP id fw2ls18994wib.20.gmail; Thu, 05 Mar
 2015 11:38:01 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr4940451wia.7.1425584281591;
        Thu, 05 Mar 2015 11:38:01 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i7si1430966wif.0.2015.03.05.11.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:38:01 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id r20so9350406wiv.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 11:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jPeOfSCBNNEFM7HYl3KRoSx0FuCw2wLbUHmYktyrqE8=;
        b=Z1zFBlOCJvMKMuVOMPlvgnoHZ+tONYe/8uvicWTFuAtuyS0SXrocKfVgg5nkW7E6mx
         yANcSjzoqlVBOWrDyV7Fy6xkv79U7sbuI5mHJ//yhkQKnyLSJlGzM4SgGORGmhJ5HHe8
         il2EeliWGo1OYkw3BA0ube/1zLUgDkWla3qD2enJC0nwF73R0I7jib8sFCBGypC2evN7
         Gj4uLjWYS+8Gq9+akw6raKqXfdDliUyui3ZpY01rsKd6cQEDa6pPKgWDxhpcw2b9W2ff
         UTiWf/dp+r3YlTjAGOPiDLB/DosU+phw0bl4LDvCMjjhyfLJZUa47Wjh64//W28QhUBL
         2dFA==
X-Received: by 10.194.82.226 with SMTP id l2mr22236641wjy.11.1425584281488;
        Thu, 05 Mar 2015 11:38:01 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id j5sm31061257wie.3.2015.03.05.11.37.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:38:00 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 4FEF162672; Thu,  5 Mar 2015 22:38:10 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 4/7] Staging: octeon-usb: Clean dev_err() logging
Date: Thu,  5 Mar 2015 22:38:09 +0300
Message-Id: <1425584289-28270-1-git-send-email-hamohammed.sa@gmail.com>
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
 drivers/staging/octeon-usb/octeon-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 1daeb31..e892de2 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -1531,7 +1531,7 @@ static void __cvmx_usb_start_channel_control(struct cvmx_usb_state *usb,
 	switch (transaction->stage) {
 	case CVMX_USB_STAGE_NON_CONTROL:
 	case CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE:
-		dev_err(dev, "%s: ERROR - Non control stage\n", __func__);
+		dev_err(dev, "ERROR - Non control stage\n");
 		break;
 	case CVMX_USB_STAGE_SETUP:
 		usbc_hctsiz.s.pid = 3; /* Setup */
-- 
1.9.1


