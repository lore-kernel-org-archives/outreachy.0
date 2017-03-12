X-GM-THRID: 6396588867730800640
X-Received: by 10.99.137.193 with SMTP id v184mr14065376pgd.69.1489321903560;
        Sun, 12 Mar 2017 05:31:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.202 with SMTP id g193ls1035963ita.15.gmail; Sun, 12 Mar
 2017 05:31:42 -0700 (PDT)
X-Received: by 10.99.110.73 with SMTP id j70mr13578757pgc.143.1489321902840;
        Sun, 12 Mar 2017 05:31:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si2674742pfd.3.2017.03.12.05.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 05:31:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so15220092pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 05:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=7B0/oiTfiBFhWQrrHMwkejIWoZ+PV7ajRjvzaUg+rj0=;
        b=sSS3Y1pgaPuoDM8G84iIKlNiNZjXiYHg+Ohi+I7y01YcGgTNwjAWl6fkEuH8cdmWD5
         x+TFoeDuSXq4zK2nNz61H8DOaos1Rz9w2j0xZIjCrrgOUTn9U9yWrTVWISz4sY/J+FPt
         l6BwMeWbNVTHdm/XfiRoExTKyvLutG155BdB/faoQ8hAxOp67iMP7SOmXrRk5Lj6Tlwl
         ya1THbyT8bC5mKLqlu1awiCOBLayS1E0Muqv+BqPvNv3kjoOEsX1nq2G9AqBqHqZznuK
         oqRBnw8q5ediOiVnlR2wndXy8AIvCDe59s+PQHAB9SRyZk3Opel0yv2knn+t3wYUDhZW
         Qlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=7B0/oiTfiBFhWQrrHMwkejIWoZ+PV7ajRjvzaUg+rj0=;
        b=hMDFkwiQsmn3qjiqTpBUxs+gjpxpP2U3jksGH+sqPPwH1n3WFU8lulq3wrlj+/I0AS
         HcZdUdZGpE98VoMNgqQxw48JIm8U7kb9Hh+yXaghZb0MoNB0y3BC8ir28rQ6wHt+ANdd
         U+XDefAVCkUZWuO1k5UuKhongVBmOkASSTeTPSLYqpTluJ2l0yh/N9rvF6GG5FSFAHoS
         v/PGF6EgZiTWO2ZBx6p2LJSVxYAjzAklszFr1eVGLZ+u2WKx9HzEByltTsBFubk55sJM
         zNjBDGtEpu3ejmuAt7OiMbrD76CnSm4sX2MfSF383VmBi8sGkhVsPGISqjjcx9ZzfZVB
         ad0g==
X-Gm-Message-State: AMke39kbSikZe2ku7XHtz206rZWR1yZJIzzJf4l+1LvODJldT6PR3ai+RT6Fu+7hMz8aBw==
X-Received: by 10.84.225.22 with SMTP id t22mr40098914plj.14.1489321902522;
        Sun, 12 Mar 2017 05:31:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.194.58.130])
        by smtp.gmail.com with ESMTPSA id e68sm28250055pfa.85.2017.03.12.05.31.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 05:31:42 -0700 (PDT)
Message-ID: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
X-Google-Original-Message-ID: <20170312123135.GA15252@<rvarsha016@gmail.com>>
Date: Sun, 12 Mar 2017 18:01:35 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: Compress return logic into one line.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Simplify function return by merging assignment and return into a single
line. The following coccinelle script is used to fix this issue.

@@
expression e,ret;
@@

-ret = e;
-return ret;
+return e;

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/comedi/drivers.c             | 3 +--
 drivers/staging/comedi/drivers/cb_pcidas64.c | 8 ++------
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
index a5bf2cc..76e399c 100644
--- a/drivers/staging/comedi/drivers.c
+++ b/drivers/staging/comedi/drivers.c
@@ -86,8 +86,7 @@ static void comedi_clear_hw_dev(struct comedi_device *dev)
  */
 void *comedi_alloc_devpriv(struct comedi_device *dev, size_t size)
 {
-	dev->private = kzalloc(size, GFP_KERNEL);
-	return dev->private;
+	return kzalloc(size, GFP_KERNEL);
 }
 EXPORT_SYMBOL_GPL(comedi_alloc_devpriv);
 
diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index 3b98193..be65f71 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1394,9 +1394,7 @@ static int set_ai_fifo_segment_length(struct comedi_device *dev,
 	writew(devpriv->fifo_size_bits,
 	       devpriv->main_iobase + FIFO_SIZE_REG);
 
-	devpriv->ai_fifo_segment_length = num_increments * increment_size;
-
-	return devpriv->ai_fifo_segment_length;
+	return num_increments * increment_size;
 }
 
 /*
@@ -1417,9 +1415,7 @@ static int set_ai_fifo_size(struct comedi_device *dev, unsigned int num_samples)
 	if (retval < 0)
 		return retval;
 
-	num_samples = retval * fifo->num_segments * fifo->sample_packing_ratio;
-
-	return num_samples;
+	return retval * fifo->num_segments * fifo->sample_packing_ratio;
 }
 
 /* query length of fifo */
-- 
2.9.3


