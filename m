X-GM-THRID: 6206969566138990592
X-Received: by 10.194.71.107 with SMTP id t11mr2482328wju.6.1445172722666;
        Sun, 18 Oct 2015 05:52:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.160.75 with SMTP id j72ls447249lfe.106.gmail; Sun, 18 Oct
 2015 05:52:02 -0700 (PDT)
X-Received: by 10.112.16.229 with SMTP id j5mr5862587lbd.6.1445172722112;
        Sun, 18 Oct 2015 05:52:02 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id q6si325197wif.2.2015.10.18.05.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:52:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicuv6 with SMTP id uv6so11883026wic.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 05:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6l5y1P81yusKJLTBZUVtA6h3DQrXO/JZfXMogFCc6TM=;
        b=ajc8EVKubvNWJvpsxpKNi7OV5efDo/JWYm3jUcENzuiGvsQRCnTZCNHQtXjBdB9njI
         5Rb2mMl2nKhajFDxoodly6yeS+paltPPC5w/uSMWpet7LIUyaq/x2ziVpCMmR88Nblps
         QsAsOLYHSUWDSp8ni2hAf/iywxdJdUL5KXW1GHvK640odAy+T+HWQgB1k5ma+QvITiGy
         HDgMo/M6002ch7JuzeYwXieN+taPhhvsqb/Qam+/qy42YFqjUQD/RQWELw+r4FuGFM6V
         c5D3IR2IC22eMhiMHWcWt8vwnyRCwOmuFWS6h9HgqPuxmjWbQZSQZm/b/WrK3KDpFIwe
         kBjg==
X-Received: by 10.180.11.212 with SMTP id s20mr14683596wib.40.1445172721995;
        Sun, 18 Oct 2015 05:52:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id h7sm33928338wjz.7.2015.10.18.05.52.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 05:52:01 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 2/5] stating: gdm724x: remove explicit NULL comparison
Date: Sun, 18 Oct 2015 15:51:49 +0300
Message-Id: <f715698ed8ff1d460d377c2b4d7d9fe8202b3e02.1445172595.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>

This patch converts explicit NULL comparison to its shorter
equivalent form.
Done with coccinelle semantic patch:

@@
expression e;
@@

- e == NULL
+ !e

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c   |  4 ++--
 drivers/staging/gdm724x/gdm_mux.c   |  4 ++--
 drivers/staging/gdm724x/gdm_tty.c   |  2 +-
 drivers/staging/gdm724x/gdm_usb.c   | 16 ++++++++--------
 drivers/staging/gdm724x/netlink_k.c |  2 +-
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 5efc588..28107dd 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -775,7 +775,7 @@ static int gdm_lte_receive_pkt(struct phy_dev *phy_dev, char *buf, int len)
 				   hci->cmd_evt);
 
 	dev = phy_dev->dev[0];
-	if (dev == NULL)
+	if (!dev)
 		return 0;
 
 	switch (cmd_evt) {
@@ -938,7 +938,7 @@ void unregister_lte_device(struct phy_dev *phy_dev)
 
 	for (index = 0; index < MAX_NIC_TYPE; index++) {
 		net = phy_dev->dev[index];
-		if (net == NULL)
+		if (!net)
 			continue;
 
 		unregister_netdev(net);
diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index e82f317..0408549 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -492,7 +492,7 @@ static int init_usb(struct mux_dev *mux_dev)
 
 	for (i = 0; i < MAX_ISSUE_NUM * 2; i++) {
 		r = alloc_mux_rx();
-		if (r == NULL) {
+		if (!r) {
 			ret = -ENOMEM;
 			break;
 		}
@@ -662,7 +662,7 @@ static int __init gdm_usb_mux_init(void)
 {
 
 	mux_rx_wq = create_workqueue("mux_rx_wq");
-	if (mux_rx_wq == NULL) {
+	if (!mux_rx_wq) {
 		pr_err("work queue create fail\n");
 		return -1;
 	}
diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 655f768..ce5202e 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -88,7 +88,7 @@ static int gdm_tty_install(struct tty_driver *driver, struct tty_struct *tty)
 
 	mutex_lock(&gdm_table_lock);
 	gdm = gdm_table[i][j];
-	if (gdm == NULL) {
+	if (!gdm) {
 		mutex_unlock(&gdm_table_lock);
 		return -ENODEV;
 	}
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 1c15b9c..f87dd61 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -338,7 +338,7 @@ static int init_usb(struct lte_udev *udev)
 
 	for (i = 0; i < MAX_NUM_SDU_BUF; i++) {
 		t_sdu = alloc_tx_sdu_struct();
-		if (t_sdu == NULL) {
+		if (!t_sdu) {
 			ret = -ENOMEM;
 			goto fail;
 		}
@@ -349,7 +349,7 @@ static int init_usb(struct lte_udev *udev)
 
 	for (i = 0; i < MAX_RX_SUBMIT_COUNT*2; i++) {
 		r = alloc_rx_struct();
-		if (r == NULL) {
+		if (!r) {
 			ret = -ENOMEM;
 			goto fail;
 		}
@@ -576,7 +576,7 @@ static int send_tx_packet(struct usb_device *usbdev, struct usb_tx *t, u32 len)
 {
 	int ret = 0;
 
-	if (!(len%512))
+	if (!(len % 512))
 		len++;
 
 	usb_fill_bulk_urb(t->urb,
@@ -682,7 +682,7 @@ static void do_tx(struct work_struct *work)
 		}
 
 		t = alloc_tx_struct(TX_BUF_SIZE);
-		if (t == NULL) {
+		if (!t) {
 			spin_unlock_irqrestore(&tx->lock, flags);
 			return;
 		}
@@ -732,7 +732,7 @@ static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
 	t_sdu = get_tx_sdu_struct(tx, &no_spc);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
-	if (t_sdu == NULL) {
+	if (!t_sdu) {
 		pr_err("sdu send - free list empty\n");
 		return TX_NO_SPC;
 	}
@@ -782,7 +782,7 @@ static int gdm_usb_hci_send(void *priv_dev, void *data, int len,
 	}
 
 	t = alloc_tx_struct(len);
-	if (t == NULL) {
+	if (!t) {
 		pr_err("hci_send - out of memory\n");
 		return -ENOMEM;
 	}
@@ -1006,11 +1006,11 @@ static int __init gdm_usb_lte_init(void)
 	}
 
 	usb_tx_wq = create_workqueue("usb_tx_wq");
-	if (usb_tx_wq == NULL)
+	if (!usb_tx_wq)
 		return -1;
 
 	usb_rx_wq = create_workqueue("usb_rx_wq");
-	if (usb_rx_wq == NULL)
+	if (!usb_rx_wq)
 		return -1;
 
 	return usb_register(&gdm_usb_lte_driver);
diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
index 59a1830..749dd60 100644
--- a/drivers/staging/gdm724x/netlink_k.c
+++ b/drivers/staging/gdm724x/netlink_k.c
@@ -122,7 +122,7 @@ int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
 	if (group > ND_MAX_GROUP)
 		return -EINVAL;
 
-	if (!netlink_has_listeners(sock, group+1))
+	if (!netlink_has_listeners(sock, group + 1))
 		return -ESRCH;
 
 	skb = alloc_skb(NLMSG_SPACE(len), GFP_ATOMIC);
-- 
2.1.4


