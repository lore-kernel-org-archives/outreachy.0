X-GM-THRID: 6254738037181251584
X-Received: by 10.66.160.9 with SMTP id xg9mr35185864pab.38.1456294683639;
        Tue, 23 Feb 2016 22:18:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.157.103 with SMTP id wl7ls1147725igb.18.canary; Tue, 23 Feb
 2016 22:18:03 -0800 (PST)
X-Received: by 10.50.47.40 with SMTP id a8mr1663244ign.6.1456294683305;
        Tue, 23 Feb 2016 22:18:03 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id ff2si183640pad.2.2016.02.23.22.18.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 22:18:03 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id e127so6975125pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 22:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EOecCGhU8THPsLxvUvEe1wZbTMWxJ4euAlAgP3Yub+g=;
        b=DcV2zezP0chrU7OrMiFi9MvBDLt8HYGH/PgbtLYrKfPhKppf8wgNW6/8WyUYLfkpVX
         pmiUkvLRQUufw45pF50d7n0lbXN5lvoujOAU+kDKHizTuwO46snxMnxNpKDbduKp6pov
         dWuhyUMkJjkIFBfVaS/9XFSoOF5hHtezqMDbOoUeO3nMlQprqRQGFAhaZy3+3+JwS7Wo
         icJB9yynbr0jC/8gzSRkGJjqEi+CE+FFSHW88bAhDRxQPu7TrG8GAKsFEaHo8TW7YB9z
         Qvp/LGT9ZJ1eGNdaMQfpElj4As5RmzqDNdXna4pVhbk6rZiS5ZvkBbRXBHZywgdvZo+L
         1bxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=EOecCGhU8THPsLxvUvEe1wZbTMWxJ4euAlAgP3Yub+g=;
        b=HpjcnIjMAAOo6FERQygWSQ678GK7zkd1KSXW2xbEONid4n+9ZzGVm/LzI3Po0ZLzeh
         jCHDg1feJS3plcNI7F9UAw4Tq+5IZbHwPGdXIgS7JJTARYf9ENynwIfi0kRPJxCEROzO
         RtzD4NRD4EYwP0Ky+2wSbIyH+7/npeip6faFgvUhhB0aNHjHfuthngIcNz7cvr+SqrCD
         vC6GfR8UM/YN3sSyfOeBWLqaM9taMdshDmJAxu8nxXC0PywzYDcEqzf2aDcF1HASvr++
         G/GB+7Kz+4Xw1kVy7ua8+39M83uTs1IM2bPrn/MMB80cC6igV4EWPm69JcFD+7HiFb+l
         XXyQ==
X-Gm-Message-State: AG10YOSwpa8N0x/okhY7dZPzNSNj7EcB8L7y+IBoDBj5IpwB57OfvApgSFYRmijSll+EVw==
X-Received: by 10.98.74.17 with SMTP id x17mr52523046pfa.14.1456294683134;
        Tue, 23 Feb 2016 22:18:03 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id ac1sm1839373pad.41.2016.02.23.22.18.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 22:18:02 -0800 (PST)
Date: Tue, 23 Feb 2016 22:18:01 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: light: tsl2x7x: remove useless initialization
Message-ID: <20160224061753.GA12323@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the initialization of a variable that is immediately
reassigned.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 2a62718..5f308ba 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -296,7 +296,7 @@ static const u8 device_channel_config[] = {
 static int
 tsl2x7x_i2c_read(struct i2c_client *client, u8 reg, u8 *val)
 {
-	int ret = 0;
+	int ret;
 
 	/* select register to write */
 	ret = i2c_smbus_write_byte(client, (TSL2X7X_CMD_REG | reg));
-- 
2.1.4


