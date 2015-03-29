X-GM-THRID: 10349433585664
X-Received: by 10.112.198.34 with SMTP id iz2mr6998099lbc.22.1427642464651;
        Sun, 29 Mar 2015 08:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.7 with SMTP id o7ls246438lao.52.gmail; Sun, 29 Mar 2015
 08:21:04 -0700 (PDT)
X-Received: by 10.152.87.110 with SMTP id w14mr5208281laz.3.1427642464005;
        Sun, 29 Mar 2015 08:21:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id o3si458566wib.2.2015.03.29.08.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:21:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id a2so92938940wia.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HOoutvX0lrBvrhEqG3LQvS8jeJYRP+L2K2vuoKh3Cno=;
        b=dxWt8bcCUwEUdUFtqmn+iQTmbKPLBV0OsYNVe7LKCCnGod9H+OUkUiol2cwZauR1FG
         Qdg26Suq6c48qcmKwOgi7UEksn7LTr4c1ljXNMzVdqDvbg1B9HQzergr8oUWbEk08zs6
         IPe4a58KDPa1v+HjqYORzIB6DnCf8oqwaJuOc2AZ/rE13AOrArg0ZldErNQkxAxIBNZT
         kuHxhPyimWXdlYtnTCRpEWC9lJCsyr8anoJP6Lb12nkwvQXlq1miKXJ4VMpAFudI8hTQ
         qRIbVVPmRmm7GK9hM2QIA/iIsMT6WHdUUwN7YHAcV+efLTiQC+fto+chXqlo/YIq6ZIF
         JOjA==
X-Received: by 10.194.21.193 with SMTP id x1mr53782645wje.144.1427642463930;
        Sun, 29 Mar 2015 08:21:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id kr5sm11643132wjc.1.2015.03.29.08.21.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:21:03 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:20:06 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] Staging: iio: Simplify NULL comparison
Message-ID: <47ca1ece477a84c24e6c90ec101bdba874f425c6.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
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


