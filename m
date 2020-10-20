X-GM-THRID: 6885771919120924672
X-Received: by 2002:a2e:87c6:: with SMTP id v6mr1784529ljj.233.1603218731511;
        Tue, 20 Oct 2020 11:32:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls1861608lff.0.gmail; Tue, 20 Oct
 2020 11:32:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzPcksRhx/GAU7KYTJigsldBO8Mp8Z1zdFzPFM9dRAQWM7KEMUyB9OD0gvxjMBvsMR2+tEu
X-Received: by 2002:a19:c696:: with SMTP id w144mr1363404lff.257.1603218729475;
        Tue, 20 Oct 2020 11:32:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603218729; cv=none;
        d=google.com; s=arc-20160816;
        b=orFgbS548dW5yo8LSUlCq6UnHY2/Y2YJbznfzg/ZYV6fwCViM7iiwL03G2jQu6LzhE
         jEr5+KvnqAhLuqmJcf/ZjWGPl8v3rekrni0kQRpNVE+os0y2uDmQxuHcSSmb1V8qEl0+
         iDC2jZM/1VkCpLM3Zx7zVwQL78G6MIHXK0IX3igzIkOxbt5+W4dhzF7GIb8BE5xsKZ2/
         fDPRSAFJGLULyzCejc3Pq+IqO9AlZ7RRnLsy8jvQmCzktWONbDSqF3nIqGkmbe96IOi5
         eEomiLXJz0YRlmlEO+zEFMBa4i/Wu3EzMSihAa9cu8XD7O1B5xr7P4myWn320pCQDU4/
         43+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GfsUCd6Pp7LNqqCBQSp+uFAVmJ/CL5Y6n+X6yPdn1Kg=;
        b=uBH0+KQnjLxEN5ia0g6XodbH9m9Pvjnlupaswoc20McXDwE9ekfcXJF71AE+DxR1vJ
         dDLMZhmizHKvUi+RQg8qzqfrk6ss1uQOSZ8/GZCFv+ho6c544mTqqgE2XIoe96LhgZdG
         /qYdoh5OS+J5V92wXvFFBNf20n1mVmwmaAluXqD0KNZNq/braYcTC9pZ44LCBcJNBNWT
         +nAWcNJMGaHV2pl+Fucs3W8rJ0kD/tLDxvK7JSqu6kSAcaVqLhSYqrptyf6oDYNjcjCA
         t7T0l/jkA2SOO7+pz464UEISKq9Gsq2ZKU6v21uhY9E/+BbNlYIcUE51lEPgE6d/wEda
         WzsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X3X6QPb8;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id l28si99690lfp.11.2020.10.20.11.32.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:32:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X3X6QPb8;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id z2so3354597lfr.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 11:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GfsUCd6Pp7LNqqCBQSp+uFAVmJ/CL5Y6n+X6yPdn1Kg=;
        b=X3X6QPb8YCK46GhOR61hCl0e2SprDaYr+PReCa0gnc8kERhx3VGM9zUNvVh15pPvzc
         fqlmtDXwSGvcy+nGdwcJBJW0Hb1YQ3bRkncHAVweodhv6xgAhkSNDMW7J5E+gk+BzNcY
         UmqOCLwLv7oIjRBp8BfXcPQaHWkji63VNzRjhjja6wFgfRhmuio3MomnQG6/27CNg5vx
         zy7EgAPCI22QKXqNfiLNgaDzSaVCSvcSxdgvKj/L8jnB/tslKARSWstbuWLxsLQfwPT7
         wuohT/U7MBuB7i7CZReqiWF7YZRk9WKQjouzEUmzwFimmLd37ZPxTuGhtMZ9m5HWDn1J
         ANGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GfsUCd6Pp7LNqqCBQSp+uFAVmJ/CL5Y6n+X6yPdn1Kg=;
        b=M1UorVZUY2wDXJKoJXifE22TBzVnNkq2AE/RefRSAexeTpg36UyJIWJVLSdEFCLOec
         xQddX2Pvpx4w1/K5gC+od3P/9JV8jXyAGEI+Yv8dFO5Y/ONs8f+RAxati6NPy3O647Iy
         lXtssCW7b1hcbEeBSK2hb2f6s77/Zt5RXow2QxB/ejT9N8byf566dOBT1qedrXfTmvWJ
         8qW2zQinsWTkAapOakE3U3600PeWGtGRvJX74G88Vlf+y84NEm4swKEdaf/tKcFnqxz4
         ZBOD6LNIBuEsNFCZ+IbGw6iL67ppbScDQatZoympWfI9HU71diwXPHlj65Sskd/p7inf
         MBSg==
X-Gm-Message-State: AOAM532DI4lXVL/5zSOzPDIddJojBhrnpenuwGICRGBRqUxpoQCic/FO
	vWyQoBpBGUYHSJSZrqrjlEc=
X-Received: by 2002:a19:e014:: with SMTP id x20mr1369788lfg.444.1603218729222;
        Tue, 20 Oct 2020 11:32:09 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id a24sm424497lfg.282.2020.10.20.11.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:32:08 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH 2/3] staging/rtl8712: fix code style for comparison to NULL
Date: Tue, 20 Oct 2020 11:24:38 -0700
Message-Id: <20201020182439.43314-2-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201020182439.43314-1-eafanasova@gmail.com>
References: <20201020182439.43314-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reported by checkpatch.pl

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 57a965b9839b..d03859ca1697 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -134,7 +134,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -142,7 +142,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -152,7 +152,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -169,7 +169,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -187,7 +187,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
-- 
2.25.1


