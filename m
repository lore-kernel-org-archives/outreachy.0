X-GM-THRID: 6675312425405775872
X-Received: by 2002:a25:828e:: with SMTP id r14mr7535705ybk.7.1554217288489;
        Tue, 02 Apr 2019 08:01:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3d0e:: with SMTP id k14ls4731931ywa.4.gmail; Tue, 02 Apr
 2019 08:01:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzE+Ac8gVz4msmWIDFdzpGT4qLwnd7LDXtYdk3Z3SQWkTxWZrQ5EOeU4cw9I0NkKb2uLivz
X-Received: by 2002:a81:dd0:: with SMTP id 199mr7793881ywn.21.1554217287885;
        Tue, 02 Apr 2019 08:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554217287; cv=none;
        d=google.com; s=arc-20160816;
        b=P7cM70fbn8oAuR3GV2hNbSdwsakoDPnctZxymlkKaUUsgorPOvm8aoyFAnFPU9yL4k
         M+ChZdvpo1HhcBCqg/sCyjpVw2hVJxNr8x8ns5Bl1zf3XIk605aBrOR2F1c+K1NqvX12
         ojCQmOKWtam7abSt3I8bkiW0UK6Oc8aZFrcYI5K+HIgaSy0IQzDkzxalQ3K96Fvs8Q+4
         +/KA7FzTp748TxQeBzEk5lyA0zM40ksuBc7s49hspZ5FTX21/OztKbem+0/7zcpdczuG
         BEtRxMN5gMgWmVz4DO6tVQ7XKj3fAMlJw3WlZsjfdBRdNdCuMD2Z02R5InjzEgnTcKAU
         TbQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=zfZKcZP9SDkqEaZ4PdC1gaXY/vo+gmShSRWe+h8C85Q=;
        b=0UkpIm+nBYjUDqtvXETBZzdD8F1pQiy2fMNeZyA/MrTlsSw7Fq5ve+bNvmPO1B3L8B
         m5jxXqALm7hxnnu+Gb++hBsjh8UUdTDtXypyak2tJdgjO5VMi4y/nSs8eEPv5miu6cVx
         aOkodjB1wq2hZuvLIBQ7Khw7r8dU9JOYw5KWHDq8MpHvvCgOpLGaL43cPs6ofqFNm592
         5DsXxr6eAVdoSOLaGQ4LzEQC+cAqcwPrkoF0U4sCErFMc/cnD26kg58acVRqUsT1Fb89
         wlRdYXmsEZAkAGG95n8cmgT7bs++s//bb3C2/4AHUysXHbeur5a7Nmp7V+Ajk35cmRpR
         0FyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MrykcdTH;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id 204si729019ywd.4.2019.04.02.08.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 08:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MrykcdTH;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id t16so4533007plo.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=zfZKcZP9SDkqEaZ4PdC1gaXY/vo+gmShSRWe+h8C85Q=;
        b=MrykcdTHROO1g1IujL+0d/A4IMANA7prNf+HkPGxopblsDcRzBtGus2QHapB7my7if
         VhrvPLIkUli0TCwKip9aYZPkROVo7udk+PBf1mac/aT+C4P0NbTnoi4l+UQQ7ABkLI87
         cBMaDcaZTFT+aFbckhMoN408Rg76LBvz28+AHlg5bfSJOQIRxMK0zofooGFAyIoeEzj7
         YhzO9xyZ7PdHdshribbDsIonbKoou1/emOJ5Md/MlVHDPjjBOn944nuMOY2JGQvGnuM5
         2IxmQ7wZMoOBlsRALzCVVu8vakgbtXyp42F/+5obQEgfB0P637vNOKWbJKVHYu8bc1l2
         A4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zfZKcZP9SDkqEaZ4PdC1gaXY/vo+gmShSRWe+h8C85Q=;
        b=LUpVAj/K6xm5WaNWkbkQXGC0vtE87W/txcDEnRrWy1diqwXuQrxo7vOCVXsYkCPvi/
         zsDpx5Y4q75wd/uWKKj2mM+btgtJQ+93qQN9w4s2i8YVGf01+w1IEU7lK+ETIwv82TPy
         OgunQmY2DhQqYsBrR4nXCIk1UxPo1bRieAFyZaedazltwtmlJQR/ue2ssz8bqHaZ7QOT
         9j0tRgDd9mbjBXEjz8c7BLDsxy9wNuKTkyGwKwTEvII9mKDvJoGxkoJlhOotBwGHXctw
         63f9plTBa96iPHt50L8tspqpU1B3UbyKMmiPzCODvgwzn6y8r+MMALybAiLfgiQkXBom
         /BXA==
X-Gm-Message-State: APjAAAVKBGJ0XbjZQJtqblio5JW19ausJfRhYPVb09dMl+0id4bXNxVW
	6s+plmM1pBv4kKg74OUZr05D3Io6
X-Received: by 2002:a17:902:2888:: with SMTP id f8mr71907396plb.244.1554217287256;
        Tue, 02 Apr 2019 08:01:27 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id y19sm19122117pfn.164.2019.04.02.08.01.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 08:01:26 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: sm750fb: ddk750_chip.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 20:31:12 +0530
Message-Id: <1554217272-10859-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f..eea4c08 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
 	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
 	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
 
-	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
+	return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD);
 }
 
 /*
-- 
2.7.4


