X-GM-THRID: 6528703529529376768
X-Received: by 10.157.20.134 with SMTP id d6mr443279ote.31.1520094325354;
        Sat, 03 Mar 2018 08:25:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.185 with SMTP id b54ls6718589otb.0.gmail; Sat, 03 Mar
 2018 08:25:24 -0800 (PST)
X-Google-Smtp-Source: AG47ELuz3DcBQRXopagK9SN7l1cbHD8ycA478lHEytk4vPWV0r8DXbfVGTj26mKaHDval1hDuFo7
X-Received: by 10.157.83.196 with SMTP id i4mr434943oth.30.1520094324414;
        Sat, 03 Mar 2018 08:25:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520094324; cv=none;
        d=google.com; s=arc-20160816;
        b=YL7cWd7Py4HlYdKORM6VCmJ8faxZupVZk1p+9E9CYIjU02XMxNjETbuV46yrZoGn2y
         ox6E0oWo5mlpCY2bu5d4/8PKYcLkAoIojEzFt09gJ4Mr2Ept0mh2+mlwhVHiIYVC1rN+
         lKm3lrwWGdeq0dncdKHry0CFYHLiJimAZ/ogKcPTRzN1F4QsCwmTbXL5a0AtLHpbiNJ6
         t04N04fFHvkBlbOZu5i9/ZuS8GFlIyhltjY4gMYVXifZM0r8S82rCQHKbGYZEahz3HR3
         ck4VuLcMCAvh6ULUq0aidjw9q2VVuXiIJAnOAlSeSp/XAeZS1TcHS+1Sj96tF2db9i1j
         3FAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=jAoRDVk9MoJjPtavbOkBMRGgEROpWxXEBz5fKKpM5+I=;
        b=oiBtJ+QF2OrcMI8Aib0k2Q17AuxPc6UJWMWKB2HPu+OJMimDYcXzCGWUrT4MMc6t09
         vWWg7C63z3/Y/oPwhnYBeBCI1+QSL1GTfOM+Q3X+Jmw17PKx51TXeVnmKMA3ybdlY0r7
         wsI0H6kL6WLpR7Sy7lGd5TS2EXxBDcE/knVGVrwEv+VG6JVbcu1DTDUUjES+2QUZ7FRV
         JECRTn5siwSWMnT7LWUAVA8x4u025euBEo9Nt3d5iVNb+UF3pwy2xcMBl5Bw8ll7eiKx
         oCIGFL1AiJk7o9VOaek4ag03VowJqI686Ts0DS5jbOFLbNJGmjagDOHYROk7U6UcBgtY
         mZwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HY1H7Ob/;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y81si689608oia.4.2018.03.03.08.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 08:25:24 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HY1H7Ob/;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i133so5048816pgc.12
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 08:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jAoRDVk9MoJjPtavbOkBMRGgEROpWxXEBz5fKKpM5+I=;
        b=HY1H7Ob/Pm8AaMh7KZFLLb9hSuoMN5RiRxaNhIigE5NCZ7GMIrI3Vyp331jt3UFBlq
         j9DU71DHYWssH+rrROvx1blbqSHuuSz51B4Aa7rx9cf2UBvSgvZFbj698nkkbBLQhbSn
         cPTfYc3sLALE+IkOR79/6lfNye6+B9c+k6tGztPVeA7E+Kqtup7P7DeNzKGoX3+EWGOL
         iuqgKafnMC0cQHuVvD/vusvIAzv43xcQKnqkFhzsuO0VVmSE5S1UxZnjOIc+aE83oB7x
         Ngfs5rdJHR9eSzZlfVHAFpL+m98tbKXXUqrHD70vFh4FiqKYEgIre0npDrfr4lsnDGCK
         C3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jAoRDVk9MoJjPtavbOkBMRGgEROpWxXEBz5fKKpM5+I=;
        b=lF7HhrfDeFMdsgkI0h9/51WUuosPsi1vT5QqCKeuVXkxzQpqA5tq/a6eT5Zg8GSdyY
         6qgOEr/wt5dVkhh3Vyh9BhqhSW6ZT9ABlUGfZPTyuarvrzx3qIIW2yhQTFS9vnFtG9KL
         RoKG/k1m438iZl6JkWhNu4ICABQ08NzTElhgMg47rxO6UiaoUfWzyghAX0RiOGbwsTdw
         vpFXqlP1t9FRg+y3tvvlG/c8v/y3d89x2f8ihy9MzbFr3ISIuCHh/9kp/4Zolg2xdsw9
         Mswch8eibFvhPcwbsObwzvojgik9ZmnJfcPCKzHhu3ZIR2ZwUSq+YD23q1XCaKP3sCCR
         Sb9A==
X-Gm-Message-State: APf1xPBPj5tOoLMVwhH43bnTt5ldLXlazC+WCFt43IIPB0eXrbhvZLxc
	x73LwJD+/or+zN97rdlZVox2Gw==
X-Received: by 10.101.93.134 with SMTP id f6mr7733182pgt.293.1520094323229;
        Sat, 03 Mar 2018 08:25:23 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id j23sm4644965pfi.78.2018.03.03.08.25.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 08:25:22 -0800 (PST)
Date: Sat, 3 Mar 2018 21:54:57 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: dennis.dalessandro@intel.com
Cc: Mike Marciniszyn <mike.marciniszyn@intel.com>,
	Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] infiniband: hw: Drop unnecessary continue
Message-ID: <20180303162457.GA21730@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Continue at the bottom of a loop are removed.
Issue found using drop_continue.cocci Coccinelle script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v2:
- Braces is dropped from if with single statement.

 drivers/infiniband/hw/qib/qib_init.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
index 3990f38..6c68f8a 100644
--- a/drivers/infiniband/hw/qib/qib_init.c
+++ b/drivers/infiniband/hw/qib/qib_init.c
@@ -678,11 +678,9 @@ int qib_init(struct qib_devdata *dd, int reinit)
 		lastfail = qib_create_rcvhdrq(dd, rcd);
 		if (!lastfail)
 			lastfail = qib_setup_eagerbufs(rcd);
-		if (lastfail) {
+		if (lastfail)
 			qib_dev_err(dd,
 				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
-			continue;
-		}
 	}
 
 	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
-- 
2.7.4


