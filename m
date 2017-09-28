X-GM-THRID: 6470749668673323008
X-Received: by 10.99.116.93 with SMTP id e29mr576631pgn.153.1506588810673;
        Thu, 28 Sep 2017 01:53:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.123.23 with SMTP id w23ls1027874pgc.24.gmail; Thu, 28 Sep
 2017 01:53:29 -0700 (PDT)
X-Received: by 10.98.32.81 with SMTP id g78mr405737pfg.53.1506588809800;
        Thu, 28 Sep 2017 01:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506588809; cv=none;
        d=google.com; s=arc-20160816;
        b=TcEtmsJ7WR4IAuxksqkrz+m47gvM4ei377/2FL4cfS6gyUKppTf+uwmmpG/YcBho8a
         VzrQl7F0Daw734tMq5m9uyN+KN/YdVsdMNDRpRbtuvUE94NVB9jXUHSJQ2VMYB8+7LKX
         Q7VXTB4qYmq7Fse3tPmrrI6P1IEybDOkCKeup2u6dSKjW3RWgfMa8R1egzI5cKnsPB5M
         eLu8Dh1AJUZjPMA8cYkpVqE/rbA9EK5yPpBjzLsjYpUJ2VYycypVCNRMfUV0aBlCte6j
         a5pwkx8L/62o/pSva+4Hv5a30PDKrcVbMJkuB4HsGQWB2kQFPqjOMT+jdSi5zVoiMGaX
         qfNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=gPslAxJIO6cMubwSy+7RspFwOspan2FHa0iFRPUdrC8=;
        b=D0qzduRFxQ0uvUbqEktYS/mh9shleCgghdCBmNevkQzwJBRGDqx7VhbSiv3s0yTU21
         3PKXzeZ7xp+mYf/9DeD41OV9EAksnUw8/HCrkYLLR3RM1pDOlYDHZsBaw4EpVSlZmHW0
         kiIrkW7Kampm9sVMmIeEgV47MkxXioSFK3MUHRIme7Q7ZtEoL7axokFq6XErJIhbDeK3
         wYmDyV4vlXe+XHd8Ften0kQHMmlXUZjJsKYlnYN+p2dl0BpWDvFeArxayQ6AmFN0NGWR
         xWqjudnTZKlbW0vBqjDuCtIjKP2bj6ZRja3Ub5l7wrsgpQ5tb7ZNjUNr1BNsTP6lP6re
         mJpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cs0942C9;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s81si143480pfg.19.2017.09.28.01.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 01:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cs0942C9;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u136so1265605pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 01:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gPslAxJIO6cMubwSy+7RspFwOspan2FHa0iFRPUdrC8=;
        b=Cs0942C9Q+8PRtHEgwrBBPaq7JzvaHRqYXnoCoUp+RW3IeVCqmGQF+rTwkGRntmjLs
         IyV5qxkTkpCkEQyJXTe3BbAF6X3ZFqJ4/5sxu2eSnj+7Ksg+bUIgF7K6HlMVcdC9nrHd
         OSV/rMae0pr6fn4SIpunWW/zlkMxRXPNT3tJz6bqzAjdFzxQArneBnqre2Z6b10F6Kd+
         N1NbqplRhAyVXCC+krJKE71ZMcKl1OhaMO9Zp2nwl2+F6rGuR+gMxhmp+/Fb3ZFHcS+Q
         J0WBY/pgZjU6KqGm4FbxO8jYJsbxt9BR/9BYcjQNnfaXoIUXKrHgv2cAjqoEuwqXdt8B
         bkcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gPslAxJIO6cMubwSy+7RspFwOspan2FHa0iFRPUdrC8=;
        b=mLkHlPHebzNgVWYMS6bD9dTzXe5kX8Ie88QwT7Ez0xxq9C6eAUpzCkwjlnnIxK5pM6
         KPbFe6xca2a0Es81WC3RNH0lh2xvMmgu/w3eWi8ybYVwSbMW44bHnkbQAOeMN/ImGDQY
         r6kO6Ovn3yAx0Uml9I19up1xbZBYRqGkTAY3sxlDlykWNSsrOeCJJC9qKb6ySMqsQtcW
         /VzUY9IS7OWU0TcXNbMl/9lt0QOI5FdA2k68lhtZQLEd8RR3K+Gx46e0AxA2N4jH/Q6K
         ChoFBhDrWLNz7Y6z2pj8oZ9uK1TvmYQKMgOSXEUR35kUUen7GCUhjB/orkqFsDvAMLXB
         YMoQ==
X-Gm-Message-State: AHPjjUjyQn5DRndyy8N5hehNkQsTSOM+DhE+Obc6z/yY8f1GauH41xeR
	1ld+y3xhrcA99MPZGycHWVNw01My
X-Google-Smtp-Source: AOwi7QBmQCWGab9nhr27GeG08JsE2dxwykcs3idvc9zxKNIhxSs565yC4Oxb1rtWU8nyHP0Jk8SnDQ==
X-Received: by 10.159.218.6 with SMTP id v6mr3640616plp.1.1506588809656;
        Thu, 28 Sep 2017 01:53:29 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id n10sm2048982pfh.121.2017.09.28.01.53.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 01:53:29 -0700 (PDT)
Date: Thu, 28 Sep 2017 14:23:21 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: german.rivera@freescale.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fsl-mc: remove unnecessary parenthesis
Message-ID: <20170928085321.GA4240@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parenthesis

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/fsl-mc/bus/fsl-mc-msi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
index 038da4d..f74a6f1 100644
--- a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
+++ b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
@@ -137,7 +137,7 @@ static void fsl_mc_msi_update_chip_ops(struct msi_domain_info *info)
 {
 	struct irq_chip *chip = info->chip;
 
-	if (WARN_ON((!chip)))
+	if (WARN_ON(!chip))
 		return;
 
 	/*
-- 
2.7.4


