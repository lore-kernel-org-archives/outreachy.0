X-GM-THRID: 6332017798578962432
X-Received: by 10.195.17.199 with SMTP id gg7mr707485wjd.10.1474299718528;
        Mon, 19 Sep 2016 08:41:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.80 with SMTP id p77ls1882787wma.26.canary; Mon, 19 Sep
 2016 08:41:58 -0700 (PDT)
X-Received: by 10.28.158.65 with SMTP id h62mr564272wme.11.1474299718010;
        Mon, 19 Sep 2016 08:41:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p199si2066414wmd.1.2016.09.19.08.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:41:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id w84so8495852wmg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MwBV5tSip6C19ZAvKZaBAWoxdUTdQPYFq3DQOS0r+Do=;
        b=WTaPoNLOgDcDStBysYK48rDw6f+VhuBrsGOqgiuL1MGfKSAPVylzWGh4vmQzI+EsFx
         fv0dAK481E6S1mLiQj7OqXyj2Afz1Py1d47N9Kk1M5Ul9jQxjOU5QYTwQM3Yw8AiYLC2
         h3JSwwM+TdLLX0carnC1WEixigbHYhiM+oJxsDxzPiyx1CIe0pvesV+Nn2wGTF9fulff
         /UcJmp3LL7LsMCBHqFwoQL4tupsynIiGWDInRZ3IJXy+ORHu51Ca/6gn8Xa8yBqr2ZuP
         85tIGsr61e3DDPE5tdDQ0/XcrEZ8zSTdh0qqi6bMj69utvoR1nlWKZuYv5XSj2W8Tdxu
         UiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MwBV5tSip6C19ZAvKZaBAWoxdUTdQPYFq3DQOS0r+Do=;
        b=NAMT2Wctc3/jddsY4XVKN9cJyCTf+DZVI+rxG/R+g4eOH3v9m9RCeqGOnfEeJdRMRJ
         MTtDwTES7DAD5hyF4rzDbHUF6wKBCZpLgpaUqfrr5HQS+NA9Wct5PlD224Kg6Zo/IRLC
         uMFx/7bjdn6l+eN1460HQy9p98f93Y3k42HfEZwjNujZ2MA5k1t3zR3PDck+uB4SteTD
         jNdakgzBJXJ4zgkbKJVKU448x3sDzPbAVYZ1Shmz3LoWdV50i0yNtzPMJDuZPa//kEeH
         mfWbsgXmfIcjdXtTaKw0objCHV21HF5MtgLJMdz0H4k9GM0nJ3l2g99d3gBip7MDCKj2
         zdTw==
X-Gm-Message-State: AE9vXwO1BTHcnWOYBu/B0AWm6/oFwiPp5FqcWRPij6NSQDuoyM4NBSQDDPOJqerLjxVmrA==
X-Received: by 10.194.59.116 with SMTP id y20mr26298925wjq.181.1474299717768;
        Mon, 19 Sep 2016 08:41:57 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id u185sm17171514wmu.20.2016.09.19.08.41.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 08:41:56 -0700 (PDT)
Date: Mon, 19 Sep 2016 18:41:56 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: iio: meter: ade7758_ring: Match alignment with
 open parenthesis
Message-ID: <20160919154156.GA13797@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Organize the parameters on a single line to improve the readability of
the code. Also, indent the line to match alignment with the open
parenthesis. Ensure that the modifications do not break the rule
of 80 characters per line.

Issues found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
  - Make the commit message clearer.

drivers/staging/iio/meter/ade7758_ring.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
index a6b76d4..57c213d 100644
--- a/drivers/staging/iio/meter/ade7758_ring.c
+++ b/drivers/staging/iio/meter/ade7758_ring.c
@@ -38,18 +38,14 @@ static int ade7758_write_waveform_type(struct device *dev, unsigned int type)
 	int ret;
 	u8 reg;
 
-	ret = ade7758_spi_read_reg_8(dev,
-			ADE7758_WAVMODE,
-			&reg);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE, &reg);
 	if (ret)
 		goto out;
 
 	reg &= ~0x1F;
 	reg |= type & 0x1F;
 
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_WAVMODE,
-			reg);
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_WAVMODE, reg);
 out:
 	return ret;
 }
@@ -94,7 +90,7 @@ static int ade7758_ring_preenable(struct iio_dev *indio_dev)
 				 indio_dev->masklength);
 
 	ade7758_write_waveform_type(&indio_dev->dev,
-		indio_dev->channels[channel].address);
+				    indio_dev->channels[channel].address);
 
 	return 0;
 }
-- 
2.7.4


