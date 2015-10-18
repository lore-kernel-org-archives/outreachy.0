X-GM-THRID: 6206969566138990592
X-Received: by 10.112.158.202 with SMTP id ww10mr5945924lbb.13.1445172727030;
        Sun, 18 Oct 2015 05:52:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.73 with SMTP id gs9ls440438wib.2.canary; Sun, 18 Oct
 2015 05:52:06 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr3323440wia.7.1445172726513;
        Sun, 18 Oct 2015 05:52:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id c7si343349wiy.3.2015.10.18.05.52.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:52:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id fg8so417254wic.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 05:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wSe+ntt6ntpd2/PXgMwlt2DgM5zvyM3+H/4WwH0AkaY=;
        b=IiwPe4IPhbCMK6r/BcdT4iOPyDzgQy42ZgpRTrax1SojgMqvQKC3elFEVMcurrxYim
         1zR3/EZ28c5AHIjNAryHxVfu70dLmPyrdZR2ID2v1E1CUPQjpJECAhlqVScUAqxQcjG/
         sjJRYLQad+H9RTr7XMDIHPdXOl+zxCuk9MBhIcls+KUYYcjoltUaxisZk22C+xIUaUeS
         hxZy/nMiz8jnt4DQY1GDgRlASS3Nyksqy7mKRasgcezgU9B5v15ZpxdycUpZI1AU3cSf
         Lhl/tt0MlXTuDslUsk7rIofVbO6aTxk6PmtS/Qg3Qd7SaGWziC6ZRP7DqNI+nBbZ7COn
         PXoA==
X-Received: by 10.194.249.100 with SMTP id yt4mr31851911wjc.74.1445172726435;
        Sun, 18 Oct 2015 05:52:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id h7sm33928338wjz.7.2015.10.18.05.52.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 05:52:06 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 5/5] staging: gdm724x: remove multiple blank lines
Date: Sun, 18 Oct 2015 15:51:52 +0300
Message-Id: <bc9122f0eff2b2a69fdb6cbe26bd9ca86eb23424.1445172595.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>

This patch removes multiple blank lines in order to follow linux
kernel coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 79af94f..445f836 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -48,7 +48,6 @@ static const struct usb_device_id id_table[] = {
 	{}
 };
 
-
 MODULE_DEVICE_TABLE(usb, id_table);
 
 static int packet_type_to_index(u16 packetType)
@@ -150,7 +149,6 @@ static void put_rx_struct(struct rx_cxt *rx, struct mux_rx *r)
 	spin_unlock_irqrestore(&rx->free_list_lock, flags);
 }
 
-
 static int up_to_host(struct mux_rx *r)
 {
 	struct mux_dev *mux_dev = r->mux_dev;
@@ -474,7 +472,6 @@ static void release_usb(struct mux_dev *mux_dev)
 	spin_unlock_irqrestore(&rx->to_host_lock, flags);
 }
 
-
 static int init_usb(struct mux_dev *mux_dev)
 {
 	struct mux_rx *r;
@@ -612,7 +609,6 @@ static int gdm_mux_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 
 	mux_dev->usb_state = PM_SUSPEND;
 
-
 	spin_lock_irqsave(&rx->submit_list_lock, flags);
 	list_for_each_entry_safe(r, r_next, &rx->rx_submit_list,
 				 rx_submit_list) {
-- 
2.1.4


