X-GM-THRID: 6462748484201086976
X-Received: by 10.84.217.1 with SMTP id o1mr122340pli.57.1504725889199;
        Wed, 06 Sep 2017 12:24:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.81.11 with SMTP id f11ls4805363iob.1.gmail; Wed, 06 Sep
 2017 12:24:48 -0700 (PDT)
X-Received: by 10.200.34.241 with SMTP id g46mr118553qta.27.1504725888066;
        Wed, 06 Sep 2017 12:24:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504725887; cv=none;
        d=google.com; s=arc-20160816;
        b=Qgiq7tMBL7/GRg1GDotUs8jk56VvmtfJSw5AG1z2pPu9WvwQcTca3N/EhSHo0xf4ZW
         UzWi75uCTyYrofVb2e+tEYuXpOMBo94wI6PbcTsA3X323XQfRhK+0jvjXXERAPoeXh7K
         /QLr8oddlh/FG05MXfQOVhv3gAqOnxD7ye4ohcWeLi0RH1pK6xz7L8Jb/Tfl7gqyh+kb
         iEyrWZ/QkgP8y5wE1qPBuiqmyx7duoz1nQSm9VNohWhdepiFgg8U3W90xJAIbLaXKe1T
         OrUX0DvFxaYPPnAA4ctAAmpiFaLzLScTXeTccvQAV0Bp8Pp4rUEnYUdhOh7m9D9T4WDk
         /FLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=t6pOs6pk1K5S9UYrr/IOBf3jcrZJ2uLjIGz0EjyhMM4=;
        b=VH31pQarXVQii9H+ycaxBjErZRcpv0UScU8CL+M4hX9HkWkXCI2VDoxCxmAQIatcj0
         LIOa5aSS4IHHYR8iZN4SO1XGMj6ODVYQcSU6JunWpAtURPRclLdDq4ZnNAUBJHcPCSPa
         ji/TFTG0ORL3H3oI3d2eErluJn0Ipp3CXVBdipGO9piLftDcOXkQZRmZcco/3HgOJo4r
         PZtmb2kpDddiY5lyqmoA/cjthxoR4SCi/9YItAN5WEUqpPCdXT446xVIjE0lUQZmw9Jy
         B8KCSaZyoi9rX6qvXJA6MUaxyfcMIvGP2WwyAWVmXVsX2B9F5sOMYuB2Nnk6o95HFfQH
         mAXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S6eqbqR0;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id v25si83343pfg.11.2017.09.06.12.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 12:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S6eqbqR0;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id f84so1556476pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 12:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=t6pOs6pk1K5S9UYrr/IOBf3jcrZJ2uLjIGz0EjyhMM4=;
        b=S6eqbqR0ltmGfRG+N1xDYgmZsqBt81GYfBo1oTyrXadEIgfeatlv3sJHL1X9RxvOZ5
         JAVsaaA7NnYYWw3W1f6kg/ft8lan3FGRd0BRLDXuQXhCrPzTwtMPOB6oFvxvBPV//rMp
         VO4W9WWJBwiARi9tEZi41LtqmwwmGd5ZMcmeZLjsUGafTyFYtZ8Gv9zBdDGunihMAw9Q
         P6P6dS/mPt/OLXQ1W92T4dulXXVhLbuE8AVtQF3695QsTgbF2r6gsZzevUpCN9rg71Ju
         Frmj/k/mQfJelmWR9dfb0ELSs1egfqxb2QUPPQMprZui1uw0NDXVHZcgxDA0rpepfIWH
         lsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=t6pOs6pk1K5S9UYrr/IOBf3jcrZJ2uLjIGz0EjyhMM4=;
        b=VnLb7ehWQ4WRHcbMZsh0tSwCC3iGTGjchr3n3VwbiFAinGxmZgJJ4IBk5Iyk3k/Tyy
         C9luLPCVgJiI+LX9ry6aA4zghp3f2UwWq0idH4tsJWfyUhTcN4CH6/Md4BqmLrCgAggV
         7QN1mYLMRiOwTfRUqmamxcrMs1dwVFrJiYEHuPJCJQ/N8wKn8oPia42aFzGvMzDNhyyS
         3o/KCRDguELiMSiKrY9DJFv+k7gIiCpnWWu30Mk2Uu+m3OKptwHBFIyvD+WeanCfD4Nf
         JXIW+lk7RMGAPeWtv9/cliaSi+MeILVHvxAxEVbyqt+OL1nbbPv5yAUe3CiwWYpHzW74
         O74A==
X-Gm-Message-State: AHPjjUhI6rJ4PdZRbyqEwlEX8f4xUNFg+pKAFtQJIvLbfcgfsElUYAsv
	urNj3Lqty30MlA==
X-Google-Smtp-Source: ADKCNb5m/Eu881YQG6HdZvhrP8gpZ6qxRettC/uIM49XzZz+DlWGOhX730uvWd3/EYNkJ4BGVfPYDQ==
X-Received: by 10.84.133.65 with SMTP id 59mr235115plf.290.1504725887688;
        Wed, 06 Sep 2017 12:24:47 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.60.94])
        by smtp.gmail.com with ESMTPSA id g16sm755843pfd.6.2017.09.06.12.24.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Sep 2017 12:24:46 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gilad@benyossef.com,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: ccree: ssi_cipher.c: Correct spelling mistake.
Date: Thu,  7 Sep 2017 00:54:23 +0530
Message-Id: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Correct spelling of counter in comment .

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/ccree/ssi_cipher.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
index 8d31a93..99232b2 100644
--- a/drivers/staging/ccree/ssi_cipher.c
+++ b/drivers/staging/ccree/ssi_cipher.c
@@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,

 	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);

-	/*Set the inflight couter value to local variable*/
+	/*Set the inflight counter value to local variable*/
 	inflight_counter =  ctx_p->drvdata->inflight_counter;
 	/*Decrease the inflight counter*/
 	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
--
2.7.4


