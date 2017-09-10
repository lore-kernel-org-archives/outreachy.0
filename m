X-GM-THRID: 6463802191249408000
X-Received: by 10.176.73.169 with SMTP id e38mr4521253uad.96.1505057543462;
        Sun, 10 Sep 2017 08:32:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.132 with SMTP id 126ls2667575ion.45.gmail; Sun, 10 Sep
 2017 08:32:22 -0700 (PDT)
X-Received: by 10.84.128.15 with SMTP id 15mr5658768pla.36.1505057542711;
        Sun, 10 Sep 2017 08:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505057542; cv=none;
        d=google.com; s=arc-20160816;
        b=SGS4r669eF2y2OGTUU0ek5bua0gEV6RhiNWsDkorxmmP/LCraXkRVN5ymKnozvkHCv
         8tOdaQub8WZ7qAh2MjDHY72ykeN3pBDd1++ADf0j9VmhFQJXhmLE4ou8QJmDgpmydIUY
         isHlwUhEBrICL3PGSqHFYmuPpUf5H173cnnN5bGKW63/jo8rlWZ0RM2sv99M0QoFexed
         FY3VXb1KfXGaHA5MWqRW1+eXOSbJ8iec3iaAub8LAlx7h3KNeyIf4qCYAamCt1oRsrBc
         nXmIj4+eAG1LX2Mwrn2Yq1h1MopRQ9bLcy9XAGeSMk2gFj7dvMPMSHbVSoDwIbDdBLWY
         q59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=f2O0/ylMQjQSN1UYLkDR5/IlOL/pA2lhkijMms2Wf7w=;
        b=VFQU+pbnQ3vAavh0+v2f3nZsSYgA3ZMRdcT934vFrXmEtQ2hmsW4PZq4H45UU1COcb
         xbNhze76p8N4XiwHSRunY44uuculLHUg/yfK7IxxqpHv0eZREPE9ApLr7zh+MmheRzky
         V+pRxNKlOA76GHoLGOVwc75SHcNFEqREDC+1BS5Xnp3Fpy6HrxBPVK64uxERxjai6cmj
         Y9+yLnXfh4TlYSNo/5EOw3xmvjYT1dePeqeWUOv0jiTXYKLRqrSw9acAWVgIiLtgyPKW
         BilOnGTldbIUHeeoKXNmtErSDcLzuXLRmTcI2QuE+UD4J+UI1GeR7ap9Ng/oc/7H1pvU
         sLSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dgi253Yp;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id k76si696681pfa.10.2017.09.10.08.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 08:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dgi253Yp;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so2060930pfg.4
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 08:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f2O0/ylMQjQSN1UYLkDR5/IlOL/pA2lhkijMms2Wf7w=;
        b=Dgi253Ypa9R45ziJ0PnuC5gGK0fUViatnxxSQ3D3duqftIfQTZLWvSBhzwh28sWeRT
         gsnFBv30eyKidv0BV/b1hpMC3b2eoLPE6aqbKPZFnOqjJobpZTshBlmUxdA4z+KfcKbZ
         p24irUtxSUMgA5K1g8bjxuCdCTC2f8fH72fFsL6oidnGL1YN/ebKB0HUEO2JLEKFx6KO
         68AC9KFgMWlVFcz4ufNge94M4BvkYXtsYnr9vL8WtustSHcSoPrF8Mc1cCMO2HZskE9m
         ubhbuepO+n9ZqLovZl+R4LTVQQ97rJAPSpNAVJFT+7kynfQlMcAZzUUniDVYI1wnRVoX
         IQOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f2O0/ylMQjQSN1UYLkDR5/IlOL/pA2lhkijMms2Wf7w=;
        b=raBr1oj9OnEFHgDJh+7kKc7J/HE+UNDxSdprTNjyzAwXic+gMd9iuM8Dr/Ue21dPIq
         Ze8kuAbfn6pg9S5E75P2h04yFu2z1B8Nhtgl1HD3Z+AOm/oixshBP7TH/RqpWq9Ip3ey
         pWbY8WvgbapWVkc7EW4F4Jnx/vxbCfc5jc618OWWj6cpCERB16sEvwGvbK/7Ou15mBmj
         UxyfWcWUeIwx4qxN7bC94EAlXnQ7E55gePxpSu+QzmSDgjDQP8k1lWvJaFAnvLI+yhkk
         8RukDRp5XN6Y54biCXwPKn0LcI6aruzWGQ575KUi1iJr1TBja5LLqVQnHnHoM1qphcCQ
         hxAw==
X-Gm-Message-State: AHPjjUhgCBoL+WdwPCPixLx0GasFLzx4pLroF6vz6NcGzoQsqDKEQQ2n
	jeNsN9CuN+0QdQ==
X-Google-Smtp-Source: ADKCNb6XGsr4EkJ8vvBFjbEB/O/wxpIEhBxw9FrE2d8sDEjvueUVydFe5ww5XEOz2/PgPw8hj883lg==
X-Received: by 10.101.67.200 with SMTP id n8mr9287352pgp.313.1505057542431;
        Sun, 10 Sep 2017 08:32:22 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id a6sm10253624pgq.17.2017.09.10.08.32.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 08:32:21 -0700 (PDT)
Date: Sun, 10 Sep 2017 21:02:17 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: [PATCH v4] Staging: speakup: Replace symbolic permission
Message-ID: <20170910153216.GA9133@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
readable and matches the style used in other declarations nearby.

Problem found using checkpatch.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
   - Make the commit message more clearer and the title more concise

Changes in v3:
   -Mention the changes below --- 

Changes in v4:
   -Resolve confusion over two v3 patches

 drivers/staging/speakup/speakup_acntsa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
index 0e10404..4331584 100644
--- a/drivers/staging/speakup/speakup_acntsa.c
+++ b/drivers/staging/speakup/speakup_acntsa.c
@@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_acntsa.ser, int, 0444);
-module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
 module_param_named(start, synth_acntsa.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


