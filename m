X-GM-THRID: 6205781635135176704
X-Received: by 10.68.176.132 with SMTP id ci4mr6399298pbc.13.1444897616945;
        Thu, 15 Oct 2015 01:26:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.84 with SMTP id w78ls62287qgd.20.gmail; Thu, 15 Oct
 2015 01:26:56 -0700 (PDT)
X-Received: by 10.129.123.85 with SMTP id w82mr6417468ywc.39.1444897616508;
        Thu, 15 Oct 2015 01:26:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si1374414pbb.2.2015.10.15.01.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by payp3 with SMTP id p3so33206476pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=FsaFwFx7AxLn0MvExFVzapazjC8ycBoC2YR4Rs8fVt8=;
        b=CoJ4BC1yfZzLTVJUumTAKNkWzTBr6KaggkIrTtNb1N/mdqA0XgmA4x8fV21gv+l5pl
         Wrv11/9x+anD3Cx55uNYZaSix8bqHxcU2Q6rK9VgP0KnczPzPVJQE1anOcMTD6WaRgDH
         V3Dlhe+4YTHJZff5fgElqn+gYtMI+rA6t7WxzQl/EPqBPmLG7qv/WKYVCFsN+32Qe2Wz
         R70VCF8XoWOoRteBe/2kegDFolpRYyTfJaenr5p7v4hx6+OHJCQGgiEaj9aIh3KsBTGz
         xvK70QVZrUvikdomfaw1tGyI/jf7pPDO6wtHCNtASJ2fQdblUYkSVUybKlRD9mZjYcPK
         rINQ==
X-Received: by 10.66.147.104 with SMTP id tj8mr8617147pab.125.1444897616286;
        Thu, 15 Oct 2015 01:26:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id pk2sm13869841pbb.21.2015.10.15.01.26.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:26:55 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:56:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 18/18] staging: dgnc: dgnc_driver: Remove useless
 initialisation
Message-ID: <a834a7c1d0f78a990527b7bc218856892973a1c6.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index ce2d1c7..6c39850 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -170,7 +170,7 @@ static void dgnc_cleanup_module(void)
  */
 static int __init dgnc_init_module(void)
 {
-	int rc = 0;
+	int rc;
 
 	/*
 	 * Initialize global stuff
-- 
1.9.1


