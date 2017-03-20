X-GM-THRID: 6399553954141700096
X-Received: by 10.46.84.13 with SMTP id i13mr3936402ljb.2.1490012314247;
        Mon, 20 Mar 2017 05:18:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.79 with SMTP id u76ls395598lja.51.gmail; Mon, 20 Mar
 2017 05:18:33 -0700 (PDT)
X-Received: by 10.25.193.213 with SMTP id r204mr3417481lff.24.1490012313513;
        Mon, 20 Mar 2017 05:18:33 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id q207si765657wme.3.2017.03.20.05.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:18:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so14131665wma.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 05:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=X57Wd6Ma6riLUO1dRMkAOjwBWywOhfTL7YT4L6uv8DM=;
        b=WQ55YtpO2QR4qQLjBr+P2sH8gRL0JTyG5tuljRANTDu8rnF+bi0Nzy3DiTTflmlO8t
         rnOkEKyy5OSTcJXG1X4dei7ffrHTYj2qSAEUsX3P3uiiPMNLcpDuRaxzcSzPeCvkVaYt
         1aW1a99gi1AJTqdU7vCnUKVx+VonlL9fJi8WR71wWlabYPggaH9HwGLSsmVtKouTpK0s
         gX7G0DEnoaiJol/xZTLbpNREAHbsdyeuluZ+glgvj1nzPXBMWNk1+WyNWhlqU/zasbSu
         bTjX+CUy5s657AwapW9p+RPrbS+aKDECkSrbwVw8zSUtEYAugDGFMCiHkqL5fcuYwZTI
         ED6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=X57Wd6Ma6riLUO1dRMkAOjwBWywOhfTL7YT4L6uv8DM=;
        b=jUUH4nfEkGwxZohtrjcbcddRLNGK4FSyZjEZppB6Ivliy/PPVOML91X5rpPmdthkRX
         Z5kicDZHfPedzPbdLJgiTuhp3hQvzsiSZcd009jLLjrTb9Bv506fU5ACABxmyRFu7bGX
         AJogDhrbbHVI4wZSFnDYiMperthVQ6joRGq44tPu4WlKzPFhciPtn0+ETu1VkjlqJomD
         fUZQ8B2daPFyrszgxuGm3ORaPCXw6FaSosJS5eSfv6ZPOn7/DTv6dVmyiSeTX8Dyqscl
         YNH/avxsnz2s/QHoiFmM5EGh2mT1Eeyde5m22jTjt96AN5uMWc3vU48z8ioULzgOjXBt
         Do4g==
X-Gm-Message-State: AFeK/H2AQwlddFpnHPrZMjIFsIBFwyoUE0vgofTwLEDNjurORIvZefkWNla73xy1usPiBg==
X-Received: by 10.28.20.70 with SMTP id 67mr10201875wmu.86.1490012313295;
        Mon, 20 Mar 2017 05:18:33 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id i133sm13360951wmg.26.2017.03.20.05.18.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 05:18:32 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 3/3] staging: iio: cdc: ad7746: Fix alignment with paranthesis
Date: Mon, 20 Mar 2017 14:18:26 +0200
Message-Id: <28e3f73ab1ac503fb32a291b6be7741d23a63444.1490011900.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490011900.git.narcisaanamaria12@gmail.com>
References: <cover.1490011900.git.narcisaanamaria12@gmail.com>

This was reported by checkpatch.pl:
CHECK: Alignment should match open parenthesis

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 81f8b9e..69845a2 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -546,7 +546,7 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 
 		regval = chip->config | AD7746_CONF_MODE_SINGLE_CONV;
 		ret = i2c_smbus_write_byte_data(chip->client, AD7746_REG_CFG,
-				regval);
+						regval);
 		if (ret < 0)
 			goto out;
 
-- 
1.9.1


