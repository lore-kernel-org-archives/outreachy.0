X-GM-THRID: 6528703529529376768
X-Received: by 10.107.199.195 with SMTP id x186mr5154615iof.98.1520082245386;
        Sat, 03 Mar 2018 05:04:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.94 with SMTP id m91ls2214562iod.11.gmail; Sat, 03 Mar
 2018 05:04:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELtfzSjwoE3a7OFzKOFbmpkKm6m4pfh0s8Xu+ExMIiGLm4LXz9YZlHRK62+a2L1PqCDPj6nU
X-Received: by 10.107.7.130 with SMTP id g2mr6213866ioi.139.1520082244230;
        Sat, 03 Mar 2018 05:04:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520082244; cv=none;
        d=google.com; s=arc-20160816;
        b=wPG1h3v0AsMNvGlaGEHRu6NgQctYK//pCFq6giBuyqIIgO2ZlTsTv36p4YGyPPnC5D
         T0UHvdRRooSzCzsoaT1BOwpRB4Fx5g5CB6rnpjaqU0+fx726pS1HY0THBlMHs4DhmDG2
         ur+sND0YDpVwy5+I/FWiZhLpO5oYlEQXSKi/ffgTNYu7LYQSDYA8a5NTi5ruuobPFaaK
         5491MmQDyRrVKVoEDbT/G/PWoqY/VdmV//7rckdZlSZ2TFp/jyvnH6JBbZJBfJKjj/uF
         LNR5LwrGG1KKtkFbT44WggFQxBUSih2oYz+9SACQALkLz1W/QRdcAoRIwKJTZQ+Mf5Do
         F/MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=6Kc3nu+Og7Ox1yaDfazBbKTM7lbK18QGdkuY70ZKhk8=;
        b=eAKNmI4jJRiAPu2S3hkh8V186xHeiNGf0R6PBr9OKbrik156iy4tkT1Skau2ER34G+
         90CnSvo2Mo5tx93/tIrrAu7oPXXeay5gXWauvUWzHBc/sUbDXaWeR+5IwfyFrU1wSKXS
         4c0KQ1u10oj62E0suODZyk4yJr3+Ro7Ayrp3GlHszhhCerAQQekQYYqxLhdTBU/5R3NP
         EoHwhuMWDp3K+KbKaR+OvloteJYe85EDVAaMZZtITwGWJlZ8o3bswULE5xoiHewtAmj/
         Gj9vtMx97HOizro8PeYgF1IqWyoM4yhGeLF+4OxXPoySXnr8D1GyVg29c/R5md1wrLwy
         DT0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PgBPDVAw;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id o185si184217ita.1.2018.03.03.05.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 05:04:04 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PgBPDVAw;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i14so4928731pgv.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 05:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6Kc3nu+Og7Ox1yaDfazBbKTM7lbK18QGdkuY70ZKhk8=;
        b=PgBPDVAwmPvWXE9XLuHyRr7MFZiuSG1b2LBc1XgnvDgFf6dW5ErjntVIMN7XeKO0Vb
         4uMyk7WGONQ32xdPQbK9Z4ZBTAEFPecEagSG9NYpRnGlQonszL5S9BtgcGTkKpgR/5N9
         CZw+PhYUMvoAcMbCkft0mB9OAgWvW5f7SB/kEyy/hTr6Wv1Glph5pCzq5t2gk07Ylu+C
         XUe82k5Or7x9ilpE6j+aw4RyXKiRq2Uzqf6jHgxs3OLcm7QQ7UB57i0Co6pgKIzgKnaB
         d05n7/KuBbimXjZLlpnmY3lm8vJhZUHqHvmFcwEC7LiLJtJPRlJW/06G0YXJgJ6cw1il
         RBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6Kc3nu+Og7Ox1yaDfazBbKTM7lbK18QGdkuY70ZKhk8=;
        b=f+wQdPwL+Og4gtbMhWJnycMo2FoPLPW92Hsyksfslz94rVjKfyMk6W9/lkEaZWQsvd
         vz75tdR+Hffoh0zvHC9PV6rjM/ZrdMDNpu+C6vpzvNk8J2QaNYSdisZ90ex8F6+U1aqR
         OVNXWbfp+VaLN00IPBSfz4/P1R3nWC19Vrj8+gB/1wkgO9b2KGTt/IIK4Kvu37ZFFnid
         rkKOECJd0dEBeQPk3Pdn4Dxlv5vIsv1G66G3pIPmKihWlgutACZlBD8Ubo41t125QeGU
         DvS79xtTdepxOBD8fj00Ec4Ym6Cj2uOKIcbPWn8wiTCb8lj6m9liKbehgawSmvo4euOY
         fq/g==
X-Gm-Message-State: APf1xPDP3PR8wmAVr37OyArWNELdCLfBXDUELB2yLD7hmG/hdKkHhoad
	Y9bvr3089XIryhOfwRwtdfFiMQ==
X-Received: by 10.99.62.136 with SMTP id l130mr7179534pga.28.1520082242974;
        Sat, 03 Mar 2018 05:04:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y18sm16063660pfl.146.2018.03.03.05.04.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 05:04:01 -0800 (PST)
Date: Sat, 3 Mar 2018 18:33:36 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: dennis.dalessandro@intel.com
Cc: mike.marciniszyn@intel.com, Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] infiniband: hw: Drop unnecessary continue
Message-ID: <20180303130336.GA8210@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Continue at the bottom of a loop are removed.
Issue found using drop_continue.cocci Coccinelle script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/infiniband/hw/qib/qib_init.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
index 3990f38..1bd3b32 100644
--- a/drivers/infiniband/hw/qib/qib_init.c
+++ b/drivers/infiniband/hw/qib/qib_init.c
@@ -681,7 +681,6 @@ int qib_init(struct qib_devdata *dd, int reinit)
 		if (lastfail) {
 			qib_dev_err(dd,
 				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
-			continue;
 		}
 	}
 
-- 
2.7.4


