X-GM-THRID: 6885970595942498304
X-Received: by 2002:aca:5256:: with SMTP id g83mr1346520oib.71.1603265197401;
        Wed, 21 Oct 2020 00:26:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd17:: with SMTP id b23ls1213251oii.2.gmail; Wed, 21 Oct
 2020 00:26:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxFYXUPsCnEuRnIV2bPdQUIN0w2P41WRGBegzmud6SORtqx9o3I4ZLCyhNDy6i5lD3zq3u+
X-Received: by 2002:aca:6702:: with SMTP id z2mr1349879oix.140.1603265196157;
        Wed, 21 Oct 2020 00:26:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603265196; cv=none;
        d=google.com; s=arc-20160816;
        b=x9MitPZ7MFNxfOmv8VgPbl2pWeYb8x3se2N0V9uiLbLi+XWuKyfe++4tL1rgtsaXmf
         VIfR6qpQGNUIpK3gZ3ZB31wQhsyAIxsfUiBjAqlyD3eTnZT5aMMIqbipyfESezVjRVEH
         TUi1/0VVAtYEyBrX27zZDrVWTr3fQi3rO/31piZvlgJnLvNj3bn7Ge2YgHstRXZRsRvz
         KOMWaY+BH4HThWwETgZpfR/jf/FFldA44em1TCwJRRxMa9l+1WhCeqFqn8FUTFaqjtwQ
         Sziylra1cpI6lAceRWOIDLDqdVLIIzSFeDz5+uyW/haOBihTwlu4/7pU5DN3PipPCyj3
         f88g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=COkh0ZLnqFaA8xDcB21IFSBxo1VaxBiO/fKhA0Lh574=;
        b=FGNKkCelOzOPnqJPU8uLXgj+KRaRmUGODmoCKmFZVtY/Hdkt/2FQSa66Ht+DcCTz8h
         QASHkxAsHeVo/YpRwX70IfdoHhxaInNRq9E7bBhOJ4/pfrgy3OF1Hmvg3APyLn2VztAo
         HQDnvNM68eAso9Znq7kY8wT2ngZPHhCDM6YAy0c4VK9aY24nhh29eox5O3V7y7YW3QhX
         f2rkZUJisOAqP31Nmu6aCBI7o9ZwUo4YEm+2MCW0t7/uhz8Q1HY1NM66FyH/k+SsSHTE
         1aDaVHgT9+M1g89SKw0KaZdof6f7X28wQCXaB6irOuImparIY0rnMMPplTCTAdqKEwpg
         nJPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ImpEFdgL;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id j78si89019oib.5.2020.10.21.00.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 00:26:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ImpEFdgL;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id b6so1778575pju.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 00:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=COkh0ZLnqFaA8xDcB21IFSBxo1VaxBiO/fKhA0Lh574=;
        b=ImpEFdgLXixlLzLml4OFWi3tiD4b5etcYjKTXQ9/BEsiMZDfj3TwF2jiAUuBKXamJy
         HTKyfXoiTzxXExZ1twGMTOEbkFxBARe3en9j39am2r369vbftwh8sbLRWOboxtLr/KGB
         VqiWp9mh+9Vdwf1h0LT32Zrcttgo+9E9hqdI0NTVx49vVDF7zjEJvLf6dbHC3FLDZt8W
         RxqlE51ZotTRieDPtagOkw1FscKQJmZFO8Da2maiBr3QZvWHj88Rofqs0KI84/a7GVBB
         1gMYGVHudKRV82/h4D2vedmmcUvx3ECdcTcI0Yxnt2V3JG/hWpyhcsyQzaYLpJpLpVaf
         AFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=COkh0ZLnqFaA8xDcB21IFSBxo1VaxBiO/fKhA0Lh574=;
        b=HLc50CwiZjVPEfkoi+zCZiM7JGBDX7hJT3YHcmqmekHUUzpi2+p1nEWn1i9AAi4hJS
         JrCr6bcBjjFr3R3EgN2GFEzeVsuHY5BPYIgWwj2EQIKGKRBhgcaLsd5G/++sbdO+5ByD
         Q/Xhf26gjuY9Dhu9QGjS1uVNYnrQPVEwYMToApQx90Z+r+FmowonXVEKqcpv123/+xYL
         KKnRilL2IwVi2GnuuUIg+Lr6IgziRviCHZvzvSupWCsWXqn0TavYoO+UgjUy0xvJSNHT
         kNeWvaCtGoSMv3B7wvuoLqn2/iNGxPBqONO8kw//4ozi/e+ij4YmcvUalujtRhVAIbDN
         DI7Q==
X-Gm-Message-State: AOAM531SCUyMyTvZ6G4sxsq70fk0vDk+fWDE5m3xC5RFv2BM2Y7VmQDa
	e+JyP++QArMCaKkpWC81QVo=
X-Received: by 2002:a17:90a:fa03:: with SMTP id cm3mr2066210pjb.56.1603265195615;
        Wed, 21 Oct 2020 00:26:35 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e5sm1304006pfj.99.2020.10.21.00.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 00:26:35 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:56:30 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v2 2/3] staging: kpc2000: re-indent code for better
 readability
Message-ID: <29cf604e69435c1f0ef46397d0d8a1b62f32fa9b.1603264610.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>

Re-indent code as per the coding style guidelines. The changes improve
code readability. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
  - Separate specific checkpatch issues into individual patches.
  - Update patch subject and description to specific issue being fixed.
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


