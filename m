X-GM-THRID: 6806083506577342464
X-Received: by 2002:adf:ed0a:: with SMTP id a10mr7828570wro.198.1584664803513;
        Thu, 19 Mar 2020 17:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls2070071wme.3.gmail; Thu, 19
 Mar 2020 17:40:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv/tcudcr6TatcWGufl8HP4G7yr96XFvLfUlu0I7sMmaoxohKAIvpdXVvBBDoZGaMKAGCTt
X-Received: by 2002:a1c:998b:: with SMTP id b133mr6693358wme.130.1584664802188;
        Thu, 19 Mar 2020 17:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584664802; cv=none;
        d=google.com; s=arc-20160816;
        b=x2rJquGX/TRTWiEYV/RizRJMivVdqj/6+8MxJ3UOm2abHjEx6YW7RA5kYlxB1euU9Q
         JypDCstn/BKnDxKyrh8Gb+D1Ku3oawf4BJYH3V6jxTEI2AZy4H+xr6PNK6x0PFFrTTjb
         4mvBRQ1LQ2LHb3OdYZ7kEqpeqd1z8eCvKfX3Cgm3iiV7iIc+XmZ2HaUluB3N1E9IL5AC
         CXiwT/yoS/26vmEI+xsM0aMkoKyIn/3K0rrYmCRJLlk0/dng+zrDvDt6mH6dUMglONqz
         fIkmLmH4LCTVk2ltitQCPP6NvgJPsnw5Qa+/ofuGKDmL/E8JchzMyO+mmA1htxmDkWz7
         j35Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7k5jHg/ojcIAZpfUZaM7CODOEsDq4yGvLxmxkmK2kp4=;
        b=KTy3YQ3xyq3RkxdvxGZLaYboydODjjjyUi5V61BKiNO+plZIw//baFEXBfDYD96cFI
         nUDKFTaahrHqie0Rxo/mOzaZtDRT8qsMguSWiuB1T5WD5vwhJL5LyATmwAcKGUkIxuLr
         7nlTJKaPPT+gWMx2grAT036ZZbRxr6VxKU/mYVyoAdAkiEyyW12SCJ7SIlTkhkys3Uqy
         xyMQSUAs92uAykWSuaCWxk3kdxuHBuCkqIBUkvO4x7BMmv97ISJeN7LUYAIbuqYGZOW8
         C07i5Xhs4VgVS8gvc3TQmtCyRsGdC2G1EPfMxd8UqceZviH1Pk2U65QpHH+ikzPBvwlZ
         6tUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=lNIABsp8;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q205si226286wme.4.2020.03.19.17.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 17:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=lNIABsp8;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x344.google.com with SMTP id 26so1816073wmk.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 17:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=7k5jHg/ojcIAZpfUZaM7CODOEsDq4yGvLxmxkmK2kp4=;
        b=lNIABsp8ztYdpcdbJLIj0J/UPiD+LpU7y+u3m4aIFJfYOxcbVWn4RPauk50bhs/QgS
         Pw8eESHRh6/ibUN8rc/0dze7PsDwUskmUpQ55vjE//ujjByt1flvOApBa/a+sr1joThe
         LF2MO2jnw81GPNN6eI9cx2WfMTfNm+6PynzbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7k5jHg/ojcIAZpfUZaM7CODOEsDq4yGvLxmxkmK2kp4=;
        b=RvubxwRacOfUFd6r31hwZtN2DCd5+WiZWUJ6eGj5DXk8qPa3hIyN15y1BQk3KLNxB3
         eLVMRlIYBN+eOf4CfxU4PbhOoSZY+XtD9WAu8CH6FS0PcPZpomSSBNHR+BiZMByLOYlK
         zF9ewYAlEkG2DMHQLB/t5QCYmJr7IGgF8VD1IsvxF7ToJsQiYUiV/emcskHtTkNZXpyr
         lvwBdXdoRB0YiK9xuA32vz3pNJtu7siQ+RbyyTFKh50AgZBGNZ19srTE/J+ksJCKRZM6
         zO9CgP9gC1BNNCRSsjjvUJou0jpUn+jruDlwC7D1CbYs5x4qh/uqeOpTJuT6MVbr1+vP
         xSww==
X-Gm-Message-State: ANhLgQ3LEHggjwclrAIaSW7ua/IJmqXqBI3wVOxV8iWEWMyOCkvfMl/q
	xl3yCZxypIYTLgWOuB6XoaekYKXrd3o=
X-Received: by 2002:a1c:f00a:: with SMTP id a10mr1154096wmb.102.1584664801539;
        Thu, 19 Mar 2020 17:40:01 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id n9sm5569084wmi.23.2020.03.19.17.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 17:40:01 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH] staging: gdm724x: use netdev_err() instead of pr_err()
Date: Fri, 20 Mar 2020 01:39:47 +0100
Message-Id: <20200320003947.31726-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

use netdev_err() which is a message printing function specific for network
devices instead of pr_err(), in function netlink_send().

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/gdm724x/gdm_lte.c   | 2 +-
 drivers/staging/gdm724x/netlink_k.c | 7 ++++---
 drivers/staging/gdm724x/netlink_k.h | 3 ++-
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index db11498f6fc7..354727f0a1fc 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -513,7 +513,7 @@ static int gdm_lte_event_send(struct net_device *dev, char *buf, int len)
 
 	length = gdm_dev16_to_cpu(phy_dev->get_endian(phy_dev->priv_dev),
 				  hci->len) + HCI_HEADER_SIZE;
-	return netlink_send(lte_event.sock, idx, 0, buf, length);
+	return netlink_send(lte_event.sock, idx, 0, buf, length, dev);
 }
 
 static void gdm_lte_event_rcv(struct net_device *dev, u16 type,
diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
index 92440c3f055b..7902e52a699b 100644
--- a/drivers/staging/gdm724x/netlink_k.c
+++ b/drivers/staging/gdm724x/netlink_k.c
@@ -89,7 +89,8 @@ struct sock *netlink_init(int unit,
 	return sock;
 }
 
-int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
+int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len,
+		 struct net_device *dev)
 {
 	static u32 seq;
 	struct sk_buff *skb = NULL;
@@ -118,8 +119,8 @@ int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
 		return len;
 
 	if (ret != -ESRCH)
-		pr_err("nl broadcast g=%d, t=%d, l=%d, r=%d\n",
-		       group, type, len, ret);
+		netdev_err(dev, "nl broadcast g=%d, t=%d, l=%d, r=%d\n",
+			   group, type, len, ret);
 	else if (netlink_has_listeners(sock, group + 1))
 		return -EAGAIN;
 
diff --git a/drivers/staging/gdm724x/netlink_k.h b/drivers/staging/gdm724x/netlink_k.h
index c9e1d3b2d54f..d42eea9bea3e 100644
--- a/drivers/staging/gdm724x/netlink_k.h
+++ b/drivers/staging/gdm724x/netlink_k.h
@@ -10,6 +10,7 @@
 struct sock *netlink_init(int unit,
 			  void (*cb)(struct net_device *dev,
 				     u16 type, void *msg, int len));
-int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len);
+int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len,
+		 struct net_device *dev);
 
 #endif /* _NETLINK_K_H_ */
-- 
2.17.1


