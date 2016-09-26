X-GM-THRID: 6334690503118815232
X-Received: by 10.36.17.133 with SMTP id 127mr3318980itf.34.1474910067979;
        Mon, 26 Sep 2016 10:14:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls14454679ota.23.gmail; Mon, 26 Sep
 2016 10:14:27 -0700 (PDT)
X-Received: by 10.200.36.41 with SMTP id c38mr6064707qtc.21.1474910067512;
        Mon, 26 Sep 2016 10:14:27 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id o13si731887itc.3.2016.09.26.10.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 10:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so9036288pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 10:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PMiHapuvhG1oV/fVqK9IM9CO+Vv0K3GOkAKSrJpynPQ=;
        b=LdncMoyHBP5pk7i83EbIWDJfUHrqKH+gJV+6bclHgUN66RmLBnwVzpq66VaVYwUp3b
         VMqS6WkI8WsL2mNoaS+7UME81o/r5oDvsswxYsC5pbK+Tpri6HkhO6ak11DIZhWbQURs
         h1bh+b0L5bvmnRk0Yjl2MbEzLWSQxgvf4tHOev+YVbestA/pw4Loei5i+lza9LtDzPEy
         eQe1divCO9RQkbPKsYmzZMtFnf0Bi6CiXRnoVcX/7mYUX/HV/vm2VSLiqd9TAtfbksxv
         MHNnSQ/G/YvldgBkj3cFjJHaF3MbF12ZrOg/qOa1pvdQuLHAE85aUAhFwWfmiozdiK+Y
         h+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PMiHapuvhG1oV/fVqK9IM9CO+Vv0K3GOkAKSrJpynPQ=;
        b=lbT0uLNUqYfbGSbJcuHMHL0FR/cu8yA1qFfKv/w3SuuIy+l5xEWn69CyLajG8lUTfF
         XaR/oIBzUQZ5ScCbBoxXX94D3jwlrBZfF2ecqOzMH2yPx9IPpjVwX1TjfcvTUoeAUdkT
         OEJZWV6xBPfbrThdP72CDPt0WQeZuYDfzvjfQ4R6S43N48sxV4s1ut/qPmlEeLkkN3B5
         2I2FtFAqifll/+bTbGgVD3xeNMshV2BeFV3bYnXL9xp294fBK8MLxhsgyP2vZZD9/GQ0
         Gp6uYKwgqv4Zeu1e7NvBb4IKVuhKkbfwWQq7goa7awgWkY780LgzXX+0plYPv/db5hiI
         loyg==
X-Gm-Message-State: AE9vXwPfEIsO7XfgrFYc378TwHLkYkauTkEFeJhlvHODrFCNbA5wqL/IsBLtdox3ZmpdoQ==
X-Received: by 10.66.185.232 with SMTP id ff8mr40535079pac.12.1474910067281;
        Mon, 26 Sep 2016 10:14:27 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.214.70])
        by smtp.gmail.com with ESMTPSA id zh13sm31636499pab.4.2016.09.26.10.14.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 10:14:26 -0700 (PDT)
Date: Mon, 26 Sep 2016 22:44:04 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH v2] iio: temperature: maxim_thermocouple: Fix sparse
 endianness warnings
Message-ID: <20160926171404.GA11773@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix following endianness warnings using sparse:
warning: cast to restricted __be16
warning: cast to restricted __be32
Use __be16 type for incoming read data when storage_bytes equals 2 and __be32
when storage_bytes equals 4. Since the variable allocated already has the
correct storage size the patch is classified as cosmetic.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Updated the subject line and changelog
Moved the spi_read function call inside respective case statements so that data
is read only once.
Moved the return statement after the switch case

 drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
index 39dd202..2683b0f 100644
--- a/drivers/iio/temperature/maxim_thermocouple.c
+++ b/drivers/iio/temperature/maxim_thermocouple.c
@@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
 {
 	unsigned int storage_bytes = data->chip->read_size;
 	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
-	unsigned int buf;
+	__be16 buf1;
+	__be32 buf2;
 	int ret;
 
-	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
-	if (ret)
-		return ret;
-
 	switch (storage_bytes) {
 	case 2:
-		*val = be16_to_cpu(buf);
+		ret = spi_read(data->spi, (void *) &buf1, storage_bytes);
+		*val = be16_to_cpu(buf1);
 		break;
 	case 4:
-		*val = be32_to_cpu(buf);
+		ret = spi_read(data->spi, (void *) &buf2, storage_bytes);
+		*val = be32_to_cpu(buf2);
 		break;
 	}
 
+	if (ret)
+		return ret;
+
 	/* check to be sure this is a valid reading */
 	if (*val & data->chip->status_bit)
 		return -EINVAL;
-- 
2.7.4


