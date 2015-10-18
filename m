X-GM-THRID: 6206969566138990592
X-Received: by 10.112.198.33 with SMTP id iz1mr5778984lbc.8.1445172724042;
        Sun, 18 Oct 2015 05:52:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.153.9 with SMTP id b9ls444989lfe.85.gmail; Sun, 18 Oct 2015
 05:52:03 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr5817169lbb.11.1445172723469;
        Sun, 18 Oct 2015 05:52:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id q6si325197wif.2.2015.10.18.05.52.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:52:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x241.google.com with SMTP id uv6so11883026wic.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 05:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9tRjo3iGZdUN/ZzQhDP6D6ahkzaiNs6ezet8mT61cBM=;
        b=AkWaG/GR7dK9ERxFMtVAjAMXsCLdYKA7Pf7flTGc4TQVWnzz/+4eoRQNLdwJLy3r3X
         vvRAC2vCRsOD77BN8mREfuCTJWdXXl+73bekorP/slptDSB3HrXKL/2c2AEQoUUX89dt
         joYgn3h6ecmRuD7E29R/vOpzt223iXaMlDQp3f3LtNTv79Mok9+dshc7EVoRy6Rlf3Eq
         gjrpbd2AMUySWt8l/IQX0yKjOVQcDxurlDWH20hxfVEz4S8DG+e5Y0C9Y4IIITBKgoo3
         qWsh94qvrtdzmHqHiPA6JWJC58V34TiN5pet8gzOuzooVhhdfPh4bEjZmDyWgBKW2Z6B
         i+sg==
X-Received: by 10.194.172.228 with SMTP id bf4mr26872917wjc.80.1445172723361;
        Sun, 18 Oct 2015 05:52:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id h7sm33928338wjz.7.2015.10.18.05.52.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 05:52:02 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 3/5] staging: gdm724x: add spaces around binary operators
Date: Sun, 18 Oct 2015 15:51:50 +0300
Message-Id: <1f3980606722b243a163151c09a242cbf902447e.1445172595.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445172595.git.ciorneiioana@gmail.com>
References: <cover.1445172595.git.ciorneiioana@gmail.com>

This patch add spaces around binary operators in order
to follow kernel coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c   | 4 ++--
 drivers/staging/gdm724x/gdm_mux.c   | 4 ++--
 drivers/staging/gdm724x/gdm_tty.c   | 2 +-
 drivers/staging/gdm724x/gdm_usb.c   | 4 ++--
 drivers/staging/gdm724x/netlink_k.c | 8 ++++----
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 28107dd..79de678 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -729,7 +729,7 @@ static void gdm_lte_multi_sdu_pkt(struct phy_dev *phy_dev, char *buf, int len)
 			pr_err("rx sdu invalid nic_type :%x\n", nic_type);
 		}
 
-		data += ((hci_len+3) & 0xfffc) + HCI_HEADER_SIZE;
+		data += ((hci_len + 3) & 0xfffc) + HCI_HEADER_SIZE;
 	}
 }
 
@@ -850,7 +850,7 @@ static void form_mac_address(u8 *dev_addr, u8 *nic_src, u8 *nic_dest,
 	/* The last byte of the mac address
 	 * should be less than or equal to 0xFC
 	 */
-	dev_addr[ETH_ALEN-1] += index;
+	dev_addr[ETH_ALEN - 1] += index;
 
 	/* Create random nic src and copy the first
 	 * 3 bytes to be the same as dev_addr
diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 0408549..47148cf 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -388,8 +388,8 @@ static int gdm_mux_send(void *priv_dev, void *data, int len, int tty_index,
 	mux_header->payload_size = __cpu_to_le32((u32)len);
 	mux_header->packet_type = __cpu_to_le16(packet_type[tty_index]);
 
-	memcpy(t->buf+MUX_HEADER_SIZE, data, len);
-	memset(t->buf+MUX_HEADER_SIZE+len, 0, total_len - MUX_HEADER_SIZE -
+	memcpy(t->buf + MUX_HEADER_SIZE, data, len);
+	memset(t->buf + MUX_HEADER_SIZE + len, 0, total_len - MUX_HEADER_SIZE -
 	       len);
 
 	t->len = total_len;
diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index ce5202e..c1412a8 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -193,7 +193,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
 		sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
 							 remain;
 		gdm_tty_send(gdm,
-			     (void *)(buf+sent_len),
+			     (void *)(buf + sent_len),
 			     sending_len,
 			     gdm->index,
 			     gdm_tty_send_complete,
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index f87dd61..d046769 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -347,7 +347,7 @@ static int init_usb(struct lte_udev *udev)
 		tx->avail_count++;
 	}
 
-	for (i = 0; i < MAX_RX_SUBMIT_COUNT*2; i++) {
+	for (i = 0; i < MAX_RX_SUBMIT_COUNT * 2; i++) {
 		r = alloc_rx_struct();
 		if (!r) {
 			ret = -ENOMEM;
@@ -745,7 +745,7 @@ static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
 	} else {
 	    send_len = len - ETH_HLEN;
 	    send_len += SDU_PARAM_LEN;
-	    memcpy(sdu->data, data+ETH_HLEN, len-ETH_HLEN);
+	    memcpy(sdu->data, data + ETH_HLEN, len - ETH_HLEN);
 	}
 
 	sdu->len = gdm_cpu_to_dev16(&udev->gdm_ed, send_len);
diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
index 749dd60..92254fd 100644
--- a/drivers/staging/gdm724x/netlink_k.c
+++ b/drivers/staging/gdm724x/netlink_k.c
@@ -34,8 +34,8 @@ static struct semaphore netlink_mutex;
 #define ND_NLMSG_SPACE(len)	(NLMSG_SPACE(len) + ND_IFINDEX_LEN)
 #define ND_NLMSG_DATA(nlh)	((void *)((char *)NLMSG_DATA(nlh) + \
 						  ND_IFINDEX_LEN))
-#define ND_NLMSG_S_LEN(len)	(len+ND_IFINDEX_LEN)
-#define ND_NLMSG_R_LEN(nlh)	(nlh->nlmsg_len-ND_IFINDEX_LEN)
+#define ND_NLMSG_S_LEN(len)	(len + ND_IFINDEX_LEN)
+#define ND_NLMSG_R_LEN(nlh)	(nlh->nlmsg_len - ND_IFINDEX_LEN)
 #define ND_NLMSG_IFIDX(nlh)	NLMSG_DATA(nlh)
 #define ND_MAX_MSG_LEN		(1024 * 32)
 
@@ -136,14 +136,14 @@ int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
 	NETLINK_CB(skb).portid = 0;
 	NETLINK_CB(skb).dst_group = 0;
 
-	ret = netlink_broadcast(sock, skb, 0, group+1, GFP_ATOMIC);
+	ret = netlink_broadcast(sock, skb, 0, group + 1, GFP_ATOMIC);
 	if (!ret)
 		return len;
 
 	if (ret != -ESRCH)
 		pr_err("nl broadcast g=%d, t=%d, l=%d, r=%d\n",
 		       group, type, len, ret);
-	else if (netlink_has_listeners(sock, group+1))
+	else if (netlink_has_listeners(sock, group + 1))
 		return -EAGAIN;
 
 	return ret;
-- 
2.1.4


