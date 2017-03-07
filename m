X-GM-THRID: 6394884347886829568
X-Received: by 10.28.105.80 with SMTP id e77mr88062wmc.23.1488925038246;
        Tue, 07 Mar 2017 14:17:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls206429ljd.8.gmail; Tue, 07 Mar 2017
 14:17:17 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr595473ljb.11.1488925037840;
        Tue, 07 Mar 2017 14:17:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id b186si1549205wme.1.2017.03.07.14.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:17:17 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so3260659wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CQXIpT+hPQpHtjFHZ331V+pv2idsr5livnB1dbYweNI=;
        b=brpz4z5lwwlo6c7rsJX5PX6e+C3ZLwNZ9fdM+5gHuDHWTXOPvar9YsQWTPnXh7BTI2
         ibnXdO++Zt+7u8DlEJUnQiUeXul6wML4taz583xya2yILBR+bwMfs8KxrJZMQ9Z2dNwW
         sJnEs+VqLaDrs4LQ5voFVGyJ2QSK0Zgg9i3h2f1hSkCiEiFHhdOQM7v/5gXGL7Sxazo4
         HHmd7ePO2kJxOssXkXdHOGTdBYPygA78FIh+TSpXPYU8gHubmgZOgdcYlqMCjZ+I0Nux
         IZnhT/3QEDtnuErNHHRxVXFBa4Rma6xx/hlg0+b4EwlYyIVFtePChcdQr4lUUj0gsZz2
         eQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CQXIpT+hPQpHtjFHZ331V+pv2idsr5livnB1dbYweNI=;
        b=tPrDK1KWNSAYdY/K+p8CgSJmVwdm0rQbG2zf3L5auDRbx0SfvZOBxeY0Nf5TDYv2F4
         QlRBiTkpxSwBoap9rRlKSgR59sFPp4UTETwrbIqroHSITRW/0lUnADs47hSrszs7rvZ3
         VGQ7lPUp5sp1CUl0bq/JrDdSkWLqQWMgE/D2Amxlo8XbBCs9FTZK3TBQYm2n/vNlXxqw
         npHj09ydbvFcIHpWP0XkoWvoZLWEKfOK927lVZoJL3WUwn7yAjLqIoZU0bn3tQTExRD1
         R+G/+XGzQnR150hMkb4SOFRcEVYgxRmf4ooErIaLStp5Ia+9nEzRoWuAjCQRck32JqxM
         EkYA==
X-Gm-Message-State: AMke39mlEjZ0HFLwO/4VyzfLvcdg3jFM+vvU2BqF4/Vf6vWHTmuWe1y7Ltm0U0JMFMkXsA==
X-Received: by 10.28.134.70 with SMTP id i67mr4937490wmd.124.1488925037649;
        Tue, 07 Mar 2017 14:17:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id s18sm20658023wmb.18.2017.03.07.14.17.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:17:16 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: speakup: wilc1000: Align the code
Date: Wed,  8 Mar 2017 00:17:09 +0200
Message-Id: <20170307221709.5489-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Deleted tabs and added spaces to align the code.

Fixed the checkpath.pl issue:
CHECK: Aligment should match open paranthesis.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 2eebc62..c65c5e8 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -870,12 +870,12 @@ static int wilc_mac_open(struct net_device *ndev)
 				if (memcmp(wl->vif[i ^ 1]->bssid,
 					   wl->vif[i ^ 1]->src_addr, 6))
 					wilc_set_wfi_drv_handler(vif,
-							 wilc_get_vif_idx(vif),
-							 0);
+								 wilc_get_vif_idx(vif),
+								 0);
 				else
 					wilc_set_wfi_drv_handler(vif,
-							 wilc_get_vif_idx(vif),
-							 1);
+								 wilc_get_vif_idx(vif),
+								 1);
 			}
 			wilc_set_operation_mode(vif, vif->iftype);
 
-- 
2.9.3


