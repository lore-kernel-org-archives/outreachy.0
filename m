X-GM-THRID: 6615772490286235648
X-Received: by 2002:a9d:2157:: with SMTP id l23mr1081486otd.55.1540512300563;
        Thu, 25 Oct 2018 17:05:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5a0b:: with SMTP id o11-v6ls77929oib.13.gmail; Thu, 25
 Oct 2018 17:04:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ftCtQ56csNlfRgKMoQAHV2zysGRBiaAJykDVjJDH/sIjHJ7M5TFKgy03Ro6AmNiz5X7N6k
X-Received: by 2002:aca:e1c3:: with SMTP id y186-v6mr1127292oig.27.1540512299696;
        Thu, 25 Oct 2018 17:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540512299; cv=none;
        d=google.com; s=arc-20160816;
        b=NPwqRHrp7nKHdy8TbP6jJ92+Ut8V6PDGPTFB3kB/5774PVurlIRtSctwGTunuMdbE/
         GiAHbxEE173QMC3ZpCmKI16mH22tv41EqlYhe+tA9MGnVU9OSrjZQ06KN53jgWLIIETF
         S4REukGKn8qkAgP560WGgLpls0OuwHn3Eo2k/jNCYMFmLnCn3yEoxVeihG7rxCgc9A5H
         InYLLWPrluFU+xaD+QstEE+sh+dSE7HaYvEpE/EHqGlR/91407hB5KsePbewp9odmui0
         +p2ybF07trp0fYOTzUIx/Ao9hZmo0gVj1yDNmGwYmFYcLD3Lo8pgAEMyPgJnE8+oDEzY
         6I3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=8QpkzoHpo/effhEpFf8l06tiON/l7neCWRws6Cc36l0=;
        b=gHt/Orq+lMIqOiuE0lpJq5f6zeyi32W29EUXlGfLCO4UT3qbqAxqcXWsNsB/g3R8Ek
         l1ZPiLB+IzjXI09ROVYyctfXvt+WeQhTISJIAYmJT/AsTPwFNs2fA/vKAmptXPmENxAB
         192hkwIYzDvHvCGJukP6kr/UWs4ZuVzbNWPghPRZXzYsBR8trEoumxn012dNzN+fYw1N
         JnV3GNphFoKKdL0NBnepNgm5oBNsuJ0RslhWaX3lXXzgj0xoVKKkovBsR26rI6L3rDht
         Hy0wKqS3xiGdsKD+wW+vc6nZMT4N+9Q0Sooy1fR8GN1haT/UOayeJsPCBoRmXBpyeyYZ
         6C7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cH+WDS0A;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id a84-v6si598899oii.1.2018.10.25.17.04.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 17:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cH+WDS0A;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id c6-v6so5923106iob.11
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 17:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8QpkzoHpo/effhEpFf8l06tiON/l7neCWRws6Cc36l0=;
        b=cH+WDS0A+z7h2Wh9SCmtl42H2JHbz5c/JbxXNfRmSdqCja911B7S2s2tRqcFWxoQ5A
         5i2+RmppVau8RUcjL8c/S9y//DYNXBRqkKXWjoATmTdGeTw3Mdp9if/5RhsSieirhdHS
         mk2t0Nxu4bFg/9xH1VKcfgELTi+h06tsgNMSKFvC0Nrx5bo9qadNgINeMxMWGRtejMvh
         YHqPq/Sdeg4p69GwqQIoPwe74Qd618pzNwrQ2lju3097k61ADfWCGr9435R49kvWi8Zf
         Wg8IGOpMUlbkA6/3jlcJgCzLUp0Ere8nmxtd+rjTEtVf5MAT7O21SRVrUIls+GgjVc5c
         5fRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8QpkzoHpo/effhEpFf8l06tiON/l7neCWRws6Cc36l0=;
        b=XCZhWXkJnLNm3Muxj8Gp6k+BAmLObjsSqv6m/5aB+xaHDWPRFa9BADx8vu4eSHu0BK
         qiMPWxleBlvJRs8IGmgH8emGzrFPnRVq8iBhzDYY7FasSmV76AFAXmTb67FizeAhi/MG
         ahc1Gx4UzjkbiDBnRbSCn6bZaZS43TeGyu6FVpr8ahWH4HV2L1lAxky2F6c6UUi8mJe6
         T/vt0PH7zrGWweBz83AsspEJV2uR6ujUVsFE0mfgVwckaSiDjoZbQBqF+emt5td6NiFL
         DPsTafd9eATx70taNSjC1mcwDMhpHSVRy33yNzWa65Gp3NTdDtDmeD65RIxxynkWkWei
         rgzQ==
X-Gm-Message-State: AGRZ1gKG0FOhiN+PwL8mGLgb+3EgFW2HisYosrMcU1SbWYvUBJjKRt8k
	A0Z5kt3kAyiitFRUMbycFwNqrBsbFDk=
X-Received: by 2002:a6b:c5c1:: with SMTP id v184-v6mr975843iof.164.1540512299164;
        Thu, 25 Oct 2018 17:04:59 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id w124-v6sm2461399ita.0.2018.10.25.17.04.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 17:04:58 -0700 (PDT)
Date: Thu, 25 Oct 2018 20:04:55 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH v2] staging: gasket: use sizeof(*p) for memory allocation
Message-ID: <20181026000455.GA26042@v>
References: <20181024041602.GA2385@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181024041602.GA2385@v>
User-Agent: Mutt/1.9.4 (2018-02-28)

Use sizeof(*p) instead of sizeof(struct P) for memory allocation. This
change complies with the Linux kernel coding style. It improves
readability and decreases the opportunity for bugs if the pointer
variable type is changed. Issue found by checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
Changes in v2:
- Changed 4 additional memory allocations to use sizeof(*p).
- Removed 'interrupt:' from the subject line because the
  gasket_page_table.c file is now included in this patch.

 drivers/staging/gasket/gasket_interrupt.c  | 17 ++++++++---------
 drivers/staging/gasket/gasket_page_table.c |  3 ++-
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 49d47afad64f..ad5657d213f0 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -184,7 +184,7 @@ gasket_interrupt_msix_init(struct gasket_interrupt_data *interrupt_data)
 
 	interrupt_data->msix_entries =
 		kcalloc(interrupt_data->num_interrupts,
-			sizeof(struct msix_entry), GFP_KERNEL);
+			sizeof(*interrupt_data->msix_entries), GFP_KERNEL);
 	if (!interrupt_data->msix_entries)
 		return -ENOMEM;
 
@@ -322,8 +322,7 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 	const struct gasket_driver_desc *driver_desc =
 		gasket_get_driver_desc(gasket_dev);
 
-	interrupt_data = kzalloc(sizeof(struct gasket_interrupt_data),
-				 GFP_KERNEL);
+	interrupt_data = kzalloc(sizeof(*interrupt_data), GFP_KERNEL);
 	if (!interrupt_data)
 		return -ENOMEM;
 	gasket_dev->interrupt_data = interrupt_data;
@@ -336,17 +335,17 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 	interrupt_data->pack_width = driver_desc->interrupt_pack_width;
 	interrupt_data->num_configured = 0;
 
-	interrupt_data->eventfd_ctxs = kcalloc(driver_desc->num_interrupts,
-					       sizeof(struct eventfd_ctx *),
-					       GFP_KERNEL);
+	interrupt_data->eventfd_ctxs =
+		kcalloc(driver_desc->num_interrupts,
+			sizeof(*interrupt_data->eventfd_ctxs), GFP_KERNEL);
 	if (!interrupt_data->eventfd_ctxs) {
 		kfree(interrupt_data);
 		return -ENOMEM;
 	}
 
-	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
-						   sizeof(ulong),
-						   GFP_KERNEL);
+	interrupt_data->interrupt_counts =
+		kcalloc(driver_desc->num_interrupts,
+			sizeof(*interrupt_data->interrupt_counts), GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
 		kfree(interrupt_data->eventfd_ctxs);
 		kfree(interrupt_data);
diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index 5b398b7ba81d..5f4c9b49cb5a 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -1302,7 +1302,8 @@ int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
 
 	/* allocate the physical memory block */
 	gasket_dev->page_table[index]->coherent_pages =
-		kcalloc(num_pages, sizeof(struct gasket_coherent_page_entry),
+		kcalloc(num_pages,
+			sizeof(*gasket_dev->page_table[index]->coherent_pages),
 			GFP_KERNEL);
 	if (!gasket_dev->page_table[index]->coherent_pages)
 		goto nomem;
-- 
2.17.1


