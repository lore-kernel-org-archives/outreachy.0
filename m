X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.44.167 with SMTP id f7mr5688897lbm.9.1426359133061;
        Sat, 14 Mar 2015 11:52:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.131 with SMTP id bg3ls357515wib.35.gmail; Sat, 14 Mar
 2015 11:52:12 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr2266743wiy.1.1426359132580;
        Sat, 14 Mar 2015 11:52:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ew13si365098wid.0.2015.03.14.11.52.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id dy8so10126584wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3w0/uSRLSizP985fXEfGsA61RccaSzkYMd9IfPipM5Y=;
        b=yfHQHGWElOebIFv1b5TsoiSAbTueJn6TtiZSVaoGhBBHHvaIXzHAgYbRS6qjELUCrJ
         liu+tFmEG4nzJfxIiTdPEm3cFhCQUmdGi/vwk9KDAes5cMRF0t9f1pqUAxQbPiQbGsdR
         IaMeQYSyN41yfzuwNBSr6vemKRRDBM3/zw1W8rdTLtE2xMw3bCM/xZj8xDr8ZjhekU0d
         WCVp7RlsyNvpmoXhUH2i7pnbKLoeKIyPfqQmNhH0GCK/x2dhVvYl1dG/l7P9hn4KCHHZ
         /VV2y4XVTk779g1GzyXsPFgnJ7GCIyYbbr+WbLW58q4q9yK4WkHK8ccGiQAgZ9VwMbAV
         choQ==
X-Received: by 10.194.57.170 with SMTP id j10mr34765418wjq.102.1426359132504;
        Sat, 14 Mar 2015 11:52:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id e2sm8041425wjy.46.2015.03.14.11.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:52:11 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:51:29 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/6] Staging: iio: Do not use multiple blank lines
Message-ID: <f42745c64e9d174e8fd6603a6f0c9195ecb63810.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426353884.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary blank lines between functions.
Found by checkpatch.pl:
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 1 -
 drivers/staging/iio/frequency/ad9834.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 342c713..f06b14d 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -218,7 +218,6 @@ static ssize_t ad9834_show_out0_wavetype_available(struct device *dev,
 	return sprintf(buf, "%s\n", str);
 }
 
-
 static IIO_DEVICE_ATTR(out_altvoltage0_out0_wavetype_available, S_IRUGO,
 		       ad9834_show_out0_wavetype_available, NULL, 0);
 
diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
index 0a0de4c..40fdd5d 100644
--- a/drivers/staging/iio/frequency/ad9834.h
+++ b/drivers/staging/iio/frequency/ad9834.h
@@ -69,7 +69,6 @@ struct ad9834_state {
 	__be16				freq_data[2];
 };
 
-
 /*
  * TODO: struct ad7887_platform_data needs to go into include/linux/iio
  */
-- 
1.9.1


