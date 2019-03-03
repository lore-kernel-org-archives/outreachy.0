X-GM-THRID: 6664084258635644928
X-Received: by 2002:a9d:1b26:: with SMTP id l35mr8314753otl.59.1551607774691;
        Sun, 03 Mar 2019 02:09:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:114f:: with SMTP id x15ls6458066otq.3.gmail; Sun,
 03 Mar 2019 02:09:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/3xB5EesBnNqip2YKbQ+9YnDddDhuG2ExWOoLpPG2tQ50d9dGDqzRQ+CKVvuoR9jnxGPs
X-Received: by 2002:a9d:590f:: with SMTP id t15mr8247520oth.7.1551607773915;
        Sun, 03 Mar 2019 02:09:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551607773; cv=none;
        d=google.com; s=arc-20160816;
        b=coX1IlHoYVhXvV/SPIqLXiSzWTkg6OiZFNLHs3sntCng2Rzy3fmr+5iNRq8O6ArUHc
         aDK7hInpEt9kDLlQL7XKnQlw2KAMrRMffkW90AQ576ridXUtzXOHDQp3kmDaLhz+Crxp
         +mFT/PUoqdhIZvlWipFGWEjlF5Lg2qJZxGtv2uXtmq8ZG9emOZAEP1j9O888ktZ1DmK6
         U+gz2GeLYD5D1Xc9aOqAn+ToSWM810Be8XyryZ//RB2jDUu+32pA6H58aRznznMpTyDt
         898IEgoQpCP1lY6RPBCy6nHm1EvxRGurFHzzaxXt2pInqkUKyr/ByFlvVxA9uh/zQbTO
         QTzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zOdqpPTw3eKfkvEdLutP3uPgObAjqRWbHteH7lSjOy4=;
        b=Mr/khIbdZ3fEt06EjZ9P6nW3wy9TmSZEfteS7ZocANQJgcL+Hk3YrGZn8kHrEU8YQA
         qyGYWoCSq93ZbMWuMQOVL/2zt/tfSNSnNDQ2WyanAGJoxqpfnFHcYsdMQslO7Qvvw4sJ
         0kpZKvwnHWL1XwhtPZV9SAKQPyUepuQEMsN/11rIS6XrPKHKIDc5QjP2HLdPWd8t9tSj
         M4mUqo/Q1ZC8uEZBxh8zo+LHhRz9alOLEl1lzyvrP6dtyCGVrF5a0T8JJpWD7xm3KarV
         QBVBexD66DuUbl0P26p6Bh8Kx++jwPLUZmp2dWQ/wRjVfZt2cd3bGVEXH3q+CYNPvCOU
         upeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brS8dvey;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x31si238507otb.1.2019.03.03.02.09.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:09:33 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brS8dvey;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id p19so1113330plo.2
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 02:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zOdqpPTw3eKfkvEdLutP3uPgObAjqRWbHteH7lSjOy4=;
        b=brS8dveyHLqixebbDbCk3zDH15BOMLQgymNTb01dN8c5pPbfwEflGJoAx2vUS8vNnl
         LUXvH66xeUnzJhDA0xBtqszXizFroo+5V0oYRIgcjzD6UinT5Vv4w+i+IddKdEEyFpYs
         Pv86QFnc0hLiHMQkYI+cG4Ke+MU/XdiB6IheagsF1yEA8wxORaFDJGcb9wBgdirz4N59
         XGTMSeWGMlXGRz0RVYoKSKOX6+BwTzjzE5OSfH7XlH54jDxWW5bl+3eGUxx6zdmmQONw
         HMZlrY00SYESHSZaM+4DUgHyeJXGQv37ozfJfDhAMVXnW0uobI4pOjiWZhdmxnZvwRcu
         9d0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zOdqpPTw3eKfkvEdLutP3uPgObAjqRWbHteH7lSjOy4=;
        b=KEP481UIIaS4PgLJxnJC6W7Od5QYeyHoGGPtF+pzME7AD1j3fFBdchDG6L4Z+8CFEx
         pDKNiWMok5BJ5DULEaG66+kI/7h2NSSvDsUXLBwGXq/yNcQuYwJbGF3K9oHeSDzArS9A
         AUjLiwB69gV5493wRVi2UJpKJt7mbOiyP2i2rmykBHBctCPy08siJoxpcArKTI0Cqmh3
         E8URFn9gdWL8hsMNC/Tecz2ASnCI6mfRhKCJsad0up1cy5FVaDWBnMhlFxW7ZwE9srjh
         xnssrFvVcf9gz+oKS1S808yo+Ovk591fcI+7SeWvKuKw6E2up9O1uHxygP/F+dY2+pvB
         ui3Q==
X-Gm-Message-State: APjAAAWzGxJZFk/M4LEDV2VD0f3I2IXRIBMROdmNHrSrzvP2skPkxV38
	qVfb09dgerHRyJc9FoTQ9fI=
X-Received: by 2002:a17:902:9341:: with SMTP id g1mr14823960plp.80.1551607772855;
        Sun, 03 Mar 2019 02:09:32 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id r28sm6877467pgl.72.2019.03.03.02.09.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:09:32 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 3/3] staging: rtl8712: rename bSuspended to suspended
Date: Sun,  3 Mar 2019 15:38:59 +0530
Message-Id: <20190303100859.4945-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190303085013.3491-4-himadri18.07@gmail.com>
References: <20190303085013.3491-4-himadri18.07@gmail.com>

Rename structure field bSuspended to suspended to avoid camelcase.
Suggested by checkpatch.

Changes in V2:
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


