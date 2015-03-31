X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.3.70 with SMTP id a6mr8164016laa.0.1427796278821;
        Tue, 31 Mar 2015 03:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.68 with SMTP id la4ls138131lab.25.gmail; Tue, 31 Mar
 2015 03:04:38 -0700 (PDT)
X-Received: by 10.112.122.97 with SMTP id lr1mr7013093lbb.5.1427796278147;
        Tue, 31 Mar 2015 03:04:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id sf8si749561wic.2.2015.03.31.03.04.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 03:04:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id o5so7372977wix.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 03:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=jQSMLQYy7gAEvQ+jstdQs2HANXoybLEurBzx6zRSz9c=;
        b=Ts+tPvshybFBPOVb+rkzHNqOuLT5suQE3j2JXaPeG9I+YlmHKVOtXyHS/YFiUbia5O
         deIv+o3rPMFLUxrtLTX5uc9uB5YnlnH9EN22UpBMyUplG4ivxmhT8NCcyLc4/40jVzz2
         YCSn9l8JsVa3Odn9qoZ8aBcIOvJADNcPxtW5n7EV4qvRr1IuqqWdpL/Uze4m7s1Z3biy
         lN8fbK+oob2fCcLCORnFJVjoj6/+7dxIKGnF/snnOtd4VzLVBztZFwRSCyQ96YCpLjlA
         371iI9YkF5psLaPiLrC55SRtKacCN+y68Vu4gWUaO4YK5gtWyjLTJQYuRG1j3RHSKoy2
         cFaA==
X-Received: by 10.194.83.134 with SMTP id q6mr68870905wjy.35.1427796278056;
        Tue, 31 Mar 2015 03:04:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hw7sm19614571wjb.24.2015.03.31.03.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 03:04:37 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:03:38 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/7] Staging: iio: impedance-analyzer: Remove explicit
 NULL comparison
Message-ID: <bf27ac1a6fc84742739411db7fb54bb7628d3ea1.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
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


