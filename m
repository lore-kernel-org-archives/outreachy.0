X-GM-THRID: 57931726848
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,507faa89200b2b80,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.24.228 with SMTP id x64mr22704288yhx.26.1424121297684;
        Mon, 16 Feb 2015 13:14:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.42 with SMTP id f10ls1233374igq.14.canary; Mon, 16 Feb
 2015 13:14:57 -0800 (PST)
X-Received: by 10.42.81.202 with SMTP id a10mr27085050icl.0.1424121297527;
        Mon, 16 Feb 2015 13:14:57 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com. [209.85.192.178])
        by gmr-mx.google.com with ESMTPS id ks4si1895715pbc.1.2015.02.16.13.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Feb 2015 13:14:57 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.178 as permitted sender) client-ip=209.85.192.178;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.178 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-f178.google.com with SMTP id z10so38875397pdj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Feb 2015 13:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qL3/jo5NFuQky0dM4FI/CiwTcW/MMHElvdBZ3ypMN/k=;
        b=Bl2YHlE+3TKZsjRX7q9Omap+CPNs9ANvNeGKPHZTiotf3rA5FnwrW7bEaSX/MXLFXf
         11DLqzlcjhUpYA90zn7kuBt89pgu5vXbNjii/38KYyEgFyrPCEdTnUdbM5nto+ef6Xkm
         UmrPe4XcnfmQqnPrP5AVkteGJ2FKgM11VRS7hDwVJ1YiwScX8dbvi+EDsm6owcPhb574
         JIEbK3ECrbXQv8j0IFBSZYrrF6GeTNLyLWA8IvmO+j9bGtPAQz/B0k2Q9I4HaNBykn+A
         5z/qHYj+A18PRKcGz0s+QY+O4gf+W8iGjY6qgu+FofFVPjZeABAzB+Bd5EcJZq1GYFoG
         ahPw==
X-Received: by 10.66.63.72 with SMTP id e8mr29715499pas.3.1424121297404;
        Mon, 16 Feb 2015 13:14:57 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id qm12sm15663629pdb.36.2015.02.16.13.14.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Feb 2015 13:14:56 -0800 (PST)
Date: Tue, 17 Feb 2015 02:44:42 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Indented code to increase readability
Message-ID: <20150216211442.GA21717@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Indented code and fixed checkpatch warning to enhance readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.h b/drivers/staging/dgnc/dgnc_cls.h
index 465d79a..032e4a4 100644
--- a/drivers/staging/dgnc/dgnc_cls.h
+++ b/drivers/staging/dgnc/dgnc_cls.h
@@ -36,9 +36,9 @@
  ************************************************************************/
 
 struct cls_uart_struct {
-	u8 txrx;		/* WR  RHR/THR - Holding Reg */
+	u8 txrx;	/* WR  RHR/THR - Holding Reg */
 	u8 ier;		/* WR  IER - Interrupt Enable Reg */
-	u8 isr_fcr;		/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
+	u8 isr_fcr;	/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
 	u8 lcr;		/* WR  LCR - Line Control Reg */
 	u8 mcr;		/* WR  MCR - Modem Control Reg */
 	u8 lsr;		/* WR  LSR - Line Status Reg */
-- 
1.9.1


