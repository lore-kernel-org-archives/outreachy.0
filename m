X-GM-THRID: 6206969566138990592
X-Received: by 10.180.105.98 with SMTP id gl2mr3340212wib.0.1445172725249;
        Sun, 18 Oct 2015 05:52:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.195 with SMTP id c3ls454202wiy.29.gmail; Sun, 18 Oct
 2015 05:52:04 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr5757632wjb.1.1445172724856;
        Sun, 18 Oct 2015 05:52:04 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id q6si325197wif.2.2015.10.18.05.52.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:52:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x241.google.com with SMTP id uv6so11883026wic.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 05:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LYLh2XcBrlt6lCLwDqB4fZl6u+UdgnnYNRMcorzrg2Y=;
        b=ZiN6v8+csfVCiwCKwftoQqDAjROerhaZAbLX+r/7NRCAd+kYjUnA6JMSb47WYM7J6m
         4gCW00wySa7ClxpMp8w8hugbIfcsnoM22d1sQC+6KW60+QncY/227jkl5KalMsrz6fjb
         wU8plPb+wwSaFOprXGqQAUr25AueJjIcb0Cr6bGstJOFChAhKKxPqxUk9RYYiENaD3ji
         pXoxloacIPoF4FGoVGUltGgzOoQV8M7QeHxqRI2q7XR4p3yCbqOUqVh8Guu1qmkQb4zL
         WeER8qNYRXDFtSRhDGrk4N661tBCRYuBRwYAX0aqk7WZmRB/daTrBZ3mjVo6628bjcRu
         a79g==
X-Received: by 10.194.204.195 with SMTP id la3mr27050948wjc.77.1445172724777;
        Sun, 18 Oct 2015 05:52:04 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id h7sm33928338wjz.7.2015.10.18.05.52.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 05:52:04 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 4/5] staging: gdm724x: correct kzalloc/kmalloc sizeof argument
Date: Sun, 18 Oct 2015 15:51:51 +0300
Message-Id: <12c682dfc3141951923bd4f690456168ef31b442.1445172595.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>

This patch converts sizeof(TYPE) to sizeof(VAR) when used as
a kzalloc/kmaloc argument.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c |  8 ++++----
 drivers/staging/gdm724x/gdm_tty.c |  2 +-
 drivers/staging/gdm724x/gdm_usb.c | 10 +++++-----
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 47148cf..79af94f 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -67,7 +67,7 @@ static struct mux_tx *alloc_mux_tx(int len)
 {
 	struct mux_tx *t = NULL;
 
-	t = kzalloc(sizeof(struct mux_tx), GFP_ATOMIC);
+	t = kzalloc(sizeof(*t), GFP_ATOMIC);
 	if (!t)
 		return NULL;
 
@@ -96,7 +96,7 @@ static struct mux_rx *alloc_mux_rx(void)
 {
 	struct mux_rx *r = NULL;
 
-	r = kzalloc(sizeof(struct mux_rx), GFP_KERNEL);
+	r = kzalloc(sizeof(*r), GFP_KERNEL);
 	if (!r)
 		return NULL;
 
@@ -526,11 +526,11 @@ static int gdm_mux_probe(struct usb_interface *intf,
 	if (bInterfaceNumber != 2)
 		return -ENODEV;
 
-	mux_dev = kzalloc(sizeof(struct mux_dev), GFP_KERNEL);
+	mux_dev = kzalloc(sizeof(*mux_dev), GFP_KERNEL);
 	if (!mux_dev)
 		return -ENOMEM;
 
-	tty_dev = kzalloc(sizeof(struct tty_dev), GFP_KERNEL);
+	tty_dev = kzalloc(sizeof(*tty_dev), GFP_KERNEL);
 	if (!tty_dev) {
 		ret = -ENOMEM;
 		goto err_free_mux;
diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index c1412a8..e2c0f22 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -226,7 +226,7 @@ int register_lte_tty_device(struct tty_dev *tty_dev, struct device *device)
 
 	for (i = 0; i < TTY_MAX_COUNT; i++) {
 
-		gdm = kmalloc(sizeof(struct gdm), GFP_KERNEL);
+		gdm = kmalloc(sizeof(*gdm), GFP_KERNEL);
 		if (!gdm)
 			return -ENOMEM;
 
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index d046769..92ea1a1 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -92,7 +92,7 @@ static struct usb_tx *alloc_tx_struct(int len)
 	struct usb_tx *t = NULL;
 	int ret = 0;
 
-	t = kzalloc(sizeof(struct usb_tx), GFP_ATOMIC);
+	t = kzalloc(sizeof(*t), GFP_ATOMIC);
 	if (!t) {
 		ret = -ENOMEM;
 		goto out;
@@ -125,7 +125,7 @@ static struct usb_tx_sdu *alloc_tx_sdu_struct(void)
 {
 	struct usb_tx_sdu *t_sdu;
 
-	t_sdu = kzalloc(sizeof(struct usb_tx_sdu), GFP_KERNEL);
+	t_sdu = kzalloc(sizeof(*t_sdu), GFP_KERNEL);
 	if (!t_sdu)
 		return NULL;
 
@@ -183,7 +183,7 @@ static struct usb_rx *alloc_rx_struct(void)
 	struct usb_rx *r = NULL;
 	int ret = 0;
 
-	r = kmalloc(sizeof(struct usb_rx), GFP_KERNEL);
+	r = kmalloc(sizeof(*r), GFP_KERNEL);
 	if (!r) {
 		ret = -ENOMEM;
 		goto out;
@@ -830,11 +830,11 @@ static int gdm_usb_probe(struct usb_interface *intf,
 		return -ENODEV;
 	}
 
-	phy_dev = kzalloc(sizeof(struct phy_dev), GFP_KERNEL);
+	phy_dev = kzalloc(sizeof(*phy_dev), GFP_KERNEL);
 	if (!phy_dev)
 		return -ENOMEM;
 
-	udev = kzalloc(sizeof(struct lte_udev), GFP_KERNEL);
+	udev = kzalloc(sizeof(*udev), GFP_KERNEL);
 	if (!udev) {
 		ret = -ENOMEM;
 		goto err_udev;
-- 
2.1.4


