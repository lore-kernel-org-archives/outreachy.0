X-GM-THRID: 6664084258635644928
X-Received: by 2002:a1f:2e11:: with SMTP id u17mr9106012vku.22.1551603037079;
        Sun, 03 Mar 2019 00:50:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e895:: with SMTP id x21ls2893787vsn.1.gmail; Sun, 03 Mar
 2019 00:50:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqzngJqQPT3rMDJNtR0/FUrYaqYwgfborjKS7/4D/36RwZOER7BAZkowKH0V1eQ7ofjl/sN2
X-Received: by 2002:a67:e10c:: with SMTP id d12mr8846243vsl.22.1551603036394;
        Sun, 03 Mar 2019 00:50:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551603036; cv=none;
        d=google.com; s=arc-20160816;
        b=gvNXjSxsMDsyxEQ28+AxPIn06W6Ht3F/9HAYW2lnXPsxVw433RtEFignYOmryZMkKv
         ubTIF50dZwYrTJK44kZ7Ar0KKXnI8ojYoimrNvW9S69HknWT3Tp0Zq/NK52AwJAFSJ7k
         h2L3Yq3e72uzUk0KPhr+UJ4+/6jDk9LMIdvkQW6fEYUvzgJzwyRzEqx3HlschVAag3L/
         DuZawnMEDhaEB4I5DpwPGEVM9q8moF6QWA/hRjq2H1pF1A4p4vEfpeSNJoETXOnLAsG/
         RVQx/RGNtpw2MTDbZJZ/9X7OifYCiRpQ0WINxNAAmCeBHAvjkCIEk8S7FjDw1C7jLk3H
         2nRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uuQAP0uI0Z5pr0ZGiKcNuRJBLSaW4BrXfcHahuYNb8I=;
        b=Av6VQSzCqnVH/EZpotVeTwuCRHKs+HC1MEGIbA+ppIkmzKhM/1Sqj0yeu0wM8iyBim
         u735mTy3LZwsNObQbQ+uWrPAaFu7Zmf1BpzXki9GWLZi8qGWqsmcoyKzuje342D0pnZn
         cJU3+fS/2XlvDlJoosh2rTSRJVQ0uoTc43ZTIwHM7ZRRtYqQW/hR/U0zP90a8Og0aACp
         tztkW940LgLIAeQKyBqht9abLaEEt7JvSYCIoLDCKj5j4FN1Uvz0kfDDYyxVUHmT+Int
         q8nITO30y9Fz4JEFQFzztObum4YWvsRVSG4DrFv6s23lWDegZL/s1mRhS8+2jtE3Fwtf
         KosA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iYBrmYjy;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q85si140087vke.5.2019.03.03.00.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:50:36 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iYBrmYjy;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h11so1072543pgl.0
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 00:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uuQAP0uI0Z5pr0ZGiKcNuRJBLSaW4BrXfcHahuYNb8I=;
        b=iYBrmYjyiGBt35JPA0X+27NJDsUhVXz4pDKD/3apEAWapBJTUpNaRWI173RqY7iyk3
         b3O8mB9UQDQo5pBvkKqG9qcLB/9WIx+iauP+LM3Tq7PH/JKK67hn5u9w3aKY25Ohu46R
         L/9zIQn5V5ze7Nh+5G8hICNqthjZhZAS1DslFZOogGecHUdhT+g7lrc09oqP+Z27+ZFt
         OsRth1Mc3I6pysEjpIMvU7/AFmgFeOqft8JU9sufU22FDEeEu++WeIbrPjsdBhFfAPJ3
         uotUI/SEK9vlm+AOsE6SCh8ZyY4b2WtdjXSPyVAj/2v3CoTHuo4dF5bG4CvXXkJELWKp
         ttZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uuQAP0uI0Z5pr0ZGiKcNuRJBLSaW4BrXfcHahuYNb8I=;
        b=EvOPeZj6DbRo1oYDPwow/JJTs0BDaqeGlCrVrkaeyJSwwjGz3auI+Er9JYzgCLO2kK
         lmCxYLy05RkIFB7jtxyixZ9b4WN8BtnBwm657vJ22O6NYMw5rOVvKVcWk+Muh1eKMXKP
         dkckXqY0jFodCX4NdQjvucvHfZBX8RSW88NskO9V0gmgfATTAp2pwbzkZTu/GCjkhSYg
         jGXJX4S0nGlcNBqtGJetynibkbY4cceHhxSzKUP1pIQy4RRlZ+HAlIh+rIyn00NE3At5
         YErvelxEo6HVgiFm+bmN+C3Q4GFK00sz3NKHRz6A0F6n5DQxh5BlqdCc/mWYCPwfzwsh
         7Ldw==
X-Gm-Message-State: APjAAAWhNfJwu1O9NHUtQn1PfHKBxOMdI7MFVY6GsHW9sHYVDffQ0Vqa
	L5jQ2GBowpASke53xVvj5XQ=
X-Received: by 2002:a63:1845:: with SMTP id 5mr13444756pgy.108.1551603035402;
        Sun, 03 Mar 2019 00:50:35 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id b65sm5883263pfm.127.2019.03.03.00.50.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:50:34 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 3/3] staging: rtl8712: rename bSuspended to suspended
Date: Sun,  3 Mar 2019 14:20:13 +0530
Message-Id: <20190303085013.3491-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190303085013.3491-1-himadri18.07@gmail.com>
References: <20190303085013.3491-1-himadri18.07@gmail.com>

Rename structure field bSuspended to suspended to avoid camelcase.
Suggested by checkpatch.

Changes in V2:
        - Change type to bool as the varibale is used as a boolean.

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


