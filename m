X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.134 with SMTP id a6mr1922365wiy.1.1427642683002;
        Sun, 29 Mar 2015 08:24:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.198 with SMTP id ao6ls506320lac.103.gmail; Sun, 29 Mar
 2015 08:24:42 -0700 (PDT)
X-Received: by 10.112.98.38 with SMTP id ef6mr6727753lbb.3.1427642682163;
        Sun, 29 Mar 2015 08:24:42 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id sf8si424590wic.2.2015.03.29.08.24.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:24:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id m6so145857035wgd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=jQSMLQYy7gAEvQ+jstdQs2HANXoybLEurBzx6zRSz9c=;
        b=Mk0/Sl4zNXW0ft6tIwPf9t+okcdVJj5mMIY4tgaOOAKYZd+qPS0jj3gIWEx1+wPh73
         cBn58et9+uEDv0iPc/yTPxleG2uvwyhqMc507crDMuV+bh77Xso5xuc/GauHIv7SAVZU
         rHptqm5Nosh+5GHhG+2TAL+rkWZ4KZ9ornQBDEMCQ6h/u5+XjDhqz1HvG6I7vTqLpUQK
         duZW25UgjRoMQpvtVg5RCj5UETfP+9OQP8Ln4nLgyNbcmy2IRgbk+Yz/0rqZvXImNy0M
         wZklYDdy18PZbsLA3cZkjiygw7HmRj8o9Qu6GP1e8AqmKmIeO6dzoZs93gRY0jZ87gXW
         0m2g==
X-Received: by 10.180.75.73 with SMTP id a9mr14144379wiw.45.1427642682089;
        Sun, 29 Mar 2015 08:24:42 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ey10sm12253009wib.2.2015.03.29.08.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:24:41 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:23:45 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <80545dec8811606dab1d181c3d0e90da9b02081e.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit NULL comparison and replaces it with
its shorter form. Detected with coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 7919439..c18109c 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -703,7 +703,7 @@ static int ad5933_probe(struct i2c_client *client,
 	struct iio_dev *indio_dev;
 
 	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
-- 
1.9.1


