X-GM-THRID: 6885970595942498304
X-Received: by 2002:a4a:95cb:: with SMTP id p11mr1450299ooi.89.1603265313100;
        Wed, 21 Oct 2020 00:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6319:: with SMTP id q25ls1121533otk.11.gmail; Wed, 21
 Oct 2020 00:28:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0tvwMwbUjoICLoSyDfnWSjAaX0rePb2560ekdlhGKNZ72l5DNGC5AMm0rFCxZArwDOWVc
X-Received: by 2002:a9d:6751:: with SMTP id w17mr1696818otm.7.1603265312201;
        Wed, 21 Oct 2020 00:28:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603265312; cv=none;
        d=google.com; s=arc-20160816;
        b=BL190sIH08uhCpt1Q970GhhVC1dAfOAQ7TOOvdF5MOhdvYMb4erPfTh7fe7J9Z7cwC
         qTmsrjyWuNJfbTKhkUzZLj+KJ9UsY2McCN8yR374rfhQAKmyMvyroSv03/plhBve0zXM
         MoEgG1XIezux15FBbBPnzcNmXaghsaesmbSy632QBsZqoHTMWGA4qVaq8iKdEgStoKiE
         ECQYPaBerFR/nyKNmTDZNw92l7q3kUD4/LULCB72qrHSVVY9T1ERDs+UnpKeDPT5dWUn
         9fRYglI2C5BLhgTtlPY/XOsVIiWyypz2SAmruwzC7ta8jQ7ihNmAbne33PpZiGL3ryXf
         XzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vizHjsoWOdBTeDkMkLLYSpBXNJParGHvf8KFxFajKzc=;
        b=OmctTENvpy9iabbL/I0ov00OGiG75+kFmgaElHq3Nh+WmbXnBme6PkyoXLRaRdSrCG
         BlTobwrCR98OFp5RfLQy6D1SN2N5DOGxVtIg48UNxHOH34hvOI6EyOrcBqo52HrkJrVT
         BmHWOZbT+d3Or5LH+vMn3CtX3xNN+VpWEgS6iplf13FisF/ReqqREXEqotcemVtCK1Hn
         zZsX8NO1XDtnXCuDdlrv7CuscUAsP4F4gdCyiIaBJCeqEu2MCP6Vyau6R/oQEF0Yp3T5
         Vi88J03bUoXUGl5zjtdYCm+Y9xBzEgAYj/vx67W8QOKxapGFj99OQLWvnOClBATqB4Zy
         hBQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WYrpjkyx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id f16si89765otc.0.2020.10.21.00.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 00:28:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WYrpjkyx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id p21so710620pju.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 00:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vizHjsoWOdBTeDkMkLLYSpBXNJParGHvf8KFxFajKzc=;
        b=WYrpjkyxK1dvw3MIMfmrLrKdLrF6BiXxYHc8lZ3x3K8vfpC3gAdLEC82qQM4WoQ2+a
         k3ZssOfnWLPzl/tYXUVmwsYVVbfbCQQp2P2ZKCkfZILVzXAmQ9ES01niVRXOY2bqiAkH
         UYJMJusBMQFtIHnz98UECk5gEUIeRNduY+U+sW/NnooVHlqwF2g8DPWd7slqnXAAkrnz
         bhfk2iyaTECC3n2Tz8bDFvYWr2/7jhMkGgHfgt0hMYyX/hNysb6LmW4811XBv4yIUuoH
         63v4J0RE0hDOcNS9Dlh0I1vLLmlh66o32Om+02B8BbTKr7d9GZRm3BBXgfv6seSuauio
         KVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vizHjsoWOdBTeDkMkLLYSpBXNJParGHvf8KFxFajKzc=;
        b=RDmgyeQ5jyEE93sWx3k1TGzf2qcfyuEEybxIidKef6Vsd7/SbpzGlwCaO7hHfbbgGG
         XAWQxxBSpfNv0OsGLq1LTSz9WBP6s22+OhQfvz/Cdp141C0BvwWWGQGeCo9n+hzJyww8
         YjFaXwJhhlQ7eVpDwtbn6bBCLt1aQjP390DrsAOAqAd0RTEqVVUXXiNISMq+0x9HH3iN
         tIaNYu791Pibs4Qticz8mwCVM608SdQoZoS2agpJUmGR+6qFEZ6HHcyAoD9U2d6vvsQD
         Cj+/8ccHUT6nFVncyH0iAZdoPUobVZFEpQTqavR5xwyM4Ht53goaTjy0XX7Hl1wBkszZ
         3HaA==
X-Gm-Message-State: AOAM531i5M443qFUUDd+wIZFxYEWVXiGDyHhFCCkf2iLRcdxLcUyPfBJ
	R/KaPpODo8YyorIEfT/yD7g=
X-Received: by 2002:a17:902:7c14:b029:d4:d894:7eed with SMTP id x20-20020a1709027c14b02900d4d8947eedmr1962955pll.81.1603265311619;
        Wed, 21 Oct 2020 00:28:31 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id l82sm1321057pfd.102.2020.10.21.00.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 00:28:31 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:58:27 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v2 3/3] staging: kpc2000: Use BIT macro instead of bit masking
Message-ID: <738b95793de3e9e9e693ba8336967241b9ccf034.1603264610.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>

Replace bit masking by BIT macro. This resolves checkpatch issue
"CHECK: Prefer using the BIT macro"

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Introduced patch 3/3.
   - Suggested by Vaishali T.

 drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index 8bc78be3c259..613c4898f65e 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -8,13 +8,13 @@
 #define KPC_DMA_ENGINE_SIZE         0x0100
 #define ENGINE_CAP_PRESENT_MASK     0x1
 
-#define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
-#define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
-#define KPC_DMA_CARD_IRQ_PENDING                (1 << 2)
-#define KPC_DMA_CARD_IRQ_MSI                    (1 << 3)
-#define KPC_DMA_CARD_USER_INTERRUPT_MODE        (1 << 4)
-#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      (1 << 5)
-#define KPC_DMA_CARD_IRQ_MSIX_MODE              (1 << 6)
+#define KPC_DMA_CARD_IRQ_ENABLE                 BIT(0)
+#define KPC_DMA_CARD_IRQ_ACTIVE                 BIT(1)
+#define KPC_DMA_CARD_IRQ_PENDING                BIT(2)
+#define KPC_DMA_CARD_IRQ_MSI                    BIT(3)
+#define KPC_DMA_CARD_USER_INTERRUPT_MODE        BIT(4)
+#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      BIT(5)
+#define KPC_DMA_CARD_IRQ_MSIX_MODE              BIT(6)
 #define KPC_DMA_CARD_MAX_PAYLOAD_SIZE_MASK      0x0700
 #define KPC_DMA_CARD_MAX_READ_REQUEST_SIZE_MASK 0x7000
 #define KPC_DMA_CARD_S2C_INTERRUPT_STATUS_MASK  0x00FF0000
-- 
2.25.1


