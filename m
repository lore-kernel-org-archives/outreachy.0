X-GM-THRID: 1450652467200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,162f25e773223d22,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr38561wik.5.1424458715742;
        Fri, 20 Feb 2015 10:58:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls292463laa.66.gmail; Fri, 20 Feb
 2015 10:58:35 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1497338lai.4.1424458715223;
        Fri, 20 Feb 2015 10:58:35 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id r6si173890wix.0.2015.02.20.10.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:58:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f177.google.com with SMTP id bs8so4950856wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IHFshLID6V41dc8MlgpqxUF+ipcIZ1wGAp5whQdrd2s=;
        b=psLiFNrUovmHmeA4tZtfOURQBsArF2V/2m28HQAQr78YvyaTKI0x6BmQwvXYK1etUD
         8BlchsCOVl2eM7i21qmV5SIAMGZBUavGq9bpAJmdEX/D0oWhsC9eUYdsLnq6VlvfQOnL
         gFJ0atCVGPuEFT63dqbfH2AUASGaXLlb3iQpKjYtO09PfT6tSEWnCM0wN124EaDeXk96
         L7OJkCi9nD1lBqP2EY/JXLC2s9hgR2q7aWxdLl1kkKwXFbxoY2HORI1FPcUwhAf24IxX
         Z/50HR2FjLTiRDyFSW/XWSzzQhWl4K3MazMqXHmXjwiCuK76fs+/Ne/a1ioXvS2KFwb1
         Qo7A==
X-Received: by 10.180.82.129 with SMTP id i1mr436847wiy.1.1424458715107;
        Fri, 20 Feb 2015 10:58:35 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([81.214.238.226])
        by mx.google.com with ESMTPSA id hm6sm43277951wjb.32.2015.02.20.10.58.33
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 10:58:33 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH] staging: rtl8712: Add blank line
Date: Fri, 20 Feb 2015 20:58:23 +0200
Message-Id: <1424458703-6100-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

WARNING: "Missing a blank line after declarations"
That was found by running checkpatch.

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index e62543d..a775f8d 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -129,6 +129,7 @@ struct dvobj_priv {
 	struct _adapter *padapter;
 	u32 nr_endpoint;
 	u8   ishighspeed;
+
 	uint (*inirp_init)(struct _adapter *adapter);
 	uint (*inirp_deinit)(struct _adapter *adapter);
 	struct usb_device *pusbdev;
@@ -166,6 +167,7 @@ struct _adapter {
 	 pid_t evtThread;
 	struct task_struct *xmitThread;
 	pid_t recvThread;
+
 	uint (*dvobj_init)(struct _adapter *adapter);
 	void (*dvobj_deinit)(struct _adapter *adapter);
 	struct net_device *pnetdev;
-- 
2.1.0


