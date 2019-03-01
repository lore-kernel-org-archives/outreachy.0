X-GM-THRID: 6663286701018841088
X-Received: by 2002:a17:902:7d8a:: with SMTP id a10mr1321669plm.10.1551437406444;
        Fri, 01 Mar 2019 02:50:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6b06:: with SMTP id g6ls3302576pgc.7.gmail; Fri, 01 Mar
 2019 02:50:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqzbr3sTgUZAffxPT4cVS8EB6UXSuxbtpqjyuKJ2nCzihlsc7LEIHUXDYNq5aUqAOu0uGmAi
X-Received: by 2002:a63:1e50:: with SMTP id p16mr1481892pgm.16.1551437405585;
        Fri, 01 Mar 2019 02:50:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551437405; cv=none;
        d=google.com; s=arc-20160816;
        b=qk7T5VG5gwe4ImGPSe9TOcxN8Y+ZWoxW5+WkWoTYMek2T/dvsqJGumn3gvgT02m/RT
         J67/OrkbaUeovjN+GfYmdSx5qCo0xZeAB2oQDNBDUrig+3UFAq1JuNN3chq5YLd+iYRc
         oDMp+PmAc6WJirc6Z9YZ9nKVsImDzqJ+HPAWf/rfV96H7ZB1vZyGqnSM3CEGEAbcl7Dr
         mbxJFjoJGLfLP14vh8nVAePKtmMP7+nUJAK+fyuiFqmce7Sp7MNwDWHcQlsu88UY8ypa
         GbX6ZI0FaiekpLKzB0GWsTXOgXHoxrsU6kvF1yg2ceveHeTkBPxM1l3O7b5KEaXR0RAI
         67RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4UrR/NzOrA+cWDIIqUxB/W/y/HeCdpPgLUfolIzFCS8=;
        b=YHaq8r8GJbYE5g+cISW0molC+YgtZA+8JY/KGxik1mMx8ndt058wqxkZ/vOQ+AJRwq
         WvJ7glO7UFPJMDNYMKcjop/3F9OhesjNGHG2uot2wUICPgvk5RohE+KqNiSOs6MTxM/s
         pNzrlu2C8wI1rqaOJ6Xn1brezj9vbjVvdoRMZHb0fqL3xkuU9DJTzDaTtUdlg/0HMKkk
         21p40mJbmyexlGVXvUBaXnQSrp9QFkTfrcsvnATMw4yA7uFXXYkXdNDlP3EiQ9c5XO1e
         yN+rEQ+Hus8rhG4Sayg6kYWiy5yfDNjLD5W1QiSB+0vfr7p2SnLAiEGO1LHsFFe84hS7
         ZjFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HbKzUrnZ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v132si856637pgb.3.2019.03.01.02.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:50:05 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HbKzUrnZ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i19so11273547pfd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 02:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4UrR/NzOrA+cWDIIqUxB/W/y/HeCdpPgLUfolIzFCS8=;
        b=HbKzUrnZJuCGtkluU+EnaYOekJWwrL0BRYmuHbWZH+5i1XMi2dXZuFDJFd6JRwNICu
         47wkmzrIe4GI2HgxKdfCCghsDRFwcltpKamSrqlMSQzK4Z7OuV1jLkOqakuO7NXeqKge
         jNBAuOuqCe9ngPOlJVu1U6No2tX4M/ea0pjmZ71SGAsn9yQIZ2P6XvaighIrT67RMMAc
         w3ot/XDb12hStJUvvZrF59pKmTV9N94qbwVur2LfIkyggfUnLnKnBy/BFEw21xFrTO5F
         8LgojlSSLwmFy4tMKE2Sed/ilTu1ImyFrmqtSV1JcwvBvacM4E7aGCC0KkeEhPXipk+R
         0jBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4UrR/NzOrA+cWDIIqUxB/W/y/HeCdpPgLUfolIzFCS8=;
        b=K4/KboAFGBWdc30d1JrfW0xGmQ5MMDJ8w0/mFjQO7KUol7fupt7MUmDEWVgAGNjLIu
         VO57RLVOULKthFpqSrLy83ikYCJjU1c/vLn2J2BupfumIeo8FolPW6GeqSQRa05Vyyoy
         jtdXzJDrEVG93cdbzaqI3MrSUI1T8M/gOn69lH1lm0LRdo1LG6L6VVtQsF3SWPBix6Gt
         082dHGGdZIL3slQ5YAb6ULLXhyZNmDpE/Pt2X0+pOKVFbRJPIIqWYCsDjrS28HuiZFRC
         vXlSwLvBAkM6aBsO3jPq5Lbgo1IpwFd8MtSVn+HeTYyQnMOPbHFM8rHs2V65ssCcrpL3
         gK4g==
X-Gm-Message-State: APjAAAUKmLXxjTO+8zqZz0keksr6cmKDiCIkZ1DrsnnxAp6zMhgyF/Hv
	xCvu3s4MBmdjaARrkq4oYbMi6sz8bI4=
X-Received: by 2002:a63:c948:: with SMTP id y8mr4252005pgg.263.1551437405209;
        Fri, 01 Mar 2019 02:50:05 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id f193sm40260232pgc.3.2019.03.01.02.50.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:50:04 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 3/3] staging: rtl8712: rename bSuspended to suspended
Date: Fri,  1 Mar 2019 16:18:42 +0530
Message-Id: <20190301104842.75482-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190301104842.75482-1-himadri18.07@gmail.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>
 <20190301104842.75482-1-himadri18.07@gmail.com>

Fix checkpatch warning: Avoid CamelCase by renaming struct variable
bSuspended to suspended.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change type to bool as the varibale is used as a boolean.
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


