X-GM-THRID: 1721300418560
X-Received: by 10.152.4.229 with SMTP id n5mr256876lan.1.1424518318488;
        Sat, 21 Feb 2015 03:31:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls182399lac.76.gmail; Sat, 21 Feb
 2015 03:31:58 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr260317laa.2.1424518318133;
        Sat, 21 Feb 2015 03:31:58 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id el6si289121wib.2.2015.02.21.03.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:31:58 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so7917436wiv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MRKUcXIRzvDa+mmx3ik1PlvjgmWIwGa2X/dHCEWseIA=;
        b=UmP9lswaGwRrSbyIu0IY9cgo0miZTe7f907HNliy5TkKxYnoMKpEag2XuKN9tJRpGz
         ZSni/LiI9R6KMi9ICT83WqrUxhOMQ0OvLUD9LJotTMFkKgxJJ/kZgLzwcu8pAnaxfl/q
         Qd95jhyeZWTDnRpiSfyBiLxQDgIpWlX7kbYDc3fapjqu/FTxDXe68ulasJNlVNQmdyPW
         j/gQHOz5XOl6o47I0vCa6/YTMxtSM4axE7r0/rojAWl6EgCLX4W+Y3bA+XfRRCD8BkQ0
         EpyvIY/9/xt5owufKT7GdahEyktswPCk3zdu+E3wTKyt7ORXQQ2YRr6jk0+xumoEj1kw
         eEuQ==
X-Received: by 10.194.200.68 with SMTP id jq4mr4088937wjc.58.1424518318033;
        Sat, 21 Feb 2015 03:31:58 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([88.242.106.227])
        by mx.google.com with ESMTPSA id a1sm46261952wjs.40.2015.02.21.03.31.57
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 03:31:57 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: vt6656: replace memcpy by ether_addr_copy
Date: Sat, 21 Feb 2015 13:32:01 +0200
Message-Id: <1424518321-5700-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the following checkpatch.pl warning:

Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
__aligned(2)

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 2fbff90..27a1f98 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -319,7 +319,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 
 	/* get permanent network address */
 	memcpy(priv->permanent_net_addr, init_rsp->net_addr, 6);
-	memcpy(priv->current_net_addr, priv->permanent_net_addr, ETH_ALEN);
+	ether_addr_copy(priv->current_net_addr, priv->permanent_net_addr);
 
 	/* if exist SW network address, use it */
 	dev_dbg(&priv->usb->dev, "Network address = %pM\n",
-- 
1.8.3.2


