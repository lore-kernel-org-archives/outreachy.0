X-GM-THRID: 6885970595942498304
X-Received: by 2002:ae9:ed02:: with SMTP id c2mr3939141qkg.410.1603296576776;
        Wed, 21 Oct 2020 09:09:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls154483qkd.1.gmail; Wed, 21 Oct
 2020 09:09:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwiIoQ7So4gB8TqiMwYdgVk7cS1RuKebKaNxk7rh4vu+C/WLA1tlZPr/qoif7fZvvRN3y6K
X-Received: by 2002:a37:ec4:: with SMTP id 187mr4055445qko.113.1603296574926;
        Wed, 21 Oct 2020 09:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603296574; cv=none;
        d=google.com; s=arc-20160816;
        b=Jyx7wUBX8ZbdMWgocbHxZpyUXMV6GxUqD/vYyAzUcqNoZ0aM/UP1j2qnmqP543sfLB
         fTa0DT5C5XEhkF0m1xBLcqHzmX0YFoCmfxEaUxx/RqMQqCYtR50BGT+ZGf2tSPS8N50U
         9SziWxCDhwQKkigZFAtrXhwRd+tNfqPMgx+d5ZY2rx3BYSSqlD31OteYZehIaQ3tglHy
         zRNZXF3U8ZzsGe8mwginfmEnehxGUVgXZNKTnSHAfCGUtg5pkBRmKH78f9ZGKAApK/3O
         /eFEmcUgmBaBCvD6ZgIsvmDGKR0L8HQ4UnXwzezf+LaNVVh61Bt0i2tsXxHJkSDFIV6T
         UBaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yh7qPceYXnIObXUiA501DrhSV8AgldwhbkJilHJF/GE=;
        b=sP8xE3FXAAqkDx8FYEoleh+RDB5FBcp06Wm2k4qIP8mP0WW/JDR3zAqGGbl5PLSPDj
         pUWc0XuZygfgnkONKSeq9iZeF+sIUs0ACWJJDEE4e6Yf8sjzfg1lFSinhMZ+Xfv4LXAn
         P88fGHQVbhJIvpkGBEi9tIYU9WjxkW+NG6C/83aUtMsXaZozPeK345RgFiQy/RabSulT
         D5P5FsWC1AU6fHRdnoWwE+Ht2nsw/i1KWWoEa0/Anqsu2N8zpEQSokfSrd/RDmzl35W4
         9EtFA3pXnXWSmyN3FZTcxuGzZTQIGgqGIZRPTgBf05jSeSxpFhRDML1RBZDS9XnJzIcv
         9ZMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IW/6t8eV";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id g19si184646qtm.2.2020.10.21.09.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 09:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IW/6t8eV";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id az3so1386284pjb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 09:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yh7qPceYXnIObXUiA501DrhSV8AgldwhbkJilHJF/GE=;
        b=IW/6t8eVZygjCuqK6WmfeaRkTkHx6jM92mkH2ayV5svV9nA2uzR7YUmj8gLDOeQkxy
         Coa7yRT0YnuVyHZp0ZlwF0zEGDfqEcjzzPsuZn49dSYq5tpVdrx9+3wIx4dzpay1OP2j
         LngfR9/FchLBJ1OBTNDcxALZP//L2sIulSUu56U+bBU1y6VuJuwA5DFmQWRrrAo4ZV7I
         gjR/dp1sAUpwqbjKjH/eQTfoOib2AZNNI2ahzih0+ah+uP2E7BPPX+WtPGb33ilGZMtF
         UaxbWjX/Szd3/3ev6nNzJuZmqNApTq6YNVSHBafytwVxdCkJ6ONf/sZZVU9OrxOznKBi
         D/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yh7qPceYXnIObXUiA501DrhSV8AgldwhbkJilHJF/GE=;
        b=rNkA95/IKUJFn1nvK+TlQ7XNRgTrZY/9SQJi53LCQBL//6mSHMYtMnVzBzBNlUTeUy
         8mRvp6Mar6WxnMxLIl2nYTaHeQP3aniTn3W5rIrPf9mt+LCK8C8h9A0pUtADDPZOJ3ir
         3ibBS0orlbQy91SfkX97qK+lWCcCMceaZWJJ/77UC3f7CtpKS/WFjoIRhvemFK54Dx4A
         ZBCygmcmKp4m0gOJykYqouL6KTekN8dDE5XPucs6JzP0CMNqZbHpAIsx7/o3HwQIJsqa
         rFMMGi2aMNY/U41ShliYLSa0IftEGytEIpb4FqYb7Db4QtTetZ8Sw2cez0V6vtUqPMFC
         mTzA==
X-Gm-Message-State: AOAM532WyV0YpAuC5h7qHYO0KkV4foSBran9wBepcU3UbTYj6AqspsHs
	u/0nz4ewwGI/8JlO0fOEhoAZCHdG9Vc=
X-Received: by 2002:a17:902:aa4c:b029:d5:e527:654c with SMTP id c12-20020a170902aa4cb02900d5e527654cmr4002244plr.24.1603296574163;
        Wed, 21 Oct 2020 09:09:34 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id u65sm2826124pfc.11.2020.10.21.09.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 09:09:33 -0700 (PDT)
Date: Wed, 21 Oct 2020 21:39:29 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v3 2/3] staging: kpc2000: re-indent code for better
 readability
Message-ID: <29cf604e69435c1f0ef46397d0d8a1b62f32fa9b.1603295576.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>

Re-indent code as per the coding style guidelines. The changes improve
code readability. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - None.
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Updated patch subject and description to be specific to the issue
     being fixed.
   - Introduced patch 3/3.
   - Suggested by Vaishali T.

 drivers/staging/kpc2000/kpc2000/core.c            | 3 ++-
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 358d7b2f4ad1..6462a3059fb0 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -124,6 +124,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return count;
 }
+
 static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static ssize_t irq_mask_reg_show(struct device *dev,
@@ -367,7 +368,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
 
 	pcard->dma_bar_base = ioremap(dma_bar_phys_addr,
-					      dma_bar_phys_len);
+				      dma_bar_phys_len);
 	if (!pcard->dma_bar_base) {
 		dev_err(&pcard->pdev->dev,
 			"probe: DMA_BAR could not remap memory to virtual space\n");
diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index 21450e3d408f..8bc78be3c259 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -6,8 +6,7 @@
 #define KPC_DMA_S2C_BASE_OFFSET     0x0000
 #define KPC_DMA_C2S_BASE_OFFSET     0x2000
 #define KPC_DMA_ENGINE_SIZE         0x0100
-#define  ENGINE_CAP_PRESENT_MASK            0x1
-
+#define ENGINE_CAP_PRESENT_MASK     0x1
 
 #define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
 #define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
-- 
2.25.1


