X-GM-THRID: 6758181371904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f603dc428f6faf02
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr5001005wia.7.1425592184184;
        Thu, 05 Mar 2015 13:49:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.70 with SMTP id h6ls2270laa.78.gmail; Thu, 05 Mar 2015
 13:49:43 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr1834899lax.10.1425592183719;
        Thu, 05 Mar 2015 13:49:43 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id bg8si357658wib.3.2015.03.05.13.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:49:43 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id em10so41751621wid.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VhxlN6DVOo5cbpnixVEDAhSmZGHZwCG3zNxrBXct9mI=;
        b=a/zuyxLcH5v2IOhO1UGxixWZzccic5YmS+7V6tVMlEml0NSQ3G4Q/3H9IXWVZb2jz6
         SLP7385mvmJv3MEr3VoDIlZVSalYzMOW4DvhlRsqnm1D3LrLtxTKCZD1HjQ8kaVCXlKe
         tMP8vC3hodBuYFNqZK1RPv25A0d8e81RNSYWjPzpFRnr3ZkgjLwnWigoCVQb7dcHdBx+
         pSnBVEOPxcrmbrtYqfQH7FgItdi80AUDIksinD/AA3KeiQbs0aRrhj1jSKFyGlv73pVr
         1IJ2YOn0VCnZzMtApkoXiz4s2aTo5e8ZBUYIItz7ZrBRGR+9ns6fH6+eq0eDfbk3W7r6
         /EJA==
X-Received: by 10.180.96.168 with SMTP id dt8mr71062776wib.82.1425592183614;
        Thu, 05 Mar 2015 13:49:43 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id u6sm13367620wix.12.2015.03.05.13.49.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:49:41 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 3E06962672; Fri,  6 Mar 2015 00:49:39 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 4/7] Staging: octeon-usb: Clean dev_err() logging
Date: Fri,  6 Mar 2015 00:48:33 +0300
Message-Id: <1425592113-29734-1-git-send-email-hamohammed.sa@gmail.com>
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


