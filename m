X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.219.102 with SMTP id pn6mr4193759lbc.12.1425358060544;
        Mon, 02 Mar 2015 20:47:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls524699lac.22.gmail; Mon, 02 Mar
 2015 20:47:40 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr4167312lbb.6.1425358060085;
        Mon, 02 Mar 2015 20:47:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id i8si25056wif.1.2015.03.02.20.47.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 20:47:40 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so37570212wgh.8
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 20:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7mlf5pvExxsWyADimR0QkMYhRHW9bvVMzegReon2ps0=;
        b=IWQDDoX1gbrIanHBs8kqnjWo+h0kKwQCl4ZQKe7fKUlyeckr56VKziiA9Pvvf79Jyi
         8wt13y6vWdM9s3QGqFjgCwKcrw0jvnojdkfy5ur6zjoUCWGOTTkY+A7CUCLIr4nApoiw
         cN1YHTPsvOcjFRqE92131ZpmFbgPxMWnYBdbtMeCbc6uqgIdIBNco7YMTEFynv9O4gvd
         pV6RCAIF1rr1u7wrkJ6qCPmB181nafkL9sodOnuLabEg7ae7mz/BfuB86oEryycFeNlO
         IHEYWzLVbktNzAor3NhhYitQtWLhKvEmR7G9HF0WYBojz4ILK+IBJ9lKVRtjZMK04aOb
         Vzqw==
X-Received: by 10.180.85.70 with SMTP id f6mr41396436wiz.22.1425358060001;
        Mon, 02 Mar 2015 20:47:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.4])
        by mx.google.com with ESMTPSA id lj13sm675566wic.9.2015.03.02.20.47.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 20:47:39 -0800 (PST)
Date: Tue, 3 Mar 2015 06:47:37 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: iio: meter: adjust function call to be in one
 line
Message-ID: <55796744480c8b6f72e12a50105b5db43b5bfa7b.1425356586.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Adjusted a function call to be in one line since it did not
exceed the 80 characters limit.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 029d223..950bc50 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -447,9 +447,7 @@ static int ade7758_stop_device(struct device *dev)
 			ADE7758_OPMODE,
 			&val);
 	val |= 7 << 3;  /* ADE7758 powered down */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
 	if (ret < 0)
 		dev_err(dev, "failed to stop device");
 	return ret;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

