X-GM-THRID: 6749515623301120000
X-Received: by 2002:aa7:c70d:: with SMTP id i13mr15242854edq.214.1571494067564;
        Sat, 19 Oct 2019 07:07:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4c51:: with SMTP id d17ls2018960ejw.8.gmail; Sat, 19
 Oct 2019 07:07:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxxymPE5KXsFTWpUOpAVS/R4Y/pygIaMQ1eiMu7LjOkwE7ycKzy+8GzYNpIqxe8b0xOw6Yb
X-Received: by 2002:a17:906:af8e:: with SMTP id mj14mr13952193ejb.45.1571494066409;
        Sat, 19 Oct 2019 07:07:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571494066; cv=none;
        d=google.com; s=arc-20160816;
        b=Fvzw074cH19qC+h8kbS/z5GXwWNrB1kdEfph9/TFW0ep7HNWdWmWPR0UjtHMk/xI48
         mVBZ+Vf/L7d5angfQwIRUubIbn7BwDGQpsO3EDqccnCPKiN9hosgcSatK2VN0EpFvO8c
         NM5Eck5l4c/UZuKwAtNK1LUqovXrqGIQGsclwYQD1I0SBeke5A6NSyBCV83s0Zjq1SXG
         hwaL82Q+DmqqKsCb5tRYXit0TWux5VUOSJtMMrLsIG3AZMyWcZ48VFig5VYmx9ktiEuu
         NvdEvOTPHR8WOCcwPErfPzQE3TlV4IACG1nED5muBmeYnqupraq1trHi1tz9x4e54RBx
         lQbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=t1oSD9yvg5gmEXonhSx+4hOlKXRU+VMChnziQ21P88w=;
        b=B6lAuuNLGH0kL5C4xUfzKTWhIZ5wVWr7BdjPLDucVV5b2YiPikyhML6uCOsuiAPure
         r46V4p+/XyQrii8CBTH4MYl6cJUK9or9UpFEwwM+7TgkEBK8g0XiBchvFEkwzyDOBI6e
         +0eiSGYCP5XlWIxso50qcsOQatw/RGNf7P0OACHH1+JYfpb3aptldCBH6cdtLQ8zun1H
         WF1a5y0kXNkdKTdZd7OQ+6Bo5ousUlc2PnEdhIipmUdWV7EfnSl8VSIAHx56hk/1Ik6+
         BukCYBXum61z8Guv/13oL4ungBMJvSE5sn5BOa0KanE0B9CfocrsMNynvnkm1SrQJEOM
         iULg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rRWOZNzb;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d11si419237edh.3.2019.10.19.07.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 07:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rRWOZNzb;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id z9so9073345wrl.11
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 07:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t1oSD9yvg5gmEXonhSx+4hOlKXRU+VMChnziQ21P88w=;
        b=rRWOZNzbvdsYfRVf+DQoWcNdG5jOBr12IFbRzBf+sl6Z11/dWtoUfuLRyaH0U6AVw0
         EnUXa3YNJ6hqzDHQ9I8vdjU/G4F0qi+0rainbRxDI0ukqJSzvlJTC7iVei1qJ34RY2Wz
         0h1KvK1eSthbY1YHKjvxQc4aahY2vCYkuws6yBWYi95nM+cQTgarM/UQixycHan7mtzs
         qEpM6k02g475aN+7hz0mdeZE3kR/Az62alRpml8z0IMNvHzEgyV2iWIwHWgCCj95cl6E
         JYewVWE1so1NAj56PtyuiT4qqNgnmyHZtpuRCT3ADV+ADxpz5eCYgDqGYZo2E0KIeH4l
         frYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t1oSD9yvg5gmEXonhSx+4hOlKXRU+VMChnziQ21P88w=;
        b=GoN+aaIHRuSs20dC6gvqL6ICCxdPEnodtMvun+QLTTz/PS6Ir9+aeGyUdQ+DOinUwg
         +kaSkc7Bk9W5mYDN5wK0TGRLnoKdxr40O1Wr7Y/xI6bhlGl2ean5DhRBzjoaBvA43PSO
         iNk53tFkfT+ZCn+KQwWyO+2xlMWDHVGUj4CGuGSbwP4UcoijYYVtEQDXAiNftUwoje5y
         EPuZXJt2klaVoHkta1HvwV44BwlllJyko9cChnp9EwpRj7mfm1Cp0IylcpN/7TySoniq
         XLOXPCZu2thZZzWYqs9DCO4aH3Yn3xWIx5aU3lOC5e0z8j2StyoQ8hefiHOVCE+3HvKS
         2V4Q==
X-Gm-Message-State: APjAAAVrWbVI+g4hZGdgrC65qDDjxRw+DeBcRW4EduUdG38ehl2hoDvu
	Nmxi96d5Yx9D2/Rr5zaJaTXll0CqTsps
X-Received: by 2002:a5d:4612:: with SMTP id t18mr11514876wrq.255.1571494065629;
        Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	jerome.pouiller@silabs.com,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
Date: Sat, 19 Oct 2019 15:07:15 +0100
Message-Id: <20191019140719.2542-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of no space is necessary after a cast.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/bh.c       |  8 ++++----
 drivers/staging/wfx/bus_sdio.c |  6 +++---
 drivers/staging/wfx/bus_spi.c  |  2 +-
 drivers/staging/wfx/data_rx.c  |  8 ++++----
 drivers/staging/wfx/data_tx.c  | 20 ++++++++++----------
 drivers/staging/wfx/data_tx.h  |  4 ++--
 6 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 3355183fc86c..573216b08042 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
 	if (wfx_data_read(wdev, skb->data, alloc_len))
 		goto err;
 
-	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
+	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
 	_trace_piggyback(piggyback, false);
 
-	hif = (struct hif_msg *) skb->data;
+	hif = (struct hif_msg *)skb->data;
 	WARN(hif->encrypted & 0x1, "unsupported encryption type");
 	if (hif->encrypted == 0x2) {
-		if (wfx_sl_decode(wdev, (void *) hif)) {
+		if (wfx_sl_decode(wdev, (void *)hif)) {
 			dev_kfree_skb(skb);
 			// If frame was a confirmation, expect trouble in next
 			// exchange. However, it is harmless to fail to decode
@@ -102,7 +102,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
 	if (!(hif->id & HIF_ID_IS_INDICATION)) {
 		(*is_cnf)++;
 		if (hif->id == HIF_CNF_ID_MULTI_TRANSMIT)
-			release_count = le32_to_cpu(((struct hif_cnf_multi_transmit *) hif->body)->num_tx_confs);
+			release_count = le32_to_cpu(((struct hif_cnf_multi_transmit *)hif->body)->num_tx_confs);
 		else
 			release_count = 1;
 		WARN(wdev->hif.tx_buffers_used < release_count, "corrupted buffer counter");
diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index f97360513150..184e20dfdd62 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -38,7 +38,7 @@ static int wfx_sdio_copy_from_io(void *priv, unsigned int reg_id,
 	int ret;
 
 	WARN(reg_id > 7, "chip only has 7 registers");
-	WARN(((uintptr_t) dst) & 3, "unaligned buffer size");
+	WARN(((uintptr_t)dst) & 3, "unaligned buffer size");
 	WARN(count & 3, "unaligned buffer address");
 
 	/* Use queue mode buffers */
@@ -59,14 +59,14 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int reg_id,
 	int ret;
 
 	WARN(reg_id > 7, "chip only has 7 registers");
-	WARN(((uintptr_t) src) & 3, "unaligned buffer size");
+	WARN(((uintptr_t)src) & 3, "unaligned buffer size");
 	WARN(count & 3, "unaligned buffer address");
 
 	/* Use queue mode buffers */
 	if (reg_id == WFX_REG_IN_OUT_QUEUE)
 		sdio_addr |= bus->buf_id_tx << 7;
 	// FIXME: discards 'const' qualifier for src
-	ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *) src, count);
+	ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count);
 	if (!ret && reg_id == WFX_REG_IN_OUT_QUEUE)
 		bus->buf_id_tx = (bus->buf_id_tx + 1) % 32;
 
diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
index f65f7d75e731..effd07957753 100644
--- a/drivers/staging/wfx/bus_spi.c
+++ b/drivers/staging/wfx/bus_spi.c
@@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
 	struct wfx_spi_priv *bus = priv;
 	u16 regaddr = (addr << 12) | (count / 2);
 	// FIXME: use a bounce buffer
-	u16 *src16 = (void *) src;
+	u16 *src16 = (void *)src;
 	int ret, i;
 	struct spi_message      m;
 	struct spi_transfer     t_addr = {
diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 3a79089c8501..3a79ab93e97e 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -29,7 +29,7 @@ static int wfx_handle_pspoll(struct wfx_vif *wvif, struct sk_buff *skb)
 	rcu_read_lock();
 	sta = ieee80211_find_sta(wvif->vif, pspoll->ta);
 	if (sta)
-		link_id = ((struct wfx_sta_priv *) &sta->drv_priv)->link_id;
+		link_id = ((struct wfx_sta_priv *)&sta->drv_priv)->link_id;
 	rcu_read_unlock();
 	if (link_id)
 		pspoll_mask = BIT(link_id);
@@ -102,8 +102,8 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 {
 	int link_id = arg->rx_flags.peer_sta_id;
 	struct ieee80211_rx_status *hdr = IEEE80211_SKB_RXCB(skb);
-	struct ieee80211_hdr *frame = (struct ieee80211_hdr *) skb->data;
-	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *) skb->data;
+	struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;
+	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;
 	struct wfx_link_entry *entry = NULL;
 	bool early_data = false;
 
@@ -173,7 +173,7 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 
 		tim_ie = cfg80211_find_ie(WLAN_EID_TIM, ies, ies_len);
 		if (tim_ie) {
-			struct ieee80211_tim_ie *tim = (struct ieee80211_tim_ie *) &tim_ie[2];
+			struct ieee80211_tim_ie *tim = (struct ieee80211_tim_ie *)&tim_ie[2];
 
 			if (wvif->dtim_period != tim->dtim_period) {
 				wvif->dtim_period = tim->dtim_period;
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 8ed38cac19f6..cf73b83ccc9e 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -427,7 +427,7 @@ void wfx_link_id_work(struct work_struct *work)
 
 static bool ieee80211_is_action_back(struct ieee80211_hdr *hdr)
 {
-	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *) hdr;
+	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)hdr;
 
 	if (!ieee80211_is_action(mgmt->frame_control))
 		return false;
@@ -591,7 +591,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	struct wfx_tx_priv *tx_priv;
 	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 	struct ieee80211_key_conf *hw_key = tx_info->control.hw_key;
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int queue_id = tx_info->hw_queue;
 	size_t offset = (size_t) skb->data & 3;
 	int wmsg_len = sizeof(struct hif_msg) + sizeof(struct hif_req_tx) + offset;
@@ -602,7 +602,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	// From now tx_info->control is unusable
 	memset(tx_info->rate_driver_data, 0, sizeof(struct wfx_tx_priv));
 	// Fill tx_priv
-	tx_priv = (struct wfx_tx_priv *) tx_info->rate_driver_data;
+	tx_priv = (struct wfx_tx_priv *)tx_info->rate_driver_data;
 	tx_priv->tid = wfx_tx_get_tid(hdr);
 	tx_priv->raw_link_id = wfx_tx_get_raw_link_id(wvif, sta, hdr);
 	tx_priv->link_id = tx_priv->raw_link_id;
@@ -619,7 +619,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	skb_put(skb, wfx_tx_get_icv_len(tx_priv->hw_key));
 	skb_push(skb, wmsg_len);
 	memset(skb->data, 0, wmsg_len);
-	hif_msg = (struct hif_msg *) skb->data;
+	hif_msg = (struct hif_msg *)skb->data;
 	hif_msg->len = cpu_to_le16(skb->len);
 	hif_msg->id = HIF_REQ_ID_TX;
 	hif_msg->interface = wvif->id;
@@ -631,7 +631,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	}
 
 	// Fill tx request
-	req = (struct hif_req_tx *) hif_msg->body;
+	req = (struct hif_req_tx *)hif_msg->body;
 	req->packet_id = queue_id << 16 | IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));
 	req->data_flags.fc_offset = offset;
 	req->queue_id.peer_sta_id = tx_priv->raw_link_id;
@@ -654,7 +654,7 @@ void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
 	struct wfx_vif *wvif;
 	struct ieee80211_sta *sta = control ? control->sta : NULL;
 	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	size_t driver_data_room = FIELD_SIZEOF(struct ieee80211_tx_info, rate_driver_data);
 
 	compiletime_assert(sizeof(struct wfx_tx_priv) <= driver_data_room,
@@ -662,7 +662,7 @@ void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
 	WARN(skb->next || skb->prev, "skb is already member of a list");
 	// control.vif can be NULL for injected frames
 	if (tx_info->control.vif)
-		wvif = (struct wfx_vif *) tx_info->control.vif->drv_priv;
+		wvif = (struct wfx_vif *)tx_info->control.vif->drv_priv;
 	else
 		wvif = wvif_iterate(wdev, NULL);
 	if (WARN_ON(!wvif))
@@ -762,7 +762,7 @@ static void wfx_notify_buffered_tx(struct wfx_vif *wvif, struct sk_buff *skb,
 				   struct hif_req_tx *req)
 {
 	struct ieee80211_sta *sta;
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int tid = wfx_tx_get_tid(hdr);
 	int raw_link_id = req->queue_id.peer_sta_id;
 	u8 *buffered;
@@ -787,8 +787,8 @@ static void wfx_notify_buffered_tx(struct wfx_vif *wvif, struct sk_buff *skb,
 
 void wfx_skb_dtor(struct wfx_dev *wdev, struct sk_buff *skb)
 {
-	struct hif_msg *hif = (struct hif_msg *) skb->data;
-	struct hif_req_tx *req = (struct hif_req_tx *) hif->body;
+	struct hif_msg *hif = (struct hif_msg *)skb->data;
+	struct hif_req_tx *req = (struct hif_req_tx *)hif->body;
 	struct wfx_vif *wvif = wdev_to_wvif(wdev, hif->interface);
 	unsigned int offset = sizeof(struct hif_req_tx) + sizeof(struct hif_msg) + req->data_flags.fc_offset;
 
diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index 0a19ef10a4ab..f74d1988925d 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -79,12 +79,12 @@ static inline struct wfx_tx_priv *wfx_skb_tx_priv(struct sk_buff *skb)
 	if (!skb)
 		return NULL;
 	tx_info = IEEE80211_SKB_CB(skb);
-	return (struct wfx_tx_priv *) tx_info->rate_driver_data;
+	return (struct wfx_tx_priv *)tx_info->rate_driver_data;
 }
 
 static inline struct hif_req_tx *wfx_skb_txreq(struct sk_buff *skb)
 {
-	struct hif_msg *hif = (struct hif_msg *) skb->data;
+	struct hif_msg *hif = (struct hif_msg *)skb->data;
 	struct hif_req_tx *req = (struct hif_req_tx *) hif->body;
 
 	return req;
-- 
2.21.0


