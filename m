X-GM-THRID: 6664112359271825408
X-Received: by 2002:a24:43d0:: with SMTP id s199mr8595335itb.17.1551609577373;
        Sun, 03 Mar 2019 02:39:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3810901ita.0.canary-gmail; Sun,
 03 Mar 2019 02:39:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqxhYO2iClsfS9HQ3HuR4caqe6EZHWSZnYSViGCxl0pY39s1XtfuIj3VlqRH7uhY+p3mR2X1
X-Received: by 2002:a24:334a:: with SMTP id k71mr8332262itk.14.1551609576854;
        Sun, 03 Mar 2019 02:39:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551609576; cv=none;
        d=google.com; s=arc-20160816;
        b=FHX93Ih6yeqn2TY8MHkPtolp2lCNnHnTcZyFjN9LgH5J3G+/LGoIeV8jT5hO3MW1RS
         GOBbvlkL0sZZaLvFlOIx6EAfITnmzEOnhqClXuN1/MJATEt2YKbUBgQouKrNMI/M2ZUk
         31dMpClcOTAjlCU+cp8w1916jxYHsIEdyqg4talz9a3ovjHjCLPuUinE4S4yl1IQ+7rT
         QVL0h4JHBNDaBolNZiQ9wQUiPIsOLexfAZIgaTvBfZpr7dny4/ugr+eGH7Mjx8ghpZmC
         o9+Y4TNd18KNl7f5zubbY4Xmyeu+73Kb0NBz1S/2t0lpoSZN03THWaSfH6iAHg2XQ5Wc
         BNnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wOfewSGRR5cy2UEwnfuBmyieDBB93lVzdQFtf6/knAk=;
        b=YEGxgGC7lf2IIXxFq0Xi7hGiCC3B2o7WbreytNzEQCDQ1zigDqaDOuFKUjUETMhHAB
         pnUPb5LYxy5RMdTmYW4Mmky/M780hOlLuvGILroJpY3qZMI4NYufK+gpmVuhMzdk5+bZ
         JGnyZYSw6ph4eHHIfPyLCcTLyyqaj5/seXB+gJB+a68V2cC8c6vODGzXgv5DFwwow0L0
         y1aRi4XTat18kIH6OOxDbl4luaoX5hKpDM1zePeWtkWvSkBSNX2B71skcgPNZaGN6+M5
         3Q5a+aAfZn31gbHgSSFp2i+VAlEgzmyXM8kaAIr5Ss9rGxIC2qkBwfHOTSX/4mBTLyLQ
         JHYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDwS9Leo;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j6si230664itb.0.2019.03.03.02.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:39:36 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDwS9Leo;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id y5so1119636plk.8
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 02:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wOfewSGRR5cy2UEwnfuBmyieDBB93lVzdQFtf6/knAk=;
        b=DDwS9LeoWG7Z+phX/btlysj5kYS4XRnJuKQ49ihQIECEB/gAEfwDqh2SgHITPxKX30
         WtJZA+SGLkkRmJ1NiitcHWxn37kOmkUSKvDN+Vp/fhApSZAJ/lACzlt7upCvJ68Mw+iw
         XshepcJbzYMGXH68xIotrdoTiR+xqceTBRxtK8BPOrm+V1lvNPIt6l9fUD+GSpf0xyBI
         UC1JNn5ZWjUMSC67N3epOn9wfAHo/cCX3mp8Tr9c3ge7VQrF0ETLPGvuhSO9BUu40aSk
         hgb2z9wuzQf2TOVFckYAtLhp8OmFAiOU1WjvUGXdppzOpiGPLAtQ9oVQfye0Jq45mQdL
         7izw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wOfewSGRR5cy2UEwnfuBmyieDBB93lVzdQFtf6/knAk=;
        b=mD2SP8y59JH7sJuQjEaVRXtmrFrvCLhhGLTpy1onQu8WBkXNaXlN8/nJoR1i144pvD
         Ce4C8IznXTqYUg7198wCK1XfGMyUsLLnV5lXcLyRUyGeLd8flFIJ4M6/xR/PjuW8mYyW
         xbhfERBKEICvdS3w+nEyPYaNaaTaZ7APfy1fyk8mXNFQifiSbTNcxM6Q9sJTxACLFY3z
         zJrlqYc2V/GKwP0XEdLu2hfAPgOR70XnzaOj5O48AlOInf51BA+EzstLRT6xfxFEddTI
         CRLfBHecjmy/gGhMQVemhCARpOMBRyWcHmB3Pu55enK3O362Ws1a1yMhmMLrJDaVm2wH
         3oNQ==
X-Gm-Message-State: APjAAAUTi3JanL4S9XLe0ViqklIfEOpTrT6u7IfUupK844nBzBcbn+7/
	TDNggcjOSh9Jro/sCQTKmw4=
X-Received: by 2002:a17:902:b10f:: with SMTP id q15mr15098435plr.202.1551609576186;
        Sun, 03 Mar 2019 02:39:36 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id v6sm23675pgs.71.2019.03.03.02.39.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:39:35 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 3/3] staging: rtl8712: rename bSuspended to suspended
Date: Sun,  3 Mar 2019 16:09:15 +0530
Message-Id: <20190303103915.2684-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190303103915.2684-1-himadri18.07@gmail.com>
References: <20190303103915.2684-1-himadri18.07@gmail.com>

 - Rename structure field bSuspended to suspended to avoid camelcase.
Suggested by checkpatch.
 - Change type to bool as the variable is used as a boolean.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Include the type change in changelog text
	- Change the log message to make it more concise and informative
---
 drivers/staging/rtl8712/drv_types.h     | 2 +-
 drivers/staging/rtl8712/usb_intf.c      | 4 ++--
 drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index acee68d3d152..9ae86631fa8b 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -147,7 +147,7 @@ struct _adapter {
 	struct mp_priv  mppriv;
 	bool	driver_stopped;
 	bool	surprise_removed;
-	s32	bSuspended;
+	bool	suspended;
 	u32	IsrContent;
 	u32	ImrContent;
 	u8	EepromAddressSize;
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 674c31155cdd..7478bbd3de78 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -196,7 +196,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
 	struct _adapter *padapter = netdev_priv(pnetdev);
 
 	netdev_info(pnetdev, "Suspending...\n");
-	padapter->bSuspended = true;
+	padapter->suspended = true;
 	rtl871x_intf_stop(padapter);
 	if (pnetdev->netdev_ops->ndo_stop)
 		pnetdev->netdev_ops->ndo_stop(pnetdev);
@@ -220,7 +220,7 @@ static int r871x_resume(struct usb_interface *pusb_intf)
 	netif_device_attach(pnetdev);
 	if (pnetdev->netdev_ops->ndo_open)
 		pnetdev->netdev_ops->ndo_open(pnetdev);
-	padapter->bSuspended = false;
+	padapter->suspended = false;
 	rtl871x_intf_resume(padapter);
 	return 0;
 }
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 8df308df35c6..9d290bc2fdb7 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -221,7 +221,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 			padapter->driver_stopped = true;
 			break;
 		case -ENOENT:
-			if (!padapter->bSuspended) {
+			if (!padapter->suspended) {
 				padapter->driver_stopped = true;
 				break;
 			}
-- 
2.17.1


