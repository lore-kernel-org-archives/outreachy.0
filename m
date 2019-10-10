X-GM-THRID: 6745885278091608064
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr427279wme.74.1570743625547;
        Thu, 10 Oct 2019 14:40:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:526c:: with SMTP id l12ls1792351wrc.12.gmail; Thu, 10
 Oct 2019 14:40:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAwB6Xet+mL4+4hL88GDaE8mzPKOYPfq0btdmb1j9jJkndpqHgc6bmW0+GzP9AmOPmJFa4
X-Received: by 2002:a5d:6592:: with SMTP id q18mr10984691wru.382.1570743624545;
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570743624; cv=none;
        d=google.com; s=arc-20160816;
        b=Lu2KCpccvW657ivvGBsplEcy7Dj13BT9A7bZjO83BEw8uH3BofNlZgsuwKsq/gy4VJ
         u+x/Vol+/En+vBHdXazPH94yPDtRPZNiCv+KesmQDOGHmaqP9WOkcfR8HwWkPF6LsOm1
         JndAw62vjZIjno/a9nd9bnRJVQ2G4xHLI16xrOOZwKCKX/i+79U5YA0Ys8rAjkNLUn+T
         vzsf8BQO3SewsMvVfxylHKFHrSGI9Qs2KYLqA+Hlteki9qwyTLK6te8Oo8zOu204bsuu
         mn0lY2VLO//+uyLf7+gGt8z5qx4/TlBwZuDIXsQAWA0Z4GgLDYmv3rFuuucKLSl8xZTT
         YdTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XQvgfNCx7Me6KQq5x2scv8AVeu3WympjrZ+jHNj4vsA=;
        b=MkQx6LCeccQc37qaR7QY93J0IfeFmnIUqnSrWjSBLIlLJO6pkAVECZB7VR+Ll31vh6
         2v/v114WNqbZfGASEPIVjs/sp4nAvHDC06YVEOiLilzJ/rmCVnOQ03ZV2zEqcCUnyF6m
         0z4516goCW8882hEZFs4IUMz9SdMfRXPtz3gKLMWgQTwwAEqyHtLhBAyCS+wA8h1bA4l
         ruVWubVIoluItDFrjD9Ax2xWVatjpoBYcmP3R6Eer25eroPpWRnsDDTE35Nh8JvxttJZ
         3zQO8JrZXJcYTKZHM17sqaiuVAsEytSD0fiw3dEMATDsJ0ng8KLLC62vNBwdgo49ggUF
         G+Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+YmtMVo;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q185si303852wme.1.2019.10.10.14.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+YmtMVo;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id z9so9573495wrl.11
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XQvgfNCx7Me6KQq5x2scv8AVeu3WympjrZ+jHNj4vsA=;
        b=T+YmtMVoowMr5IBXW0+FdWn0vbtHW7FbAuUa1ntcwCGuvPVUhVkgHbFTCb30bTU5xh
         4w8XrKetdl3Qna3g5cJqIsXq6dM5dt2wA019CchsHO5fwS1n6YLxTLtC7fSVvANzS6L4
         SFYdugIe8WPNzfZN8aPaSlMQZMI3I66LUkbtaqXDVgCtU9oZxt/08GMXheENdau7gFAv
         Ha+aT09h1W6GaC9EETvY/qeBBvyqdzDoZG56ODhieq9H7n3Ct1i/w9u0D2Ylp5SJ77nO
         NVwmE5nbke71mHAdelp3JzhLhWlDfYr/iKNtOxdNuIJZqChrvPPwrecBNj08ugznUwSL
         ZZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XQvgfNCx7Me6KQq5x2scv8AVeu3WympjrZ+jHNj4vsA=;
        b=tbH64E7JMo3MPlY1sAt9228ep4QrhFng6M17usLzzm5nTW7ueisFVli4EfROQQxf5f
         opWbRtSmmKhWmXy3Z/zkFK0UpAYal5rur8B0JrVAeDv9xWXmDK+JgC1axs675dYFkD9Z
         LPOWYioWowX+lkhcUaM/kv++Q9RNO2jU92ZZSR+Q/h5JovL+60j5YgJaLSnr2xbFttUV
         NPxA8a0jn5G8Gd6gCRknyNbFUY39bEe5faRp3sf+nax970zLsxgoFE4poefQoEHc/r7c
         BZFfUXmpjdVV/y4lScXDBOJEEJF+mUMb64s9YlFxoV8H+T1qY2yp8TGXMvJBIh3wvABZ
         Uphw==
X-Gm-Message-State: APjAAAUTsJkz85pCBWO5BKwU34k+4MKdr06pw46vdUx4MpW7RLZnQewO
	Y83hu3kL7v00HMvDCzutYVLLhN1YE9n5
X-Received: by 2002:a5d:4e8c:: with SMTP id e12mr10439939wru.131.1570743623688;
        Thu, 10 Oct 2019 14:40:23 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id h63sm11455423wmf.15.2019.10.10.14.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:40:23 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH v1 2/5] staging: qlge: fix "alignment should match open parenthesis" checks
Date: Thu, 10 Oct 2019 22:40:03 +0100
Message-Id: <20191010214006.23677-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix "alignment should mactch open parenthesis" checks
 issued by checkpatch.pl tool:
"CHECK: Alignment should match open parenthesis".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 182 ++++++++++++++++----------------
 1 file changed, 91 insertions(+), 91 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 28fc974ce982..27aa8de3b5ff 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -7,7 +7,7 @@
 
 /* Read a NIC register from the alternate function. */
 static u32 ql_read_other_func_reg(struct ql_adapter *qdev,
-						u32 reg)
+				  u32 reg)
 {
 	u32 register_to_read;
 	u32 reg_val;
@@ -26,7 +26,7 @@ static u32 ql_read_other_func_reg(struct ql_adapter *qdev,
 
 /* Write a NIC register from the alternate function. */
 static int ql_write_other_func_reg(struct ql_adapter *qdev,
-					u32 reg, u32 reg_val)
+				   u32 reg, u32 reg_val)
 {
 	u32 register_to_read;
 	int status = 0;
@@ -41,7 +41,7 @@ static int ql_write_other_func_reg(struct ql_adapter *qdev,
 }
 
 static int ql_wait_other_func_reg_rdy(struct ql_adapter *qdev, u32 reg,
-					u32 bit, u32 err_bit)
+				      u32 bit, u32 err_bit)
 {
 	u32 temp;
 	int count = 10;
@@ -61,13 +61,13 @@ static int ql_wait_other_func_reg_rdy(struct ql_adapter *qdev, u32 reg,
 }
 
 static int ql_read_other_func_serdes_reg(struct ql_adapter *qdev, u32 reg,
-							u32 *data)
+					 u32 *data)
 {
 	int status;
 
 	/* wait for reg to come ready */
 	status = ql_wait_other_func_reg_rdy(qdev, XG_SERDES_ADDR / 4,
-						XG_SERDES_ADDR_RDY, 0);
+					    XG_SERDES_ADDR_RDY, 0);
 	if (status)
 		goto exit;
 
@@ -76,7 +76,7 @@ static int ql_read_other_func_serdes_reg(struct ql_adapter *qdev, u32 reg,
 
 	/* wait for reg to come ready */
 	status = ql_wait_other_func_reg_rdy(qdev, XG_SERDES_ADDR / 4,
-						XG_SERDES_ADDR_RDY, 0);
+					    XG_SERDES_ADDR_RDY, 0);
 	if (status)
 		goto exit;
 
@@ -111,7 +111,7 @@ static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
 }
 
 static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
-			u32 *direct_ptr, u32 *indirect_ptr,
+			       u32 *direct_ptr, u32 *indirect_ptr,
 			unsigned int direct_valid, unsigned int indirect_valid)
 {
 	unsigned int status;
@@ -133,7 +133,7 @@ static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
 }
 
 static int ql_get_serdes_regs(struct ql_adapter *qdev,
-				struct ql_mpi_coredump *mpi_coredump)
+			      struct ql_mpi_coredump *mpi_coredump)
 {
 	int status;
 	unsigned int xfi_direct_valid, xfi_indirect_valid, xaui_direct_valid;
@@ -203,7 +203,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	for (i = 0; i <= 0x000000034; i += 4, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xaui_direct_valid, xaui_indirect_valid);
+				   xaui_direct_valid, xaui_indirect_valid);
 
 	/* Get XAUI_HSS_PCS register block. */
 	if (qdev->func & 1) {
@@ -220,7 +220,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	for (i = 0x800; i <= 0x880; i += 4, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xaui_direct_valid, xaui_indirect_valid);
+				   xaui_direct_valid, xaui_indirect_valid);
 
 	/* Get XAUI_XFI_AN register block. */
 	if (qdev->func & 1) {
@@ -233,7 +233,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	for (i = 0x1000; i <= 0x1034; i += 4, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xfi_direct_valid, xfi_indirect_valid);
+				   xfi_direct_valid, xfi_indirect_valid);
 
 	/* Get XAUI_XFI_TRAIN register block. */
 	if (qdev->func & 1) {
@@ -248,7 +248,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	for (i = 0x1050; i <= 0x107c; i += 4, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xfi_direct_valid, xfi_indirect_valid);
+				   xfi_direct_valid, xfi_indirect_valid);
 
 	/* Get XAUI_XFI_HSS_PCS register block. */
 	if (qdev->func & 1) {
@@ -265,7 +265,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	for (i = 0x1800; i <= 0x1838; i += 4, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xfi_direct_valid, xfi_indirect_valid);
+				   xfi_direct_valid, xfi_indirect_valid);
 
 	/* Get XAUI_XFI_HSS_TX register block. */
 	if (qdev->func & 1) {
@@ -280,7 +280,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 	}
 	for (i = 0x1c00; i <= 0x1c1f; i++, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xfi_direct_valid, xfi_indirect_valid);
+				   xfi_direct_valid, xfi_indirect_valid);
 
 	/* Get XAUI_XFI_HSS_RX register block. */
 	if (qdev->func & 1) {
@@ -296,7 +296,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	for (i = 0x1c40; i <= 0x1c5f; i++, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xfi_direct_valid, xfi_indirect_valid);
+				   xfi_direct_valid, xfi_indirect_valid);
 
 
 	/* Get XAUI_XFI_HSS_PLL register block. */
@@ -313,18 +313,18 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 	}
 	for (i = 0x1e00; i <= 0x1e1f; i++, direct_ptr++, indirect_ptr++)
 		ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr,
-					xfi_direct_valid, xfi_indirect_valid);
+				   xfi_direct_valid, xfi_indirect_valid);
 	return 0;
 }
 
 static int ql_read_other_func_xgmac_reg(struct ql_adapter *qdev, u32 reg,
-							u32 *data)
+					u32 *data)
 {
 	int status = 0;
 
 	/* wait for reg to come ready */
 	status = ql_wait_other_func_reg_rdy(qdev, XGMAC_ADDR / 4,
-						XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
+					    XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 	if (status)
 		goto exit;
 
@@ -333,7 +333,7 @@ static int ql_read_other_func_xgmac_reg(struct ql_adapter *qdev, u32 reg,
 
 	/* wait for reg to come ready */
 	status = ql_wait_other_func_reg_rdy(qdev, XGMAC_ADDR / 4,
-						XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
+					    XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 	if (status)
 		goto exit;
 
@@ -347,7 +347,7 @@ static int ql_read_other_func_xgmac_reg(struct ql_adapter *qdev, u32 reg,
  * skipping unused locations.
  */
 static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
-					unsigned int other_function)
+			     unsigned int other_function)
 {
 	int status = 0;
 	int i;
@@ -357,7 +357,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
-			(i == 0x00000118) ||
+		    (i == 0x00000118) ||
 			(i == 0x0000013c) ||
 			(i == 0x00000140) ||
 			(i > 0x00000150 && i < 0x000001fc) ||
@@ -410,7 +410,7 @@ static void ql_get_intr_states(struct ql_adapter *qdev, u32 *buf)
 
 	for (i = 0; i < qdev->rx_ring_count; i++, buf++) {
 		ql_write32(qdev, INTR_EN,
-				qdev->intr_context[i].intr_read_mask);
+			   qdev->intr_context[i].intr_read_mask);
 		*buf = ql_read32(qdev, INTR_EN);
 	}
 }
@@ -426,7 +426,7 @@ static int ql_get_cam_entries(struct ql_adapter *qdev, u32 *buf)
 
 	for (i = 0; i < 16; i++) {
 		status = ql_get_mac_addr_reg(qdev,
-					MAC_ADDR_TYPE_CAM_MAC, i, value);
+					     MAC_ADDR_TYPE_CAM_MAC, i, value);
 		if (status) {
 			netif_err(qdev, drv, qdev->ndev,
 				  "Failed read of mac index register\n");
@@ -438,7 +438,7 @@ static int ql_get_cam_entries(struct ql_adapter *qdev, u32 *buf)
 	}
 	for (i = 0; i < 32; i++) {
 		status = ql_get_mac_addr_reg(qdev,
-					MAC_ADDR_TYPE_MULTI_MAC, i, value);
+					     MAC_ADDR_TYPE_MULTI_MAC, i, value);
 		if (status) {
 			netif_err(qdev, drv, qdev->ndev,
 				  "Failed read of mac index register\n");
@@ -497,7 +497,7 @@ static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
 
 /* Read the MPI Processor core registers */
 static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
-				u32 offset, u32 count)
+			   u32 offset, u32 count)
 {
 	int i, status = 0;
 	for (i = 0; i < count; i++, buf++) {
@@ -510,7 +510,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
 
 /* Read the ASIC probe dump */
 static unsigned int *ql_get_probe(struct ql_adapter *qdev, u32 clock,
-					u32 valid, u32 *buf)
+				  u32 valid, u32 *buf)
 {
 	u32 module, mux_sel, probe, lo_val, hi_val;
 
@@ -545,13 +545,13 @@ static int ql_get_probe_dump(struct ql_adapter *qdev, unsigned int *buf)
 	/* First we have to enable the probe mux */
 	ql_write_mpi_reg(qdev, MPI_TEST_FUNC_PRB_CTL, MPI_TEST_FUNC_PRB_EN);
 	buf = ql_get_probe(qdev, PRB_MX_ADDR_SYS_CLOCK,
-			PRB_MX_ADDR_VALID_SYS_MOD, buf);
+			   PRB_MX_ADDR_VALID_SYS_MOD, buf);
 	buf = ql_get_probe(qdev, PRB_MX_ADDR_PCI_CLOCK,
-			PRB_MX_ADDR_VALID_PCI_MOD, buf);
+			   PRB_MX_ADDR_VALID_PCI_MOD, buf);
 	buf = ql_get_probe(qdev, PRB_MX_ADDR_XGM_CLOCK,
-			PRB_MX_ADDR_VALID_XGM_MOD, buf);
+			   PRB_MX_ADDR_VALID_XGM_MOD, buf);
 	buf = ql_get_probe(qdev, PRB_MX_ADDR_FC_CLOCK,
-			PRB_MX_ADDR_VALID_FC_MOD, buf);
+			   PRB_MX_ADDR_VALID_FC_MOD, buf);
 	return 0;
 
 }
@@ -666,7 +666,7 @@ static void ql_get_mac_protocol_registers(struct ql_adapter *qdev, u32 *buf)
 				result_index = 0;
 				while ((result_index & MAC_ADDR_MR) == 0) {
 					result_index = ql_read32(qdev,
-								MAC_ADDR_IDX);
+								 MAC_ADDR_IDX);
 				}
 				result_data = ql_read32(qdev, MAC_ADDR_DATA);
 				*buf = result_index;
@@ -740,7 +740,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Insert the global header */
 	memset(&(mpi_coredump->mpi_global_header), 0,
-		sizeof(struct mpi_coredump_global_header));
+	       sizeof(struct mpi_coredump_global_header));
 	mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
 	mpi_coredump->mpi_global_header.headerSize =
 		sizeof(struct mpi_coredump_global_header);
@@ -751,23 +751,23 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get generic NIC reg dump */
 	ql_build_coredump_seg_header(&mpi_coredump->nic_regs_seg_hdr,
-			NIC1_CONTROL_SEG_NUM,
+				     NIC1_CONTROL_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->nic_regs), "NIC1 Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->nic2_regs_seg_hdr,
-			NIC2_CONTROL_SEG_NUM,
+				     NIC2_CONTROL_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->nic2_regs), "NIC2 Registers");
 
 	/* Get XGMac registers. (Segment 18, Rev C. step 21) */
 	ql_build_coredump_seg_header(&mpi_coredump->xgmac1_seg_hdr,
-			NIC1_XGMAC_SEG_NUM,
+				     NIC1_XGMAC_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->xgmac1), "NIC1 XGMac Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xgmac2_seg_hdr,
-			NIC2_XGMAC_SEG_NUM,
+				     NIC2_XGMAC_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->xgmac2), "NIC2 XGMac Registers");
 
@@ -798,97 +798,97 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Rev C. Step 20a */
 	ql_build_coredump_seg_header(&mpi_coredump->xaui_an_hdr,
-			XAUI_AN_SEG_NUM,
+				     XAUI_AN_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xaui_an),
 			"XAUI AN Registers");
 
 	/* Rev C. Step 20b */
 	ql_build_coredump_seg_header(&mpi_coredump->xaui_hss_pcs_hdr,
-			XAUI_HSS_PCS_SEG_NUM,
+				     XAUI_HSS_PCS_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xaui_hss_pcs),
 			"XAUI HSS PCS Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi_an_hdr, XFI_AN_SEG_NUM,
-			sizeof(struct mpi_coredump_segment_header) +
+				     sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xfi_an),
 			"XFI AN Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi_train_hdr,
-			XFI_TRAIN_SEG_NUM,
+				     XFI_TRAIN_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xfi_train),
 			"XFI TRAIN Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi_hss_pcs_hdr,
-			XFI_HSS_PCS_SEG_NUM,
+				     XFI_HSS_PCS_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xfi_hss_pcs),
 			"XFI HSS PCS Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi_hss_tx_hdr,
-			XFI_HSS_TX_SEG_NUM,
+				     XFI_HSS_TX_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xfi_hss_tx),
 			"XFI HSS TX Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi_hss_rx_hdr,
-			XFI_HSS_RX_SEG_NUM,
+				     XFI_HSS_RX_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xfi_hss_rx),
 			"XFI HSS RX Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi_hss_pll_hdr,
-			XFI_HSS_PLL_SEG_NUM,
+				     XFI_HSS_PLL_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes_xfi_hss_pll),
 			"XFI HSS PLL Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xaui2_an_hdr,
-			XAUI2_AN_SEG_NUM,
+				     XAUI2_AN_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xaui_an),
 			"XAUI2 AN Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xaui2_hss_pcs_hdr,
-			XAUI2_HSS_PCS_SEG_NUM,
+				     XAUI2_HSS_PCS_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xaui_hss_pcs),
 			"XAUI2 HSS PCS Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi2_an_hdr,
-			XFI2_AN_SEG_NUM,
+				     XFI2_AN_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xfi_an),
 			"XFI2 AN Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi2_train_hdr,
-			XFI2_TRAIN_SEG_NUM,
+				     XFI2_TRAIN_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xfi_train),
 			"XFI2 TRAIN Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi2_hss_pcs_hdr,
-			XFI2_HSS_PCS_SEG_NUM,
+				     XFI2_HSS_PCS_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xfi_hss_pcs),
 			"XFI2 HSS PCS Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi2_hss_tx_hdr,
-			XFI2_HSS_TX_SEG_NUM,
+				     XFI2_HSS_TX_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xfi_hss_tx),
 			"XFI2 HSS TX Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi2_hss_rx_hdr,
-			XFI2_HSS_RX_SEG_NUM,
+				     XFI2_HSS_RX_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xfi_hss_rx),
 			"XFI2 HSS RX Registers");
 
 	ql_build_coredump_seg_header(&mpi_coredump->xfi2_hss_pll_hdr,
-			XFI2_HSS_PLL_SEG_NUM,
+				     XFI2_HSS_PLL_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->serdes2_xfi_hss_pll),
 			"XFI2 HSS PLL Registers");
@@ -902,7 +902,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 	}
 
 	ql_build_coredump_seg_header(&mpi_coredump->core_regs_seg_hdr,
-				CORE_SEG_NUM,
+				     CORE_SEG_NUM,
 				sizeof(mpi_coredump->core_regs_seg_hdr) +
 				sizeof(mpi_coredump->mpi_core_regs) +
 				sizeof(mpi_coredump->mpi_core_sh_regs),
@@ -921,7 +921,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the Test Logic Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->test_logic_regs_seg_hdr,
-				TEST_LOGIC_SEG_NUM,
+				     TEST_LOGIC_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->test_logic_regs),
 				"Test Logic Regs");
@@ -932,7 +932,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the RMII Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->rmii_regs_seg_hdr,
-				RMII_SEG_NUM,
+				     RMII_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->rmii_regs),
 				"RMII Registers");
@@ -943,7 +943,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the FCMAC1 Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->fcmac1_regs_seg_hdr,
-				FCMAC1_SEG_NUM,
+				     FCMAC1_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->fcmac1_regs),
 				"FCMAC1 Registers");
@@ -955,7 +955,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 	/* Get the FCMAC2 Registers */
 
 	ql_build_coredump_seg_header(&mpi_coredump->fcmac2_regs_seg_hdr,
-				FCMAC2_SEG_NUM,
+				     FCMAC2_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->fcmac2_regs),
 				"FCMAC2 Registers");
@@ -967,7 +967,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the FC1 MBX Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->fc1_mbx_regs_seg_hdr,
-				FC1_MBOX_SEG_NUM,
+				     FC1_MBOX_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->fc1_mbx_regs),
 				"FC1 MBox Regs");
@@ -978,7 +978,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the IDE Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->ide_regs_seg_hdr,
-				IDE_SEG_NUM,
+				     IDE_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->ide_regs),
 				"IDE Registers");
@@ -989,7 +989,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the NIC1 MBX Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->nic1_mbx_regs_seg_hdr,
-				NIC1_MBOX_SEG_NUM,
+				     NIC1_MBOX_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->nic1_mbx_regs),
 				"NIC1 MBox Regs");
@@ -1000,7 +1000,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the SMBus Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->smbus_regs_seg_hdr,
-				SMBUS_SEG_NUM,
+				     SMBUS_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->smbus_regs),
 				"SMBus Registers");
@@ -1011,7 +1011,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the FC2 MBX Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->fc2_mbx_regs_seg_hdr,
-				FC2_MBOX_SEG_NUM,
+				     FC2_MBOX_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->fc2_mbx_regs),
 				"FC2 MBox Regs");
@@ -1022,7 +1022,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the NIC2 MBX Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->nic2_mbx_regs_seg_hdr,
-				NIC2_MBOX_SEG_NUM,
+				     NIC2_MBOX_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->nic2_mbx_regs),
 				"NIC2 MBox Regs");
@@ -1033,7 +1033,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the I2C Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->i2c_regs_seg_hdr,
-				I2C_SEG_NUM,
+				     I2C_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->i2c_regs),
 				"I2C Registers");
@@ -1044,7 +1044,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the MEMC Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->memc_regs_seg_hdr,
-				MEMC_SEG_NUM,
+				     MEMC_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->memc_regs),
 				"MEMC Registers");
@@ -1055,7 +1055,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the PBus Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->pbus_regs_seg_hdr,
-				PBUS_SEG_NUM,
+				     PBUS_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->pbus_regs),
 				"PBUS Registers");
@@ -1066,7 +1066,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the MDE Registers */
 	ql_build_coredump_seg_header(&mpi_coredump->mde_regs_seg_hdr,
-				MDE_SEG_NUM,
+				     MDE_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->mde_regs),
 				"MDE Registers");
@@ -1076,7 +1076,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 		goto err;
 
 	ql_build_coredump_seg_header(&mpi_coredump->misc_nic_seg_hdr,
-				MISC_NIC_INFO_SEG_NUM,
+				     MISC_NIC_INFO_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->misc_nic_info),
 				"MISC NIC INFO");
@@ -1088,14 +1088,14 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 	/* Segment 31 */
 	/* Get indexed register values. */
 	ql_build_coredump_seg_header(&mpi_coredump->intr_states_seg_hdr,
-				INTR_STATES_SEG_NUM,
+				     INTR_STATES_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->intr_states),
 				"INTR States");
 	ql_get_intr_states(qdev, &mpi_coredump->intr_states[0]);
 
 	ql_build_coredump_seg_header(&mpi_coredump->cam_entries_seg_hdr,
-				CAM_ENTRIES_SEG_NUM,
+				     CAM_ENTRIES_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->cam_entries),
 				"CAM Entries");
@@ -1104,18 +1104,18 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 		goto err;
 
 	ql_build_coredump_seg_header(&mpi_coredump->nic_routing_words_seg_hdr,
-				ROUTING_WORDS_SEG_NUM,
+				     ROUTING_WORDS_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->nic_routing_words),
 				"Routing Words");
 	status = ql_get_routing_entries(qdev,
-			 &mpi_coredump->nic_routing_words[0]);
+			&mpi_coredump->nic_routing_words[0]);
 	if (status)
 		goto err;
 
 	/* Segment 34 (Rev C. step 23) */
 	ql_build_coredump_seg_header(&mpi_coredump->ets_seg_hdr,
-				ETS_SEG_NUM,
+				     ETS_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->ets),
 				"ETS Registers");
@@ -1124,24 +1124,24 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 		goto err;
 
 	ql_build_coredump_seg_header(&mpi_coredump->probe_dump_seg_hdr,
-				PROBE_DUMP_SEG_NUM,
+				     PROBE_DUMP_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->probe_dump),
 				"Probe Dump");
 	ql_get_probe_dump(qdev, &mpi_coredump->probe_dump[0]);
 
 	ql_build_coredump_seg_header(&mpi_coredump->routing_reg_seg_hdr,
-				ROUTING_INDEX_SEG_NUM,
+				     ROUTING_INDEX_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->routing_regs),
 				"Routing Regs");
 	status = ql_get_routing_index_registers(qdev,
-					&mpi_coredump->routing_regs[0]);
+						&mpi_coredump->routing_regs[0]);
 	if (status)
 		goto err;
 
 	ql_build_coredump_seg_header(&mpi_coredump->mac_prot_reg_seg_hdr,
-				MAC_PROTOCOL_SEG_NUM,
+				     MAC_PROTOCOL_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->mac_prot_regs),
 				"MAC Prot Regs");
@@ -1149,7 +1149,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Get the semaphore registers for all 5 functions */
 	ql_build_coredump_seg_header(&mpi_coredump->sem_regs_seg_hdr,
-			SEM_REGS_SEG_NUM,
+				     SEM_REGS_SEG_NUM,
 			sizeof(struct mpi_coredump_segment_header) +
 			sizeof(mpi_coredump->sem_regs),	"Sem Registers");
 
@@ -1175,12 +1175,12 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 	}
 
 	ql_build_coredump_seg_header(&mpi_coredump->code_ram_seg_hdr,
-				WCS_RAM_SEG_NUM,
+				     WCS_RAM_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->code_ram),
 				"WCS RAM");
 	status = ql_dump_risc_ram_area(qdev, &mpi_coredump->code_ram[0],
-					CODE_RAM_ADDR, CODE_RAM_CNT);
+				       CODE_RAM_ADDR, CODE_RAM_CNT);
 	if (status) {
 		netif_err(qdev, drv, qdev->ndev,
 			  "Failed Dump of CODE RAM. Status = 0x%.08x\n",
@@ -1190,12 +1190,12 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 
 	/* Insert the segment header */
 	ql_build_coredump_seg_header(&mpi_coredump->memc_ram_seg_hdr,
-				MEMC_RAM_SEG_NUM,
+				     MEMC_RAM_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->memc_ram),
 				"MEMC RAM");
 	status = ql_dump_risc_ram_area(qdev, &mpi_coredump->memc_ram[0],
-					MEMC_RAM_ADDR, MEMC_RAM_CNT);
+				       MEMC_RAM_ADDR, MEMC_RAM_CNT);
 	if (status) {
 		netif_err(qdev, drv, qdev->ndev,
 			  "Failed Dump of MEMC RAM. Status = 0x%.08x\n",
@@ -1230,7 +1230,7 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 
 
 	memset(&(mpi_coredump->mpi_global_header), 0,
-		sizeof(struct mpi_coredump_global_header));
+	       sizeof(struct mpi_coredump_global_header));
 	mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
 	mpi_coredump->mpi_global_header.headerSize =
 		sizeof(struct mpi_coredump_global_header);
@@ -1242,7 +1242,7 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 
 	/* segment 16 */
 	ql_build_coredump_seg_header(&mpi_coredump->misc_nic_seg_hdr,
-				MISC_NIC_INFO_SEG_NUM,
+				     MISC_NIC_INFO_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->misc_nic_info),
 				"MISC NIC INFO");
@@ -1253,7 +1253,7 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 
 	/* Segment 16, Rev C. Step 18 */
 	ql_build_coredump_seg_header(&mpi_coredump->nic_regs_seg_hdr,
-				NIC1_CONTROL_SEG_NUM,
+				     NIC1_CONTROL_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->nic_regs),
 				"NIC Registers");
@@ -1264,14 +1264,14 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 	/* Segment 31 */
 	/* Get indexed register values. */
 	ql_build_coredump_seg_header(&mpi_coredump->intr_states_seg_hdr,
-				INTR_STATES_SEG_NUM,
+				     INTR_STATES_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->intr_states),
 				"INTR States");
 	ql_get_intr_states(qdev, &mpi_coredump->intr_states[0]);
 
 	ql_build_coredump_seg_header(&mpi_coredump->cam_entries_seg_hdr,
-				CAM_ENTRIES_SEG_NUM,
+				     CAM_ENTRIES_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->cam_entries),
 				"CAM Entries");
@@ -1280,18 +1280,18 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 		return;
 
 	ql_build_coredump_seg_header(&mpi_coredump->nic_routing_words_seg_hdr,
-				ROUTING_WORDS_SEG_NUM,
+				     ROUTING_WORDS_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->nic_routing_words),
 				"Routing Words");
 	status = ql_get_routing_entries(qdev,
-			 &mpi_coredump->nic_routing_words[0]);
+					&mpi_coredump->nic_routing_words[0]);
 	if (status)
 		return;
 
 	/* Segment 34 (Rev C. step 23) */
 	ql_build_coredump_seg_header(&mpi_coredump->ets_seg_hdr,
-				ETS_SEG_NUM,
+				     ETS_SEG_NUM,
 				sizeof(struct mpi_coredump_segment_header)
 				+ sizeof(mpi_coredump->ets),
 				"ETS Registers");
@@ -1991,7 +1991,7 @@ void ql_dump_ib_mac_rsp(struct ib_mac_iocb_rsp *ib_mac_rsp)
 		       le16_to_cpu(ib_mac_rsp->vlan_id));
 
 	pr_err("flags4 = %s%s%s\n",
-		ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HV ? "HV " : "",
+	       ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HV ? "HV " : "",
 		ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS ? "HS " : "",
 		ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HL ? "HL " : "");
 
-- 
2.21.0


