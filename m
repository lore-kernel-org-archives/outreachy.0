X-GM-THRID: 6805641341994795008
X-Received: by 2002:a1c:2701:: with SMTP id n1mr6999768wmn.180.1584561854337;
        Wed, 18 Mar 2020 13:04:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6748:: with SMTP id l8ls4284042wrw.2.gmail; Wed, 18 Mar
 2020 13:04:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuvJ3r9cmHGMVc0L5ZKEe5yLXLTj1NTFuO6mc2oJidNJKw3J5bRXsvHj6R/BJMVcRmZnLLN
X-Received: by 2002:adf:f841:: with SMTP id d1mr1335349wrq.77.1584561853155;
        Wed, 18 Mar 2020 13:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584561853; cv=none;
        d=google.com; s=arc-20160816;
        b=g7W5EZ05fuJ+D5tY4W6QwytQQDUQ2KfYQKQUAetXQXqHqBc+r4bkb+h1Df3GRtJYJl
         2VmPOFcjsF/N/OLV8RBr3HXKkL0m+FNMSxxoJBAQ1iEo0eYjeN+C6ZskZBK0du210ola
         124VAS8mumX3t1EmJOfSZ+XAiFFkt6q9pUcXTNAdAa/V08ltp+lX91EIZDjNBcQuGk+X
         BGRtnerrvaMoJjC9qrbtNo26v9OxlpbbzY7Q9vwdyUDE46Hm2ZYKXQD/ETr+FTn+Nsi2
         hA5w+RwIieAPtoBy9HgbJtKtomZzpwZ6iUqT8UuYyEiYMm7IUl2l6l4fHIUtEmpyszWj
         /NkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=J7OI5Cn6eXbls+ib8BM5AomIXihqjbRe1uOGLbK+RTI=;
        b=VLTZeuhYvnxnvErf0743WxfP1j4p876gsH6eH7l4DOYCNWkhk87bxagWtbnCwV+cGL
         QZwBYyNvS3lJ9G9E294jVNzCeS2lMDspAq8xyT/4K0pkI8/grwN64xBCahwANnVCX1jU
         awz7NtSCuAVUw5O78Yhskj1k+6khZ773hC4htGa1bZmPhBF+qg/lt40f3jrmy9lN63Lc
         l4UtHVprZLmYo/z+dcQs+vrUGtwkZ+UHsOs5Je0GE/VVsYmNdGMph8TmVNx1SVsk2PLz
         4tYcrorDzQ4ds0yZtqR/Fh6mV8qvCXQV55B79SoSAwgg5W+QmUj2afUIkuBcOxRYCy58
         3B1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CYp9WuhA;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b81si162299wmc.2.2020.03.18.13.04.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CYp9WuhA;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id z12so4853373wmf.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 13:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J7OI5Cn6eXbls+ib8BM5AomIXihqjbRe1uOGLbK+RTI=;
        b=CYp9WuhAkA7J+G96S9OLxTdVOtJ5dA5+ZWUmeMyejJIG9DCUPPhLZ+wBR7Xb7K3sQC
         QuSCsiz6XwFv65fwfH67X/0dnsFWUEVsjC/7hubpwfR0TAqG0V5BZrJsNS69Qny42h8J
         FF11nngP11vd44jHq7tKVpSVm6dtOwK3zpkPnWZcbzXh+md9hwNFdVls9GZN9YnLoKOE
         Vqg0x+Gz2n65d+aZ23TXQjxWu1gJbrd4B+zB7Q1iW2q4i1xHbqsoXXx423KgjVDjBRDi
         e9hp8gpr96WaYAFRlEJh1PgKUDdYAH3thW1dsrm7KQw4+D4Aha4PFv7wIGFItejhCLXE
         ETlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J7OI5Cn6eXbls+ib8BM5AomIXihqjbRe1uOGLbK+RTI=;
        b=EQrQGyF7t9rEnXJEE7yvMGRD5oxlThzvK6mUFHC87QmRucWRtYH84uBD70KqQhYzbX
         uIOt1UBlY+cwJpCPWDbXEn21vVaInC/YM+vEHvq5yrlQvZbP+bTPxSY46F/qaW/3saGe
         +5VsFg0e78hvGwDjT+pyVBsqE0lmFx79nwRuERU4mDf94oBokXKMY7rN2iYnhneOM/Um
         BP8IU2C9ufTKMSsZYRMy6tctzd3kbAHlD45/2JpFaHmA6nXpjs41EC3AhPzsc0dl+Hvl
         xWMhs1lkLR16tDrw0CbcnmyPWF/LPLDTFKfNMWPWIJrZyZTdc/Rn4A9r+8vTx5wq76Yr
         20aQ==
X-Gm-Message-State: ANhLgQ2LSlzwYcwCToSmm803UQsni6n+otyxNyw9EW3wlsXYBGv1gq6m
	12rII7YbPjTeXuqlPyiA//bXr41PPPw=
X-Received: by 2002:a1c:23c8:: with SMTP id j191mr5339943wmj.117.1584561852840;
        Wed, 18 Mar 2020 13:04:12 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id f187sm5706225wme.31.2020.03.18.13.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 13:04:12 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH] Staging: qlge: Add a blank line after variable declaration.
Date: Wed, 18 Mar 2020 16:03:52 -0400
Message-Id: <20200318200352.3497-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
---
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
 
-- 
2.20.1


