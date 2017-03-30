X-GM-THRID: 6403272126352064512
X-Received: by 10.31.3.99 with SMTP id 96mr1841906vkd.30.1490877970735;
        Thu, 30 Mar 2017 05:46:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.28 with SMTP id a28ls6582712ioj.21.gmail; Thu, 30 Mar
 2017 05:46:09 -0700 (PDT)
X-Received: by 10.99.188.2 with SMTP id q2mr2265082pge.36.1490877969509;
        Thu, 30 Mar 2017 05:46:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s67si287010pfs.4.2017.03.30.05.46.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 05:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so9813105pgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 05:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xf6XHa5/LBK+WQG0x7ZodNX0jBURwz+w8dyp9/b9tGI=;
        b=PwUtTldewYKXYY4Y7jxTxzd8A3bwStHi5sX8m+4g5gq4CzomLesaq7bG7+CYqs9FaM
         tGb2IX3awyOzfHcdv/IlMuOH0ssdr+zHlYRBADjnQrQ4CVuDON0yDD7ykrPk54vRbknc
         vWd1+mWSji+LpNvyo/MQvy0BMHDtR8msAjXa5GTbXaokqOg3OiHIYXSVPXF6zQtT+iV2
         3MlRoMsTBDSfYqdFnTDp8LxC9smGkU3/Y3+9QqIfDRDDF7IMtP0ImogBYra1aIsczjYB
         KYyzNKUIvKywTLGwZJOYK74RQODVGw3iDAKCciRwHhjWuB2RQyoBulCw5FjWBf2CSizW
         innA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xf6XHa5/LBK+WQG0x7ZodNX0jBURwz+w8dyp9/b9tGI=;
        b=NSei04hgd7hMOkM0gLD+or8Sf8Ix5njEYwwNo2ZkSoMRKOac2+5cDY2SAdZj0s8gsv
         vk/V/0uGyZ7tPMBWdchalJnCwxhZPhSbfcmS9B6tcY2aeEbGdspr9rX+cjVUIqBwYILS
         +1CHNJv4zXa97ex0B0Wqb6rhtVZLxN5/HbUIJdmSjeXBfLaLBY2jozXmWNSkOacYgD/v
         ZGTRsrQLlA7pIgefr0CSInsb5v7vpcdpl2qtMGbaStgFPm/lIct4AwQeLB2CnZHAvNdu
         Bf0uw9YakEezHJ9iTiaGCGaZLEtKNzwa/JMRsK4vZO4r2nQzSeWrjWX92RPNxWKUXJXP
         RTPQ==
X-Gm-Message-State: AFeK/H0W40pWkWJEzfTFWsxrUXXF5tZnTP1HNHqytUSBWdX4uIKDQ/6heGYQ4d8PIA7qfg==
X-Received: by 10.99.206.5 with SMTP id y5mr5971188pgf.212.1490877967872;
        Thu, 30 Mar 2017 05:46:07 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 189sm4550370pgd.30.2017.03.30.05.46.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 05:46:06 -0700 (PDT)
Date: Thu, 30 Mar 2017 18:16:03 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: replace comma with a semicolon
Message-ID: <20170330124603.GA29301@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace a comma between expression statements by a semicolon. This
changes the semantics of the code, but given the current indentation
appears to be what is intended.
A simplified version of the Coccinelle semantic patch that performs this
transformation is as follows:

// <smpl>
@r@
expression e1,e2;
@@

 e1
-,
+;
 e2;
// </smpl>

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/iio/adc/max11100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/max11100.c b/drivers/iio/adc/max11100.c
index 23c060e1b663..1180bcc22ff1 100644
--- a/drivers/iio/adc/max11100.c
+++ b/drivers/iio/adc/max11100.c
@@ -124,8 +124,8 @@ static int max11100_probe(struct spi_device *spi)
 	indio_dev->name = "max11100";
 	indio_dev->info = &max11100_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->channels = max11100_channels,
-	indio_dev->num_channels = ARRAY_SIZE(max11100_channels),
+	indio_dev->channels = max11100_channels;
+	indio_dev->num_channels = ARRAY_SIZE(max11100_channels);
 
 	state->vref_reg = devm_regulator_get(&spi->dev, "vref");
 	if (IS_ERR(state->vref_reg))
-- 
2.11.0


