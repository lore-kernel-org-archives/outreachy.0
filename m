X-GM-THRID: 6212095586717401088
X-Received: by 10.182.107.162 with SMTP id hd2mr14211767obb.29.1446366383750;
        Sun, 01 Nov 2015 01:26:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.231 with SMTP id nr7ls669603obb.13.gmail; Sun, 01 Nov
 2015 01:26:23 -0700 (PDT)
X-Received: by 10.182.232.135 with SMTP id to7mr14589577obc.44.1446366383447;
        Sun, 01 Nov 2015 01:26:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id fa8si1424465pab.1.2015.11.01.01.26.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so116115049pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yPRlWZPE6YeUSrBbc3v2LYknm9Y62U+VrE99er1Q+Ks=;
        b=szjRZBP7IE0hfB4nur+Eq5evvrBvFej/AL6FfA7hoC6IsOW9l+4cc5xq/38kzNd3JC
         rPtksCpNaeHHydd2oIF09GxtNjz082+6+2MfODMJlbmhgOAKFanqjSk3/YRXiJOBFk+g
         FajSpor1crpcDjxia1dlqw1tRpTEpJY/7uCwJW3s6CA3ZjOTJ34Tp3h0Z7zECDeM9brX
         0n0VSS7Z+Qp19MGHhP/hs8ClNi77VU9J+kYTfmqJX9VTvx8B5H7YaV6MVUBZoNItQf1a
         AiQMGyzg65PXNdntZOWsV2E7CRHKpIDyCFLSzQp3t+kTtH5ZS9BinXqgHeImvyH81PiX
         5GAw==
X-Received: by 10.68.131.36 with SMTP id oj4mr19053132pbb.141.1446366383275;
        Sun, 01 Nov 2015 01:26:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id ff2sm17495450pac.14.2015.11.01.01.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:26:22 -0700 (PDT)
Date: Sun, 1 Nov 2015 13:56:19 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: rdma: hfi1: Remove set_sbus_fast_mode() wrapper
 function
Message-ID: <5cd4f403201b3e1c6b0f44429a5203b3447e2d27.1446366036.git.amitoj1606@gmail.com>
References: <cover.1446366036.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446366036.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop set_sbus_fast_mode() wrapper function that can be replaced by
a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.h     |  1 -
 drivers/staging/rdma/hfi1/firmware.c | 15 ++++++---------
 drivers/staging/rdma/hfi1/pcie.c     |  3 ++-
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.h b/drivers/staging/rdma/hfi1/chip.h
index f89a432..092fc9d 100644
--- a/drivers/staging/rdma/hfi1/chip.h
+++ b/drivers/staging/rdma/hfi1/chip.h
@@ -619,7 +619,6 @@ void sbus_request(struct hfi1_devdata *dd,
 		  u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
 int sbus_request_slow(struct hfi1_devdata *dd,
 		      u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
-void set_sbus_fast_mode(struct hfi1_devdata *dd);
 void clear_sbus_fast_mode(struct hfi1_devdata *dd);
 int hfi1_firmware_init(struct hfi1_devdata *dd);
 int load_pcie_firmware(struct hfi1_devdata *dd);
diff --git a/drivers/staging/rdma/hfi1/firmware.c b/drivers/staging/rdma/hfi1/firmware.c
index 5c2f2ed..0ce9a16 100644
--- a/drivers/staging/rdma/hfi1/firmware.c
+++ b/drivers/staging/rdma/hfi1/firmware.c
@@ -987,7 +987,8 @@ void fabric_serdes_reset(struct hfi1_devdata *dd)
 	ra = fabric_serdes_broadcast[dd->hfi1_id];
 
 	acquire_hw_mutex(dd);
-	set_sbus_fast_mode(dd);
+	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
+				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
 	/* place SerDes in reset and disable SPICO */
 	sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);
 	/* wait 100 refclk cycles @ 156.25MHz => 640ns */
@@ -1214,12 +1215,6 @@ void release_hw_mutex(struct hfi1_devdata *dd)
 	write_csr(dd, ASIC_CFG_MUTEX, 0);
 }
 
-void set_sbus_fast_mode(struct hfi1_devdata *dd)
-{
-	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
-				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
-}
-
 void clear_sbus_fast_mode(struct hfi1_devdata *dd)
 {
 	u64 reg, count = 0;
@@ -1244,7 +1239,8 @@ int load_firmware(struct hfi1_devdata *dd)
 		if (ret)
 			return ret;
 
-		set_sbus_fast_mode(dd);
+		write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
+				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
 
 		/*
 		 * The SBus contains part of the fabric firmware and so must
@@ -1583,7 +1579,8 @@ int load_pcie_firmware(struct hfi1_devdata *dd)
 	int ret = 0;
 
 	/* both firmware loads below use the SBus */
-	set_sbus_fast_mode(dd);
+	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
+				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
 
 	if (fw_sbus_load) {
 		turn_off_spicos(dd, SPICO_SBUS);
diff --git a/drivers/staging/rdma/hfi1/pcie.c b/drivers/staging/rdma/hfi1/pcie.c
index e6773b3..10596b1 100644
--- a/drivers/staging/rdma/hfi1/pcie.c
+++ b/drivers/staging/rdma/hfi1/pcie.c
@@ -770,7 +770,8 @@ static void pcie_post_steps(struct hfi1_devdata *dd)
 {
 	int i;
 
-	set_sbus_fast_mode(dd);
+	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
+				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
 	/*
 	 * Write to the PCIe PCSes to set the G3_LOCKED_NEXT bits to 1.
 	 * This avoids a spurious framing error that can otherwise be
-- 
1.9.1


