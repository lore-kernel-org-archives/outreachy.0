X-GM-THRID: 6746422022313607168
X-Received: by 2002:a05:6808:7ca:: with SMTP id f10mr10732666oij.96.1570773792177;
        Thu, 10 Oct 2019 23:03:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4fcd:: with SMTP id d196ls1215557oib.16.gmail; Thu, 10
 Oct 2019 23:03:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx72hGXTbl3aXj8eF8cWah7YkHm6rxhFjRm+S7DZ4I8KBaylYDfX5/oUUgszFw5xgiLwDJn
X-Received: by 2002:aca:c4d4:: with SMTP id u203mr10974431oif.121.1570773791232;
        Thu, 10 Oct 2019 23:03:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773791; cv=none;
        d=google.com; s=arc-20160816;
        b=DSUwaSIFdy+6uFD+kdG5QPLbht0twIpvrw10SHe+1Dr6C4b/eWPqR0PJBYdTODo6a+
         LlejVb5rDdhH2WEuP6bp4SWPQNyEVMnZEpwunFavofKE6JlrFRCF4zlaMbXAK/Ja7VzR
         AACEgHZk5ntoQEGIgxF8yf601OHQr/1M7iKqTwynWAx0KnSZIcopETWdjBs67sswr1CV
         WlaZZjD6TL30qZy3wJJIz5HsrN9QrE76iZ841GpLH7bjQw8bcSuuA2/dkreJWvWima3W
         UoU3OG7biwZ3M90wrE5VY8WGsTMKheLJOES9NOg0IwHS/MUoMpyx+QNFalxlPb/oKVB1
         N1Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=50AeV5Io7UlHLBz/iP44MJdWxv7S1CYc0Tp6+tcYqFk=;
        b=n/O/VBA8u7DH0bUeHETSHjhDCYTsJLERbL7ecgPDA8Q9JXWyckyM30z38tPlaA00JY
         BNTwE31fgNt923xdoBBcKMEeUM3OjF5v2fQq/0HB3MsPCuWMTNlmiKUlzioK2ndEvTkQ
         Ia9ctwrMcDU5QIDHDm7sSYQFQNpBgH/eIxLcnJ+C9G+7N3USbMvV9qIxogbslr4T0d5V
         I/QGdubFyQAxvLj7kyuYPp1/I+IeDxS0hoVvxPFU6xS0m2lU2KRXOgC/2stHX+XB897T
         edbMys2By3qzyVwybtFMbq3PoBMSGrDdP4S3t72ClAn+uE/cf87lq+Tb0UobbTPbXsBd
         KqwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h4ICRkSB;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n10si40850otf.2.2019.10.10.23.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h4ICRkSB;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id q5so5388815pfg.13
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 23:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=50AeV5Io7UlHLBz/iP44MJdWxv7S1CYc0Tp6+tcYqFk=;
        b=h4ICRkSBt+POlGhaR87KqE4PEwoAu6KX2xMVLXF3DXMeClAQVbXLPe89g57GI9uaHE
         xVEwS6vyWXAg6uk0ti+lAiPD+B5vxnRW84X3XNlwUiF6efEBmJdAsUu0+hmWl6iAZawm
         bXk/fdiY7xD123eITkig8BhNjaOdnDvsg/iSCjB+4LXpdfVURklUEe/QJYxYNqpvVuul
         FeMHQPDDOoG7veLiL51zU4JNhT4IVITos5f9M3KpQvipmQ4EP0DMxE8mx7zXQBB2eICx
         v7ors+r3kaywLcg7nJDhUBfQPdVzVU8Hkg329yfFm0qkFQC79lCoDraZBwUqc9327y6p
         fqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=50AeV5Io7UlHLBz/iP44MJdWxv7S1CYc0Tp6+tcYqFk=;
        b=NUushQKFMeKDIO7qBZnqDIuPHDgO72y4tTguxl4sMcluozQc1N2pl1s9GkkifrvZVg
         t2EmRyj8kBAiz5nEk5eLUzaZBaIyLAWWUaINj8so7MV8fWsmZC3zmtE+4qCkJChsEQjK
         hWCQ+FGHa0Qz08X+ZRrnIhQUlHQK85ZVTI563BYTGpBF4VtWLvZirXT31VSLk3aKPhXO
         3ArMc4zSO20fBqzw0aWdO+OXCGRfIZnbqxUQZdDSKTXwa0yjzDAsJd6HHhIyptCNOnwy
         d3eDdXr8w/yXusCbwYQYauP1aVyCNjX/SMUI+jhrsNdyS+XvJUOPp1tuajvt6pLXO4bm
         P3zA==
X-Gm-Message-State: APjAAAXIGW3Qf4IjU1XOn33bKhU0AdrRwYQRn0Bs7rE3qP/dcb05fE9p
	qEieL8sAyclmbgFVrEXLGynEBmjRqzRWKg==
X-Received: by 2002:a17:90a:24ab:: with SMTP id i40mr15774392pje.121.1570773790235;
        Thu, 10 Oct 2019 23:03:10 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 23:03:09 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 1/5] staging: octeon: remove typedef declaration for cvmx_wqe_t
Date: Fri, 11 Oct 2019 09:02:38 +0300
Message-Id: <1b16bc880fee5711f96ed82741f8268e4dac1ae6.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove typedef declaration from struct cvmx_wqe_t in
drivers/staging/octeon/octeon-stubs.h.
Also replace its previous uses with new struct declaration.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c  |  6 +++---
 drivers/staging/octeon/ethernet-tx.c  |  2 +-
 drivers/staging/octeon/ethernet.c     |  2 +-
 drivers/staging/octeon/octeon-stubs.h | 22 +++++++++++-----------
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index 0e65955c746b..63e15a70f3e7 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -60,7 +60,7 @@ static irqreturn_t cvm_oct_do_interrupt(int irq, void *napi_id)
  *
  * Returns Non-zero if the packet can be dropped, zero otherwise.
  */
-static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
+static inline int cvm_oct_check_rcv_error(struct cvmx_wqe_t *work)
 {
 	int port;
 
@@ -135,7 +135,7 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 	return 0;
 }
 
-static void copy_segments_to_skb(cvmx_wqe_t *work, struct sk_buff *skb)
+static void copy_segments_to_skb(struct cvmx_wqe_t *work, struct sk_buff *skb)
 {
 	int segments = work->word2.s.bufs;
 	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
@@ -215,7 +215,7 @@ static int cvm_oct_poll(struct oct_rx_group *rx_group, int budget)
 		struct sk_buff *skb = NULL;
 		struct sk_buff **pskb = NULL;
 		int skb_in_hw;
-		cvmx_wqe_t *work;
+		struct cvmx_wqe_t *work;
 		int port;
 
 		if (USE_ASYNC_IOBDMA && did_work_request)
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index c64728fc21f2..7ececfac0701 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -515,7 +515,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 	void *copy_location;
 
 	/* Get a work queue entry */
-	cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
+	struct cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
 
 	if (unlikely(!work)) {
 		printk_ratelimited("%s: Failed to allocate a work queue entry\n",
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index cf8e9a23ebf9..3de209b7d0ec 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -172,7 +172,7 @@ static void cvm_oct_configure_common_hw(void)
  */
 int cvm_oct_free_work(void *work_queue_entry)
 {
-	cvmx_wqe_t *work = work_queue_entry;
+	struct cvmx_wqe_t *work = work_queue_entry;
 
 	int segments = work->word2.s.bufs;
 	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index b2e3c72205dd..fd7522f70f7e 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -183,13 +183,13 @@ union cvmx_buf_ptr {
 	} s;
 };
 
-typedef struct {
+struct cvmx_wqe_t {
 	union cvmx_wqe_word0 word0;
 	union cvmx_wqe_word1 word1;
 	union cvmx_pip_wqe_word2 word2;
 	union cvmx_buf_ptr packet_ptr;
 	uint8_t packet_data[96];
-} cvmx_wqe_t;
+};
 
 typedef union {
 	uint64_t u64;
@@ -1198,7 +1198,7 @@ static inline uint64_t cvmx_scratch_read64(uint64_t address)
 static inline void cvmx_scratch_write64(uint64_t address, uint64_t value)
 { }
 
-static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_grp(struct cvmx_wqe_t *work)
 {
 	return 0;
 }
@@ -1345,14 +1345,14 @@ static inline void cvmx_pow_work_request_async(int scr_addr,
 						       cvmx_pow_wait_t wait)
 { }
 
-static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
+static inline struct cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
 {
-	cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;
+	struct cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;
 
 	return wqe;
 }
 
-static inline cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
+static inline struct cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
 {
 	return (void *)(unsigned long)wait;
 }
@@ -1390,21 +1390,21 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
 	return ret;
 }
 
-static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
+static inline void cvmx_wqe_set_port(struct cvmx_wqe_t *work, int port)
 { }
 
-static inline void cvmx_wqe_set_qos(cvmx_wqe_t *work, int qos)
+static inline void cvmx_wqe_set_qos(struct cvmx_wqe_t *work, int qos)
 { }
 
-static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_qos(struct cvmx_wqe_t *work)
 {
 	return 0;
 }
 
-static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
+static inline void cvmx_wqe_set_grp(struct cvmx_wqe_t *work, int grp)
 { }
 
-static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
+static inline void cvmx_pow_work_submit(struct cvmx_wqe_t *wqp, uint32_t tag,
 					enum cvmx_pow_tag_type tag_type,
 					uint64_t qos, uint64_t grp)
 { }
-- 
2.23.0


