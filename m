X-GM-THRID: 6667898638714273792
X-Received: by 2002:a05:6830:1557:: with SMTP id l23mr24060006otp.6.1552491131470;
        Wed, 13 Mar 2019 08:32:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ab0b:: with SMTP id u11ls441344oie.0.gmail; Wed, 13 Mar
 2019 08:32:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwILBvKTl6ESFfIx06k8oQDdb+fLDWv6tkzlYeqW7sVSHdN2zLfJZ/Pibgq8OfywckTGwUq
X-Received: by 2002:aca:d845:: with SMTP id p66mr5543737oig.40.1552491130142;
        Wed, 13 Mar 2019 08:32:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552491130; cv=none;
        d=google.com; s=arc-20160816;
        b=K2ECL6+h8S/SfeeXu23LrcSkYydfzmkBYVjC1uH15lrXYU0Qqqmx8TgVLAsYpKeijq
         ZYqf1X7zxxChoI+75/S8wDaNw0jjp8Htftg/iW7z17pxEzFin4WkHEQW0U+EfucjrwHP
         Ivf3QeO6gC9CuUi+2Hdfm66wZMtrev4wo55lvA23ukAi9kSFckkJafAVJVPIn2iev38T
         B4oqqef9b+YEyrLLfM2X0pmwALVjhp/Chf64fAEfIj5cpUKF1Gs7U53TjXxtwAOWCeYy
         l06oZClUgVJ8hGZUArvZ6Sx1bHCnaMsQVskW+CQvUWU8fjpl8cOzzxe/xkYrzDw+5cBU
         vNLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ciWmXx+mhDLoknJ3/pFQYnfG3rLFmDO8acS4SmS5L3k=;
        b=B+sHWCeEXQA9yhuJW13o2H/yT7MsZDBh9rh0wzQhpz7TxvwvyUJ/SxRsVenNMTdo6J
         L2SEDZtZairMZ6khlQxBmdxyRbi0LZL8czLJHox83kFfkjZloGd+61ljiq/PhX+HrnmJ
         Tdvz44SE4eILl0i+zRQYAVWzjFYCNDIfd+y56OaNE997bA60GujQHC7dHTErp9KTMsYW
         Gr+WyUbPUlDHW6BZAhM58wHKxx/EA/fHAwjXL9bKGFI+6o4AjLE2G5G2KY3j3Sq/l8Uu
         07g2D3JzWN0rPEqHI6j4dYYT8CfRtx2uFShtpbr5qe8GXyfqusNDVQYngQFm6X36QKYy
         m1eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VwF8VoZR;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x125si36234oif.2.2019.03.13.08.32.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 08:32:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VwF8VoZR;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id k8so1746619oik.8
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 08:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ciWmXx+mhDLoknJ3/pFQYnfG3rLFmDO8acS4SmS5L3k=;
        b=VwF8VoZRZorbrImPB7JPWLXmSe0eBjYWSS9cKpYySXKUOeG0lyy7y5WTFYM+KC6amy
         uzd1+QbPyESHJCXzp1jKngXV8JyezhMmXSIWuOXeykCMaiisc5Xz8cpky/gwH0gVtcRv
         vo0FR0Jlu4z1olY9c1pTP22ohoOx1gXGQKjnbqsFEZSONUemSMomxIG0jLIsmYKlkALk
         f4RnxbqQSaxnHctq5C2mpIR/+tSClFiLTJYpy0GzgAYeEMIzbbaOprQmDw/6GhXt7tdK
         L71rq73ClBpN0GTpo4NiyOsDiwWYdttYZeBtUKT2RqgClEbKbhEmM2Z4/cBVTJCcv2v2
         HIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ciWmXx+mhDLoknJ3/pFQYnfG3rLFmDO8acS4SmS5L3k=;
        b=IA+ZQRdJ6APVgnagXfvY5LzqhondNNy/9PE41uW8FejHa9GMQY790qK1+nfWgkS1e/
         2UbbsQTlqZUlU9jLzfmwwrdgO0CX2Kwht9NRR1T/X1wLJvvKPMd/zpD9eBatXCs+RaIj
         nI9dt2OqKea5r1FQDO6hDqhKWRe85tW/azBcXLrKkKmZHSqTb4j62p0wUuoXNWeqps9u
         Fj8CQS2tX96svLYncKNty87PLMtyLvInZdvcoXlDctPYgG28FQmBYQaxI27MuigfFDic
         HBgA5T42wI0rTFH/s/fNjlO2JDnzt9Bc1eLvo8dNnXrEQpGKi0Gn8oqQVMOybyETQ9Jd
         Hibg==
X-Gm-Message-State: APjAAAUrw+DXiygLEi5yQ5n2RkCG1hwZ/q1/KXlZA4OmN+jA2cwUJfS8
	0VbF9Tp8XvbIrqX6HJoCJJ4=
X-Received: by 2002:aca:e5d4:: with SMTP id c203mr2162260oih.69.1552491129626;
        Wed, 13 Mar 2019 08:32:09 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id d11sm4563254otp.18.2019.03.13.08.32.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 08:32:09 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: sm750fb: Remove an unnecessary local variable in a function
Date: Wed, 13 Mar 2019 10:32:05 -0500
Message-Id: <20190313153205.4974-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unnecessary local variable in  sm750_format_pll_reg function
and replace its initialization directly in return type.
Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 90f5480304f4..93abfa8b0090 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -391,7 +391,6 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
 	unsigned int OD = pPLL->OD;
 	unsigned int M = pPLL->M;
 	unsigned int N = pPLL->N;
-	unsigned int reg = 0;
 
 	/*
 	 * Note that all PLL's have the same format. Here, we just use
@@ -399,13 +398,11 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
 	 * register. On returning a 32 bit number, the value can be
 	 * applied to any PLL in the calling function.
 	 */
-	reg = PLL_CTRL_POWER |
+	return PLL_CTRL_POWER |
 #ifndef VALIDATION_CHIP
 		((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
 #endif
 		((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
 		((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
 		((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
-
-	return reg;
 }
-- 
2.17.1


