X-GM-THRID: 6667626897637113856
X-Received: by 2002:a02:224c:: with SMTP id o73mr9077797jao.14.1552427862834;
        Tue, 12 Mar 2019 14:57:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls3547004ioc.1.gmail; Tue, 12 Mar
 2019 14:57:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3bU7H3/mBVkvZgu/LiWHruuQHMgXOdGX0VfC7ASEWRXKA8txfTqI9eS3lCGDklEeDVOJk
X-Received: by 2002:a6b:6e0a:: with SMTP id d10mr8631953ioh.24.1552427860861;
        Tue, 12 Mar 2019 14:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552427860; cv=none;
        d=google.com; s=arc-20160816;
        b=WmmeMJA5rF9BSGHLmKNYDnhrlVOARekt5+SCx7s0UtiJ34xNKjx+Ieg5v7bhagFnV6
         PEmcyQFNZK6xB0VjOkqHS7ur+nePWnH+7JsD9dLhd1dYY7tRpbA+93fIUjAJ8q5eTq5h
         pAWTNjxT6nLjmt0V6g1sBUfW4ZHC5WeLVH+WXI3o+puzVnXYSNytf9FTdteoDrKD6t++
         fR3c01c1RXbnFP8+S8Z9zWmsixC47wmZ7x14Kh5hdxYRLacWsdn1jbsmnna/txZvAUXY
         gDsMAYH76CeDS1u4629ujXx/PndCuF81qzObJQiPPMDX/D3VT7n2wTyeYGF3aQM4MzWi
         1DCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wid8ItDBnF+oTJGr8M9ypS85FyaDdP6ZbjzLyKOxMC8=;
        b=dwGQ4UwLd1V+6LbbuW8Hnq5aoIEBDpFT1/GDk0fxiStHuKsRcBLvkw/Sb9ubdu3NXs
         nVAraNUiCEtmGZkNxCU2BOCQw2/vAOt+KGeILDxRbRvKrZPhqx4s9uvK3LvbNCHjIuyG
         CochOv2Y16XPcGC3Vz4D8TWoJjIrAE9e6sDs4V1NWsOqItnVz5GV07maopoZdjIM0QV9
         7ycjphfqxZyziU7QOx1woH5bbRLIp0J1e6Y5zNF+a1vg0UoT1gI7Hk06jtvN08+spH3g
         uWDpUn0gGNh72Sg69aDgd6+GtslfN7gNFhZ39BY06xdLLWLq+fX8blGKYbdalfLnQkbL
         Z0ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CDToxi0i;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 65si188166itx.1.2019.03.12.14.57.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 14:57:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CDToxi0i;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id t7so3946242otk.8
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 14:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Wid8ItDBnF+oTJGr8M9ypS85FyaDdP6ZbjzLyKOxMC8=;
        b=CDToxi0iyOBjorWclnCYXv8brbElK9nsDmYvQsepj5c+S05eY0cxmFZA+Auj6ElmP3
         Ycq6nFvkWGS6wKeD6N3iZU522gV21Q+9lbHznMbp9KLWviAdRAXXgTRm40dr95yS4Zvf
         PwvqAsFjvPyjwyugp83MZR3ngAM7VGMqr4H2kvpeKvig7AjzCQACrlNmWCCMGdir3W1i
         bHRGpegHrgZ9h3+EADLDKJ6o8hFAM3rs7UkDo7is8fLmy59ZExOfCitGj3+ksObCTfI6
         QdiZlcKiTAj/H/U0EHmQuqcqd+c7gPy6A5czynQ2cNQGqty1r5ePza6gF7R9A1JWcPsm
         yu9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Wid8ItDBnF+oTJGr8M9ypS85FyaDdP6ZbjzLyKOxMC8=;
        b=Kcp4PX13rmc32NDYEQK1NjAwMNzs0WX4FVnl6HDmDCMUzqj8QeliCQ27oiUiIzuYKZ
         4qiTiVtNVtJOQ+9xN6uktH1Yepdd5IWgLe7fvj95HMJUU+5iHQ6G/8Th9sfLfIk+evYM
         us2ABIRuZ1eN2n/M16oKDMXHiXDDS6YDGIbDwJEhnW7jblNNrj9BAjIhe1A/tx/2XUq7
         GYsZxRfuX6sQQJi2zYcjtoVE+ly3CYZgHHBE7JGLtgExukWMIQRjEiI7vgbkWtT2WfKw
         uvCFfFkHuXyHXaur43n+NmTYIqxTTRbNbc/O1MIk1Uafe0CEWlrWDtVEQdChwA/KiCpD
         92VQ==
X-Gm-Message-State: APjAAAVOb7XtubHIah/NwqebeYs7JEQtsMnBxj1M01cDwBo7SRQ5DYgV
	hwk3bQQEv+VOD/+3f67Oy6HQbrhZyL/Puw==
X-Received: by 2002:a9d:7f98:: with SMTP id t24mr27159042otp.132.1552427860315;
        Tue, 12 Mar 2019 14:57:40 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id y124sm4057345oie.57.2019.03.12.14.57.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 14:57:39 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: sm750fb: Remove unnecessary local variables
Date: Tue, 12 Mar 2019 16:57:37 -0500
Message-Id: <20190312215737.29200-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary local variables in function get_mxclk_freq.
Issue found by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 90f5480304f4..d0462f21fe36 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -33,19 +33,16 @@ void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
 
 static unsigned int get_mxclk_freq(void)
 {
-	unsigned int pll_reg;
-	unsigned int M, N, OD, POD;
-
 	if (sm750_get_chip_type() == SM750LE)
 		return MHz(130);
 
-	pll_reg = peek32(MXCLK_PLL_CTRL);
-	M = (pll_reg & PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT;
-	N = (pll_reg & PLL_CTRL_N_MASK) >> PLL_CTRL_N_SHIFT;
-	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
-	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
-
-	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
+	return DEFAULT_INPUT_CLOCK * (peek32(MXCLK_PLL_CTRL) &
+	       PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT /
+	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_N_MASK) >>
+	       PLL_CTRL_N_SHIFT / (1 << (peek32(MXCLK_PLL_CTRL) &
+	       PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT) / (1 <<
+	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_POD_MASK) >>
+	       PLL_CTRL_POD_SHIFT);
 }
 
 /*
-- 
2.17.1


