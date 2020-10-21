X-GM-THRID: 6885903856141598720
X-Received: by 2002:a9d:39e1:: with SMTP id y88mr1032443otb.39.1603249483319;
        Tue, 20 Oct 2020 20:04:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls991729otk.3.gmail; Tue, 20 Oct
 2020 20:04:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwB7l7G8mQNsCUZL1N48X9z7sfePxqVYXPTX8qaxthpU6nrozwJmtPEBdJGSAkQv47iXj8P
X-Received: by 2002:a9d:781:: with SMTP id 1mr1003946oto.350.1603249482014;
        Tue, 20 Oct 2020 20:04:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603249482; cv=none;
        d=google.com; s=arc-20160816;
        b=cBDcOhHWMwUN5wJvQCFK1bkT+s+1zeX9qHoXRrkOwA2uhAWjTfbntsgB8k+giGC955
         D4zkzprep1p2rMtmU/HPuysxgrh18RWqIqAODOtCcdxtq7ywhhTGKHfq7oxI3vIshIuo
         WUoxT5j6FTSvKkTB4v/PRy6rgFasi6t/VHryP7fmpLJSnHf5WTdJSrEWR8gDZAMB8NSe
         4xDX8v/Fa2nSOyiWhSSTy+t7/E2wesTWCzXENTnbOoevjP73xlZ0L2vH7DFeKb6Xl0oq
         a1KVqNm5Z7vXdikiolXFLzWYgOJtKErvq/UqT2AisWgK/OZi2gbqWhb2VGdnRKsGwPm0
         OrBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=f8i52xycYi4zP4k8pIbcxOL0G0oHrSvH6XIGFYYPAcI=;
        b=ohBsbS0FKxAaNNqEhMcdu0nuhOj2NObNnunAgBuy/DbPRfRFySk+Ax/nMcaj/ir556
         VCAvhkpJFzyxWGUpHduDrk1SkevMiIy5vJOkmepG5Quy9dkMv99cY6YBLLZ/16OzOLyE
         KPOvFhlA9pXbB7M9VnvubMTwKslwvODVDQOzoEhgX4Xq67m7hcCDc5PLXesSOMKBT+Vx
         gzcw+ZR/fsgYK/hrUBuxrJ1wD/JKBOZV2l8dC7sYDTTHAYGyD6OMTl94cT/2s8AHpRYZ
         839I6Mz864mslge/B0ukPxGm1D4rR9+JzsAne/pI9TvDcKO0NoORoMHkElWvrw7XJE3e
         nHag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+niiNwf;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id j78si56674oib.5.2020.10.20.20.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 20:04:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+niiNwf;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id bf6so468144plb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 20:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=f8i52xycYi4zP4k8pIbcxOL0G0oHrSvH6XIGFYYPAcI=;
        b=X+niiNwfSjxScnjfUtNz9cxXOiEFOVP1/Ide/Te+Ur/9FXZ1A5ybV/15lNGIdOs9Sb
         kyTgGDyy6E2a5K103hqQbiqINeNsLYei+83SuYkGFBcFTXdCGsFCVZQ0Jt5h6JAiVTXD
         moNABuZxIK8KwHjm9WEzL8Bp1Xgu1mIqj84exX4CeZuSUnEWaNCss3WGfBiIu9BEm+qb
         yPPc68aAjjv3tsmNDS23l4fz81Hyh+GWj3AP7wplRaaU5pkrlmfowvX0EVgqFhb3QFWP
         Rpl2VbI3HxXtrYTAAkiBAypRRavzlNLme9t4gIk0WGYuRGc9cP5utiDfPm74gCPiQAps
         giug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=f8i52xycYi4zP4k8pIbcxOL0G0oHrSvH6XIGFYYPAcI=;
        b=Xw6xXSU+UlGCgeq+hZJ5y0ltAIpdVGdXjZkyeu9IrcG6FDPblCLXQMvwaE8pBQ6pug
         Hvw+ZIzgwuaiG6lbHJ2P7t/B77GZK51Dxr/p44ezmgYhieQ+wAfFPgtteb9IAwuu/WjT
         yn6Q7/pwJRSm9jIf8Awa1SDQp8wDKnINgDMl7KSGl6DRWMjN5KgZ8+Py+VkkO6oF/LZT
         X6WifiEd5hPurCeQAZBbdqzk5eSdYhi9CjOjF67ceyapPoVZc5DuCSjFTyAhoN+LXjKp
         Nc/IKDmeJu8piad86bTVJ+lSJ0ayHXcrVjXyE53WwaubMJ5r5DlMozgocP2657pQylPS
         7FkQ==
X-Gm-Message-State: AOAM530VtUmEwdhOb6NTg4REPRtpW4JsXsXcXZUUrR7lwmOLaYCMAXX0
	b9k6qcDy3A1/HrccHVm1OHw=
X-Received: by 2002:a17:90a:20d:: with SMTP id c13mr1081812pjc.83.1603249481377;
        Tue, 20 Oct 2020 20:04:41 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id kv19sm411618pjb.22.2020.10.20.20.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 20:04:41 -0700 (PDT)
Date: Wed, 21 Oct 2020 08:34:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH 2/2] staging: kpc2000: Use BIT macro instead of bit masking
Message-ID: <06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825@gmail.com>
References: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>

Replace bit masking by BIT macro. This resolves checkpatch issue
"CHECK: Prefer using the BIT macro"

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
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


