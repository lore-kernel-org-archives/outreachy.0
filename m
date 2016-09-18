X-GM-THRID: 6330669960642166784
X-Received: by 10.107.15.220 with SMTP id 89mr2523992iop.93.1474186568198;
        Sun, 18 Sep 2016 01:16:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls9293470oty.10.gmail; Sun, 18 Sep
 2016 01:16:07 -0700 (PDT)
X-Received: by 10.31.149.137 with SMTP id x131mr2542422vkd.20.1474186567771;
        Sun, 18 Sep 2016 01:16:07 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si5518642pfe.0.2016.09.18.01.16.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 01:16:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so2459948pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 01:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=i6d8E5YVziQPxxGJ+AuSSKkWpXmMpXCvUEGIxs8bBTM=;
        b=Jc/WguRzPWAnR7TsjMa5gwnJa1oi1H4K5LS9Hovyjmo3JRqhzONZ2TFE76d7iVnzAI
         GX/7N+PsSwfcnqu5emv0vredNlviGyDVduslYDHZTti66/6BGJrTWiccwgcrqN8jUYeO
         VAUOAaLq7d6ck5401tdtRpIH5sBsTzQ7MH4FF0K75Vz03f3mm6QIPOxiW3/x9Kx03P4h
         uL/7m1nICGdTGHkHSDmeeTkMaxny9DlCdCLrDsJnyRXBjJILFWy1IurSl2zvrXAdyKrK
         oAvXSd9AA3mRvbsYuVBipF3SvU5xphz+webyg/Zx50+MbEDFTMREuhCLBsS3bqMEH09C
         Ydqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=i6d8E5YVziQPxxGJ+AuSSKkWpXmMpXCvUEGIxs8bBTM=;
        b=TOHynWkBr4a/UjixUs/UuV9/9bVwltL7JvAYk/4OmRNaRCPqgH36oh5lxyOnE5Fdco
         M/Fffd7WE+QuS7Df0Pvu09PGnkPvQjRHdqMJ6x5KGwifO60x7cO/Jz3+2YDpI2YM7col
         xAsJEpdkht2QYXp6ok9NbZKXvjyjxdNWqOf0pffWij/WSDa03N3juqOreh9GKitx+I/J
         6y/UN8Tc8E7zkFIDqVKV/GCwht8nrMdb73hEnqMxt/7bc5EMstm8CeAZtsS/0NzGHntc
         vybLrFuWb4WY6hBZLMfxVvy2un736gvVxOL8uqO0V8U2ks9x2Ke00wDS7vmnrRfvzoNf
         rFdQ==
X-Gm-Message-State: AE9vXwNcXDUDiHwe0Fv9QQWE77vEZaGfB4lPLgrkduEm5upM7CzdfzygnGsUJA6+Wqdx1A==
X-Received: by 10.67.23.4 with SMTP id hw4mr37165634pad.7.1474186567578;
        Sun, 18 Sep 2016 01:16:07 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id wp4sm23091906pab.15.2016.09.18.01.16.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 01:16:07 -0700 (PDT)
Date: Sun, 18 Sep 2016 13:46:01 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Clifton Barnes <clifton.a.barnes@gmail.com>,
	Geliang Tang <geliangtang@163.com>, Ben Marsh <bmarsh94@gmail.com>,
	Janani Ravichandran <janani.rvchndrn@gmail.com>,
	Benoit Hiller <benoit.hiller@gmail.com>
Subject: [PATCH v3] staging: xgifb: Replace explicit NULL comparison
Message-ID: <20160918081557.GA5053@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace explicit NULL comparison with equivalent expression to resolve
checkpatch issue.
- x != NULL => x

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 Changes in v3:
 -fixed corrupted patch

 Changes in v2:
 -sent using plain text mail agent

 drivers/staging/xgifb/XGI_main_26.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index d56ef14..23a3bd7 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -2085,7 +2085,7 @@ static int __init xgifb_init(void)
 {
 	char *option = NULL;
 
-	if (forcecrt2type != NULL)
+	if (forcecrt2type)
 		XGIfb_search_crt2type(forcecrt2type);
 	if (fb_get_options("xgifb", &option))
 		return -ENODEV;
-- 
2.7.4


