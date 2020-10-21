X-GM-THRID: 6885970595942498304
X-Received: by 2002:a25:cc14:: with SMTP id l20mr6482475ybf.478.1603296681711;
        Wed, 21 Oct 2020 09:11:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3f81:: with SMTP id m123ls251743yba.1.gmail; Wed, 21 Oct
 2020 09:11:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyUdG3kFDh1+1wJYaHGM4BM1TLYDUMBT2Eni2MvZ1JwXat4CdIqFwe/Xxql3OPl/EN3KmAx
X-Received: by 2002:a25:7255:: with SMTP id n82mr6646561ybc.442.1603296680067;
        Wed, 21 Oct 2020 09:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603296680; cv=none;
        d=google.com; s=arc-20160816;
        b=pkeZGpNxiSe3I0DFMC4ZY9cmIDflU3X063gZw9Zef5/siPYS8N9Lzyc3I1VrlsKAEt
         VqzCShtPo7eqQ53DGw+m+dhc1bneD2SFVqKB0f7zMZZ96tg0MOpsDFDRGreXO/EyVBbH
         26DkGGGyxOG0KsAf/6DuTXPGS5VtyYF/VjNASSn2mwpjqzCUUrkdxbyDYxr4vi3hdgk9
         ZZQVphLY92OaoKUnBpqMqt/DRd0njgFtFFRU7eZOTwemf4YypHWQ8N4YdzCd7WdIfvSq
         u7FAZdn/Ey4cuZp9uKYCdJmS7P9WCaRxRzmNYKnngLuVTELCAvdGXwYnj66Z4n/sZ2Mm
         wsVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ec9niyVw8iqsOhEud1SjOEtKZWQ2FQb/n45NLI289hg=;
        b=NqpvgFWLnRxtNYm/1VYvkvNgFX1+j1FSYptQn4Aiup/5vyuU61ZkbITYz4o07cmYCr
         2Ny5KuJmwtUgvtQF287KsTlCBauyjMZzbe4n9/aYYB//30U8VgzcpkajJK/NYB1VN6Sj
         KAsHBN0FykecJKgXTOj1OQ4HmFgWVVEIoL2VwAxBGftK60Xm6G6ytdcdDAYHknnJIct8
         HlouNB9EEY6IV7DBXQPeWSduirTD602bQdzjgV+vqeowubnLzPntWtr5MzMrtKrnWNi0
         TgJPssMLQNNInrHbDvjWMaGMROlan3iCDpCNzzXDt/CNjcmvsuSSPPQ6g6jiN9JmF+zC
         9IJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jwxtPWKJ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q4si121016ybk.3.2020.10.21.09.11.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 09:11:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jwxtPWKJ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id g29so1756760pgl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 09:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Ec9niyVw8iqsOhEud1SjOEtKZWQ2FQb/n45NLI289hg=;
        b=jwxtPWKJ16TJW/pFxvlJk9updwEVK+OAVCUUX9kRegpFz0Ms+Sv8KFd/b6kPKSQxNg
         mVnJmlA3oK6951I/eEGjkJylIMrzRA9rjQvgOFGhdNXlgcml7Rq+G/tXRExXpj2N48lK
         5YSp/cRKAp7/Ija4+0Ttg+inhDqhP6dqZKMvWv0C7kJF504YidnYb9x/x+Hhqb05bB3w
         rZ2lvI5BCqfWwayEj8ijNuj9QeNrOOC9TD1LMkRrDuSlvUlw4yYvWVazBPRlKl8ov+iU
         9UUEVoE8clekU6YXLyEqZBZ5MN/+sgrsPgPhuynJ/+B8tqcC0bygO9uFYpbJtsZTrWmz
         wT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ec9niyVw8iqsOhEud1SjOEtKZWQ2FQb/n45NLI289hg=;
        b=gxup8U26rC15yRYC6O1IypQrrUQ9rop+pWVl85Qp2FmFphchrtPxZpnh6EuBTfa/6G
         3WQyyok3zBfIsLcg/N9h3okhLwubtK0F0LfkUki3WwUTSVW1hDZurgsrms6YYfO/ccEC
         MiDJV7Do1TsRTna43SEk0s0jQCxMNhKsP+FhdHDoX5+RkULz+I1sz8gK7KlRAQOSPQVM
         hOQaL7kXWau5OQo9sAm7fh39hYbGhZ7In5YNRr5l4iO2tLk1vJnX9tFd4BK7D/IyIPIA
         7IR7wrlZLD6GMRjfL8BY2AToE8eXRtPt2U5l5Q68gHPmSvY6RaF+FrHCNa3PH++IIEK5
         qsSA==
X-Gm-Message-State: AOAM53332biZG7owhOZDAhC6ur7kHc9i6JJO8iWxoAvMOiTa/GuzHoai
	fmo6pWgGqj/vyGW5sLYI5F0=
X-Received: by 2002:aa7:8421:0:b029:155:3229:69cc with SMTP id q1-20020aa784210000b0290155322969ccmr4306199pfn.36.1603296679369;
        Wed, 21 Oct 2020 09:11:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id il5sm238515pjb.4.2020.10.21.09.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 09:11:19 -0700 (PDT)
Date: Wed, 21 Oct 2020 21:41:14 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v3 3/3] staging: kpc2000: Use BIT macro instead of bit masking
Message-ID: <2269298ae71605b47fa43a2ebaee23d0ad4ed5a5.1603295576.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>

Replace bit masking by the BIT macro. This resolves the checkpatch issue
"CHECK: Prefer using the BIT macro"

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - Update patch description as suggested by Julia L.
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Updated patch subject and description to be specific to the issue
     being fixed.
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


