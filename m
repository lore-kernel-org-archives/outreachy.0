X-GM-THRID: 6672387662802845696
X-Received: by 2002:ac2:5629:: with SMTP id b9mr13148423lff.100.1553552739080;
        Mon, 25 Mar 2019 15:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3612:: with SMTP id d18ls2110719lja.8.gmail; Mon, 25 Mar
 2019 15:25:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxs7dPGJ6dM/KPDtlSgOCZub8CRZbn/9CkueZEFF52C453ak7rm7/roH1cS5W7/1zXv8BfQ
X-Received: by 2002:a2e:42cf:: with SMTP id h76mr14800677ljf.95.1553552737776;
        Mon, 25 Mar 2019 15:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553552737; cv=none;
        d=google.com; s=arc-20160816;
        b=RiUbsf0aQv8oLsvkY8EefzOVkZcQQ71DHnbtyqMVLRwzM5hyV520dNnWP9o+7QNhWe
         GOUF73F6EvZS9RBY82TPsVVEP5FNxFD5RKd9AyXrq5nA50qEmcWhXg5JYBVm0EORHTfe
         6hSLQqHYrRepUFDpXx/4UUqmmvR1CqoIEDlNMHlaUM/ArVMpju3W5yv/FPiDYfCZwEvG
         9/dK+W2+j3BSRjBKsdiD+VymEltBKqr48482eQBw5jDmIZ0j9kxIVKzBK7PK/UNzg9mc
         yXijXMrFt7zter5734LOENiTxaMWps86CECw+4r7V+w5P0q2J6q+JOipQDsmeYqaKj+O
         H5tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lWN9slAyjRIP/f/zXFGLmRCQ2l0BgO78AKVgS8wBU/k=;
        b=o+pLlWi2cvmkz5JQYrYd87//2qXbc2oJLYeGEJiyZH+ceFfhMql7y3DaM11dd3RYx0
         RPQf/mmj9WD6UwegyL/P/fLFsJd/blW1KgWnRbRdf9dS5HEuo9pjyWLFf4N9j6dI4IKI
         2CXqpMbzz1j9JAezF1hGsGiYV1SFLNKuv1rhErKVgByLUeChLhQKIUG8y2vYD1CELnfL
         GE8Y6Je8j3VQp3pHr+PKRhLL3Ezb5NOkfHnIIMNstyNCLHKXZapD/T+XKhcIZbB1IO/N
         H+mRHGJn1zyH1xOgQxoyvCp5HhTMiwBD69h3Ci2PihhuXsjvPhjmR5WyToDrjJXGwwIj
         DCyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqGyezPT;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f10si598283ljk.2.2019.03.25.15.25.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 15:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqGyezPT;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id h22so9018364edw.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 15:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lWN9slAyjRIP/f/zXFGLmRCQ2l0BgO78AKVgS8wBU/k=;
        b=dqGyezPT5DLDQvDeP8nov8DIVKpbC+6YbY4LKX1b3R+iEZvTU1I/fFXH8GNiDW80f/
         7yeAV6eOsrV0pVFsnlZDir5yprZpwqFfVGTipEfcATXzz9Hve491LQ1+bfR1QGDeWJxq
         n8qgichadr15VyhaGyS6+iWd08crUhlF/9fivi5kByMMp1K/J3FBgN2N7Qx4Xei28Ikv
         YQ1fXasYugxG50mHjRrDQjN7sHnUDPUZa8zmZ/+Bieg0PLZMmFnDDn5gTx0XBJwdNCv2
         QiK8os/HlLLc7U9RKMD4CePXlKPpuEcVc787AFzpO9dT/yVlEuRlHeqhKkf1q5I9kMHw
         JdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lWN9slAyjRIP/f/zXFGLmRCQ2l0BgO78AKVgS8wBU/k=;
        b=GjVRbaRTE3OqP1O7BhOCMz/kzmGTvEKUVkilBh/8ojEjpHFwmCkza0tGJsmH38av+s
         7LuJuTEMKtYkKHy6BWTOQNoNm7OfuUgDhgsLtqhuNdnKJUzdoaQt3J6vKL0fE76vS9q2
         7OEsD8/Mh5L2ORl+LSF/hN4db8Yo7t30JA+AnzcL3KpUWDejIhVYIjVTdiDg+wA5Wwl7
         3qP3ULfre1dZwMMz/tJklUpuyYzDCW8Reeh5b8wVIP9STSCxbWPOUO/GodaCz8ln4I5/
         k/kTQayEdX0ArmGuc5iXJAiciikQNydwT4HjdEmf1GtoBx7Qn9IiFPZFJdZJOPiIg17V
         liRA==
X-Gm-Message-State: APjAAAVxDP/XB+yp5hH9G5pe1Gy6uWR5oLmZWxstI7/nS5LMN2wBFZGc
	bGFR0H1L69W/bX4CZLsyNQ==
X-Received: by 2002:a50:b3bc:: with SMTP id s57mr9670353edd.206.1553552737145;
        Mon, 25 Mar 2019 15:25:37 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id j14sm6144768ede.46.2019.03.25.15.25.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 15:25:36 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: lower case to fix camelcase checkpatch warning
Date: Mon, 25 Mar 2019 22:23:13 +0000
Message-Id: <20190325222313.626-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lower case to fix CamelCase checkpatch.pl warning
"CHECK: Avoid CamelCase: <ulActualMxClk>".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
This v2 removes ul prefix from the ul_actual_mx_clk variable to make it actual_mx_clk
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 6bdf643707c2..fe1f4bfba9cc 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
 static void set_chip_clock(unsigned int frequency)
 {
 	struct pll_value pll;
-	unsigned int ulActualMxClk;
+	unsigned int actual_mx_clk;
 
 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
 	if (sm750_get_chip_type() == SM750LE)
@@ -76,7 +76,7 @@ static void set_chip_clock(unsigned int frequency)
 		 * Return value of sm750_calc_pll_value gives the actual
 		 * possible clock.
 		 */
-		ulActualMxClk = sm750_calc_pll_value(frequency, &pll);
+		actual_mx_clk = sm750_calc_pll_value(frequency, &pll);
 
 		/* Master Clock Control: MXCLK_PLL */
 		poke32(MXCLK_PLL_CTRL, sm750_format_pll_reg(&pll));
-- 
2.20.1


