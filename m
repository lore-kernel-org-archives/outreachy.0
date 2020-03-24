X-GM-THRID: 6807884729429262336
X-Received: by 2002:a7b:ce81:: with SMTP id q1mr8153673wmj.156.1585084185867;
        Tue, 24 Mar 2020 14:09:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls81467wmc.0.gmail; Tue, 24 Mar
 2020 14:09:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv60ioTXY3pTqWFDHZkJeIa+l4n5ZMJfQB5lWyhHF5LaamGyJMBAdhnusxFf+qbulWwRZg+
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr8303529wmm.117.1585084184371;
        Tue, 24 Mar 2020 14:09:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084184; cv=none;
        d=google.com; s=arc-20160816;
        b=Ldkr+5AW8tqeYd0MnnmRfwc4Sb/X2UD2V5Pex6bYvXPpcfCH/xmSfH1sWBU2E75l3H
         s4PcgqX9joaLCLxG5B6QeVh3hoIuV/5iAOXZQw2Z/NReZ+Vz9hs/CxINIOIVNqrxZVbV
         sAP05ET1+8iWj7gimKvQuBdsyeqbMNJl5WURAPFIk7+o4W9FHA6fX7u9Rbf8txe4YsUd
         nqvUJecE4SXVNIe0S1o7Cucia8cKEa2HpbmLGxI73Fca46WEf9QVmbX1ILvsPKMUHB2A
         d9+kS+8rr0J5muClk+GInhqmfBk1xGM+iXMKM4Xy8hMhs03xvr49bYNUoL48+scGWFvV
         Ygqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lDxNGS0LhnWWM8XinrSTrhoY+du4bvHsY7OorMihHys=;
        b=HCjGVMTkot2Q0pN7JdENSxSM0ddoc/2SKuy+0SqBd6bF1sVLIMklqkLzqjQCTn/WVy
         1602PaULi+6AUbt2gASo7aZhh7447tky6hnb7rKSDbJVg96LrIIgqL3GS0Gv9RCGlhYT
         oheeqvP8YCd9m3BLSmuF9a5WdndBBRmLagfPZOVHvZj6LEJRq8JDgHgOOdmDwu2HMFqz
         5lO/gaUdE5P5Uera+iu7lNK5CaYblSAnGWWHW/Z7PgjWKLN8O/VM2yuX4XOajYzAkHmd
         oD8xxKo0X/gJdv8jp85diY4VG4CqYnbiMTLw2a/QvorU5OG+v5hQZna7F21PicNKK1rC
         8UNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SqZLxEn8;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id g78si275731wmg.0.2020.03.24.14.09.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SqZLxEn8;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id b12so112972wmj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lDxNGS0LhnWWM8XinrSTrhoY+du4bvHsY7OorMihHys=;
        b=SqZLxEn8eEuTn37i6zw4zPOYsnP51fa49OEtNEZCJD+2rRwroT7u6sjb9a5+4caVD1
         YfjXoHgOCoHHWUT+VBbWPW2sK/XnZb/vtZvRahEpbP2lIhQLAbeq+UORMZqVyr8QpMio
         v3cVuQy5+m6f3yA7+eEysElN4CXIIiq0rl2/WOnQlHOIozUzix7x3RXdQb18+o+zabLR
         76XG6wvxIbOLFTnd2hju0JAymtaKv/3AjveDeV7iMBLjkTGm4BgyS+HBoepJwYGvF3FU
         q5PJi4p81luDXiQASXIKnbInQ9YFmmFZf/cH1uamoe9dU1cgzNoK+3Pe0ofCPvSGEf+V
         cOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lDxNGS0LhnWWM8XinrSTrhoY+du4bvHsY7OorMihHys=;
        b=XQUJEWlJLgoRO/endkuD7X0sOutxBWwR9iW04g6hLK1zlqUFdgsdgbRPNmA5vS32l7
         LnVrysM+NggZhC+Hr2F8clLHU09A9jcaC7cwscwX3HFXsAA4E1AOj0hkQCCov6cHzhLB
         RFKvMPfqhe1L5cupIjFevXNLTAE6ND2asVNvQ86zWBIPgTaTRfdN7P58XM9YoB7gHLOy
         ueU0TdJtkVrvyHdhCiy/CwP61b4XlMpPjljoqAjODBvKyFnxrMKCtlNeUYcjruF/8ph0
         SdhXgwi7vYgpsy9eLny3YUamUKOQHfasULDjDOeQWuRPNEduL3tho2WWXgpizL/9vXnK
         YCqw==
X-Gm-Message-State: ANhLgQ0tr813edzIc2ShYNosSiRYE0UYMMYWk347o6ziqjwwu6NJdqVs
	AWHdvfT4UNdBk7sfSgn7GuI=
X-Received: by 2002:a1c:ba04:: with SMTP id k4mr7820496wmf.10.1585084183978;
        Tue, 24 Mar 2020 14:09:43 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:43 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 1/6] Staging: kpc2000: kpc_dma: Remove comparison to NULL.
Date: Tue, 24 Mar 2020 17:09:14 -0400
Message-Id: <f344afba0a8bb0413941a63678688435f04a96b4.1585082158.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585082157.git.jane.pnx9@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Comparison to NULL been used across the driver,
remove them and use (!var) instead.

Checkpatch.pl: CHECK:
Comparison to NULL could be written "!desc"... etc

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
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

