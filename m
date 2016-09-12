X-GM-THRID: 6329466938491666432
X-Received: by 10.98.95.71 with SMTP id t68mr16126300pfb.7.1473693861827;
        Mon, 12 Sep 2016 08:24:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls11182928otc.12.gmail; Mon, 12 Sep
 2016 08:24:21 -0700 (PDT)
X-Received: by 10.200.37.77 with SMTP id 13mr16484386qtn.10.1473693861433;
        Mon, 12 Sep 2016 08:24:21 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h124si2390485pfe.0.2016.09.12.08.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 08:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g202so8259198pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 08:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ylHYTWAFkMoevi+9Z9Y586U2VDwbFbOJ8HmOTgbHXBw=;
        b=JUaj+yJwFIDQh1CQBfl3jFk2U1D/5Jw1ll3gRwH5nMdd0bqujucEdv1sgDdCuyvWhP
         vbO9mQYMeppoHw6GY8M7ACEeMqNCt90npRpjgOakqHTvZiNGQB+7NwveaENgrrwBZ0ZF
         xcpB1lSR51rIs7+iwRNB8Nf/46e8ULpjZQIIZ9axYGfCLXlAFBNq1bJecIu6x1VE2Bc+
         /F5rtIghsM3F4EPHh3Oox5MzC4w4jsUKg+OS9T9foNzwpoukrvgXLAl2umbiIS8fyRjT
         QGOYWYQpoJcHWkCEgTxBGKqmWnr4u5cFhmjucQlAEEmIdJBSiy442XwTe7O/XCjCIIaH
         sg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ylHYTWAFkMoevi+9Z9Y586U2VDwbFbOJ8HmOTgbHXBw=;
        b=jBFpxs5a7zc5D1IIuDPHiRl+j8I0Wld7rpMKsuEegQHmhh5hn1t4AJet66ArkXf6hf
         CDsmSIVfTlb3gMXv6ebz9WqV+sGarCRyh9H6DtNaZc3/ApVrUZAkmN+Vzpsrsr+g/LlS
         g/VwA+MOzHhTLATsl9tbsxMhVUBtZlOnKe7gTkiVcRtlcQam2LZiWdGuWBswqTcc77N1
         VUk89dVDis34LWwgxGTLBVRX0CZdP7kWi/vDOXfSdrSmup712JYvPBGzab1SHM9bVoDF
         k6Sp6TU/Ra2EUAVpRFAs6/VI9q7dBuyRa7rOa/ldsGvTnUM1odKluuI5/3f1/RbEGP27
         NlMg==
X-Gm-Message-State: AE9vXwM+Wsq3Hkw4zvQnhl3FsEVF2+ES2PSIT1pYr5LJJ+DxkNQyRqVU+cCX/beA3Yb1DQ==
X-Received: by 10.98.78.138 with SMTP id c132mr34229287pfb.67.1473693861188;
        Mon, 12 Sep 2016 08:24:21 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.207])
        by smtp.gmail.com with ESMTPSA id ve9sm25493333pac.12.2016.09.12.08.24.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 08:24:20 -0700 (PDT)
Date: Mon, 12 Sep 2016 20:54:07 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy Kernel] [PATCH] staging: gs_fpga_boot: Remove multiple
 blank lines
Message-ID: <20160912152407.GA8046@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch warning for the gs_fpgaboot
driver:
CHECK: Please don't use multiple blank lines.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/gs_fpgaboot/io.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/io.h b/drivers/staging/gs_fpgaboot/io.h
index 7b46ac2..5e839b1 100644
--- a/drivers/staging/gs_fpgaboot/io.h
+++ b/drivers/staging/gs_fpgaboot/io.h
@@ -66,10 +66,8 @@ enum wbus {
 	bus_2byte	= 2,
 };
 
-
 #define MAX_WAIT_DONE	10000
 
-
 struct gpiobus {
 	int	ngpio;
 	void __iomem *r[4];
-- 
2.7.4


