X-GM-THRID: 6392187075653795840
X-Received: by 10.46.71.15 with SMTP id u15mr394368lja.9.1488297031774;
        Tue, 28 Feb 2017 07:50:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.28.81 with SMTP id c78ls33586lfc.50.gmail; Tue, 28 Feb 2017
 07:50:30 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr393432ljd.26.1488297030264;
        Tue, 28 Feb 2017 07:50:30 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id y19si1236393wmd.0.2017.02.28.07.50.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 07:50:30 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m70so3059974wma.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 07:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jaegzoIyO5xQNgXcIEtLW4dboC5dlzr6PGyFt7iS/fs=;
        b=ofY0ty3NoZCg6U8oRaveunLhQMdPK2MKxTEnVTkU/Jv+t3y2nmWWss481iZKD6XZy0
         ETbvKciDEwZrH0s9jimpwdOT7H+9pImtF2Aee4h/ALvEWsZnvqn4VYDPWxC4DJuLj8VN
         j60TtMqPBS3tpoEwEMnjKZuR2n9PfC+mYx1YchCwngHqBjTdL+6MN/LD5flfHIpTlfRv
         GEXnH0VHThwHydsmzgTMqwHmtKIM1afK3jg/hBkuEIEZP4mkYn6AfwFZTGlMLJRt27w0
         zK2BXaDnSZ0lfK4T0Oc0t+y92beF95K4a6pbV9AjpT95JhWcpJGkQkc/V+Ea3Z89gzgG
         l49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jaegzoIyO5xQNgXcIEtLW4dboC5dlzr6PGyFt7iS/fs=;
        b=bacqfmULNPkGMnofE0zuZ+2YEFkEYaImiMA300AMItYOeJ0COrtC3NZljQfH6ZE9r8
         3LtmJBg5Q/4+6Z7vKgr3t35Zkkior0L0loYxi0sg4tP8Q4+sk7tw9k7zh2/iIaUH7+Jv
         PnkwcjEO6VDr3aOqqr9BSjGdrsfiDgCW/3jq9Yv8G61+XflKMLZ7u3c+1AF5IaCyLESX
         vpbaCJqWBZ7zPauJg4+4MDFVDquPoozaSka2W2AAzIVFYVh47la//QRIPNOaVBcVDiSp
         P4FVdDh+/nIOal7ErhHR78YCIbiWQTB9c3HzJoQIWrz4M9/u1jMz3Sbh65S8pPp0nYUC
         bsJQ==
X-Gm-Message-State: AMke39mzWsgLbC3ZXyoo0iiDNI/YM31G0C8s4ya8uQsfZ6oA0rQKWIAMddtWdiZAPvXqag==
X-Received: by 10.28.216.130 with SMTP id p124mr2993609wmg.58.1488297030028;
        Tue, 28 Feb 2017 07:50:30 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 65sm2835551wri.53.2017.02.28.07.50.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 07:50:28 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: fbtft: Merged two identical conditionals into one.
Date: Tue, 28 Feb 2017 17:50:06 +0200
Message-Id: <1488297006-9801-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Merged two if conditionals into a single one, since they had exactly
the same condition.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/fbtft/fbtft_device.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
index c164d0f..0d97473 100644
--- a/drivers/staging/fbtft/fbtft_device.c
+++ b/drivers/staging/fbtft/fbtft_device.c
@@ -1448,11 +1448,10 @@ static int __init fbtft_device_init(void)
 	if (fbtft_device_param_gpios[0].name[0])
 		gpio = fbtft_device_param_gpios;
 
-	if (verbose > 2)
+	if (verbose > 2) {
 		pr_spi_devices(); /* print list of registered SPI devices */
-
-	if (verbose > 2)
 		pr_p_devices(); /* print list of 'fb' platform devices */
+	}
 
 	pr_debug("name='%s', busnum=%d, cs=%d\n", name, busnum, cs);
 
-- 
1.9.1


