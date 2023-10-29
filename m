Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735D033C7
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d+ydZkf+"
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6d2de704f53so1594043a34.2
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 15:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698617252; x=1699222052; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X6OdEyCxtbjCTgcsEmErtxvaS7lIqmEklHV5crpeUiI=;
        b=d+ydZkf+Qt+XQ8vxAHfkaCRklBL3R/MULipew2NneP/eTpgxMsMJjz97Dq8oFbWicV
         5IUDCptzR4tx+ChwJaWnsLbg7UKV36uGGY0pL0wgtZ1238C+J0/ShsGwSs47EOYraXAR
         KBQv0tMOKkQW8kjwUSMnzBUQbUunItk3M+69xhBJ4XDLaEzeMcQDhwUSKVlMY9wR/2xu
         RuhHq9i7bbINxs47SnTi6TT3MJmojj2dHNwWsNKDRHyRrW8cGlp5xIiYuTRf17fbsT3T
         hdDnKRks6NGyxj2PUzpvFgB+pq8jsAE1vuKp+ApisPnR34qnAT/pvgXeugcCdZQ0b/LP
         smNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698617252; x=1699222052;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6OdEyCxtbjCTgcsEmErtxvaS7lIqmEklHV5crpeUiI=;
        b=Y7LM/e2gkYV9wkfQFBCr0hSDflVyYtsZBhkpNyLbmz9gwlw9jEQpT3zITpgqMwCpLd
         +NFivcMFm4+ej2vt6YwmkIpxB/YHIMHNga8065zHjeqz5FJ2wbznXb6iWG3f/G+g795u
         i97d4JVW9jXnySMKO48lQBqCcdQz5/vWY7p85R8GzUzN49ZZ+CD231kqRPVdgbjZEl3G
         BhFuKR46QNv4IQBHB1yxhjraiCLqqcM7DFTqMPVCnWRICRVRUG+WixOSXErPvgpOCSMP
         PSprxbIttdgMYblDrU/oelqhFVVsxgv2EnyoGNf09+nSZr2n055tQEIA3i+5EIBsXQQs
         l5Hw==
X-Gm-Message-State: AOJu0Yz+RdL0tMmgA9yHBNxMSUSLkj8crOPybYVdjbZ5NcCbeP0wQTPc
	tvG50SAd25suXyWg4xzzzwxelAdRCDNH2QhD
X-Google-Smtp-Source: AGHT+IG7Pbdm9EtN756gbmyk5I6eTeMWk3LlcJx/TEh5jkhxsqQqIlWJiq+3sE/qxKblsFmwRM8UEg==
X-Received: by 2002:a05:6830:3b8b:b0:6c4:c026:a658 with SMTP id dm11-20020a0568303b8b00b006c4c026a658mr8766813otb.26.1698617252417;
        Sun, 29 Oct 2023 15:07:32 -0700 (PDT)
Received: from DESKTOP-EVNFDUR.home ([47.184.17.213])
        by smtp.gmail.com with ESMTPSA id v23-20020a9d6057000000b006c4edf462d7sm1205457otj.43.2023.10.29.15.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 15:07:32 -0700 (PDT)
Date: Sun, 29 Oct 2023 17:07:30 -0500
From: Jeremiah John <jeremiahjohn08706@gmail.com>
To: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: [PATCH v3] staging: octeon: change integer to kernel type
Message-ID: <ZT7XokRDIPqWiRpO@DESKTOP-EVNFDUR.home>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Change variable declarations of uint64_t, uint8_t, etc.
to standard C99 typedefs u8/u16/u32/u64 in octeon-stubs.h.

Reported by checkpatch:
CHECK: Prefer kernel type 'u64' over 'uint64_t'

Signed-off-by: Jeremiah John <jeremiahjohn08706@gmail.com>
---
Changes since v2:
	- Capitalized patch description
Changes since v1:
	-make the patch description adhere to standard writing style,
         noted by Julia Lawall <julia.lawall@inria.fr>
---
 drivers/staging/octeon/octeon-stubs.h | 126 +++++++++++++-------------
 1 file changed, 63 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 579c755cfdc0..7e106feeacb4 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -43,7 +43,7 @@
 #define CVMX_POW_WQ_INT_PC		0
 
 union cvmx_pip_wqe_word2 {
-	uint64_t u64;
+	u64 u64;
 	struct {
 		uint64_t bufs:8;
 		uint64_t ip_offset:8;
@@ -123,7 +123,7 @@ union cvmx_pip_wqe_word2 {
 union cvmx_pip_wqe_word0 {
 	struct {
 		uint64_t next_ptr:40;
-		uint8_t unused;
+		u8 unused;
 		__wsum hw_chksum;
 	} cn38xx;
 	struct {
@@ -139,12 +139,12 @@ union cvmx_pip_wqe_word0 {
 };
 
 union cvmx_wqe_word0 {
-	uint64_t u64;
+	u64 u64;
 	union cvmx_pip_wqe_word0 pip;
 };
 
 union cvmx_wqe_word1 {
-	uint64_t u64;
+	u64 u64;
 	struct {
 		uint64_t tag:32;
 		uint64_t tag_type:2;
@@ -174,7 +174,7 @@ union cvmx_wqe_word1 {
 
 union cvmx_buf_ptr {
 	void *ptr;
-	uint64_t u64;
+	u64 u64;
 	struct {
 		uint64_t i:1;
 		uint64_t back:4;
@@ -189,11 +189,11 @@ struct cvmx_wqe {
 	union cvmx_wqe_word1 word1;
 	union cvmx_pip_wqe_word2 word2;
 	union cvmx_buf_ptr packet_ptr;
-	uint8_t packet_data[96];
+	u8 packet_data[96];
 };
 
 union cvmx_helper_link_info {
-	uint64_t u64;
+	u64 u64;
 	struct {
 		uint64_t reserved_20_63:44;
 		uint64_t link_up:1;	    /**< Is the physical link up? */
@@ -262,7 +262,7 @@ enum cvmx_pow_tag_type {
 };
 
 union cvmx_ipd_ctl_status {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_ipd_ctl_status_s {
 		uint64_t reserved_18_63:46;
 		uint64_t use_sop:1;
@@ -358,7 +358,7 @@ union cvmx_ipd_ctl_status {
 };
 
 union cvmx_ipd_sub_port_fcs {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_ipd_sub_port_fcs_s {
 		uint64_t port_bit:32;
 		uint64_t reserved_32_35:4;
@@ -376,7 +376,7 @@ union cvmx_ipd_sub_port_fcs {
 };
 
 union cvmx_ipd_sub_port_qos_cnt {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_ipd_sub_port_qos_cnt_s {
 		uint64_t cnt:32;
 		uint64_t port_qos:9;
@@ -385,38 +385,38 @@ union cvmx_ipd_sub_port_qos_cnt {
 };
 
 struct cvmx_pip_port_status {
-	uint32_t dropped_octets;
-	uint32_t dropped_packets;
-	uint32_t pci_raw_packets;
-	uint32_t octets;
-	uint32_t packets;
-	uint32_t multicast_packets;
-	uint32_t broadcast_packets;
-	uint32_t len_64_packets;
-	uint32_t len_65_127_packets;
-	uint32_t len_128_255_packets;
-	uint32_t len_256_511_packets;
-	uint32_t len_512_1023_packets;
-	uint32_t len_1024_1518_packets;
-	uint32_t len_1519_max_packets;
-	uint32_t fcs_align_err_packets;
-	uint32_t runt_packets;
-	uint32_t runt_crc_packets;
-	uint32_t oversize_packets;
-	uint32_t oversize_crc_packets;
-	uint32_t inb_packets;
-	uint64_t inb_octets;
-	uint16_t inb_errors;
+	u32 dropped_octets;
+	u32 dropped_packets;
+	u32 pci_raw_packets;
+	u32 octets;
+	u32 packets;
+	u32 multicast_packets;
+	u32 broadcast_packets;
+	u32 len_64_packets;
+	u32 len_65_127_packets;
+	u32 len_128_255_packets;
+	u32 len_256_511_packets;
+	u32 len_512_1023_packets;
+	u32 len_1024_1518_packets;
+	u32 len_1519_max_packets;
+	u32 fcs_align_err_packets;
+	u32 runt_packets;
+	u32 runt_crc_packets;
+	u32 oversize_packets;
+	u32 oversize_crc_packets;
+	u32 inb_packets;
+	u64 inb_octets;
+	u16 inb_errors;
 };
 
 struct cvmx_pko_port_status {
-	uint32_t packets;
-	uint64_t octets;
-	uint64_t doorbell;
+	u32 packets;
+	u64 octets;
+	u64 doorbell;
 };
 
 union cvmx_pip_frm_len_chkx {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_pip_frm_len_chkx_s {
 		uint64_t reserved_32_63:32;
 		uint64_t maxlen:16;
@@ -425,7 +425,7 @@ union cvmx_pip_frm_len_chkx {
 };
 
 union cvmx_gmxx_rxx_frm_ctl {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_gmxx_rxx_frm_ctl_s {
 		uint64_t pre_chk:1;
 		uint64_t pre_strp:1;
@@ -522,7 +522,7 @@ union cvmx_gmxx_rxx_frm_ctl {
 };
 
 union cvmx_gmxx_rxx_int_reg {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_gmxx_rxx_int_reg_s {
 		uint64_t minerr:1;
 		uint64_t carext:1;
@@ -711,7 +711,7 @@ union cvmx_gmxx_rxx_int_reg {
 };
 
 union cvmx_gmxx_prtx_cfg {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_gmxx_prtx_cfg_s {
 		uint64_t reserved_22_63:42;
 		uint64_t pknd:6;
@@ -748,7 +748,7 @@ union cvmx_gmxx_prtx_cfg {
 };
 
 union cvmx_gmxx_rxx_adr_ctl {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_gmxx_rxx_adr_ctl_s {
 		uint64_t reserved_4_63:60;
 		uint64_t cam_mode:1;
@@ -758,7 +758,7 @@ union cvmx_gmxx_rxx_adr_ctl {
 };
 
 union cvmx_pip_prt_tagx {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_pip_prt_tagx_s {
 		uint64_t reserved_54_63:10;
 		uint64_t portadd_en:1;
@@ -851,7 +851,7 @@ union cvmx_pip_prt_tagx {
 };
 
 union cvmx_spxx_int_reg {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_spxx_int_reg_s {
 		uint64_t reserved_32_63:32;
 		uint64_t spf:1;
@@ -871,7 +871,7 @@ union cvmx_spxx_int_reg {
 };
 
 union cvmx_spxx_int_msk {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_spxx_int_msk_s {
 		uint64_t reserved_12_63:52;
 		uint64_t calerr:1;
@@ -889,7 +889,7 @@ union cvmx_spxx_int_msk {
 };
 
 union cvmx_pow_wq_int {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_pow_wq_int_s {
 		uint64_t wq_int:16;
 		uint64_t iq_dis:16;
@@ -898,7 +898,7 @@ union cvmx_pow_wq_int {
 };
 
 union cvmx_sso_wq_int_thrx {
-	uint64_t u64;
+	u64 u64;
 	struct {
 		uint64_t iq_thr:12;
 		uint64_t reserved_12_13:2;
@@ -911,7 +911,7 @@ union cvmx_sso_wq_int_thrx {
 };
 
 union cvmx_stxx_int_reg {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_stxx_int_reg_s {
 		uint64_t reserved_9_63:55;
 		uint64_t syncerr:1;
@@ -927,7 +927,7 @@ union cvmx_stxx_int_reg {
 };
 
 union cvmx_stxx_int_msk {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_stxx_int_msk_s {
 		uint64_t reserved_8_63:56;
 		uint64_t frmerr:1;
@@ -942,7 +942,7 @@ union cvmx_stxx_int_msk {
 };
 
 union cvmx_pow_wq_int_pc {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_pow_wq_int_pc_s {
 		uint64_t reserved_0_7:8;
 		uint64_t pc_thr:20;
@@ -953,7 +953,7 @@ union cvmx_pow_wq_int_pc {
 };
 
 union cvmx_pow_wq_int_thrx {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_pow_wq_int_thrx_s {
 		uint64_t reserved_29_63:35;
 		uint64_t tc_en:1;
@@ -1002,7 +1002,7 @@ union cvmx_pow_wq_int_thrx {
 };
 
 union cvmx_npi_rsl_int_blocks {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_npi_rsl_int_blocks_s {
 		uint64_t reserved_32_63:32;
 		uint64_t rint_31:1;
@@ -1140,7 +1140,7 @@ union cvmx_npi_rsl_int_blocks {
 };
 
 union cvmx_pko_command_word0 {
-	uint64_t u64;
+	u64 u64;
 	struct {
 		uint64_t total_bytes:16;
 		uint64_t segs:6;
@@ -1162,7 +1162,7 @@ union cvmx_pko_command_word0 {
 };
 
 union cvmx_ciu_timx {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_ciu_timx_s {
 		uint64_t reserved_37_63:27;
 		uint64_t one_shot:1;
@@ -1171,7 +1171,7 @@ union cvmx_ciu_timx {
 };
 
 union cvmx_gmxx_rxx_rx_inbnd {
-	uint64_t u64;
+	u64 u64;
 	struct cvmx_gmxx_rxx_rx_inbnd_s {
 		uint64_t status:1;
 		uint64_t speed:2;
@@ -1199,7 +1199,7 @@ static inline uint64_t cvmx_scratch_read64(uint64_t address)
 	return 0;
 }
 
-static inline void cvmx_scratch_write64(uint64_t address, uint64_t value)
+static inline void cvmx_scratch_write64(u64 address, uint64_t value)
 { }
 
 static inline int cvmx_wqe_get_grp(struct cvmx_wqe *work)
@@ -1235,7 +1235,7 @@ static inline uint64_t cvmx_read_csr(uint64_t csr_addr)
 	return 0;
 }
 
-static inline void cvmx_write_csr(uint64_t csr_addr, uint64_t val)
+static inline void cvmx_write_csr(u64 csr_addr, uint64_t val)
 { }
 
 static inline int cvmx_helper_setup_red(int pass_thresh, int drop_thresh)
@@ -1257,11 +1257,11 @@ static inline int octeon_is_simulation(void)
 	return 1;
 }
 
-static inline void cvmx_pip_get_port_status(uint64_t port_num, uint64_t clear,
+static inline void cvmx_pip_get_port_status(u64 port_num, u64 clear,
 					    struct cvmx_pip_port_status *status)
 { }
 
-static inline void cvmx_pko_get_port_status(uint64_t port_num, uint64_t clear,
+static inline void cvmx_pko_get_port_status(u64 port_num, u64 clear,
 					    struct cvmx_pko_port_status *status)
 { }
 
@@ -1362,12 +1362,12 @@ static inline struct cvmx_wqe *cvmx_pow_work_request_sync(enum cvmx_pow_wait wai
 }
 
 static inline int cvmx_spi_restart_interface(int interface,
-					enum cvmx_spi_mode mode, int timeout)
+					     enum cvmx_spi_mode mode, int timeout)
 {
 	return 0;
 }
 
-static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
+static inline void cvmx_fau_async_fetch_and_add32(u64 scraddr,
 						  enum cvmx_fau_reg_32 reg,
 						  int32_t value)
 { }
@@ -1380,12 +1380,12 @@ static inline union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed(int interfac
 	return r;
 }
 
-static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
+static inline void cvmx_pko_send_packet_prepare(u64 port, uint64_t queue,
 						enum cvmx_pko_lock use_locking)
 { }
 
-static inline enum cvmx_pko_status cvmx_pko_send_packet_finish(uint64_t port,
-		uint64_t queue, union cvmx_pko_command_word0 pko_command,
+static inline enum cvmx_pko_status cvmx_pko_send_packet_finish(u64 port,
+							       u64 queue, union cvmx_pko_command_word0 pko_command,
 		union cvmx_buf_ptr packet, enum cvmx_pko_lock use_locking)
 {
 	return 0;
@@ -1407,7 +1407,7 @@ static inline void cvmx_wqe_set_grp(struct cvmx_wqe *work, int grp)
 
 static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
 					enum cvmx_pow_tag_type tag_type,
-					uint64_t qos, uint64_t grp)
+					u64 qos, uint64_t grp)
 { }
 
 #define CVMX_ASXX_RX_CLK_SETX(a, b)	((a) + (b))
-- 
2.41.0

