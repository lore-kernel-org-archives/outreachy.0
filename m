X-GM-THRID: 6403369104322854912
X-Received: by 10.99.152.68 with SMTP id l4mr490617pgo.84.1490900550410;
        Thu, 30 Mar 2017 12:02:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls804317otc.30.gmail; Thu, 30 Mar
 2017 12:02:30 -0700 (PDT)
X-Received: by 10.129.44.69 with SMTP id s66mr512077yws.132.1490900550009;
        Thu, 30 Mar 2017 12:02:30 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id n127si350060ita.3.2017.03.30.12.02.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 12:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o123so11898119pga.1
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 12:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cypOsTsyOazEq34SvxKPBoh+GPA1h/8AHiE5sA1gF3Q=;
        b=JKN+DcyaC1l+EOsUoDMdKVftpuIDK60Z6FPd4zjauxdS37S3Y3lf3hsqrDvtm5yH+E
         cLZkm7OFMglir8MDbk7oUM5TAvNOzEzEKxpbCgHxJ2x3UQmLhozyeNHnXJUC7hRqXeH6
         MSIvO+lt4kzVaYdog26kfc00LtiS5AucsLrCXYO4jRqaHhPwZAfpLQ/Qn41OiuqJcbIb
         cxVqehgXFKFhjEqVVlec4pUm38HohRyXT+Olswd8u4Z1oG5WoE+0Q6RJ2CDftPD/Zp4a
         rb/snEUhdN8IsvHcSCwUN7vz+QrviqHyOZI8cearJ0CCjXuoykuDX/ewgkCKf2S3UlFI
         kI5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cypOsTsyOazEq34SvxKPBoh+GPA1h/8AHiE5sA1gF3Q=;
        b=SH2WQ7pOPYDa66uWOsnyd8pBjLndQWgV1siSYUOoZqtNyBAN29qDGW7RLDHuUdBvg0
         nu51RvXL10lVwoF+HK3JnDeiAISzva56enEfp8qpaSkjEFIYsanrny4AwpttJI3MUHwr
         rWMmRjPC3nAD+2FL5Q4esOYC7R/zYmUQiIk0074yby6lnRb9K8umXqfYn12SsxTykykK
         rcaHYPyeJpWzY53o+B5VzjE3CAW0XJ9C1G4+BhahDgk8MPDSzHuiGnw9G6YZ+Wx4gOe9
         mIr9er2arm+zKs8H6Zn5XXJY9eE3HQj/ruK1nF/owjoKF6JAICEoJCqluqONab7Yg4Wk
         poHg==
X-Gm-Message-State: AFeK/H38bY+iZQLv7e+qBt8hPYqhcF9GGHGGwhR+h5sdQoylmSuxjQrMTULMsJRbp9IEmQ==
X-Received: by 10.84.229.3 with SMTP id b3mr1008442plk.190.1490900549599;
        Thu, 30 Mar 2017 12:02:29 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f5sm5953822pgn.50.2017.03.30.12.02.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 12:02:29 -0700 (PDT)
Date: Fri, 31 Mar 2017 00:32:26 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: gyro: adis16060: Change the function's name
Message-ID: <20170330190225.GA18838@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change the name of function from adis16060_spi_write_than_read()
to adis16060_spi_write_then_read(). change "than" to "then" as
its time depended.
---
 drivers/staging/iio/gyro/adis16060_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index 8115962..9675245 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -40,7 +40,7 @@ struct adis16060_state {
 
 static struct iio_dev *adis16060_iio_dev;
 
-static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
+static int adis16060_spi_write_then_read(struct iio_dev *indio_dev,
 					 u8 conf, u16 *val)
 {
 	int ret;
@@ -81,7 +81,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
-		ret = adis16060_spi_write_than_read(indio_dev,
+		ret = adis16060_spi_write_then_read(indio_dev,
 						    chan->address, &tval);
 		if (ret < 0)
 			return ret;
-- 
2.7.4


