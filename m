X-GM-THRID: 6467009585509040128
X-Received: by 10.36.92.144 with SMTP id q138mr6765403itb.56.1505718004076;
        Mon, 18 Sep 2017 00:00:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.11 with SMTP id b11ls7103722iod.20.gmail; Mon, 18 Sep
 2017 00:00:03 -0700 (PDT)
X-Received: by 10.176.26.150 with SMTP id j22mr22624882uai.24.1505718003367;
        Mon, 18 Sep 2017 00:00:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505718003; cv=none;
        d=google.com; s=arc-20160816;
        b=TRC5ooQsQsefQC8Xw4/Yx2uhUReA9+TddumxrXk2MQWJsm2GMmJo02cneyNH9byY8L
         m6uJ1Q0hK46J0YlnxNTvSUxCOfYygAGEoDMJAmBjkYRjf19ql0k2yzSvJYr+Dj06LWLB
         7pt96ZeocY5NLM6DAo4zltnw4RO5dkzaqyMKbssJ5QjAr6aWAWJBMJjjJHz/cP7JscLL
         dVRPf0Mhns4+aoAaEaba/MVhTZDKuBlwL+hlzLUbvcPB0L6wLbUxwZP4JcTUYWFO03Xj
         NYRBANlncJMtVUS/SGJ5mIPBgEiGtp4/6SQIZ0ts3vzXAFqnmnZXvzI6cVXfwIBjJ/8G
         8/Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=xFLzYzFE1YyAKQXylhfyyOmRHfVrp9hrhj3/sGeqPyc=;
        b=gI8iIQ0q8/G9qsgk/ZVR738xFWdbQ2V6+AIOvZD0ECXT0fuztDKeuLpXjA1wInjq8n
         toTs+HGMLk29VqnMKo/LN+z8we/dv9QhUj/siw5ioTbMxeVNv5x84HjfYngfRzxquw0o
         m9YUD8dU7nDkJDxiCHoVMBsF7+InQ2deDa8urTOexegC981ngtX5uCeczzDpsH2yBtSD
         dEmT260nZ2/Ipo56nGchGimLfrKUAOF4RDJjJ814RYVZDeD6ScpHXx9Y2nHl6wpuKi1M
         yv9RCLr9f73qL613k9t8K+0kkbNsYEeJqtGoy1NGSyuSh1nXciocAVMFI2SDhLzwfI79
         yb/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FWhm1iKb;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id u123si297343ywf.8.2017.09.18.00.00.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 00:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FWhm1iKb;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id d6so4350089itc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 00:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xFLzYzFE1YyAKQXylhfyyOmRHfVrp9hrhj3/sGeqPyc=;
        b=FWhm1iKbE/sPauGPb+AtxIyTaZ63wVWHp6cttTMb3CVZlOhz+1iSfbkiaeU+AdSQql
         ZDdj/tjmgXT7p500TkYCKGDhgkp1d/nlPVKzB//3pgDz6Do9HgdbYM80BCHC7V227uZl
         qduz7ZV3lzVg94V4vWFuIU/Ew6sGGsFZ9FhxY/6lcFNsNz8qGvu5UI635yNGuDSD9vj0
         E4JyPacHQrjWH6G9c6mXIWVqFqASsMFlxcD09X+WdmlyxR1WsjITd/o3SW1MMnVM1VjV
         4dSitxC0XQb2QFInJSyG1gM20ZVsaqHGbYNHSW+cUk5u4Gcg/fvk4VM9aW/lQgKTbLdy
         PJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xFLzYzFE1YyAKQXylhfyyOmRHfVrp9hrhj3/sGeqPyc=;
        b=EyiuFNUTa4Hgup1ZNZwYKtRhD6IKEIUyCJ52t8FYQ7cHQhA40nHvyCr6evj90ZZM/b
         ZrbeqJVDex86xU/4TS0Xaj3AdF5Pq+fs6JOEJUsPhargBdlsR0hs0xzQPZ+Z1B9DJfld
         oTj5CV26dDsiGw4gwfPF2S48BO+fPm6xdz38B3eBmSv4vWvzzAA0qJdl4Z5VtEJcR2VN
         e2Q9qk9vO1sQD1hGyac7VIKn5ywLGrPceGToFvCoigWlFMN8wPrKj4MGeQAJmUgiwItT
         1A8TbUUs1okhG43KSUz2GTmV0Uw6xS6q5PbQiHOXDuHZxBykeLlCfB4A2GN7glDYzsnq
         MRAw==
X-Gm-Message-State: AHPjjUiNnJxWgqU5Nr9kPKa8kisG62kNrv8fjHUDFNPW6bMsZqk19sR0
	y26IT3JFI4wDzB91ctQXDwLKktek
X-Google-Smtp-Source: AOwi7QDqVGIipuMi7Z7R1UAdddtvf2WZ79uvfoxMP3HRkXI9k1OlNO0TAcJ9LB8gJEuInL8hIt9JTQ==
X-Received: by 10.36.245.138 with SMTP id k132mr14771834ith.124.1505718002626;
        Mon, 18 Sep 2017 00:00:02 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.190.121.125])
        by smtp.gmail.com with ESMTPSA id y198sm2622224itc.30.2017.09.18.00.00.01
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 18 Sep 2017 00:00:02 -0700 (PDT)
Date: Mon, 18 Sep 2017 12:29:52 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
	lars@metafoo.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org,
	daniel.baluta@gmail.com, amsfield22@gmail.com,
	Michael.Hennerich@analog.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: iio: ade7753:  replace mlock with driver private
 lock
Message-ID: <20170918065952.GA5386@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver usage of mlock with driver private lock to meet the new
model where usage of iio_dev->mlock is being redefined as protecting
operating mode changes(changes between BUFFER* and DIRECT modes).

Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index ce26abdea..745c5a6 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -81,10 +81,12 @@
  * @tx:         transmit buffer
  * @rx:         receive buffer
  * @buf_lock:       mutex to protect tx and rx
+ * @lock:	protect sensor data
  **/
 struct ade7753_state {
 	struct spi_device   *us;
 	struct mutex        buf_lock;
+	struct mutex	    lock; /* protect sensor data */
 	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
 	u8          rx[ADE7753_MAX_RX];
 };
@@ -483,7 +485,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -504,7 +506,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	return ret ? ret : len;
 }
@@ -580,6 +582,7 @@ static int ade7753_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 	st->us = spi;
 	mutex_init(&st->buf_lock);
+	mutex_init(&st->lock);
 
 	indio_dev->name = spi->dev.driver->name;
 	indio_dev->dev.parent = &spi->dev;
-- 
1.9.1


