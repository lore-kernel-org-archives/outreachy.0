X-GM-THRID: 6802879895263248384
X-Received: by 2002:a17:90a:ae0a:: with SMTP id t10mr2544769pjq.2.1583918930806;
        Wed, 11 Mar 2020 02:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:fb90:: with SMTP id cp16ls805382pjb.3.canary-gmail;
 Wed, 11 Mar 2020 02:28:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvN8XhGAgzGqchdkvzBpHVSy9JhYz6P2U5heRuKxKyKSa5DPTobYkuS1O9NlyfkTLY37SUl
X-Received: by 2002:a17:90a:5d97:: with SMTP id t23mr2493198pji.61.1583918928952;
        Wed, 11 Mar 2020 02:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583918928; cv=none;
        d=google.com; s=arc-20160816;
        b=WvBuGWOkkg6QVlidwzqVGLZClTsREnbz+JRf4yLxRtMyIldpK7iDNjV18wUWiv/ybi
         gEHC5Ze04yIRjBnjOkP7Jbnyj+byB8R0WBDL4A75yyTmV8yXzPZCRkbkz5YptwakXOMQ
         3vQ7yFHQZmKjPkbtt20dduYovzlsjctJCKc/7Ldj9hxDRN33rJWr/9wiNDNDdkmis5ZT
         cC6VrA/HQUDGSjJlf4WAr1aoiKSx3caVJVZEpKB4/id+AKa2cYpYXKvWsQ3OIKb59k0Z
         0x3oMss1tgvkmEjoMnPfdANb+ZqtYy7xlLqAB0tFHuQ+yJ+pxs77wlW7NkXoiYOaoLND
         /JXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=RV4o7YwELlMC7rUA+DuQlqhHo2GVNBuy8bNKvTBpsks=;
        b=afT2Uf1/sBp81AHx2wC3gIWGraqQi224NOkWpX89ZQoVMSr/Yncwt6s3wSRxMssK/R
         OoVmxz+G7xyCFG3qibzhTqKh5dZ8a2HHL4rHbkpvPYJ5MH9o45R+Zj2C++w/O06MmDNy
         s/iHCn2mL/J5KlmKaOZxg8VzzkUWAkwaYCMBEHpMKi7Dniq9dku0je9uv4xcdSgy1FNR
         uNtEnkMH0c+R9qhgMCD44tEkWXSlYki/vOeO4lEhlPMgy1zgTXMcRVuvzUZ3b9KvSjsD
         2asUCpG5nqjWFyTGjssO2LqrCdqfUfVH/Vh0HPdrJC1X/PDQrRGQvSUPAzXLlfQ4lKX8
         vjIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHR4UauH;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id ng10si105216pjb.2.2020.03.11.02.28.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 02:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHR4UauH;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 7so868775pgr.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 02:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RV4o7YwELlMC7rUA+DuQlqhHo2GVNBuy8bNKvTBpsks=;
        b=uHR4UauHx6p0/7NyhOo0IsxxIBDfECkMBs1HPU+A5gB6IB6gV2Qzm3O5S3tHmLJdwV
         viAdqs7EbUtSxUB8C7snQZV2VHCkPvzyTYqJ/uDgyD2vbQcswTCRRBQpCsd1jCv7cXKv
         yW0Vx7i3aUgnCEyH6FsiC97z/n9BicsClcZC8h1V5dxhddLFsIgOUB8Fw2ssQXuQiF2n
         EWnkJHvEL/RtjPaIg3V2AMG7ORW5oYKUxGLpVxFH+GDZzWgmfzncjEA549YF5r5fAAta
         3R0ouIg74P5nKF49kEG0xSoqNrLEZ//3JErxrQSKLZU6AeWTKZlOsR6nFFA4amGgnN6r
         p94g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RV4o7YwELlMC7rUA+DuQlqhHo2GVNBuy8bNKvTBpsks=;
        b=k+qYa1Gq40ZxQfIw0TiC4qIZyQ3jEs1xoR8PDasjgbMoqhJzjcS06YxWB3Aus7a80p
         jJixaT61XRTElDZFuszZGlJsYSuq6QcGS0CQLGu6k5jszU6nqpK9uOaRHODZvUl2jdwN
         /du7Oo6Nn0VIDyQIjOR/sPxkuROQ08Qbb0FRO8njb/gjHbOJtw4hpMH4+MykaF0/u+xJ
         nbjACXXUQZft8bvy40EES1wnst7DZNtckBO+pmvRuT2WAPK2zHqGU9iHYfafVL/pIO9T
         Lw7RB8RaaZ3MkkYha4pFhhc46ljR6f20/26ODkhqbbKbPicHwnrQu9dC5wEzQFq7zTUz
         Dbrg==
X-Gm-Message-State: ANhLgQ0p/4IromNORdIV/zT7srFmZ8IV/pR4fs3NsIR6SIAeP1UILJG2
	0FoNQPmNIooMIfD1bmJSY5k=
X-Received: by 2002:a63:c608:: with SMTP id w8mr2017108pgg.115.1583918928504;
        Wed, 11 Mar 2020 02:28:48 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id g19sm50466650pfh.134.2020.03.11.02.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 02:28:47 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 3/4] [Outreachy kernel] staging: qlge: qlge_dbg.c: remove an unneeded variable
Date: Wed, 11 Mar 2020 14:58:14 +0530
Message-Id: <85f123c8977735a8422bd27d9ca57e12b1833ca2.1583918265.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 670361873d1d..f1a6157fb7e1 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -29,15 +29,12 @@ static int ql_write_other_func_reg(struct ql_adapter *qdev,
 				   u32 reg, u32 reg_val)
 {
 	u32 register_to_read;
-	int status = 0;
 
 	register_to_read = MPI_NIC_REG_BLOCK
 				| MPI_NIC_READ
 				| (qdev->alt_func << MPI_NIC_FUNCTION_SHIFT)
 				| reg;
-	status = ql_write_mpi_reg(qdev, register_to_read, reg_val);
-
-	return status;
+	return ql_write_mpi_reg(qdev, register_to_read, reg_val);
 }
 
 static int ql_wait_other_func_reg_rdy(struct ql_adapter *qdev, u32 reg,
-- 
2.17.1


