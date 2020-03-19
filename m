X-GM-THRID: 6805820058208567296
X-Received: by 2002:a2e:9ed5:: with SMTP id h21mr1315106ljk.78.1584603464371;
        Thu, 19 Mar 2020 00:37:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:33a6:: with SMTP id i6ls252004lfg.1.gmail; Thu, 19
 Mar 2020 00:37:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vup4fcbyo/pY3M6+7Quvu5bfPkHxb8ywDv0wLcsQcJ/2+Hc/hITmpb5v3gcSQ7mx1KmVLFG
X-Received: by 2002:a19:6502:: with SMTP id z2mr1236212lfb.47.1584603462558;
        Thu, 19 Mar 2020 00:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584603462; cv=none;
        d=google.com; s=arc-20160816;
        b=LSFqOpeiqczJC0Txc1YR4uvh2zL8Z3eLgOA/Q6arGmju4crwBVWFeb+gZZip6cX6dT
         9gKpr0WsS/Qtibv6b0sN6H9xxc8CX9PmUnKcX8/hGj5Zm7QB71KDsW6s9Dnn2UEjYwBb
         E3cOrXzYVv5I+BA/VyxDQYHrHySEpn5lTtGZ8sHm3wzytOte6Z8wDl8sVz+H88DMDCD6
         dCFmLOrqdUH62CCs2zctvjqg6YkWN7hH4smqE8JvqsSDZtvxzWYcSAx1H+5zGqiCLhrZ
         un/1HXEeNidbxWvM4cEQI1qTTBOg5OV4P0TGiITEtQNE2pm19okyPe83HlsYlaMSCcum
         DXRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tVsBrrCnHsu0rBStT51Z3Gpuj6gENpHugWe1Eh9AaKo=;
        b=RzFxhIF6P1Y8F3PEIp7EoN+67vaYH6LFOpO5RTZyCZA/h7A+6m0QEzoq+lurPumXK+
         0Vtx9xfxwH7f87YINg0KIZQFAKzTTmzjznoNhtZtrg0ZNIsGimSWCd+zMHoN/hG3noid
         xgFD3nHWGwdZ/gcupjE3Vg8WAOwRqDUryLn5VNzKUS9g6/2yEqc43vuHgMWasI8T3zbf
         mj0Mv4ApLxmvvJtiDho5WOdHti0ieZFEM+hG9HhZhgzW7zz4r24uK3mgqneG2Fd15d38
         sPSPPt1l2vWVVfXZB9A0pQg1InYRBH2cS2Fa9MGCfnxoRRr4cpFZ4NKG+6yMuF9Elgnt
         pFFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IcOzKxlp;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c15si44913ljn.3.2020.03.19.00.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IcOzKxlp;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id 11so826862wmo.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 00:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tVsBrrCnHsu0rBStT51Z3Gpuj6gENpHugWe1Eh9AaKo=;
        b=IcOzKxlpP3Krs7FwIQ0U24xlDtk6mAphumRYy1RZhVn52Apu9fDVPaQT9sKyfryVmi
         YtYk0Jxmy2NVc0ni4+cSXHgv7bOIVnhDwM9J6txxksKRqxMVUDFPPI5eZmsoQy9LyDWC
         sjt9ZSrAEOLlj5TQzY1L201ThSig0BRHCrZVIDihx4widAgbXX5VjOKSlISwusGHlRle
         xasy36Mq0tvQCU4p5fYYhCZu99PByTm/K1t2DBP939XIaJQs3phtf0sQCZjeTdujO9ij
         wefOb26nDsQR13ms00vQvvfNd2WMaivgLsmHO+8DPwaxqmY7OJPQst7SbTr869LZZYT6
         263g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tVsBrrCnHsu0rBStT51Z3Gpuj6gENpHugWe1Eh9AaKo=;
        b=UEpXdoDlWsyit54oPLLK6c69YNmKKb1PPI/2GyRylSiituDgVRLlD0y9fEYuG08/h5
         0mdbCzP2RblpDqt6N57yEorOr+lrTVVJwYv42NKyAdiAvm2dgeSfqrzagFJ2zVD8xxoG
         bwzdK7UfG/+JGGZ6Kjze/HvsXYUVI9YZMPAH5d9+Gg0Dp2Z65DfgewMr45JJihOlgD/f
         1DhcT2F17GqrEhTgzmpIN/j2XJtUc1qFQ9xwdG9JZWs0QR1gjz8F5HBBk8hfMUn62Rbm
         jUcjkeUHECe9UTFVx0kKrreJAqYofUF1VHQMkw36fi8EQ6f6Y53naYWoP2/IOR4x4ro7
         1L6w==
X-Gm-Message-State: ANhLgQ1Lt+k9pSX1xOqXZ63HK1Gz2m4o1hsZQIeMVFbDB38Ifs5gkWko
	1NQ3Pn3lJFXj7FO9XHUIn5s=
X-Received: by 2002:a1c:b60b:: with SMTP id g11mr2086641wmf.175.1584603461964;
        Thu, 19 Mar 2020 00:37:41 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.134.116])
        by smtp.gmail.com with ESMTPSA id q72sm1937878wme.31.2020.03.19.00.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 00:37:41 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v3] Staging: qlge: Add a blank line after variable declarations.
Date: Thu, 19 Mar 2020 03:37:21 -0400
Message-Id: <20200319073721.3203-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v3:
- Add a version change log.

Changes in v2:
- Applying only one logical change since this patch contained two
different logical changes.

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


