X-GM-THRID: 6672387662802845696
X-Received: by 2002:a17:906:5a59:: with SMTP id l25mr14830738ejs.122.1553536756636;
        Mon, 25 Mar 2019 10:59:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9950:: with SMTP id l16ls2163725edb.3.gmail; Mon, 25 Mar
 2019 10:59:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZIvihibRiQNYjWKDTePHdbNr/HN8zijDe4yjy68VKge4i20s3nljdHEx7fo0sBUQSKtD9
X-Received: by 2002:a50:8818:: with SMTP id b24mr17378306edb.86.1553536755882;
        Mon, 25 Mar 2019 10:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553536755; cv=none;
        d=google.com; s=arc-20160816;
        b=BUKglz2hwI5awcODKK++K6mNS9/zD9fUW7v7FGQCT+81QwDfJE7Ln6KPXDQ1ajh+4m
         hkbfvLoFDUgoIpCTEPjJcrzb9uwdDuVy9AbdToiGuhaVt+/I5XQ4kvipRoipg115Sw1T
         +wyCQGr725FxedcVV/rFshNKC/VEw7p+OKl9ER626nP10oidAlvxjnDRVlmFIfbU7K4R
         7o5zrZTzc8lFF6XDtIDznfq16fqIGhwK1ez15rj8PRbkEVENx9EnzvNh32UibF2DY8RX
         J5pSowBkgq8TetZG5kRjS1a2hf3Z9RJT3Bjri2qra8Ny/1QIa12v9NPRApvcaOz+L+Jt
         PW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TdbWgR6gpWnke8SnOU25bhxOVlqUlsphrvx7TsvVdDM=;
        b=XgNJ3ztmAbhzg0Eas+hSS4yZfLlSkNeeLjRhrSFPExHBmQuQz3s52XOQqvsJeYg3kI
         /0Ha4Ikdus1Y6GpPrebJ7RbhjH/nJ2EutOejTPHzcZgTOz+lflJJWqZSt/RV4iFLkJ3o
         EZ/amk0RNeL2CBxnM2Xtq3gFS2fAHb8TLNi7Cp3rBjv4dMg7ZCghz1tQv0cyWJLMCg9v
         5f+naNFM2ad/KVm2se3p3JsMNE4ZD6x6bADL5cgdo/xKnqgVJ7ppn3qlywau71E2wnLG
         OYW9Eu4d9P4LN04j/jXdjtGXI8Bn/2wKZPO/NrnsxUQ43kFjQXgB3mqqmw8Iask/5HF9
         bh4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCJ1nOcd;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a5si951273edn.3.2019.03.25.10.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 10:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCJ1nOcd;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id o25so9921456wmf.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 10:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TdbWgR6gpWnke8SnOU25bhxOVlqUlsphrvx7TsvVdDM=;
        b=UCJ1nOcdzu9B9f0JD9rFToMQEGI5E9wW2cdMw1eR1NmKonIrjimSsuxBllhVa/6kQ8
         ydMSM+7YRRzOlAYh/A4qdGi7Vh9b8SmPsmNRr6IyqxshMLb9UWYY4yFdFMtpT+dJ06zb
         nRySCaoFPc7/F+bgYeeG/JaSDVkO0B+J1KUORUzZScu0NA5NNvg6zrVKKFImLGSr4vCv
         cPm36HvwMxIb0/O59wukWTKAtbDiEXqXlKAIv3aUqqVEyt3gA2bplAP1dRAr8TXlqQKT
         5o4zlwM64tmKm/Ts5hyqxCzea/tV5wLoEVgm5HYDKlEyXhfnjFR5z71ctAA8L3fn1dNl
         /bHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TdbWgR6gpWnke8SnOU25bhxOVlqUlsphrvx7TsvVdDM=;
        b=DwaWt6nh3RVtkQLAeU3eUxVmegAPoWlf524tUMTmRxuEJDFyTf+CayYxvny1RyMTDz
         ByTreiLT87nTzTVCJV8awkxfrD/lml949r9V/hKgtNwU7qCxa4OMxvPVahoHobzFnT8M
         yDpi3Levt1xosrftGWQTIvQaFcxQuk0Z4sPSpZA55ZdKLKVEdiAXJXZqfeslMMabLnLv
         8RhtVRZ2iYAxEHCmOxTA6pqrevOjF47RHWX9qs6NbeoNshSW3vxXtvULros4p6XecEsw
         8EPgpFSuXA4zTBvLoSysjVxzT/Ml+sUBDYSeR3bUyD9mFUVAHtir5brpVf6oxr2dRy2B
         Nj2Q==
X-Gm-Message-State: APjAAAWQ1bPMr0+uoZwuDK0YJ+V0SPoK8Hnr+vFd4P9DghpZKBi9tgwF
	z/Uj+QBZahRyuusw2AXA4Qg+k+g=
X-Received: by 2002:a1c:be03:: with SMTP id o3mr6099580wmf.123.1553536755463;
        Mon, 25 Mar 2019 10:59:15 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id x5sm17901783wrt.72.2019.03.25.10.59.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 10:59:14 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: sudipm.mukherjee@gmail.com,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH resend] staging: sm750fb: lower case to fix camelcase checkpatch warning
Date: Mon, 25 Mar 2019 17:59:07 +0000
Message-Id: <20190325175907.17740-1-jbi.octave@gmail.com>
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


