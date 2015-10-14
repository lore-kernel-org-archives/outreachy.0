X-GM-THRID: 6205587481887244288
X-Received: by 10.66.197.136 with SMTP id iu8mr4073267pac.47.1444850932919;
        Wed, 14 Oct 2015 12:28:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.67 with SMTP id j64ls261856ioe.3.gmail; Wed, 14 Oct
 2015 12:28:52 -0700 (PDT)
X-Received: by 10.50.20.227 with SMTP id q3mr23573981ige.11.1444850932654;
        Wed, 14 Oct 2015 12:28:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si476635pad.0.2015.10.14.12.28.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so14520031pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vONTuS/+A9H3JmZSyTNKRHlSi9c/2MSYSmUyOBCWs0w=;
        b=krQEhBbuB+txPgCCLeIf6eTn+TFtm0R+ZLV6XJ9o1h6LatS5bMY1zS4LQAvwb2CJYc
         chyD89QeiM/094uMX9C2WL7vXvp32oZ/7cnXhiheGdm5soFuzMQagYz3NqifZ2XlVMjX
         vg3Jdll1Bj9ARjlnpAER2Jiey2lv4c5rGlqlZ8KseC1tAB19/BOeFujo3HlhamLDxJ9U
         sZIhPpraozGpQ1UgJHgKYDATKjd0akxWtarlIXXedGHWWuOtkPatF4v/pkbDXnMo8/IO
         WCFtJ4AnaAou7+h/ph0fDDOcwT3vPWkyUZ2wS4+oLgcHXqu7M2HahSwOO3yO3a/1pXlb
         UuMA==
X-Received: by 10.68.190.170 with SMTP id gr10mr5144215pbc.91.1444850932508;
        Wed, 14 Oct 2015 12:28:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.28.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:28:51 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 02/12] Staging: gdm724x: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:20 +0530
Message-Id: <1444850910-11408-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EACF3.000C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

Semantic patch:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 14 +++++++-------
 drivers/staging/gdm724x/gdm_mux.c |  4 ++--
 drivers/staging/gdm724x/gdm_tty.c |  2 +-
 drivers/staging/gdm724x/gdm_usb.c |  6 +++---
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index a8d2cff..8a55ec1 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -377,11 +377,11 @@ static s32 gdm_lte_tx_nic_type(struct net_device *dev, struct sk_buff *skb)
 		break;
 	case ETH_P_IP:
 		nic_type |= NIC_TYPE_F_IPV4;
-		ip = (struct iphdr *)network_data;
+		ip = network_data;
 
 		/* Check DHCPv4 */
 		if (ip->protocol == IPPROTO_UDP) {
-			struct udphdr *udp = (struct udphdr *)
+			struct udphdr *udp =
 					(network_data + sizeof(struct iphdr));
 			if (ntohs(udp->dest) == 67 || ntohs(udp->dest) == 68)
 				nic_type |= NIC_TYPE_F_DHCP;
@@ -389,15 +389,15 @@ static s32 gdm_lte_tx_nic_type(struct net_device *dev, struct sk_buff *skb)
 		break;
 	case ETH_P_IPV6:
 		nic_type |= NIC_TYPE_F_IPV6;
-		ipv6 = (struct ipv6hdr *)network_data;
+		ipv6 = network_data;
 
 		if (ipv6->nexthdr == IPPROTO_ICMPV6) /* Check NDP request */ {
-			struct icmp6hdr *icmp6 = (struct icmp6hdr *)
+			struct icmp6hdr *icmp6 =
 					(network_data + sizeof(struct ipv6hdr));
 			if (icmp6->icmp6_type == NDISC_NEIGHBOUR_SOLICITATION)
 				nic_type |= NIC_TYPE_ICMPV6;
 		} else if (ipv6->nexthdr == IPPROTO_UDP) /* Check DHCPv6 */ {
-			struct udphdr *udp = (struct udphdr *)
+			struct udphdr *udp =
 					(network_data + sizeof(struct ipv6hdr));
 			if (ntohs(udp->dest) == 546 || ntohs(udp->dest) == 547)
 				nic_type |= NIC_TYPE_F_DHCP;
@@ -814,9 +814,9 @@ static int gdm_lte_receive_pkt(struct phy_dev *phy_dev, char *buf, int len)
 
 static int rx_complete(void *arg, void *data, int len, int context)
 {
-	struct phy_dev *phy_dev = (struct phy_dev *)arg;
+	struct phy_dev *phy_dev = arg;
 
-	return gdm_lte_receive_pkt(phy_dev, (char *)data, len);
+	return gdm_lte_receive_pkt(phy_dev, data, len);
 }
 
 void start_rx_proc(struct phy_dev *phy_dev)
diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 1cf24e4..97b72a0 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -153,7 +153,7 @@ static void put_rx_struct(struct rx_cxt *rx, struct mux_rx *r)
 
 static int up_to_host(struct mux_rx *r)
 {
-	struct mux_dev *mux_dev = (struct mux_dev *)r->mux_dev;
+	struct mux_dev *mux_dev = r->mux_dev;
 	struct mux_pkt_header *mux_header;
 	unsigned int start_flag;
 	unsigned int payload_size;
@@ -262,7 +262,7 @@ static void remove_rx_submit_list(struct mux_rx *r, struct rx_cxt *rx)
 static void gdm_mux_rcv_complete(struct urb *urb)
 {
 	struct mux_rx *r = urb->context;
-	struct mux_dev *mux_dev = (struct mux_dev *)r->mux_dev;
+	struct mux_dev *mux_dev = r->mux_dev;
 	struct rx_cxt *rx = &mux_dev->rx;
 	unsigned long flags;
 
diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 001348c..655f768 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -167,7 +167,7 @@ static int gdm_tty_recv_complete(void *data,
 
 static void gdm_tty_send_complete(void *arg)
 {
-	struct gdm *gdm = (struct gdm *)arg;
+	struct gdm *gdm = arg;
 
 	if (!GDM_TTY_READY(gdm))
 		return;
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index ed1a12f..9ceba14 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -367,7 +367,7 @@ fail:
 
 static int set_mac_address(u8 *data, void *arg)
 {
-	struct phy_dev *phy_dev = (struct phy_dev *)arg;
+	struct phy_dev *phy_dev = arg;
 	struct lte_udev *udev = phy_dev->priv_dev;
 	struct tlv *tlv = (struct tlv *)data;
 	u8 mac_address[ETH_ALEN] = {0, };
@@ -410,8 +410,8 @@ static void do_rx(struct work_struct *work)
 		list_del(&r->to_host_list);
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 
-		phy_dev = (struct phy_dev *)r->cb_data;
-		udev = (struct lte_udev *)phy_dev->priv_dev;
+		phy_dev = r->cb_data;
+		udev = phy_dev->priv_dev;
 		hci = (struct hci_packet *)r->buf;
 		cmd_evt = gdm_dev16_to_cpu(&udev->gdm_ed, hci->cmd_evt);
 
-- 
2.1.4


