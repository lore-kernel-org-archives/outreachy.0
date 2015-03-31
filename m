X-GM-THRID: 10349433585664
X-Received: by 10.152.19.67 with SMTP id c3mr8143595lae.7.1427795530099;
        Tue, 31 Mar 2015 02:52:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.163.36 with SMTP id yf4ls679167lab.43.gmail; Tue, 31 Mar
 2015 02:52:09 -0700 (PDT)
X-Received: by 10.112.180.74 with SMTP id dm10mr8309390lbc.11.1427795529614;
        Tue, 31 Mar 2015 02:52:09 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id a14si482716wib.3.2015.03.31.02.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 02:52:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id o5so6922342wix.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 02:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HOoutvX0lrBvrhEqG3LQvS8jeJYRP+L2K2vuoKh3Cno=;
        b=VuyzDEaPTdL9cFrr/ei6w9QgU+S5hqsHy3y/6cRIHxpwLbZlA4sZbD8FpwOzzS7BEp
         UynKUi6CMyno+y5A4HZJjpJtoLhyCERCZiXobP++F6SsE+UI3VTXNQbIJn3E8xpoB/Me
         sGG8OSgy/ufvCCjWOuDtago7ezrYSNRZTZ545LAymXwp+7Xl5GtysMkygRlycp6OvJ6S
         Kd53VLxc5YYdgxxmjqhaJP4tmIYfYmkhWyR92c9YYqTFy05J+J1SGtTsYnGnoeQg4XvR
         eIoGP+x9AoX7uelm+dACqJTTFpQbcx6jMdT49AExRv+V9O4xInbAgtHMQFHOJym9+mhw
         j9kQ==
X-Received: by 10.181.8.76 with SMTP id di12mr3930325wid.75.1427795529504;
        Tue, 31 Mar 2015 02:52:09 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id i10sm19559018wja.40.2015.03.31.02.52.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 02:52:08 -0700 (PDT)
Date: Tue, 31 Mar 2015 12:51:10 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/7] Staging: iio: iio_dummy_evgen: Simplify NULL
 comparison
Message-ID: <4c977f27e47e5beb42876090b9e4b372ad40a2da.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove explicit NULL comparison and write it in its simpler form.
Replacement done with coccinelle:

@replace_rule@
expression e;
@@

-e == NULL
+ !e

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/iio_dummy_evgen.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/iio_dummy_evgen.c b/drivers/staging/iio/iio_dummy_evgen.c
index 59ad5a3..0c9c86d 100644
--- a/drivers/staging/iio/iio_dummy_evgen.c
+++ b/drivers/staging/iio/iio_dummy_evgen.c
@@ -72,7 +72,7 @@ static int iio_dummy_evgen_create(void)
 	int ret, i;
 
 	iio_evgen = kzalloc(sizeof(*iio_evgen), GFP_KERNEL);
-	if (iio_evgen == NULL)
+	if (!iio_evgen)
 		return -ENOMEM;
 
 	iio_evgen->base = irq_alloc_descs(-1, 0, IIO_EVENTGEN_NO, 0);
@@ -105,7 +105,7 @@ int iio_dummy_evgen_get_irq(void)
 {
 	int i, ret = 0;
 
-	if (iio_evgen == NULL)
+	if (!iio_evgen)
 		return -ENODEV;
 
 	mutex_lock(&iio_evgen->lock);
-- 
1.9.1


