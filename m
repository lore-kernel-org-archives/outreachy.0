X-GM-THRID: 6254588282584170496
X-Received: by 10.182.236.34 with SMTP id ur2mr33216363obc.10.1456259815851;
        Tue, 23 Feb 2016 12:36:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.70 with SMTP id i67ls1270244ioi.96.gmail; Tue, 23 Feb
 2016 12:36:55 -0800 (PST)
X-Received: by 10.50.30.226 with SMTP id v2mr4579003igh.2.1456259815534;
        Tue, 23 Feb 2016 12:36:55 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ff2si4457463pad.2.2016.02.23.12.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:36:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x65so118069915pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bCv7VssF1K73WD4sXmjLpjTjl6wl5CGtafzA91JC8PA=;
        b=xAGXygBFqrUBy5vOTE5eXajX1Ua4wt/rxNDxtNENHuJQGR5WFh5uPClTcQni9VTNFX
         IkjSS0bTXf4M/+8axgFDmNrUA8DdSJ2O3d/TZh6lgfJQC9aUpSr9VJGbVkuUjJflRvV0
         ftWIJ/EbykgrFglNVp8zJlO4SsVlFdm3r65X+pYZ5HspbxMNdnzADpOmopnRAV18FPko
         LMC+D+c9EUPAosVf6Qi/mqyJblWZtc/Q6eYilydYYH1JXJeZAxHges8iXhwSrkrTPsNF
         0IQkMmnsIW7gzqhbrCeto7LLgbxPdIvTlmebAHWbIfF52K0n1f+aZ+NZC6HTg2UFa3yG
         UhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=bCv7VssF1K73WD4sXmjLpjTjl6wl5CGtafzA91JC8PA=;
        b=WklaLSHvF+aEToqVTZWS1E+P9H4n+k/cvOMJBZ3oJEhLCFWCe5AoGeTk7BNV2VBFcb
         2m2G6eRdp7dUmzt2WV5hq51CRyJXqynOrUQ7ktvN7F8xOGKBJPype3k0NaF2IVEPul6H
         q6zX3lYeZBz9SXm7lnzdR5AnxrnPFZQcGaHiC1uHW6KKZO9ZsiFfBY4Ex3BOP4emCEWb
         3Q5Jt/t3KoXVmfUs322ZqwtOIZLU1gH5AkzzgS8NuzJ0jBiC5/ivKhEZYUOybwf0Kpt1
         KjMPbzZG0fv63nQru1a4bAaYcCDM4ARhH3gCIEN2W6iGxTNLhEBig9stG8Wh9xqTjIPW
         DtjA==
X-Gm-Message-State: AG10YOSShsQh9WTnLiMvL7GHJ9bXOdgt8A73iCitN2TEjQJFRcLqe8Radwcb7utKI3tcxA==
X-Received: by 10.98.75.200 with SMTP id d69mr49780165pfj.108.1456259815351;
        Tue, 23 Feb 2016 12:36:55 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.185])
        by smtp.gmail.com with ESMTPSA id to9sm46408340pab.3.2016.02.23.12.36.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 12:36:54 -0800 (PST)
Date: Tue, 23 Feb 2016 18:07:02 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: gs_fpgaboot: Remove unnecessary blank lines.
Message-ID: <20160223123702.GA3052@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary blank lines.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index 8f2ffa8..96432c5 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -93,7 +93,6 @@ static int readlength_bitstream(char *bitdata, int *lendata, int *offset)
 	return 0;
 }
 
-
 /*
  * read first 13 bytes to check bitstream magic number
  */
@@ -336,7 +335,6 @@ err_out1:
 	kfree(fimage);
 
 	return -1;
-
 }
 
 static int __init gs_fpgaboot_init(void)
-- 
1.8.3.4


