X-GM-THRID: 6205094295223926784
X-Received: by 10.107.165.5 with SMTP id o5mr23757533ioe.5.1444736098341;
        Tue, 13 Oct 2015 04:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.93 with SMTP id 90ls53301iod.21.gmail; Tue, 13 Oct 2015
 04:34:57 -0700 (PDT)
X-Received: by 10.107.167.13 with SMTP id q13mr15317700ioe.12.1444736097898;
        Tue, 13 Oct 2015 04:34:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si272406pbb.0.2015.10.13.04.34.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so19201104pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 04:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qYKOe0euJhPCzbh28bmauKhygZpS7yJIQFyZfoTkys4=;
        b=Um5EzAlcEtvUJWmDqtirDggYb200fSCMlaf6U1hktLDrlsKbIx2BxTitq+QxaURJqj
         oq9bkfS8dEHxdFrJ5mja3vRiVinHzD+hFpT0SQSgg7i/FXffmqQWWl7U+NEodFJ1GoF8
         bfAOfbuqQA7Mx9nAyBMEX9fPXhikPlK/KYZ1ANiLzLOLS+pReFQTiDIQOaPoRLvCUiWx
         tK22xc0Ph7H9j+t+piUDkRN9ImxMUMq/uRZFZh/wiAwZQiaS8WGpmDLXIk6fJzxrnYpf
         jSWbnyNnNdTuUYYfic4nQQRJJUXEAZkeK4+OjC9/DIr0dDvxw1FsIwI1Z5Wlu4FPVutR
         Z1RQ==
X-Received: by 10.66.145.193 with SMTP id sw1mr40229895pab.74.1444736097765;
        Tue, 13 Oct 2015 04:34:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id d2sm3454404pat.24.2015.10.13.04.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:34:56 -0700 (PDT)
Date: Tue, 13 Oct 2015 17:04:48 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: wilc_wlan: Remove unnecessary cast
Message-ID: <20151013113447.GA14023@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove cast which is not required.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 46 ++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index e11d3d3..43a788e 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -141,7 +141,7 @@ static inline void release_bus(BUS_RELEASE_T release)
 static void wilc_wlan_txq_remove(struct txq_entry_t *tqe)
 {
 
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	if (tqe == p->txq_head)	{
 
 		p->txq_head = tqe->next;
@@ -164,7 +164,7 @@ static void wilc_wlan_txq_remove(struct txq_entry_t *tqe)
 static struct txq_entry_t *wilc_wlan_txq_remove_from_head(void)
 {
 	struct txq_entry_t *tqe;
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	unsigned long flags;
 
 	spin_lock_irqsave(&g_linux_wlan->txq_spinlock, flags);
@@ -188,7 +188,7 @@ static struct txq_entry_t *wilc_wlan_txq_remove_from_head(void)
 
 static void wilc_wlan_txq_add_to_tail(struct txq_entry_t *tqe)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	unsigned long flags;
 	spin_lock_irqsave(&g_linux_wlan->txq_spinlock, flags);
 
@@ -218,7 +218,7 @@ static void wilc_wlan_txq_add_to_tail(struct txq_entry_t *tqe)
 
 static int wilc_wlan_txq_add_to_head(struct txq_entry_t *tqe)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	unsigned long flags;
 	if (linux_wlan_lock_timeout(&g_linux_wlan->txq_add_to_head_cs,
 				    CFG_PKTS_TIMEOUT))
@@ -335,7 +335,7 @@ static inline int add_TCP_Pending_Ack(u32 Ack, u32 Session_index, struct txq_ent
 }
 static inline int remove_TCP_related(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	unsigned long flags;
 
 	spin_lock_irqsave(&g_linux_wlan->txq_spinlock, flags);
@@ -351,7 +351,7 @@ static inline int tcp_process(struct txq_entry_t *tqe)
 	u8 *buffer = tqe->buffer;
 	unsigned short h_proto;
 	int i;
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	unsigned long flags;
 
 	spin_lock_irqsave(&g_linux_wlan->txq_spinlock, flags);
@@ -412,7 +412,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(void)
 
 	u32 i = 0;
 	u32 Dropped = 0;
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 
 	spin_lock_irqsave(&g_linux_wlan->txq_spinlock, p->txq_spinlock_flags);
 	for (i = PendingAcks_arrBase; i < (PendingAcks_arrBase + Pending_Acks); i++) {
@@ -468,7 +468,7 @@ bool is_TCP_ACK_Filter_Enabled(void)
 
 static int wilc_wlan_txq_add_cfg_pkt(u8 *buffer, u32 buffer_size)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	struct txq_entry_t *tqe;
 
 	PRINT_D(TX_DBG, "Adding config packet ...\n");
@@ -505,7 +505,7 @@ static int wilc_wlan_txq_add_cfg_pkt(u8 *buffer, u32 buffer_size)
 int wilc_wlan_txq_add_net_pkt(void *priv, u8 *buffer, u32 buffer_size,
 			      wilc_tx_complete_func_t func)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	struct txq_entry_t *tqe;
 
 	if (p->quit)
@@ -535,7 +535,7 @@ int wilc_wlan_txq_add_net_pkt(void *priv, u8 *buffer, u32 buffer_size,
 int wilc_wlan_txq_add_mgmt_pkt(void *priv, u8 *buffer, u32 buffer_size, wilc_tx_complete_func_t func)
 {
 
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	struct txq_entry_t *tqe;
 
 	if (p->quit)
@@ -560,7 +560,7 @@ int wilc_wlan_txq_add_mgmt_pkt(void *priv, u8 *buffer, u32 buffer_size, wilc_tx_
 
 static struct txq_entry_t *wilc_wlan_txq_get_first(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	struct txq_entry_t *tqe;
 	unsigned long flags;
 
@@ -588,7 +588,7 @@ static struct txq_entry_t *wilc_wlan_txq_get_next(struct txq_entry_t *tqe)
 
 static int wilc_wlan_rxq_add(struct rxq_entry_t *rqe)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 
 	if (p->quit)
 		return 0;
@@ -613,7 +613,7 @@ static int wilc_wlan_rxq_add(struct rxq_entry_t *rqe)
 
 static struct rxq_entry_t *wilc_wlan_rxq_remove(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 
 	PRINT_D(RX_DBG, "Getting rxQ element\n");
 	if (p->rxq_head) {
@@ -1113,7 +1113,7 @@ _end_:
 
 static void wilc_wlan_handle_rxq(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	int offset = 0, size, has_packet = 0;
 	u8 *buffer;
 	struct rxq_entry_t *rqe;
@@ -1267,7 +1267,7 @@ static void wilc_sleeptimer_isr_ext(u32 int_stats1)
 
 static void wilc_wlan_handle_isr_ext(u32 int_status)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 #ifdef MEMORY_STATIC
 	u32 offset = p->rx_buffer_offset;
 #endif
@@ -1395,7 +1395,7 @@ void wilc_handle_isr(void)
  ********************************************/
 int wilc_wlan_firmware_download(const u8 *buffer, u32 buffer_size)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	u32 offset;
 	u32 addr, size, size2, blksz;
 	u8 *dma_buffer;
@@ -1468,7 +1468,7 @@ _fail_1:
  ********************************************/
 int wilc_wlan_start(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	u32 reg = 0;
 	int ret;
 	u32 chipid;
@@ -1570,7 +1570,7 @@ int wilc_wlan_start(void)
 void wilc_wlan_global_reset(void)
 {
 
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 
 	acquire_bus(ACQUIRE_AND_WAKEUP);
 	p->hif_func.hif_write_reg(WILC_GLB_RESET_0, 0x0);
@@ -1578,7 +1578,7 @@ void wilc_wlan_global_reset(void)
 }
 int wilc_wlan_stop(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	u32 reg = 0;
 	int ret;
 	u8 timeout = 10;
@@ -1648,7 +1648,7 @@ int wilc_wlan_stop(void)
 
 void wilc_wlan_cleanup(void)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	struct txq_entry_t *tqe;
 	struct rxq_entry_t *rqe;
 	u32 reg = 0;
@@ -1708,7 +1708,7 @@ void wilc_wlan_cleanup(void)
 
 static int wilc_wlan_cfg_commit(int type, u32 drvHandler)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	wilc_cfg_frame_t *cfg = &p->cfg_frame;
 	int total_len = p->cfg_frame_offset + 4 + DRIVER_HANDLER_SIZE;
 	int seq_no = p->cfg_seq_no % 256;
@@ -1745,7 +1745,7 @@ static int wilc_wlan_cfg_commit(int type, u32 drvHandler)
 int wilc_wlan_cfg_set(int start, u32 wid, u8 *buffer, u32 buffer_size,
 		      int commit, u32 drvHandler)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	u32 offset;
 	int ret_size;
 
@@ -1785,7 +1785,7 @@ int wilc_wlan_cfg_set(int start, u32 wid, u8 *buffer, u32 buffer_size,
 }
 int wilc_wlan_cfg_get(int start, u32 wid, int commit, u32 drvHandler)
 {
-	wilc_wlan_dev_t *p = (wilc_wlan_dev_t *)&g_wlan;
+	wilc_wlan_dev_t *p = &g_wlan;
 	u32 offset;
 	int ret_size;
 
-- 
2.1.0


