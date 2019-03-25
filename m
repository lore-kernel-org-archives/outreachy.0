X-GM-THRID: 6672387662802845696
X-Received: by 2002:adf:edc6:: with SMTP id v6mr5509854wro.189.1553536314870;
        Mon, 25 Mar 2019 10:51:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e94b:: with SMTP id m11ls303067wrn.5.gmail; Mon, 25 Mar
 2019 10:51:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwM6AgtKvamgj/HRal2oSzIDjMvmHlu5VGX2+S8t1+qz+NI//dzg2YWVMnRuXltnWLmGxQE
X-Received: by 2002:a5d:68c6:: with SMTP id p6mr17510610wrw.321.1553536314092;
        Mon, 25 Mar 2019 10:51:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553536314; cv=none;
        d=google.com; s=arc-20160816;
        b=M/fihvXsCF0ZMEDPvdRJPF54xDYwEIAp/fMIeKpl7Pxv7XDtIfkqSIeKtB9oUaNr4b
         YjXpBeyEh2w0XNIfz9Shqn/jEe9aNBmv1TS8VJhtia+LZColOEt5zsHwgvPGYvvkrHu6
         5lLYkwUpFAlUDrbn2EkDnYdxOIcdIMcMmN+ECZsdnXaVkcCB317fqmAAHvsfQc4xE1N0
         Q6YwK7wCr+NbkKxIlZYkDQ2Z/VVrfX0hvOnkltNUlTUmvto7/T7oM9Qca2pf2QSI+Fum
         nnaDvEMUVkuUKlrgPLsnIhR+xOJho6InujMjGdFe7gg7yVvXPwl1HvsNAD4N738Uy79q
         JH4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TdbWgR6gpWnke8SnOU25bhxOVlqUlsphrvx7TsvVdDM=;
        b=AYNaZcqNeAGh/GHqomAGjMlpYFf+WNxVDSy49y4qg9xavVtfwMArdS/5z1SM1qQ9co
         0WOJ/qzgUTkW8ZJFFfHnkdcFUtqUDE+WXvFTKufikhXRPNqkbdqBhLK9AIu+4QgGWcI3
         WdRHwCDkm5MvRK+0lkyVpTzbYORsQTUv+NjvcPk52auGFTfNOiROCjg5OpJU3Sd3NwJJ
         Uqt7tkpXOQDKDo2H9rjvla+90AUFX0uxK2J32j4rqsUrk1VWCi7EhjIS8wy1+pTfPfsK
         IjGZqeBaNd0Y54yxMWzpCnLPPZ2pvIXPkXFPsG+EeAdOKZjgH/KTvkj7vOyem4YEomct
         BtrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c+lBzzcE;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n13si38739wmh.1.2019.03.25.10.51.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 10:51:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c+lBzzcE;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id p10so11274289wrq.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 10:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TdbWgR6gpWnke8SnOU25bhxOVlqUlsphrvx7TsvVdDM=;
        b=c+lBzzcEsO6b5rUSeH+AyDyTILOIUs4i5MvV/sG5uXwfePOE2SEjGJUxiZhVyNaAIo
         xgOsM/JEXlw83TYroI0JJ0XSU3uV2q+GdCts7xd8VynRzjdT48psVqA02DO78TZag3qP
         eDfEvP3R0RL00c+Eop/7g9xKw8W+9rZA6ENez5AUuRg8ricInfPfyulY8jClbft7EXV9
         ZIYjbM5HSnhpDBZZUkHt5p+bGI0y7YgwQmcHZkUzqvREFxe1nEHcS/YsCxqom5me7hSM
         7onWf76kp2w/76dzBCNkGp3cc+TZ4yG7XJqJmRoXPU+2e/0os00R577pLf2HBQRG54Dm
         ZTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TdbWgR6gpWnke8SnOU25bhxOVlqUlsphrvx7TsvVdDM=;
        b=dIsvObMCDvMyQKNAScJQWRkpjhXwYXyVXt/2jAtXWwHzgKeeOArCXExFLP/m7pzx62
         uAcxZEdmtPe9uSLdFrEGvl8CP2HbXF6Q/+rLqd0VlJ80NWt902SPTjiW5yVh1LUBmRKf
         7Sge/PnSNL7Ue40Lw3MVOWHB50zXyetO2cs9EC1pDgUtkE746hwDtip1seLfAWW8NroJ
         Pm4PG/roK4C4/PvaxUfs6PKSe9O2PT/cnkWXDhGJPZ41JABVer6TpaidnyZA/QJoIeta
         NPzraikI/OyG1/HZEuRkukPBYLjh9t/GEv0WCrTkC9RwF95G5e28Ys0VSc0a7DpxwupF
         0avA==
X-Gm-Message-State: APjAAAX/UgpJDWszGfL9P+mo8e+Lx7ickJ6gcf1Ao9b+UwuAgc6yekWy
	MkIvzhnR/qD3dGVKfyWndQ==
X-Received: by 2002:adf:9c91:: with SMTP id d17mr3165910wre.285.1553536313648;
        Mon, 25 Mar 2019 10:51:53 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id z11sm6621991wmf.12.2019.03.25.10.51.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 10:51:53 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: grekh@linuxfoundation.org
Cc: sudipm.mukherjee@gmail.com,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH] staging: sm750fb: lower case to fix camelcase checkpatch warning
Date: Mon, 25 Mar 2019 17:51:46 +0000
Message-Id: <20190325175146.17404-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lower case to fix CamelCase checkpatch.pl warning
"CHECK: Avoid CamelCase: <ulActualMxClk>".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 6bdf643707c2..3fe4479401e5 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
 static void set_chip_clock(unsigned int frequency)
 {
 	struct pll_value pll;
-	unsigned int ulActualMxClk;
+	unsigned int ul_actual_mx_clk;
 
 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
 	if (sm750_get_chip_type() == SM750LE)
@@ -76,7 +76,7 @@ static void set_chip_clock(unsigned int frequency)
 		 * Return value of sm750_calc_pll_value gives the actual
 		 * possible clock.
 		 */
-		ulActualMxClk = sm750_calc_pll_value(frequency, &pll);
+		ul_actual_mx_clk = sm750_calc_pll_value(frequency, &pll);
 
 		/* Master Clock Control: MXCLK_PLL */
 		poke32(MXCLK_PLL_CTRL, sm750_format_pll_reg(&pll));
-- 
2.20.1


