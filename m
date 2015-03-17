X-GM-THRID: 8708200333312
X-Received: by 10.112.202.227 with SMTP id kl3mr2990352lbc.2.1426570664201;
        Mon, 16 Mar 2015 22:37:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.13 with SMTP id j13ls772721wie.51.canary; Mon, 16 Mar
 2015 22:37:43 -0700 (PDT)
X-Received: by 10.180.87.166 with SMTP id az6mr146931wib.1.1426570663908;
        Mon, 16 Mar 2015 22:37:43 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id gj20si44106wic.1.2015.03.16.22.37.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:37:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id g7so54344101wib.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 22:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TeF2vjqv1l/wGjU9JXfBl5wjxeoezt/Qxx0Zvl9cad0=;
        b=pR4/WaZ384mGIye/PomJQnbZY2herAJwdMNjY7JxTilepIRlCGnZdJhWCt8snvHfsh
         Bk5HU2gbVJlMeJtoh1R6mq4JASS9CcG4DupXW4VRWwxygGQ+8biWnWwwoUPRzcZp9EJv
         eXERC0LK10Comnc6xRsolM6F2hhyBf15ubVeLPBz3mXEmtMrotksWkIq/xvikepJvaUc
         L+1fO3pomiPr+3ermNQEz6KBjkASsxRw2Z/1SKgSNUBSjFeDnORRMI3/DvaaF4NFfP5+
         SgA5d3wf7h+//8b957aA41sJFXj4ISW+85xWjRkxCflkSNaFg6O3w4sS4fnTj6XmHqIM
         eEbw==
X-Received: by 10.194.110.38 with SMTP id hx6mr126786146wjb.128.1426570663846;
        Mon, 16 Mar 2015 22:37:43 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id lj13sm1083347wic.9.2015.03.16.22.37.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:37:43 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id A56DEC1F80; Tue, 17 Mar 2015 08:37:37 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 4/4] Staging: ft1000: replace pr_err with dev_err
Date: Tue, 17 Mar 2015 08:37:36 +0300
Message-Id: <1426570656-22498-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace pr_err with dev_err, when appropriate device
structure is found.

Issue found using the following Coccinelle script:

@r exists@
identifier f, s, i;
position p;
@@

f(...,struct s *i,...) {
<+...
when != i == NULL
pr_err@p(...);
...+>
}

@rr@
identifier r.s, fld;
@@

struct s {
	...
	struct device *fld;
	...
};

@@
identifier r.i, rr.fld;
position r.p;
@@
-pr_err@p
+dev_err
   (
+ i->fld,
...)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/ft1000/ft1000-usb/ft1000_usb.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c b/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c
index a6b55f4..3b303b6 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c
@@ -136,7 +136,7 @@ static int ft1000_probe(struct usb_interface *interface,
 
 	ret = request_firmware(&dsp_fw, "ft3000.img", &dev->dev);
 	if (ret < 0) {
-		pr_err("Error request_firmware()\n");
+		dev_err(interface->usb_dev, "Error request_firmware()\n");
 		goto err_fw;
 	}
 
@@ -164,7 +164,8 @@ static int ft1000_probe(struct usb_interface *interface,
 	pr_debug("pft1000info=%p\n", pft1000info);
 	ret = dsp_reload(ft1000dev);
 	if (ret) {
-		pr_err("Problem with DSP image loading\n");
+		dev_err(interface->usb_dev,
+			"Problem with DSP image loading\n");
 		goto err_load;
 	}
 
-- 
1.9.1


