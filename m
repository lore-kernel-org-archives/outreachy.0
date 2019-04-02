X-GM-THRID: 6675368060251013120
X-Received: by 2002:aca:7212:: with SMTP id p18mr8301763oic.25.1554230242941;
        Tue, 02 Apr 2019 11:37:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:748b:: with SMTP id t11ls3754920otk.7.gmail; Tue, 02 Apr
 2019 11:37:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxUlfMOWd9v4rW/EoRQTExOYwGHnT9e+oSUGnvFwJ9RIDD3FtkHHOp3ORs7xkZ5qtu9KSX
X-Received: by 2002:a9d:6208:: with SMTP id g8mr7417737otj.15.1554230241946;
        Tue, 02 Apr 2019 11:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554230241; cv=none;
        d=google.com; s=arc-20160816;
        b=YBRl8H690avhC3iXR1s8VP6IXByp5qkAeWxAx4AygB2kACg2eVhDYPSQDSojDfDVcX
         Tb5lb9ewsxklbRCpNTi+2eArOiaNlGS1QqtaTwr45m0xsRSp5LIm+dHZ6VTCJ/xgpgyX
         ARbTK1FkePct6NNJWGT6nOxjXMP+AhNcbeMyqSAFxZUoAnXAAPbrtHV2w7OasJnaKosg
         U43QiYjNqgVPcIQnGuUIaIYimpe+v6fp82hY9hyqFFEV0Mp05lKvPHZPzgYDke5/e/uM
         /IK9yx/jertRhlIx0SddBZ7XKunCoPwmdOyxB1N06XFhkWisCHknZ0SA5mJ4Io5wy932
         A2Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5AfI59OTtGlVoZv2A2NsnWDIEiSBoDtU3WrhBA0vRIg=;
        b=WJKBIhOQ99veo7wpF1pfjn0VLDt5ZZ+cNwdwNKTfpKC/ZAjLKQu2CmuI5RstgJUYep
         XOUyhollMmZME4Wklew+JKKBiFgnqDujCwJKkcio2UuJi+a4NiSN1/Wj0KmWL2cAFtrq
         Mdar7AN14Iixxj3RXsDV5q8guHPXPIH5Jcs2YyAr/fHPgIUWZ2C2nrJWII6CBSbyzGAD
         jRlrcYD1rb+ebNtdJhfm1g4G+UT9A24SxSKwBnvdVmxpaKHtCmCQ5I+4zQq9Kfbq1IvS
         oej96Z410AFlzHUgi5knoAThJ72hmcKhndBbnSH7OEZOuGpOraMZdYeV+WmxEQ/4WPHo
         olgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bzIg5Y1Y;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id d12si726931oib.0.2019.04.02.11.37.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 11:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bzIg5Y1Y;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id v7so11355297oie.8
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 11:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5AfI59OTtGlVoZv2A2NsnWDIEiSBoDtU3WrhBA0vRIg=;
        b=bzIg5Y1YBRlxyLMISxuG62qb58upTowHX3Qcap7iTsGvnJB/uhiQRHG6kGhRQAIoa5
         nv71iE/2aVv9WlNCzvfauI5UDsAF4uKWARC23ngKnJrn9LpWbyOOwYBgtVI7814SkJSB
         nRFmDgEfps12Q/55sjz2hzmYLEinf9UdsOmLFSB7k9M9DM8CFH5PEobBMuHr4v2ETDqe
         RPO3htTuBWxR3Xj60+n6hGQHYd7T4Mb+kqThutvZeYQv/0IHFj/P9w0ak5NFLcT9ZCIt
         +hK2lZrnRlDSgf6fwgaWCedj6KuiIXuwUYmSUZ1kypQZKqF9MhMd2ICFiG+pnzma7R7o
         kE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5AfI59OTtGlVoZv2A2NsnWDIEiSBoDtU3WrhBA0vRIg=;
        b=M+NiJnXRqab2pMCDZesJqNhBz0ULjF5P3PR1dG6TNXxfoEkuK2AaCO09xLcbl08GeO
         6huw8OnB2AEdD1dUi5UzY3mMDxAHJF6AlF6hD88z6cUyPw2CHXNNQCNLrFCdSZvx7QwQ
         1P80SIYhtTqePikpinv2lLqcGxMeM4Xh4vwH+JWcSsvFUH1QSAXnTFmK4HD+xez/iHbA
         Yzwufm6W6CkSZCRGgEwbe+WhQjSAjyn7dMrq57JCVCslerV2lwKxclzk5RsiwmY5gWii
         MWZEtjtuD5V/FXdhDGpewgje4s88jZWb9/pfPaAlBLH8JovwhTxeYKFV04dtbfPPlVC5
         WRfA==
X-Gm-Message-State: APjAAAUxUJ1lPRgX06F9qj4vCsC0Z9Et4HXEoGnyVUp6L35JvZK0YPSu
	YYRESEkcjlAq4fzJrLQH65o=
X-Received: by 2002:aca:ba0b:: with SMTP id k11mr8997995oif.57.1554230241625;
        Tue, 02 Apr 2019 11:37:21 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id a23sm5622678otf.69.2019.04.02.11.37.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Apr 2019 11:37:20 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: rspringer@google.com,
	toddpoynor@google.com,
	benchan@chromium.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: gasket: Use DIV_ROUND_UP
Date: Tue,  2 Apr 2019 13:37:17 -0500
Message-Id: <20190402183717.10357-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Use DIV_ROUND_UP in-kernel function to make code simple and efficient.

Issue found using Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/gasket/gasket_page_table.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index 26755d9ca41d..600928f63577 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -768,8 +768,7 @@ static bool gasket_is_extended_dev_addr_bad(struct gasket_page_table *pg_tbl,
 	page_lvl0_idx = gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
 
 	/* Get the count of affected level 0 pages. */
-	num_lvl0_pages = (num_pages + GASKET_PAGES_PER_SUBTABLE - 1) /
-		GASKET_PAGES_PER_SUBTABLE;
+	num_lvl0_pages = DIV_ROUND_UP(num_pages, GASKET_PAGES_PER_SUBTABLE);
 
 	if (gasket_components_to_dev_address(pg_tbl, 0, page_global_idx,
 					     page_offset) != dev_addr) {
@@ -1258,7 +1257,7 @@ int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
 	dma_addr_t handle;
 	void *mem;
 	int j;
-	unsigned int num_pages = (size + PAGE_SIZE - 1) / PAGE_SIZE;
+	unsigned int num_pages = DIV_ROUND_UP(size, PAGE_SIZE);
 	const struct gasket_driver_desc *driver_desc =
 		gasket_get_driver_desc(gasket_dev);
 
-- 
2.17.1


