X-GM-THRID: 6254572813361872896
X-Received: by 10.129.131.206 with SMTP id t197mr31910910ywf.50.1456256213454;
        Tue, 23 Feb 2016 11:36:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.35 with SMTP id v35ls1119139ioi.34.gmail; Tue, 23 Feb
 2016 11:36:53 -0800 (PST)
X-Received: by 10.50.164.137 with SMTP id yq9mr9624472igb.0.1456256213136;
        Tue, 23 Feb 2016 11:36:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id l85si1549018ywb.2.2016.02.23.11.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:36:53 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id x1so72280877qkc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9VlMb3Dc1ccwBDwhdjMurlalfbfAtfVHjQocwU19NwY=;
        b=wqaIw13NkYoO4huuG66lM2cioGUxCP238JK6dAFO53Ovnd1hs8o48fgsB3IusdJ3V9
         /sqV1/S8eBOHNCbk1EkcRSkw3cHBpoBc+6Mn/2ysoDOv/71hJmjxaxwqjlTYb/pSeb/P
         Lt24D7lD5Ni2RK1wXAk6q6EHD7To+KTeMAyAs3dboIgFWZdMJp5Ne9aEYnGZrUiCsh81
         VHjqTKT4PBYwegR9RlHyKjVQZQiqacejiiQFKrmxG9LFti9eGgshbyuVw28/gtLWZxCn
         FAYTl0/u43h+hi3QEk5fLRrJJuax4u6s2xAeeTpNAn5y90jwwuAx31/wdPTokU1e2SjX
         Ityg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=9VlMb3Dc1ccwBDwhdjMurlalfbfAtfVHjQocwU19NwY=;
        b=Ee00VNvAV6WSKHNJV2PPWbFt0I7z3h8ILh3j+qNNe9bGMfVPUw/cAceOrL/0rxMN9M
         2g2Rkv15/QUt8hWR+WUhUTS057v5vvbHrm49c+RfrkwGYxyeyGYjvTee3y/wzcAPNWE9
         dzvbdQj9FiptL0MB5qKwgtknvSf/mXhpfTGTr2gJ/OwuqyC4KuUDgjS5DBnSuN0yNOJi
         1YE5DqLnGYRlvvrG/BaGclnx3RB9EyOH0mQTuBgOHKJvu86hfmoQJuA3AZi3eJ/zXJ/a
         10SqvaOehujfiDX2ObLoRGKtiXoD8nWPbZEgNIClIOUmyxbrJkBHGJyFcICrmfpb437k
         lUCA==
X-Gm-Message-State: AG10YOQ7TyA+winaq0MswtJIevsL5iGAKh2zQ9JRkwfaeFAd6HvwqZEzC5x7hFH5vE93Ow==
X-Received: by 10.55.54.201 with SMTP id d192mr43480872qka.23.1456256212902;
        Tue, 23 Feb 2016 11:36:52 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (pool-68-133-44-176.bflony.fios.verizon.net. [68.133.44.176])
        by smtp.gmail.com with ESMTPSA id n203sm12616163qhc.43.2016.02.23.11.36.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:36:52 -0800 (PST)
Date: Tue, 23 Feb 2016 19:36:04 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: Remove unneeded NULL check before
 kfree()
Message-ID: <20160224003604.GA3314@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL check before kfree as it is not needed.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci224.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index cac011f..656df1a 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -1096,10 +1096,8 @@ static void pci224_detach(struct comedi_device *dev)
 	struct pci224_private *devpriv = dev->private;
 
 	comedi_pci_detach(dev);
-	if (devpriv) {
-		kfree(devpriv->ao_scan_vals);
-		kfree(devpriv->ao_scan_order);
-	}
+	kfree(devpriv->ao_scan_vals);
+	kfree(devpriv->ao_scan_order);
 }
 
 static struct comedi_driver amplc_pci224_driver = {
-- 
2.5.0


