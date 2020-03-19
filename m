X-GM-THRID: 6805908696363696128
X-Received: by 2002:aa7:c41a:: with SMTP id j26mr2769029edq.33.1584624102307;
        Thu, 19 Mar 2020 06:21:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3715:: with SMTP id d21ls1031818ejc.5.gmail; Thu, 19
 Mar 2020 06:21:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvO/I0ZgctUorYc4p5Qi8ijl9Tw+qesiua1mbeYavvuB3iWl5ZQYij/fuOHqp15mNnlg0Kv
X-Received: by 2002:a17:906:5214:: with SMTP id g20mr3256331ejm.5.1584624100741;
        Thu, 19 Mar 2020 06:21:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584624100; cv=none;
        d=google.com; s=arc-20160816;
        b=s9Ep9Xh91hnCHFWTpC4PKtrB+lQngtJeeftsjRxhJuuiIp/bEyKKDSrjwg2bnUki/E
         AMgA59JYs2p8oVX1f0RNPLEJB53I7Jv+i/tLSEuKiVRxTZWiTlSp498A4Ji/D7qwik1b
         Eip8rOxsw4sHNSXdm3KS7YanHoNiDjh7tQFhgAGkXVYzkXkKPar9o761nko3NNFNLamH
         WRqiyFQrDn1Weh7MIP8GpBUs9E5gA+V6V8tSilDDJkcPDp+aRraCTh42aq4JYAlMkgPT
         oOV3eSrd8y2vylsQnxwTpUJRGyfDIelSUrdxwdYJkOmTQ/yE8lIX9EIgTnCjNtjQnTzE
         7xgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=R3rcKbtiCiI7lpKBnnWUJmojDLZLTMOmba3ZYXQVf3s=;
        b=DC1nBmoPtRN7qeg1kHFySfqN3dm3PPNKRbD88OR/5IJBMQEpnzLRHJjlbUULosnj12
         D0LewKE6Gg9srYiKm17WP+Br+mOmdqMRxvM/yg2wAl7BC7NjPtCGVI6+SjIZCvRUJh+N
         iy6YjHUkVne69Lk6ZWEaywvGHpx6OYBrvXcqDvGA3SYgmiXbNyx8z8Imzxp2af7W01Mk
         zrQ210Q2Lk/MRuNIfW3kjH0kct93E/KLGgzKUE6+tW9cllSM7soSYiwIA1OfUdFXcfm7
         sBtK5W+E0+Hl6/0gvtRb/Mq5mT0PXkw9LQ5WA3yLwKOZYY/syf8xqrFl2dqbd3+o9tlr
         r6vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qSjocnPT;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l21si102397edq.4.2020.03.19.06.21.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 06:21:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qSjocnPT;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id m3so2257164wmi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 06:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R3rcKbtiCiI7lpKBnnWUJmojDLZLTMOmba3ZYXQVf3s=;
        b=qSjocnPTDJ0xts/OZypewbIIg1CIl1EjbGPBqho/FonhqXA8no4yyFmqiMKaJKZ6cx
         kmfn6zE6bz4a4x+oA5YYEAOM9e1FiBVQ22FA7EpKzOK+y8RpuFPZw4p7+MYc4Ac+KwNa
         I3wQ47PK2JbOslpOSebsyXlgBXYmn8jZN8rigZpI38dE4kveAYCDyfVbK/0i6sU7WARs
         nWPraBSFy7/autm8q6kmWCmTIFKyfUCVJ8HFPrT7dJqvRZJVf2RcnoZ1rFC/sV6typ9R
         IFGP4y8E24gh6vsaaJzEjd9o8QUrt8MjBWWiqfkiCRk52CRtopnVBOnvOaB56dDKMbVZ
         U+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R3rcKbtiCiI7lpKBnnWUJmojDLZLTMOmba3ZYXQVf3s=;
        b=qAZJyodheCOwDnFh4WsA8Fu/6MiqWdYyLtEpJXQX19cP7q9kS7LH8ONH/L72i8R/AE
         zzd4O+V0Kp9hAOAWENpq4r0CVTAsqoZTJsDtwmwHfvsa0xY4hy1xdsAvU4YIDxNQoab6
         8EEID8TMHLEcEug1tCbegfvlgyUxmqVDcdQf6O6LtRzI/PjpMRcBY2yMxi5XYGz+9J/m
         LZgvHM5fG4Q3UbhvBUoHcavc0fzy4O57kYII9WrYNDpLk+JtICOP0p7Cffsmd0id+QoO
         FKhRyPyV/Dh4YM9bgkctWhk1VeJ2qAJHvOPqfjNNqRhr5RNjf1S5c/cklpB45rHu9Ypp
         c1fg==
X-Gm-Message-State: ANhLgQ0DVzHy7o7B+8+v6HGd3zSNrNFyT/ZvcwKL9rBx/FAW1Z4xYvpt
	BJFZZ7qTnnuXiDnvkfHm6Rk=
X-Received: by 2002:a1c:a714:: with SMTP id q20mr3734341wme.148.1584624100490;
        Thu, 19 Mar 2020 06:21:40 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.140.220])
        by smtp.gmail.com with ESMTPSA id f12sm3183100wmh.4.2020.03.19.06.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 06:21:40 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v4] Staging: qlge: Add a blank line after variable
Date: Thu, 19 Mar 2020 09:21:35 -0400
Message-Id: <20200319132135.3362-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v4:
- Reverting a blank line at the end of the patch that was mistakenly removed,
this blank line is actually part of the original code and has nothing
to do with the patch.

Changes in v3:
- Adding a version change log.

Changes in v2:
- This patch originally had two different logical changes. The change that
is the subject of this patch was kept, the other was dropped.
 
 drivers/staging/qlge/qlge_dbg.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 737d6abd8076..1795533cbd3a 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -497,6 +497,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
 			   u32 offset, u32 count)
 {
 	int i, status = 0;
+
 	for (i = 0; i < count; i++, buf++) {
 		status = ql_read_mpi_reg(qdev, offset + i, buf);
 		if (status)
@@ -1330,6 +1331,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+
 	for (i = 0; i < qdev->intr_count; i++) {
 		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
 		value = ql_read32(qdev, INTR_EN);
@@ -1415,6 +1417,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+
 	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 	if (i)
 		return;
@@ -1565,6 +1568,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
 void ql_dump_qdev(struct ql_adapter *qdev)
 {
 	int i;
+
 	DUMP_QDEV_FIELD(qdev, "%lx", flags);
 	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
 	DUMP_QDEV_FIELD(qdev, "%p", pdev);
@@ -1650,6 +1654,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
 void ql_dump_ricb(struct ricb *ricb)
 {
 	int i;
+
 	pr_err("===================== Dumping ricb ===============\n");
 	pr_err("Dumping ricb stuff...\n");
 
---
2.20.1


