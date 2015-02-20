X-GM-THRID: 1371208155136
X-Received: by 10.152.6.232 with SMTP id e8mr1430849laa.2.1424451515907;
        Fri, 20 Feb 2015 08:58:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.170 with SMTP id q10ls141760wiz.25.canary; Fri, 20 Feb
 2015 08:58:34 -0800 (PST)
X-Received: by 10.180.104.101 with SMTP id gd5mr1869648wib.6.1424451514553;
        Fri, 20 Feb 2015 08:58:34 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id r6si142353wix.0.2015.02.20.08.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 08:58:34 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so1591441wib.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 08:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=l6Wru8mUgY0t3nSUMyjIBcgZtZkA/HpIRaxCa1NEGF4=;
        b=hlidmPkTLUXU9sqiKQO6NFlfooBSfDRGkgsW6jj1ackc9mVpe/OuvQ1oCa2/66prTp
         9s7aw39iVqNIUGYExglJ90K3r9ZLVZ+DHA8JKWOw0a1VGmuP7en9x7XNX3NfTF5Sb77D
         5wX06SZCmOGbDZSRSgM8o79/HZmBQdvliqwfie06AuD/4OrUY+qX0gJWaoI5Qh1lIL4q
         yG6mEeGti2u+KFkkfZ//FV1WE8ZzyI0j+uC4jE5BizxfvvlwP3qIOl7JnGckzGYfDyAb
         yiyfjuRDjbjGRcX+n6rZjHIOt2xPN+OXT3odWfleRkkEK2qyk0MkVz2urH6+G+j+QIsZ
         1Gwg==
X-Received: by 10.194.85.129 with SMTP id h1mr20834033wjz.147.1424451514401;
        Fri, 20 Feb 2015 08:58:34 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id a1sm42830270wjs.40.2015.02.20.08.58.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 08:58:33 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: drivers: usb: serial: ipw: Deleted space
Date: Fri, 20 Feb 2015 18:58:28 +0200
Message-Id: <1424451508-4127-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces in 263 line.
Used the checkpatch.pl.

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/usb/serial/ipw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/serial/ipw.c b/drivers/usb/serial/ipw.c
index 8b1cf18..150bca9 100644
--- a/drivers/usb/serial/ipw.c
+++ b/drivers/usb/serial/ipw.c
@@ -260,7 +260,7 @@ static void ipw_close(struct usb_serial_port *port)
 	dev_dbg(dev, "%s:sending purge\n", __func__);
 	result = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 			 IPW_SIO_PURGE, USB_TYPE_VENDOR |
-			 		USB_RECIP_INTERFACE | USB_DIR_OUT,
+					USB_RECIP_INTERFACE | USB_DIR_OUT,
 			 0x03,
 			 0,
 			 NULL,
-- 
1.9.1


