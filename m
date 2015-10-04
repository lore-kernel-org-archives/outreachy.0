X-GM-THRID: 6201888067640360960
X-Received: by 10.194.59.166 with SMTP id a6mr4550394wjr.6.1443989707282;
        Sun, 04 Oct 2015 13:15:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.68 with SMTP id d65ls381014lfe.85.gmail; Sun, 04 Oct
 2015 13:15:06 -0700 (PDT)
X-Received: by 10.112.26.212 with SMTP id n20mr4605852lbg.2.1443989706686;
        Sun, 04 Oct 2015 13:15:06 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id hs5si262179wib.1.2015.10.04.13.15.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 13:15:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id lk2so94138543wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 13:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8yxmIoIrrGepMbpa0/3RuO+dVLWClEde7/7QfEo8u80=;
        b=JYfvFlEo1KT7IGDzz55tLJVg26PYaFCzq78z9/AKfsxliohUbOzPgIILXdQr6nHaUg
         jnK5RoiFNmKVH49PaLMXHuZTWvPriWCix6aAPIsUHqsOBryM2jZpNzogxOB3ekmaTPXA
         Fes6836F6Fx6JUWloFgTyzwPuosI4kIsmWx4ZJRRb/7KCIYbt4qVgdHKLfDBLW53aqAy
         OeZhMcNoylVfUVAUwZMnZFSv4LbRfE8MZMeNV7CMQ5/P+KKYKqWX6CYgEzOT4tNyEZ3E
         vM4a371CB6gB2a3ufBmgsbbRhOAr5krNGzoHrqHh+GCk9AZmDOLMw61DMagyEw2DkXEt
         mBQA==
X-Received: by 10.180.88.198 with SMTP id bi6mr8422236wib.75.1443989706597;
        Sun, 04 Oct 2015 13:15:06 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id bv2sm23193173wjc.11.2015.10.04.13.15.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 13:15:05 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 4/4] Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
Date: Sun,  4 Oct 2015 22:15:00 +0200
Message-Id: <2cc8099c17ae523dee853b9615725b71b0b28ed7.1443989364.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>

Fix error "doing DMA on the stack" by using kzalloc for buffer
allocation.
Issue found by smatch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 6d0127f..a5bf8b4 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -347,11 +347,16 @@ void write_nic_dword(struct net_device *dev, int indx, u32 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u32 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
 				 &data, 4, HZ / 2);
+	kfree(pdata);
 
 
 	if (status < 0)
-- 
1.9.1


