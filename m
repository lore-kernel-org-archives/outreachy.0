X-GM-THRID: 6660473635314073600
X-Received: by 2002:a24:6241:: with SMTP id d62mr7959237itc.18.1551110729756;
        Mon, 25 Feb 2019 08:05:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3572145ita.0.canary-gmail; Mon,
 25 Feb 2019 08:05:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZCR393382+0KWpVMqMuvzNXYn1TBiKBP3CDXOHBWxnufyUuDS8S4rqTvn2/BONn01/Cyvs
X-Received: by 2002:a05:660c:7:: with SMTP id q7mr8003938itj.8.1551110729031;
        Mon, 25 Feb 2019 08:05:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551110729; cv=none;
        d=google.com; s=arc-20160816;
        b=IlywDMlumLIiWbsCdRMDqJm2kho58LDuWkIiJcMwB4sUHKfC6Z+GLc3i6JLHdtq3bA
         hO/rF8wyO2YPdQtR8cDLpaLJrb9liDq03W8AGP0a+kUcgrIK3c3bin2hcgC7Rkjn/ogk
         wj4ziFoHKBQjHDl1hpcC20ebJWgmHgqqfz4cYiF9PUXNeckz7/scQpiRWvwWRej9lc0V
         /VcAe2IEj8i9swhjY7DLR+qPF5hX1OJy+1Ee5W+A7oQuShc2I29T0XBGr9MzY3MeaL1c
         N2yvy5hcZeUcfrpLAWrAqnmbgZjFd0XetcF9mRZCmq9DDvf/9AvIgCkqeF87TvbVG9qi
         01FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=EcN03wM/Y2dRHc1c1Mr/k5EDG9KY/SLV/ghxmLuB/yc=;
        b=mQb7bRFBxMTHENzcimuGfDmC2+eE4nec+TXtCkCmrkyuH8OoMRyNF5Gn5CnDek+Etf
         3WdcqUHbt18ULB0AOK/nR4kCsvwcl8s8p+9hHhrA2TN92HSzAwu4yvV6Yd6b+4IRNvyK
         UcqQDaFzTddLJ0WG9vYUuKLNBedltnKkKeS/MbbLhtoJCQ2golLO0z+7djsC4x3b8O2V
         8xK18+OOb5tdc66oyQInmmAL2KWKWKZR17tfFzk/aP0FBY51mjdXKyUZnkUvYzrRZwm7
         xwWwupm+o6G1kAIJhMrcLWpQfB7Qje9nR/7kmn2SyXHblCj1nIhDrj8rjwstxkuu0NVw
         vywA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eWGFh6NO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id u13si509212iof.2.2019.02.25.08.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:05:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eWGFh6NO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id u9so4709949pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 08:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EcN03wM/Y2dRHc1c1Mr/k5EDG9KY/SLV/ghxmLuB/yc=;
        b=eWGFh6NOXlPzgVQPGie44BeChXl+8dVb3aAbhuj2ZlxHZ1U4WT28jV6Nqp9Ou2aXGQ
         KdxueVZMwmlLCXnbzgSc7Z/1Gri9P0oMubaDqpiSeBVjJ48M2aNlokIXMoqkUyIzZLZl
         H7GYoleZWrGNGqIognAyFxfqcs83+JFbYIPZtPe87RLFZLCEFYg6vkiCVbGVtSmz/OOb
         OPJL19dwZ20uFA03uVlKHr0c4pVh+q2s8jobBvJaQr360pNLO6w0YkTPGBR8qopbLJUa
         uVCSv36b4Q2RmjAVy3wJIGxDmxiS6+jNQ9mquLXTvYUFsRgdzSK4uKK9/x8t+ZXRP2hf
         frmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EcN03wM/Y2dRHc1c1Mr/k5EDG9KY/SLV/ghxmLuB/yc=;
        b=ZezI4j3E6/Y56j8F9A9i3CsSJjte/fyq/zq1J0DYtg1jwiVZBk2W7Fd7QRX+gWkf2e
         UnXosG0w581iYv7s5gZKBBoBQuY/8Zo5pjZxSuDuyF837cSrBBC+lJOzWiCWERgzxFOz
         anjd50DolkAe7c0YmwmqGnCT4tl04L3Pxb+Gl3AA0FGVDOXCYrRWRwY2IeaGqufgqFf3
         tJWdSFx8VQ9DWbSWy/UJ/B3MY6h2gSfq27NVkVYkNwbTJ7cJ51S+5934MYpYKUL2OSpj
         Fr8w786zexQVznl4uC7Von21C1i7fv5csrlluzyLdW6PrqLa89mfAZSOvelE44Cmiyhn
         qw/g==
X-Gm-Message-State: AHQUAubjwtJ0n43NHZsondM2fb7j6WSVZtjwEl8qjnbU8/8OJKtBlNa4
	iB+oA1a+iwZdB8O77jBav3vqfkdpWDY=
X-Received: by 2002:a63:535c:: with SMTP id t28mr19902102pgl.128.1551110728450;
        Mon, 25 Feb 2019 08:05:28 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2509274pfa.11.2019.02.25.08.05.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:05:27 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/2] Staging: fbtft: Extra blank line not required before '}'
Date: Mon, 25 Feb 2019 21:35:10 +0530
Message-Id: <20190225160511.10837-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225160511.10837-1-bhanusreemahesh@gmail.com>
References: <20190225160511.10837-1-bhanusreemahesh@gmail.com>

Remove unnecesessary extra blank line before the closing brace,
to solve the checkpatch.pl check:
CHECK: Extra blank line not required before closing brace '}'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index de3f431abc15..9d78ce6e819f 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -87,7 +87,6 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 			dev_err(dev,
 				"Failed to request %s GPIO:%d\n", name, ret);
 			return ret;
-
 		}
 		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
 			      __func__, name);
-- 
2.17.1


