X-GM-THRID: 6259752100928946176
X-Received: by 10.140.227.134 with SMTP id x128mr671986qhb.20.1457462110711;
        Tue, 08 Mar 2016 10:35:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.154 with SMTP id 26ls351741iot.4.gmail; Tue, 08 Mar
 2016 10:35:10 -0800 (PST)
X-Received: by 10.107.136.99 with SMTP id k96mr637608iod.23.1457462110382;
        Tue, 08 Mar 2016 10:35:10 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si758030pab.0.2016.03.08.10.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:35:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 184so1767419pff.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FE3CJgN26MThs2lzcoquHxmyLDqw4JDbox3ZWuPSLa8=;
        b=GrsPrU3wgvorh9S1fDjMygNxYKGbrYdYEytjZmuA9JY12UcLPqOaZc4n4yPR8KxlmJ
         1J8l2v15j8gi8m28uHDIjdIc0G1qDjwCN2eUBlGy33cdvgHlkFjWCNiN5WM1R2wdIaeB
         K5qg3jtHFGzIWRYpmpcpwEbUNkfSYRDoobjkuEUpo+lYyZXDEX18gRpE1sKkp+O2Fx5Q
         w4jPP62WasOIFUxXqB+OLqBmCCRUAmGJ8BgAK4exGoJLLlv0ETJ06/6DWlE7f1Pz1ypd
         oNceBrE4KcQEaSMR4mIKJ/8fJBIayR/UnYtaDmXgaCms91kEez4iMbviNDyIZ8uDteBc
         qcRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FE3CJgN26MThs2lzcoquHxmyLDqw4JDbox3ZWuPSLa8=;
        b=TJ8SF124LUvn1Ac9w7JCH16vpK+tbhuU6uubOS7m9cIe7yt5fuoX0/oAzXtFgh7gZE
         jOTQmVgRhkJ1tp9PPVQtgO3bqenDSayWkK9nfeaV0g2b+mRPx2yU8BZH6PFkZX6AyCQH
         DBlhZf7MBOJDj/xpKFT8xV7FxIlICJhXygkvUose+OiK0hnz2wPiP8ucQcbMUtBaCvxy
         6rZXBi7C8loDV2EWHOucIGQwJw4HfRQcVPz5pdW5ytR3amJT7E+VHXiJE2+jxIomVVnG
         nbWMxvKGNgG0cX1e2QslGFMhIT7WU8Pk2wO11MheK2H1+HY7ngxDwiLGFqRSi7oquaWX
         IJ1g==
X-Gm-Message-State: AD7BkJJg4JKlymJPDEvY02ZQbeHKOOkm0Mwg/pUQlDzeqSEUYGCw63fRQo7HFEoK6orHbA==
X-Received: by 10.98.19.215 with SMTP id 84mr44013422pft.22.1457462110192;
        Tue, 08 Mar 2016 10:35:10 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.19])
        by smtp.gmail.com with ESMTPSA id b74sm6328017pfd.24.2016.03.08.10.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:35:09 -0800 (PST)
Date: Tue, 8 Mar 2016 16:05:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: slicoss: Use sizeof structure *pointer over
 sizeof structure in kmalloc()/kzalloc().
Message-ID: <20160308103537.GA3305@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof structure *pointer over sizeof structure in kmalloc()/kzalloc().

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index acf73f0..ed1c067 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct adapter *adapter,
 	struct slic_upr *upr;
 	struct slic_upr *uprqueue;
 
-	upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
+	upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
 	if (!upr)
 		return -ENOMEM;
 
@@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct adapter *adapter, char *address)
 	}
 
 	/* Doesn't already exist.  Allocate a structure to hold it */
-	mcaddr = kmalloc(sizeof(struct mcast_address), GFP_ATOMIC);
+	mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
 	if (!mcaddr)
 		return 1;
 
@@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct adapter *adapter)
 	}
 	if (!physcard) {
 		/* no structure allocated for this physical card yet */
-		physcard = kzalloc(sizeof(struct physcard), GFP_ATOMIC);
+		physcard = kzalloc(sizeof(*physcard), GFP_ATOMIC);
 		if (!physcard) {
 			if (card_hostid == SLIC_HOSTID_DEFAULT)
 				kfree(card);
-- 
1.8.3.4


