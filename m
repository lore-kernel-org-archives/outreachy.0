X-GM-THRID: 8101368430592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,48466289b938ab93,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.63.37 with SMTP id d5mr36172479pds.3.1426264542547;
        Fri, 13 Mar 2015 09:35:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls1834679qgi.34.gmail; Fri, 13 Mar
 2015 09:35:42 -0700 (PDT)
X-Received: by 10.236.8.69 with SMTP id 45mr33387230yhq.39.1426264542367;
        Fri, 13 Mar 2015 09:35:42 -0700 (PDT)
Return-Path: <exhora.tat@gmail.com>
Received: from mail-qc0-x22f.google.com (mail-qc0-x22f.google.com. [2607:f8b0:400d:c01::22f])
        by gmr-mx.google.com with ESMTPS id z1si333923qcn.2.2015.03.13.09.35.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of exhora.tat@gmail.com designates 2607:f8b0:400d:c01::22f as permitted sender) client-ip=2607:f8b0:400d:c01::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of exhora.tat@gmail.com designates 2607:f8b0:400d:c01::22f as permitted sender) smtp.mail=exhora.tat@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22f.google.com with SMTP id r17so27803754qcw.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7YTUU2c4WgxWvIh2i5jWiCfunw32rHlzh6cWSqR1Syw=;
        b=eJ8Gi/Enn2FdeRqDcj/MGVmL/INwFVCP9y/LSs5nnTuPNPYdV3Sy+Rcg8Ew6Dz/RfY
         +4agqYzWMRoUDSj4k+6YR6oeeHp41ypJVzpPQ1Jzn9MJ3k1bLGJIuTMc2Ax3TPMokH6S
         3DTuyFe8tRalR7rln4rRIwxebfWcUJgmZ9t2XWqSAAOqXMn0aiQS5Ptnq1WohKAgwfrt
         8sWSMT262Iq2UxVUtqpfW+tu10hEM6QD5JVhdrt+DHX+xRWXot5BpTLfaYTIdOaOIzcs
         3SF+SDg3QqBPscMEGGQ3s1H8qHkbF4+dx5AadSdUno5ziJA2J5sN9ug9f6XsUrXK6yYj
         nI6g==
X-Received: by 10.55.42.39 with SMTP id q39mr79039103qkh.99.1426264542268;
        Fri, 13 Mar 2015 09:35:42 -0700 (PDT)
Return-Path: <exhora.tat@gmail.com>
Received: from localhost.localdomain (athena.ime.usp.br. [143.107.45.11])
        by mx.google.com with ESMTPSA id 8sm1707681qgk.33.2015.03.13.09.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 09:35:41 -0700 (PDT)
Date: Fri, 13 Mar 2015 13:35:38 -0300
From: Taiane Coelho Ramos <exhora.tat@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: ade7758: Remove braces on a single if
Message-ID: <20150313163537.GA3066@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch.pl warning:

WARNING: braces {} are not necessary for single
statement blocks

Signed-off-by: Taiane Coelho Ramos <exhora.tat@gmail.com>
---
 drivers/staging/iio/meter/ade7758_ring.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
index 9725a04..ead38a5 100644
--- a/drivers/staging/iio/meter/ade7758_ring.c
+++ b/drivers/staging/iio/meter/ade7758_ring.c
@@ -119,9 +119,8 @@ int ade7758_configure_ring(struct iio_dev *indio_dev)
 	int ret = 0;
 
 	buffer = iio_kfifo_allocate();
-	if (!buffer) {
+	if (!buffer)
 		return -ENOMEM;
-	}
 
 	iio_device_attach_buffer(indio_dev, buffer);
 
-- 
1.9.3


