X-GM-THRID: 9152848986112
X-Received: by 10.194.11.70 with SMTP id o6mr14891377wjb.6.1427049810658;
        Sun, 22 Mar 2015 11:43:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.225.132 with SMTP id rk4ls626542lac.50.gmail; Sun, 22 Mar
 2015 11:43:30 -0700 (PDT)
X-Received: by 10.112.41.131 with SMTP id f3mr15109070lbl.20.1427049810068;
        Sun, 22 Mar 2015 11:43:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id bz6si323896wib.3.2015.03.22.11.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id k59so121256652wet.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3g7xTn+VE94DBoEO4N1SLzz0Iv78jbQkheMzfaJEWJg=;
        b=DVti8Z1jcFpjVuvpPON1ki1luNJ0N0CHAUJyspc0nrdhFIRDRdO4m3br5jqcmCYERX
         4oBxctTrCR/zIXbj34/gEe56LzHny4lTj1HGHKzYnXJawIdQugbHZBzcYXjp2Yb6eeh5
         Awir9BxqHn6iP261jW2Aq1GGi+tr7UQcMAkk20WwsXpEznStz8inRE6CTLuiuKj4nf8Q
         /2wt7vi8afyZIXdu8zcIRn1qGkxKiF+q5NCjugeR91FV9n3y3BQ0qjQRc77z0nLFjju4
         Ugduo8teb7l1nhwWKBb62aF44245cdGP2okHd8yMcQi87iit9TWfgQ4ANLcosQjPRtUY
         zKPg==
X-Received: by 10.181.27.199 with SMTP id ji7mr12958936wid.76.1427049810001;
        Sun, 22 Mar 2015 11:43:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id nd15sm7641324wic.8.2015.03.22.11.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 11:43:29 -0700 (PDT)
Date: Sun, 22 Mar 2015 20:42:42 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] Staging: iio: Place driver in sleep mode on error
Message-ID: <08db25d86b42ef0328144d67c8e72d1cd105229a.1427048820.git.cristina.opriceana@gmail.com>
References: <cover.1427048820.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427048820.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Put device in sleep mode if an error is encountered after
initialization in order to avoid wasting power.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 0074af2..6f6e96d 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -611,7 +611,7 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
 					 hmc5843_trigger_handler, NULL);
 	if (ret < 0)
-		return ret;
+		goto buffer_setup_err;

 	ret = iio_device_register(indio_dev);
 	if (ret < 0)
@@ -621,6 +621,8 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,

 buffer_cleanup:
 	iio_triggered_buffer_cleanup(indio_dev);
+buffer_setup_err:
+	hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
 	return ret;
 }
 EXPORT_SYMBOL(hmc5843_common_probe);
-- 
1.9.1


