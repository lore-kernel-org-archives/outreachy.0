X-GM-THRID: 6672221168538222592
X-Received: by 2002:a81:2c85:: with SMTP id s127mr19466878yws.255.1553497549062;
        Mon, 25 Mar 2019 00:05:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls4572825ybf.7.gmail; Mon, 25 Mar
 2019 00:05:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzwswIxOu7FzjHsAeHtxKC3ZIrTfqptDZbTMUz7l1G9MLweKZpqSF2pMCajyDAHO+xn+KVr
X-Received: by 2002:a5b:c01:: with SMTP id f1mr19889087ybq.39.1553497548016;
        Mon, 25 Mar 2019 00:05:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553497548; cv=none;
        d=google.com; s=arc-20160816;
        b=q+N4hJVroTSaF82B71U/WsNLCGRjUqkRdGiZLlSukFLZf/9tgvX+8EwuULyBqPayCb
         g72hs/rWu6qAgVBDiRSWiwDautgwcqozHMiGtPAcBfhxVjNbbUIhKcJ76sU6IMrZbSfX
         wmbwNMvLcuNcBBRIlr2cfpr8loyVKkI3EdEQ9Hn+B6qB+pc9ODwLpazEjUeKBgPvj/yn
         pxI91NyoJb8WyfFE6qfpahMgEYgIp9RJr7fY4ZICZOQVkvTVCyKeZGx2C21cfC4SNgE2
         fzbf1Y2k/fdUZJKDsNoKI9jKkAE7ifs46jbcrFg6YVf6vuvi174qnXERagruJ8or0PlA
         gR3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=qVRNbwp53AqR1LfaMl9EHxmYKAjUL+uXid9Ao9CSOHc=;
        b=WU2e5jFx43riD+N+gLruieTvP3PgVT5E8Ln1xw2zHLRW04SVeWLCFT2iXmBccnAz+t
         UNmJ+5YcKCWnCFkAfV1y+KZvAD3rZ0+XJFmbXL//DEEcwNyi8FGH0HqFzHm8R6rPoGZ5
         p881k81A9zIc5zbi3RR/ARP57BX1SRCcKOirZuZi1nlxdQyL7kQjksJi61+r6B5qnyQw
         j9K7KBPHde+nfKX8F/mmYsrwa9v4UB7N8ig2mbSVS95PTYK7AjP0KJmeHK4Ua5+PGV81
         qNnKOlZ40sV2W+r314qiDv6tDuTWbhb3H1wQ2twqDdrx6V2og5m4+bs89orU05M+gtin
         qv9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X1qRyFNe;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id l126si927535ywg.5.2019.03.25.00.05.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:05:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X1qRyFNe;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id i2so5819568pgj.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 00:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qVRNbwp53AqR1LfaMl9EHxmYKAjUL+uXid9Ao9CSOHc=;
        b=X1qRyFNekFMD4hs6aaR47AypMWnhqtqgRx7eULyNhZ/loAO/POb+R/M8A6rSH9yzpx
         iE1YgjCFpTKVHGaTZXvhGVRdi/iYBKHy3WUq3JOD6G1Z1+LvzyhJoRTbllArAZWgDlhz
         jn6jHxsF69+UsE5LpBhiXKDoFF2vsFujRm0YZAGCdhE7+kudfAK0NNFE7a/zmhfQQGaL
         SQuP3Xgqc5EuatGDtiU3baV5gb6iTeBmfUCxGaAW6PIDxEeUdSJj9msBUhIzQtrHpOBN
         X0lyTGmLt+201JMm8ufOsvwoSoPbdTh7WNk/3BuI6NWZV9VH8yIrW1JtvqgtkSt3eXrh
         aM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qVRNbwp53AqR1LfaMl9EHxmYKAjUL+uXid9Ao9CSOHc=;
        b=RinE7A7lRnhHM//NVTlvVukX7B3sFeam+PTsA/FkVXXwILjBLxPTR4ZxNKoerr9/wn
         hQMKLawXOtv8OLqXBb6DWrY1lF5bwYJpZnU5bX+evCzMlBrMdY/mQNoB8c6mIgH6crOZ
         6Tc752403hH2CMMaxh5hxz2wNBM0Q8PLxVTVSpMPoRKpHifYIvJVT4EvFPJ/XR5IG3DS
         6tqbCzPPuq4YexTS8oRiqjzSe8SkVefYfazEvq6E0ueUfmktEwQ9FF5/p+rMimJ6YBkL
         Gk8lJhxOHaJhxn7s55Gfd2Bppzb7UEhjVbQKCmtcc7ZPbdx1bfb2vfonY3kBtkRPWYsl
         onpA==
X-Gm-Message-State: APjAAAWKBT/Pc75Pcd+2z2FomVpBA1CbwZ5BfVwUXKJw0RA8sM6KXWCx
	bSfQVtEf03RS9XnDLHtBknyCJtwewyw=
X-Received: by 2002:a63:e850:: with SMTP id a16mr21834599pgk.195.1553497547665;
        Mon, 25 Mar 2019 00:05:47 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.41])
        by smtp.googlemail.com with ESMTPSA id i2sm6460095pfo.9.2019.03.25.00.05.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:05:46 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: ddk750_chip.c: Prefer using the BIT macro
Date: Mon, 25 Mar 2019 12:35:36 +0530
Message-Id: <20190325070536.5463-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f551da..5690fb46e095 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
 	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
 	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
 
-	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
+	return DEFAULT_INPUT_CLOCK * M / N / (BIT(OD)) / (BIT(POD));
 }
 
 /*
-- 
2.17.1


