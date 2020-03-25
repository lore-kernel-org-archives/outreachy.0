X-GM-THRID: 6807884729429262336
X-Received: by 2002:a05:600c:228f:: with SMTP id 15mr3898204wmf.140.1585146444603;
        Wed, 25 Mar 2020 07:27:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:104d:: with SMTP id 13ls1209459wmx.1.gmail; Wed, 25
 Mar 2020 07:27:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv1/QvdAIk9qTkmfEX87l32+nm+iXs3imefjnZz06Z5LGKEqriGF+CKPtVXSMHp1QQ3RzPR
X-Received: by 2002:a7b:cc72:: with SMTP id n18mr3798960wmj.71.1585146443096;
        Wed, 25 Mar 2020 07:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146443; cv=none;
        d=google.com; s=arc-20160816;
        b=T70SuHcQ7jnBLVTP3wa2dScGhYjwoLoi7su4x4s0jieX7bDJugW2SK6VTew0hvIiZD
         7m4k/80wDY5fHdOVsZTqS8UAR8+1Bcoyqk3P2sk/DUcGLUQ9wNDkHUl561McY6JaUshl
         3/titFgOOr5BWuFM/pGndx/mSdFaHeHQdY546tfHh6IGkhtrYMZLhfgSBeV1uqTfTVjE
         PspB5tSDceBUgKHyJ8mfrAVWUou2cPawcAq3yJQebE0GAWOIQ20i66dOBijw1C7qiBnK
         1pvJAeNbvL1HW/vdHx4+GuxcwHpq7Qq+/amU4DDPJg3yKn26zSE4sc7J913hynYoFPoY
         4syQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GFf56EBGB721KpD5A72P3l30mB8yb/83F5HC7nXa1+g=;
        b=Q2OMVO/zaRfXZPmslVQA1hqSN/EB+momI2kiI9+l3F5k9apQoxsnyLL+DPDimAkd0p
         011+/IM73YC6rWtZLgVCnymJFh6hzs4k1en9PmyfSIz/NgsEyCYYMzB6bFm82WHjwR9n
         K13gHrh6OA07yXGNSqB/kwsmrsBV4mEg6sTBc1xavZNLD/9Z6ka8cBh6zcztxu3a6yRQ
         SWHnXEVsUlNJZim3GZsXHq0FDzOqXw23yznSte1krQ9KF3i5x3Wn+Dz3poPEdA1VnGXQ
         HOVp2XJ+2+o3B8sk4A+6K1xSN0h276M57EfiigiQD2m+YBh9dcA32MKGlngbs7nVQw8A
         /rUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pz9yLfXZ;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l2si412853wmg.3.2020.03.25.07.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pz9yLfXZ;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id s1so3365873wrv.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GFf56EBGB721KpD5A72P3l30mB8yb/83F5HC7nXa1+g=;
        b=pz9yLfXZAQpkk94d/gkY3IVI9mrglVOwgWJ6s8h/0YbURTcgtmdLsyH6evY2s9QMhf
         Mbjx6H+kcMyekQvSWxBZVQLa+XO3Mrk9Ry5/YEFqgIGnIJNWk6ADHgzE7RAw+9aelko3
         +W/kS+Y4xyzkaRyboqP1KRVWHxjfJFtXC83ybMX4gKtK7Qy5aJMiQrB7Rqzdk6DG1gvC
         XAw0At3z1N+UNUWEWnOUT8WvW3Tix01Io5wY5bI8FI9N0xk99YWG2w/V7k/bM1z727q5
         JCHN0cZX0Hv3VnvFphZ1vEbl5uB75ef8TNgjn+Uk3cOVKuzyX2Ef0iI5dXDrkP/1bdwS
         ro/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GFf56EBGB721KpD5A72P3l30mB8yb/83F5HC7nXa1+g=;
        b=ntVLaoRps28CH37UZM+1rOAcCFNqMSX9QYDqW12bwD8EKDITH3YTKIJ5Qp4yprM2f2
         eFWtwo/mPcZApJxh2pgQoH+ZVi82nmnVcD9fJs+e/3DSndPWFWWzHb9WH2lOm7EUxsJ+
         dBNiDtEhFeaFkaFYXfPCDmHME/ek7OjukxtUyz0Ah6/V2Vexw9TuDDV2IGVy9hLPMPKP
         ca13eyB96Stqhhnd0ivRUSzmISE/3u/C+zFnDBmuNa6JSd3PhnEIzRySgFVWRtETbcEV
         CJwoPFc1ia8KxwX/5lE8lwqJkJxKiSD1kE2etFWWhx/TR0kcHn9FhmPqfHG4hHm8g2w/
         vuhg==
X-Gm-Message-State: ANhLgQ0lMv2RehmTvS5tud3d492C34j23GjEDNOCk+alzvgHIvmtwACf
	G8E+lN/vqHh94+3htqH9+TE=
X-Received: by 2002:a5d:5106:: with SMTP id s6mr3720293wrt.24.1585146442709;
        Wed, 25 Mar 2020 07:27:22 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:22 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 1/7] Staging: kpc2000: kpc_dma: Remove comparison to NULL.
Date: Wed, 25 Mar 2020 10:26:36 -0400
Message-Id: <f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Comparison to NULL been used across the driver,
remove them and use (!var) instead.

Checkpatch.pl: CHECK:
Comparison to NULL could be written "!desc"... etc

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- None.

 drivers/staging/kpc2000/kpc_dma/dma.c            |  2 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c        | 12 ++++++------
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  4 ++--
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 51a4dd534a0d..4bfbc717bc07 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -236,7 +236,7 @@ int  count_descriptors_available(struct kpc_dma_device *eng)
 	struct kpc_dma_descriptor *cur = eng->desc_next;

 	while (cur != eng->desc_completed) {
-		BUG_ON(cur == NULL);
+		BUG_ON(!cur);
 		count++;
 		cur = cur->Next;
 	}
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 40525540dde6..5eb6c5f24feb 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -124,7 +124,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 		pcnt = count_parts_for_sge(sg);
 		for (p = 0 ; p < pcnt ; p++) {
 			// Fill out the descriptor
-			BUG_ON(desc == NULL);
+			BUG_ON(!desc);
 			clear_desc(desc);
 			if (p != pcnt-1) {
 				desc->DescByteCount = 0x80000;
@@ -203,11 +203,11 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 {
 	unsigned int i;

-	BUG_ON(acd == NULL);
-	BUG_ON(acd->user_pages == NULL);
-	BUG_ON(acd->sgt.sgl == NULL);
-	BUG_ON(acd->ldev == NULL);
-	BUG_ON(acd->ldev->pldev == NULL);
+	BUG_ON(!acd);
+	BUG_ON(!acd->user_pages);
+	BUG_ON(!acd->sgt.sgl);
+	BUG_ON(!acd->ldev);
+	BUG_ON(!acd->ldev->pldev);

 	for (i = 0 ; i < acd->page_count ; i++) {
 		if (!PageReserved(acd->user_pages[i])) {
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index 4c8cc866b826..8b9c978257b9 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
@@ -198,14 +198,14 @@ u32  GetEngineCompletePtr(struct kpc_dma_device *eng)
 static inline
 void  lock_engine(struct kpc_dma_device *eng)
 {
-	BUG_ON(eng == NULL);
+	BUG_ON(!eng);
 	mutex_lock(&eng->sem);
 }

 static inline
 void  unlock_engine(struct kpc_dma_device *eng)
 {
-	BUG_ON(eng == NULL);
+	BUG_ON(!eng);
 	mutex_unlock(&eng->sem);
 }

---
2.20.1

