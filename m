X-GM-THRID: 6396911598060961792
X-Received: by 10.157.23.43 with SMTP id i43mr14192297ota.118.1489397044944;
        Mon, 13 Mar 2017 02:24:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls1437413itj.3.gmail; Mon, 13 Mar 2017
 02:24:04 -0700 (PDT)
X-Received: by 10.99.61.79 with SMTP id k76mr15112621pga.3.1489397044200;
        Mon, 13 Mar 2017 02:24:04 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si3014628pfa.6.2017.03.13.02.24.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 02:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so13028015pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 02:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=X+bG4NQIpneaZis4uKRnMCgd5da+yfh9/Q3WGOhm2pw=;
        b=teKzYDKu4K8wJxi+y+6z0ribF5ZMhNKJ/jmRScpAIwSjl/WfttZBuwc0WsI7BY/oxa
         B4nBiQI6gdkKwHBXnvYxce7Yvsait3fhpWlLKHksNRmErbDDKuXdVGIoGpbkapqOODxu
         Y0NIWDDK7ZT7C2PPPudeXEzxOz6uIY2TLB2CCjwSFA6OqbIq/vju+y796mngCIVSMn3t
         LJB3mpkbTNFCaD+ens25r2WhDiKmDCUY/NNR5CpU0RZTTG/wQzUY0Fc8LlPYJxMtiwqN
         pjUm/Ld/Ko+/nGN7wKdOD54TNZ56t6bQuv/6u6XJJ5iQ1diwl/4IEvDAL7cDupaj2Jy4
         4RJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=X+bG4NQIpneaZis4uKRnMCgd5da+yfh9/Q3WGOhm2pw=;
        b=nbig4yfSSdt3lpC3iNvb9foOKXCVhApNtKdrr6pu7XoabpJ9s1EvVEPP390reESnC0
         LCztDuuUmEMbc3YR5sAS0XcSyj7jkTwiYX9aN+xptuUExReOAcxA/iCC0VdbebxxlTQD
         jjOE7FI5hoNIVKxxOWKke2p/UA+7razNYcUyphD6O2yNKWxO6Wy+ZD1s1QCZpWStw0yp
         /Do93sC2Jv++oJ5vhAH9wn+/T9nd9gTZia4lEV9JeYtDtXd64Cu1hndcKyfvPuh2c9Za
         8CuRaJ+Hg2XeoSQfTU+hTuUXvXXuNFbPZthpMIm3GziAoBRs2Bqw6/YrTa1A7JRtkv1Z
         8O3Q==
X-Gm-Message-State: AMke39lqScIOu7zQ/q9dfeKdO3WlnlmekMx+AggErVzb0zaMmWEJhze2Ebt/AZITkUsa5Q==
X-Received: by 10.98.214.4 with SMTP id r4mr36924311pfg.185.1489397043859;
        Mon, 13 Mar 2017 02:24:03 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.132.44])
        by smtp.gmail.com with ESMTPSA id d63sm31940507pfg.132.2017.03.13.02.24.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 02:24:03 -0700 (PDT)
Message-ID: <58c66533.42d5620a.3e22a.3a06@mx.google.com>
X-Google-Original-Message-ID: <20170313092357.GA14267@<rvarsha016@gmail.com>>
Date: Mon, 13 Mar 2017 14:53:57 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>, linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: iio: adis16240: Modify existing comment.
References: <cover.1489395260.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489395260.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Modify the existing comment to reflect the changes from mlock to
txrx_lock.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index c182b2d..aa3030c 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -231,7 +231,7 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct adis *st = iio_priv(indio_dev);
 
-	/* Take the iio_dev status lock */
+	/* Take adis txrx_lock to protect sensor state */
 	mutex_lock(&st->txrx_lock);
 	ret =  adis16240_spi_read_signed(dev, attr, buf, 12);
 	mutex_unlock(&st->txrx_lock);
-- 
2.9.3


