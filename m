X-GM-THRID: 6206969566138990592
X-Received: by 10.194.118.65 with SMTP id kk1mr5755181wjb.5.1445172721129;
        Sun, 18 Oct 2015 05:52:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.16 with SMTP id u16ls7000wij.40.canary; Sun, 18 Oct
 2015 05:52:00 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr5771638wjd.4.1445172720749;
        Sun, 18 Oct 2015 05:52:00 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id c7si343349wiy.3.2015.10.18.05.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id fg8so417254wic.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 05:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4NHkHSNqrEz6tvafKHceYNnhKANysotOjPI6x+eamDA=;
        b=IoBcpXejpR0nyoqAF6TUaqNBfnlXP8V0hfEMtH1d2fyp4CUQty81wPRIwIx11+rnOl
         pAjt5ZiQmKXLGuprJBLB5pkIUvp6SaENgtfZ9r2YBLQwf5BQkiEJNa6UEI5BHt/tOVRx
         FuzzuRLkaIrEAPt95I+t82KcBKACxR/QXbJZzlryUyhMEnxY8mZrNot+q3DTC+hayoAJ
         FONBPQlPjnW7ug0wjQLZP8p5Bb3bNWU4wVaa6mI6GjOv+U2Q5jTru/bDQYNnu6oZ86GE
         UgpmGjHUvtsGyHY4Te81DH4h1GKXONi5HbQ/vsTYOY2v9OWWuw1MoUDx+3SQyYC18R2Q
         rGVw==
X-Received: by 10.180.240.170 with SMTP id wb10mr15547246wic.91.1445172720647;
        Sun, 18 Oct 2015 05:52:00 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id h7sm33928338wjz.7.2015.10.18.05.51.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 05:52:00 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 1/5] staging: gdm724x: properly indent to match open paranthesis
Date: Sun, 18 Oct 2015 15:51:48 +0300
Message-Id: <938063d4808ee588681a3e722c86c9d82b37a49d.1445172595.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>

Indent parameters and arguments passed to function calls to match
open paranthesis

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 32 ++++++++++++++++----------------
 drivers/staging/gdm724x/gdm_mux.c |  2 +-
 drivers/staging/gdm724x/gdm_usb.c | 20 ++++++++++----------
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 8a55ec1..5efc588 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -162,11 +162,11 @@ static int gdm_lte_emulate_arp(struct sk_buff *skb_in, u32 nic_type)
 	skb_reserve(skb_out, NET_IP_ALIGN);
 
 	memcpy(skb_put(skb_out, mac_header_len), mac_header_data,
-		mac_header_len);
+	       mac_header_len);
 	memcpy(skb_put(skb_out, sizeof(struct arphdr)), arp_out,
-		sizeof(struct arphdr));
+	       sizeof(struct arphdr));
 	memcpy(skb_put(skb_out, sizeof(struct arpdata)), arp_data_out,
-		sizeof(struct arpdata));
+	       sizeof(struct arpdata));
 
 	skb_out->protocol = ((struct ethhdr *)mac_header_data)->h_proto;
 	skb_out->dev = skb_in->dev;
@@ -300,13 +300,13 @@ static int gdm_lte_emulate_ndp(struct sk_buff *skb_in, u32 nic_type)
 		memcpy(&ipv6_out, ipv6_in, sizeof(struct ipv6hdr));
 		memcpy(ipv6_out.saddr.in6_u.u6_addr8, &na.target_address, 16);
 		memcpy(ipv6_out.daddr.in6_u.u6_addr8,
-			ipv6_in->saddr.in6_u.u6_addr8, 16);
+		       ipv6_in->saddr.in6_u.u6_addr8, 16);
 		ipv6_out.payload_len = htons(sizeof(struct icmp6hdr) +
 				sizeof(struct neighbour_advertisement));
 
 		memcpy(icmp_na, &icmp6_out, sizeof(struct icmp6hdr));
 		memcpy(icmp_na + sizeof(struct icmp6hdr), &na,
-			sizeof(struct neighbour_advertisement));
+		       sizeof(struct neighbour_advertisement));
 
 		icmp6_out.icmp6_cksum = icmp6_checksum(&ipv6_out,
 					(u16 *)icmp_na, sizeof(icmp_na));
@@ -326,13 +326,13 @@ static int gdm_lte_emulate_ndp(struct sk_buff *skb_in, u32 nic_type)
 	skb_reserve(skb_out, NET_IP_ALIGN);
 
 	memcpy(skb_put(skb_out, mac_header_len), mac_header_data,
-		mac_header_len);
+	       mac_header_len);
 	memcpy(skb_put(skb_out, sizeof(struct ipv6hdr)), &ipv6_out,
-		sizeof(struct ipv6hdr));
+	       sizeof(struct ipv6hdr));
 	memcpy(skb_put(skb_out, sizeof(struct icmp6hdr)), &icmp6_out,
-		sizeof(struct icmp6hdr));
+	       sizeof(struct icmp6hdr));
 	memcpy(skb_put(skb_out, sizeof(struct neighbour_advertisement)), &na,
-		sizeof(struct neighbour_advertisement));
+	       sizeof(struct neighbour_advertisement));
 
 	skb_out->protocol = ((struct ethhdr *)mac_header_data)->h_proto;
 	skb_out->dev = skb_in->dev;
@@ -530,7 +530,7 @@ static int gdm_lte_event_send(struct net_device *dev, char *buf, int len)
 }
 
 static void gdm_lte_event_rcv(struct net_device *dev, u16 type,
-				void *msg, int len)
+			      void *msg, int len)
 {
 	struct nic *nic = netdev_priv(dev);
 
@@ -572,7 +572,7 @@ static u8 find_dev_index(u32 nic_type)
 }
 
 static void gdm_lte_netif_rx(struct net_device *dev, char *buf,
-			int len, int flagged_nic_type)
+			     int len, int flagged_nic_type)
 {
 	u32 nic_type;
 	struct nic *nic;
@@ -697,9 +697,9 @@ static void gdm_lte_multi_sdu_pkt(struct phy_dev *phy_dev, char *buf, int len)
 	u8 index;
 
 	hci_len = gdm_dev16_to_cpu(phy_dev->get_endian(phy_dev->priv_dev),
-				multi_sdu->len);
+				   multi_sdu->len);
 	num_packet = gdm_dev16_to_cpu(phy_dev->get_endian(phy_dev->priv_dev),
-				multi_sdu->num_packet);
+				      multi_sdu->num_packet);
 
 	for (i = 0; i < num_packet; i++) {
 		sdu = (struct sdu *)data;
@@ -724,7 +724,7 @@ static void gdm_lte_multi_sdu_pkt(struct phy_dev *phy_dev, char *buf, int len)
 		if (index < MAX_NIC_TYPE) {
 			dev = phy_dev->dev[index];
 			gdm_lte_netif_rx(dev, (char *)sdu->data,
-					(int)(hci_len-12), nic_type);
+					 (int)(hci_len - 12), nic_type);
 		} else {
 			pr_err("rx sdu invalid nic_type :%x\n", nic_type);
 		}
@@ -772,7 +772,7 @@ static int gdm_lte_receive_pkt(struct phy_dev *phy_dev, char *buf, int len)
 		return ret;
 
 	cmd_evt = gdm_dev16_to_cpu(phy_dev->get_endian(phy_dev->priv_dev),
-				hci->cmd_evt);
+				   hci->cmd_evt);
 
 	dev = phy_dev->dev[0];
 	if (dev == NULL)
@@ -839,7 +839,7 @@ static struct net_device_ops gdm_netdev_ops = {
 static u8 gdm_lte_macaddr[ETH_ALEN] = {0x00, 0x0a, 0x3b, 0x00, 0x00, 0x00};
 
 static void form_mac_address(u8 *dev_addr, u8 *nic_src, u8 *nic_dest,
-			u8 *mac_address, u8 index)
+			     u8 *mac_address, u8 index)
 {
 	/* Form the dev_addr */
 	if (!mac_address)
diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 07de99c..e82f317 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -271,7 +271,7 @@ static void gdm_mux_rcv_complete(struct urb *urb)
 	if (urb->status) {
 		if (mux_dev->usb_state == PM_NORMAL)
 			dev_err(&urb->dev->dev, "%s: urb status error %d\n",
-			       __func__, urb->status);
+				__func__, urb->status);
 		put_rx_struct(rx, r);
 	} else {
 		r->len = r->urb->actual_length;
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 9ceba14..1c15b9c 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -63,7 +63,7 @@ static void do_rx(struct work_struct *work);
 
 static int gdm_usb_recv(void *priv_dev,
 			int (*cb)(void *cb_data,
-				void *data, int len, int context),
+				  void *data, int len, int context),
 			void *cb_data,
 			int context);
 
@@ -80,7 +80,7 @@ static int request_mac_address(struct lte_udev *udev)
 	hci->data[0] = MAC_ADDRESS;
 
 	ret = usb_bulk_msg(usbdev, usb_sndbulkpipe(usbdev, 2), buf, 5,
-		     &actual, 1000);
+			   &actual, 1000);
 
 	udev->request_mac_addr = 1;
 
@@ -376,7 +376,7 @@ static int set_mac_address(u8 *data, void *arg)
 		memcpy(mac_address, tlv->data, tlv->len);
 
 		if (register_lte_device(phy_dev,
-				&udev->intf->dev, mac_address) < 0)
+					&udev->intf->dev, mac_address) < 0)
 			pr_err("register lte device failed\n");
 
 		udev->request_mac_addr = 0;
@@ -406,7 +406,7 @@ static void do_rx(struct work_struct *work)
 			break;
 		}
 		r = list_entry(rx->to_host_list.next,
-			struct usb_rx, to_host_list);
+			       struct usb_rx, to_host_list);
 		list_del(&r->to_host_list);
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 
@@ -481,7 +481,7 @@ static void gdm_usb_rcv_complete(struct urb *urb)
 	} else {
 		if (urb->status && udev->usb_state == PM_NORMAL)
 			dev_err(&urb->dev->dev, "%s: urb status error %d\n",
-			       __func__, urb->status);
+				__func__, urb->status);
 
 		put_rx_struct(rx, r);
 	}
@@ -491,7 +491,7 @@ static void gdm_usb_rcv_complete(struct urb *urb)
 
 static int gdm_usb_recv(void *priv_dev,
 			int (*cb)(void *cb_data,
-				void *data, int len, int context),
+				  void *data, int len, int context),
 			void *cb_data,
 			int context)
 {
@@ -711,8 +711,8 @@ static void do_tx(struct work_struct *work)
 
 #define SDU_PARAM_LEN 12
 static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
-				unsigned int dftEpsId, unsigned int epsId,
-				void (*cb)(void *data), void *cb_data,
+			    unsigned int dftEpsId, unsigned int epsId,
+			    void (*cb)(void *data), void *cb_data,
 			    int dev_idx, int nic_type)
 {
 	struct lte_udev *udev = priv_dev;
@@ -769,7 +769,7 @@ static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
 }
 
 static int gdm_usb_hci_send(void *priv_dev, void *data, int len,
-			void (*cb)(void *data), void *cb_data)
+			    void (*cb)(void *data), void *cb_data)
 {
 	struct lte_udev *udev = priv_dev;
 	struct tx_cxt *tx = &udev->tx;
@@ -810,7 +810,7 @@ static struct gdm_endian *gdm_usb_get_endian(void *priv_dev)
 }
 
 static int gdm_usb_probe(struct usb_interface *intf,
-	const struct usb_device_id *id)
+			 const struct usb_device_id *id)
 {
 	int ret = 0;
 	struct phy_dev *phy_dev = NULL;
-- 
2.1.4


