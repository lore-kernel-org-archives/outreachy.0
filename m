X-GM-THRID: 6805595890134286336
X-Received: by 2002:aa7:d94e:: with SMTP id l14mr5165474eds.354.1584551271042;
        Wed, 18 Mar 2020 10:07:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls4581563ejb.0.gmail; Wed, 18
 Mar 2020 10:07:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1neoZ40KDdtirwk+5SXvxXEpSrYCddu/taj+dq1bLtjj1H15lNithNoE87+cNL+bJAurs
X-Received: by 2002:a17:906:7fc7:: with SMTP id r7mr3139406ejs.64.1584551268922;
        Wed, 18 Mar 2020 10:07:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584551268; cv=none;
        d=google.com; s=arc-20160816;
        b=NrQGrvoFVQdO0N3OJmDR6lKNdiSNzppgGwyJQECNXBNman1Px8WXm3qgQ1lT7uCNz5
         jxG0elPIzLZT/V9Zp9G1joKGRbSBsFyxK/3xBdtdVaumY4OL1pzGjzJ650zn8Y/Et+KJ
         OBfGcLlam+56ww1Dfmy0g2DXMyeMyOnT4ZGDJ4/Gy2p+Z0t17JZYG91/C00343Q6229r
         wufwE/nriLaxWQgKP/nhhApqUm0Bhgl6ncRiCQSDNpmk+thhTRteWf1djIfZJSwQ0PBT
         0fERkn8PMpALV0X7VzY8ZW6MfbTZx949xSDd4lhd27BEnzWQb2T5Ek4QSQhpCgsqAT1M
         0XWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pE1K+9LLvyAYCZLo20FfFiwRf+o+3AYmh6y1W7KXubw=;
        b=klkFKfrEQzcfFsGXUftFnM6IGG2+0V9P8czv2HHT8VBayzGFx74QUMwqdZYrQHy9fr
         VASYVfnrpFjB5pfWQ4u5h3YNtow1xGurOuoWkoM3toLldWGxR7mlSPywWSiAUPOj78Ye
         zE56u54WVVD2rDnu/HpDrpG1kBIXevD1eyNQ8I6psoLjqE9YzOa5tJOOPtR2SnqWCvX9
         cxin0Vr9xNXg2QxJUCiEUKn4cXlvApL8WPxxjkbCZ/mp65cyrpwgrHKtOzqMTSVqzhHz
         q7LhFvEY1fnGEZ/KIEZ2tcq5qCiKvMldx0qXPDZ2D4hJ+RA+bkqgAenVRytCoSKEyhVJ
         IeRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMKiH4lD;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c21si168091edj.0.2020.03.18.10.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:07:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMKiH4lD;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id w16so14976738wrv.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 10:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pE1K+9LLvyAYCZLo20FfFiwRf+o+3AYmh6y1W7KXubw=;
        b=hMKiH4lDMhamaiZOzKQBv9QSXPLcD7NE9YdD9Pdo1kePPBvS2IguQ3KGSX3dMExC0/
         ejfkpls64QWBRvSwD7rAniqOIfQZSL++0Vndw2LiUhV+Hjik1SwgFXabcZI0/5fGbIg3
         +uUdC4RPv9Ragli790cunM7EZqBC8t81HuZA5os8sHnOgz1J4AoJFKr1I25b0Jgptc+t
         y91CdebGFHOUuiQD8uZpvEzfIbHqDJswB/1g15J4izPQ3C1OdV58LowzNxijc9rxgdac
         SJfW0A5zEqbKRqYg6xfjauRv0PiWggYf0ly/7fnkxrbzP0B/wWLJjaMno3sNCEtI/CNh
         yrCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pE1K+9LLvyAYCZLo20FfFiwRf+o+3AYmh6y1W7KXubw=;
        b=QF24GitE1Xi7DnitaQ1692GCwtCf/G07z5ARPwnBYXTopt24gVW/NnxWP3YPlmJeqt
         3s/uN9nBqyf8OWRZjUG5K+TrJ6RxuphmhDLrYfLCGK/PSVpjooa94pLgPyh7DmqgB9N4
         31IY7e+cEFxfgv6UJsg7sEfTqETeK4bxlahUCbqCHU5l7DWzThoDtyN17NopUeyQZ8pW
         pwNyHl3J0zLsKEKuxC/bprB5kEpBSZIg3nzB9HUNTHlr09ZHdo35rk38CWS9JrJTrhNV
         74l1jlyUMjCZFA4DYkudHhl5wdQBcwp0tBHE4S2nerUcpncV5exolcR5ssrvPYDShzXI
         zn9g==
X-Gm-Message-State: ANhLgQ0Go95f/27yp/+rQ+u1SK4rRD/1kHC4IrvodwHdI7szJtQi2nE1
	9afKuzYaZWCHOVHmL0kvU/ixZepncbJEeg==
X-Received: by 2002:adf:e3cc:: with SMTP id k12mr6664474wrm.266.1584551268317;
        Wed, 18 Mar 2020 10:07:48 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id k9sm10598820wrd.74.2020.03.18.10.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 10:07:47 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH] Staging: qlge: Add blank line after variable declarations.
Date: Wed, 18 Mar 2020 13:07:13 -0400
Message-Id: <20200318170713.3886-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleanup checkpatch.pl WARNING: Missing a blank line after declarations.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 737d6abd8076..8bf592812518 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -496,7 +496,9 @@ static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
 static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
 			   u32 offset, u32 count)
 {
-	int i, status = 0;
+	int i;
+	int status = 0;
+
 	for (i = 0; i < count; i++, buf++) {
 		status = ql_read_mpi_reg(qdev, offset + i, buf);
 		if (status)
@@ -1330,6 +1332,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+
 	for (i = 0; i < qdev->intr_count; i++) {
 		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
 		value = ql_read32(qdev, INTR_EN);
@@ -1415,6 +1418,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+
 	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 	if (i)
 		return;
@@ -1565,6 +1569,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
 void ql_dump_qdev(struct ql_adapter *qdev)
 {
 	int i;
+
 	DUMP_QDEV_FIELD(qdev, "%lx", flags);
 	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
 	DUMP_QDEV_FIELD(qdev, "%p", pdev);
@@ -1650,6 +1655,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
 void ql_dump_ricb(struct ricb *ricb)
 {
 	int i;
+
 	pr_err("===================== Dumping ricb ===============\n");
 	pr_err("Dumping ricb stuff...\n");
 
-- 
2.20.1


