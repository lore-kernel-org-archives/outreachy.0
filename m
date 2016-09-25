X-GM-THRID: 6334391952263348224
X-Received: by 10.107.29.129 with SMTP id d123mr4717949iod.9.1474840555362;
        Sun, 25 Sep 2016 14:55:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.86 with SMTP id u83ls1945406itc.20.gmail; Sun, 25 Sep
 2016 14:55:53 -0700 (PDT)
X-Received: by 10.107.150.133 with SMTP id y127mr4954062iod.7.1474840553374;
        Sun, 25 Sep 2016 14:55:53 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si3774119pab.2.2016.09.25.14.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 14:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id my20so7832200pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 14:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DIHidIO6t/jBG7HBNTRfbTt1ZG+YNQb10DWcraxZYPQ=;
        b=aZdUT693lBVLIWQgwWdDGUTsBYUnHQbQXwoF5U08lOxshrxcRY8rwyYtTfUJsx0KPk
         4iScIUI2pZSg2YC626BSt1SzUz+Le8OM9i/7mGdhHg7xlwPC3x1rSHoMX4qqyr8IUPM/
         M9bg/m7IOfcbIWTiFYs5ARXy1dfG21JV3lRsFXGN947Emx+ae5WsLT9D9/ck3A68a5+H
         q9wvZ04I6PkuhceUIPaNAghLPDDJRt+tPEVZCk+79o1UALbvpP4N/SVZm3AommOMGoWr
         HJ+a0Pb6oHH91gLFG1whTIjVGOKMiZm1imqxpUe0CqlyC3lbysKs6SUesw+I2avwcB4P
         +aZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DIHidIO6t/jBG7HBNTRfbTt1ZG+YNQb10DWcraxZYPQ=;
        b=OMQAnd1OsvViJo4yUrL3DbRVItxmstsJ7EKVF6pHod8g4WxjsmqZsfPwT1WE0sJQl9
         Ypqzs4FMohn4OPczUfC4JKdiaVWkPBNozSdh5ko4KRvAfSmj5qECMrFmjW/SNlrRHliz
         06ZGRU4J1FUReTh+NiVJCuF27bf0J+JRapgdianahRdqK4/iisb1yWBNc4pGbcnfayBQ
         ruayuWr5r5x14uE9mPBB01nB5/mlS7jGXkipRSQopYwlR2UyfKHg0ajRKsmMnbWgYVyB
         G7i/3U41wYIQKpg01IOh0AAfbv1w6BeWwuDti71YaZHH82TjSksr4M1S/5PXdsSs/3LR
         6VKA==
X-Gm-Message-State: AE9vXwOZHJHUP7MkT9ixKbo3P6niWQsLSvXEhiTekVxKyA5vhgF5pzQugHGniEeiHZAMCw==
X-Received: by 10.66.253.7 with SMTP id zw7mr33051755pac.25.1474840553200;
        Sun, 25 Sep 2016 14:55:53 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.199.218])
        by smtp.gmail.com with ESMTPSA id l81sm25668655pfi.14.2016.09.25.14.55.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 14:55:52 -0700 (PDT)
Date: Mon, 26 Sep 2016 03:25:30 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH] drivers: iio: temperature: Fix sparse endianness warnings
Message-ID: <20160925215530.GA7543@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix following endianness warnings:
warning: cast to restricted __be16
warning: cast to restricted __be32

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/iio/temperature/maxim_thermocouple.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
index 39dd202..3e99056 100644
--- a/drivers/iio/temperature/maxim_thermocouple.c
+++ b/drivers/iio/temperature/maxim_thermocouple.c
@@ -123,19 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
 {
 	unsigned int storage_bytes = data->chip->read_size;
 	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
-	unsigned int buf;
+	__be16 buf1;
+	__be32 buf2;
 	int ret;
 
-	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
+	ret = spi_read(data->spi, (void *) &buf1, storage_bytes);
+	if (ret)
+		return ret;
+
+	ret = spi_read(data->spi, (void *) &buf2, storage_bytes);
 	if (ret)
 		return ret;
 
 	switch (storage_bytes) {
 	case 2:
-		*val = be16_to_cpu(buf);
+		*val = be16_to_cpu(buf1);
 		break;
 	case 4:
-		*val = be32_to_cpu(buf);
+		*val = be32_to_cpu(buf2);
 		break;
 	}
 
-- 
2.7.4


