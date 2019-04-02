X-GM-THRID: 6675395649544912896
X-Received: by 2002:a62:5304:: with SMTP id h4mr1380220pfb.38.1554236665411;
        Tue, 02 Apr 2019 13:24:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls12441pff.6.gmail; Tue, 02 Apr
 2019 13:24:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypbz3pQWF84Q9Jm6cPj1GqDpLz1vvStJ4yltZqX6ckDOUcfeOv/+6encNfLnO/M3XPoCYD
X-Received: by 2002:a62:6c89:: with SMTP id h131mr494554pfc.61.1554236664601;
        Tue, 02 Apr 2019 13:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554236664; cv=none;
        d=google.com; s=arc-20160816;
        b=fW4V4aiFP+E+Au38BLrkpd2v5hvBlwjJrrjsCfdiYsrWBceU8y6OMzQNUbrHuTt25Y
         nIEsaNhzC9ur6I6wkeIYTvsW/HRMQ6gc801DTxBypd5YNqzC+0JOhPcIhrUBb8ImyhoO
         PZY3FjvXOZVaYs9gY6gc5JhIv0vhEDzHdkpXP2IeeEkiSPwwdzhAD1h4RO1evXTrKFXn
         9wJsUsGf37SaZytOXMSgzaHACzjaekEFfq0XeFpAMY9oM5gXSfeFydBTpZfZ5Tw/5B9p
         /+luLyhdelzAHtkC42GPOvXk8HyXAr09zo7WmBZI1cF+cVVbGtbP9Yc/Q9ntdJUofB+N
         bh8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=T1vAveTeoBOqhOy42msKNJswzZq03CSCKVj4ujJYRE4=;
        b=WvuLD/V1wVfpqu5bs4sfquN7OY0A9kc6UHSQKzVSa7GT1RVJwlwsVs9dla9EkIPq+F
         ScD7dB9tgdJSRMifoLWZ8+77b1YNFrwxMzYv77UWJNklKsh6bQSmknz8SsECmKnwfcUh
         t9vd2iuyuk/bizVdmpwxXnwEkCCgbqiJqPrcWqjU3RGxpCjkirjuRDOk7/DI7F4uqjnV
         sKn/fkVGnpoQSytKSZVsMGKIEatH/+TmFLg2+gYDu12FWVdFMrBdT1d4niCKQfF7f6C1
         u8xMDQO+SjBEGujySfcKoqPX1l3DckHH6lTlolVm6C86qgizgq9QOJ5WxSmNmZVYqjRn
         Zyow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JtdGxUZs;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic307-21.consmr.mail.sg3.yahoo.com (sonic307-21.consmr.mail.sg3.yahoo.com. [106.10.241.38])
        by gmr-mx.google.com with ESMTPS id s72si67182pfa.5.2019.04.02.13.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 13:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) client-ip=106.10.241.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JtdGxUZs;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554236662; bh=T1vAveTeoBOqhOy42msKNJswzZq03CSCKVj4ujJYRE4=; h=From:To:Cc:Subject:Date:From:Subject; b=JtdGxUZss+63fkveZGVm4jD/chsQ6p+jOfWoc1f4p21mn5LtF4x7ZliHFmJF/RmhsmWfFoNU2yTqyECqT0Jqro5gfvYHcknRjDokmUwHI1DoysHS+QH/11Xv+v8dGjsuhzMhzgK8uu7+bHaRrEF5ySqw3hbuvQwg95Uu4m0+OTW251AIYbD6024pXqOupe84kLNrh3hKqft6kHxD/tJZxmjVQm3v//nbe58pTg+tuQJA43EqEwGokYEeXH8Ky18Hc222TNkjdvxZh6FOOKkeS80Wk7M8+r9vstvCv1q7MEXrAXfxsEbe2e8ztjb5koY044g3ituMr3/+m9IKIM+1PQ==
X-YMail-OSG: .6cjxsIVM1kD5RKciTzdiz0p9ApmXwGBJGGOFwLNQwI069Yjaw3snWYxphbdQEI
 KH637vP5FotlrSsETDx3yVfWn_BUPZRLeyiPulc16_NHja3SLHoHceFnGeuUmPv5BjUQYFX.0tsV
 t1cVXljmVlTp0u5JZVI2cEP2ewW.bFqeozenxUAat1SDtyEbWz9O2P9lHadVmjhTsrYphUK9NT1p
 Wepf07g71X0wynO._X1q04rOEF0a8pmppKmNTBpJLYe1qAZ5B.YxhQvMQgPdZ6X1GznimPAYHx7z
 6R5BjpzJNsUIZl7fUX7ypDSohvz4Z8bBrfNnDinbPyXABoTkzEpEBAGbrWCoMHxtMdxJhujJUQC2
 oSfCoYZ1nsiye1DweNOnWQ9nR3.LzoZzHr72QpRvJ_wo_cfUAE7OcA6n30cqCAA5IwFql1wfn8dG
 LLIrpTKEs0EiEOdM8b0qMgSoTymDVW8JQcSpCtl7PuD4sptiFkSqoS1maBReWuJd4PiaLmnSGNXJ
 sSfzyY72pxG.lJNb17uji9irFDE1edKuW4qzRMCuSzuCyzRG_bPLFdwS7aisMKRgAA5Uy_cw1Pn_
 0Vfd4tOqTX.wXlSZNQh9cqX3FBI2C7p6AS2Vmf9cOxAbdd2enRVAqBX92sjY2rssbZ9KZi73bwSi
 JMlznyNxw7t8r.kFOn8T41VNb6TR_gyQpIMoNYfpZROwkrBmO84CJcp5vMlcRS7Uz81VQLRD6Mj5
 BcIydBlbW4i1DejsPmo70u7.b9_UkhbobBictEE3XRzlGMj2dkv9gyA8m75788UsBJD_H24o9czr
 P4dj.dJwKoKHVjqa0buSA9THI9UjFWs43bnnhJtvkTysmZfvvhoF4bMd8jpzwhcIGPD6J9FrBD0e
 92heKhzno3KRoIUjp4gr72cuxVpNiJ277XyZQfNHy0EWepyZmrS1.m6cf5tkkd5GDArTXLWArs6L
 3058vOyqkaZAiPRvcxQBxnZi1FoTX354ee5fosUYVJOb9DO2ssbm8fD.ux7UzN3fKEi2deE.JSs9
 A3cxHftBz.ScortfadsQSHgoPXJAq3HnGY7hf15RMc0hsgKZySqtekz9o.6RFBkorUSW1yxd5FBl
 yT428iBWnbDA4uFmySTfLTfwm26h97y6HkJ4-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 20:24:22 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp425.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 57e49fc1179225280f39c9bae08dc036;
          Tue, 02 Apr 2019 20:24:19 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: ralink-gdma: Remove print statement on failure of devm_kzalloc
Date: Wed,  3 Apr 2019 01:54:09 +0530
Message-Id: <20190402202409.3613-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove print statement after failure of devm_kzalloc. Issue found with
Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index b6d484532269..e8c0c8d0dea5 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -826,7 +826,6 @@ static int gdma_dma_probe(struct platform_device *pdev)
 			       struct_size(dma_dev, chan, data->chancnt),
 			       GFP_KERNEL);
 	if (!dma_dev) {
-		dev_err(&pdev->dev, "alloc dma device failed\n");
 		return -EINVAL;
 	}
 	dma_dev->data = data;
-- 
2.19.1


