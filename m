X-GM-THRID: 6670105232964321280
X-Received: by 2002:a05:620a:134a:: with SMTP id c10mr11898155qkl.8.1553005035135;
        Tue, 19 Mar 2019 07:17:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6d:: with SMTP id z45ls8329572qve.5.gmail; Tue, 19 Mar
 2019 07:17:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzz+RwYRaDK/25bpuQajh3bGU1s41eFY6wZ23Ouoawf3hwMQQdBmvWPeRcwiAws2S+U9RPR
X-Received: by 2002:a0c:9596:: with SMTP id s22mr8589289qvs.16.1553005034302;
        Tue, 19 Mar 2019 07:17:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005034; cv=none;
        d=google.com; s=arc-20160816;
        b=m0h3OmrsMXHNyWJn02tppedvk7J2CnULry9BuJ786gymHa5RAiiF5e+4RijsknetQe
         ISIR0Zfps3oWHcNadw8K2Mu44FYjTllQppajgo3tReX+Hr9bn7KOKBCgxJOi7jNYMjVr
         3nd6NiMY9HEmXgK+9vm6e6EBElTOtXnZ0dluLSjGOsOt8bXHrUK9IxgIcaCKQzvz71iI
         QATO8C5lorlJOCo15VG7U4aJy6vOcRTiM3bavFHX2HKoOLB7a5ZldaeHOpPurbx/RHbL
         855ZKbG6YOLc+TazalGrRH7k5BbYpT/SmBryPUmLUj+SOtYqs1zXYNXm1nKCDeqD8rls
         Wyzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CTwSp0Mp2oS8OFftB3iAIsF/EKNPdAJn1Uza+QZYNzE=;
        b=VjCjEMZ2oPrWY/wkqmbvEfg3SRDmAFSEoRyv68+mLzr75sSov91VNPt2Oe4F4BVguc
         6k6vqntYKj0HU/kuYypaerTUI4HaWjVIxwU2tYty8QI3jhoTuZGfHdOHTMaHblXH1nBz
         IxFhTJrlbWyKKRZptDrtNqW0kZFa5FAQyRzfOZCIqg1lNZuAbcmi6SV/yzfAGOi9g5Dh
         v0liVR5Al71q972KsNRXdJQiTiu0tbQz2MiqlAeaYS2+SQAgvkPlLJ7Im/gGkqogLqPm
         j+HiujUHBe2by/dRK7Ui1ndUfjJAukBGsHAE4lLqYsHaUuLtrF4dv2vXP9X7F8Bog0YE
         GCVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gtmTRrkn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v2si556435qka.0.2019.03.19.07.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gtmTRrkn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id p10so6982885pff.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CTwSp0Mp2oS8OFftB3iAIsF/EKNPdAJn1Uza+QZYNzE=;
        b=gtmTRrknN5VHPDOQrPTyz5Bkbbbq6bljB63TQxtLOsOLZm+wbo4vnDwyG0wLkLPZ3j
         /9x8CJkZuU0COhvtBKSBKYvLpEckvFXVhkANd5SBpv/mpn3nUceC+VIw+G3G72l5LvXA
         qiswyUgzS/pd5nKCK4XLYGY3pj+CKzD7vGeDgr4Q1/S8vD+sd7Cv563EN9bAul2sUPe2
         D0D0YnCXuRbZBCkxQcS2QrGy8qUPuVgGGVCdz895DVVSe0vIqt2pUrf+HH7DCN/OnlEG
         2iXf7a5P4McMg2Mmd7+x09YtWh7Ch8uC3MygJiqlWm+nTn9iF5eybvQqQHm4EOzsIKjU
         j8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CTwSp0Mp2oS8OFftB3iAIsF/EKNPdAJn1Uza+QZYNzE=;
        b=uW3azoMuFkG9UOLsJ5LS3SlRtG8LrQmr7C2MujLl3KliVvfB5fCN4oViQJgKiCJmoP
         XjFLVCW0hqKYQzGvFRYiKiJNns2pXsVNB8xwyK/bEn9X6v7Nca4U7mQDWQJ40xCSajaM
         cbf9F3436on+mb/MEmnETUHmRPIxJ4wB3br5EwH2yxet795m480J1RC974s3vMpTHoC0
         UYryfZDhsmKMFeTRiOuLGDQTGY7tfRmPRiM8ZoHhDAcSd2pHBurnebkEvMR9g2Q2al6Z
         GYxeXP+cnWuM3kAEiqJM4zYlcDr7EkUX/DVxMcFdowPiZ4+9dlZbwQAYQMTeChBlgv9v
         YQSA==
X-Gm-Message-State: APjAAAW8/8EEflOcK586Dg2GoHqTubbYrWz5xjDqB1iSRqlkV3EVV0Pp
	Hxs9Mf5a8gSzigO/ZzxpZt55e1PB
X-Received: by 2002:a62:448d:: with SMTP id m13mr863950pfi.182.1553005033146;
        Tue, 19 Mar 2019 07:17:13 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id m20sm41592036pfj.142.2019.03.19.07.17.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:17:12 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.
Date: Tue, 19 Mar 2019 19:47:00 +0530
Message-Id: <20190319141700.8540-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Remove unnecessary blank lines.
Issue found by checkpatch.pl

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 1 +
 drivers/staging/rtl8192u/r8192U_dm.c     | 3 ---
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index a8c8e8c0660d..0c42eac07e2c 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -230,6 +230,7 @@ void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
 {
 	u32	TxAGC = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	TxAGC = powerlevel;
 
 	if (priv->bDynamicTxLowPower) {
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 6c9f9d82477d..4fe4c99a0880 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -45,17 +45,14 @@ static struct dynamic_rx_path_sel DM_RxPathSelTable;
 
 /*------------------------Define global variable-----------------------------*/
 
-
 /*------------------------Define local variable------------------------------*/
 /*------------------------Define local variable------------------------------*/
 
-
 /*--------------------Define export function prototype-----------------------*/
 extern	void dm_check_fsync(struct net_device *dev);
 
 /*--------------------Define export function prototype-----------------------*/
 
-
 /*---------------------Define local function prototype-----------------------*/
 /* DM --> Rate Adaptive */
 static	void	dm_check_rate_adaptive(struct net_device *dev);
-- 
2.17.1


