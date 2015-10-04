X-GM-THRID: 6201662223213920256
X-Received: by 10.31.178.196 with SMTP id b187mr20211390vkf.3.1443937007085;
        Sat, 03 Oct 2015 22:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.204 with SMTP id s12ls906611igr.25.canary; Sat, 03 Oct
 2015 22:36:46 -0700 (PDT)
X-Received: by 10.50.55.71 with SMTP id q7mr3330154igp.7.1443937006739;
        Sat, 03 Oct 2015 22:36:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si2932096pbb.2.2015.10.03.22.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 22:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ex6so144341997pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 22:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/rUEhRPIXI7o3PgDKf2ictFZ4TFPoO27GCrQwtfShVU=;
        b=xeqRnnBE/du3obbxHCfWg0nxvCbCh3nRdufxTQgezQ2NV3hIF8SWiAnKRZLPj3Vw/A
         owO7bWvn47ljH9sKCjmNAUM8prADuSKdlMejc5U30WdfY4scjV0P4OnHAkdN5OIkDIfv
         ggyHCsvr3yKO4UyySO7uRVeKuuPpQBJZiJcJ68DnEsaslHfgyNxV5c7BhnfgJXjyvdsh
         N2MxQq/M5InSEZtDUsR9E6ZvzLQtFfmaZF5RU5f6ETe7AHItKr/njEcGNmty54uh4dVo
         fbpmvktNUbk9EpRIbJaAYYHrHqcOaDudR/qXuNZaID8hSQfs57ubOwCSzdq9SgA4BlWh
         gKfQ==
X-Received: by 10.66.219.227 with SMTP id pr3mr31092736pac.33.1443937006572;
        Sat, 03 Oct 2015 22:36:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.205.1])
        by smtp.gmail.com with ESMTPSA id vv9sm20281221pbc.95.2015.10.03.22.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 03 Oct 2015 22:36:46 -0700 (PDT)
Date: Sun, 4 Oct 2015 11:06:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Removed space before paranthesis
Message-ID: <20151004052239.GA3895@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed space before paranthesis ')'. Problem found using
checkpatch.pl
ERROR: space prohibited before that close parenthesis ')'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 1683b3d..665238c 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -268,7 +268,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
 #endif
 
 
-	if (pInitParam->powerMode != 0 )
+	if (pInitParam->powerMode != 0)
 		pInitParam->powerMode = 0;
 	setPowerMode(pInitParam->powerMode);
 
-- 
1.9.1


