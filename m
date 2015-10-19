X-GM-THRID: 6207482452562149376
X-Received: by 10.112.130.41 with SMTP id ob9mr7090479lbb.17.1445292140404;
        Mon, 19 Oct 2015 15:02:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.9 with SMTP id u9ls631554lfd.63.gmail; Mon, 19 Oct 2015
 15:02:19 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr7169090lbp.24.1445292139938;
        Mon, 19 Oct 2015 15:02:19 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id hs5si581313wib.1.2015.10.19.15.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id q8so19134559wik.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=06k7bQxMXbszrLtDG+T0p3O6DAHlffSaRelzdWYhDas=;
        b=DULryCwg6feA9Mi1xZJMG72Srsq8ic6qJCUtGQTl9Wci+G+eOtqRrHF2Fu5IWzyxjq
         rfq3c/EQXtRHiPZ2gcwd+EmsVpLgdtK85nmvn7i4JkWwg8wue88+RsIvnZUs+e2KxyZL
         7NMJiTx/ohYhyzOm2xeczAqy+q1Ys+e0gh8cftWFgchjuL/rBI9b97hsMTJfTbTUlE0E
         smOyo362iBIxiHh5kaPWRR7F0+S1ZqRsgmbUHPjbVIlVXXyevWHmgxzrK0hSCiGHmgAh
         hO6g2tMdwbEJX/o7T2jrBGUMQ1D3jY02Ei8oiXcXjBa7jyRZZy8ArgX0fs/pxa/X2cOA
         /KRw==
X-Received: by 10.194.205.131 with SMTP id lg3mr35872779wjc.20.1445292139854;
        Mon, 19 Oct 2015 15:02:19 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:19 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 05/10] staging: iio: accel: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:40 +0300
Message-Id: <a81e334ec2ea7121496eacb0723456586fe7208b.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/accel/sca3000_ring.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index 23685e7..6d19e12 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -267,7 +267,7 @@ int sca3000_configure_ring(struct iio_dev *indio_dev)
 	struct iio_buffer *buffer;
 
 	buffer = sca3000_rb_allocate(indio_dev);
-	if (buffer == NULL)
+	if (!buffer)
 		return -ENOMEM;
 	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
 
-- 
1.9.1


