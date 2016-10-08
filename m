X-GM-THRID: 6338982763407867904
X-Received: by 10.200.49.244 with SMTP id i49mr4040029qte.35.1475942761410;
        Sat, 08 Oct 2016 09:06:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls7710345otc.1.gmail; Sat, 08 Oct
 2016 09:06:01 -0700 (PDT)
X-Received: by 10.13.216.15 with SMTP id a15mr6586333ywe.70.1475942760983;
        Sat, 08 Oct 2016 09:06:00 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si6636685pab.2.2016.10.08.09.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 09:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hh10so4318352pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 09:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+rgFy6lY0VU2uYBaoc4mF9rIRf6opZqMBozoPX2yLs0=;
        b=eKTYGOnYSu/RlOWEBnM4AuHV88Y691tRY4P3RA4EBiL7ARvKgZrtQRR1veXXCLb+mI
         RKNlYSZXwJ4lYvW1ORq8KmArmb4LPhqL3/G28DaA20+dYvQfrLrq33WvMjPN0sV4htnZ
         miktMiXyyS2seorSLwqq1M4oTee9Y3wlboPV5fCZOe2OTvilruawEUpQEIB2+CBZVo78
         qjTcU+S2HKJmVZaRQ5Vzq5Bk+OQDJJfdhzDNCU+hwLNbuLwzdMuijideaSFfoDGxt7pg
         nyPXk8E5j0rqa10ZSSM9XcLsUGHRKEvg8/gVTPjxj32sVgD3XW7p0LhSm6zCUmOJc+SD
         llww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+rgFy6lY0VU2uYBaoc4mF9rIRf6opZqMBozoPX2yLs0=;
        b=aSpYr7f6tsIj/rAcclkaq91P5+KOWtdhgfVdlAl/Chibe45AEO1xLSC6MgiSIEd6ND
         9wlGnoQNZp0GiKySEzuUjWk9UhASAtVQZCgmIzPKtRr+poWVgiOyeGHUoclAUPI8JnUT
         aT60GtHlh253qQ5VbizzDdMt9VL1BJmA8IqO0R+/G1qFoPS/sSvQmG0I2xnm3lNSNgrl
         nulvPVWX+idKnRoXbXWgXGh9gNvdiwAIpYTm4nU4h9HmCtzfz5UaMJdFyE2kAmYt1dtO
         liCZdTZgju4JYHtDwcMvV5iBx96MDdXU4xhg+M3sY1aTacKISL4kle3Gc/WlKGHVdn6U
         8qiw==
X-Gm-Message-State: AA6/9Rmo8dYKKXGJzjORAZjkr4UuLsOR44ol/ICGWzDnT+5l4g/Tt7nLs/p/ivZwmUlxQA==
X-Received: by 10.66.16.74 with SMTP id e10mr6311113pad.148.1475942760788;
        Sat, 08 Oct 2016 09:06:00 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.105])
        by smtp.gmail.com with ESMTPSA id t6sm39334734paa.45.2016.10.08.09.05.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 09:06:00 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v4 0/2] staging: iio: ad7606: oversampling_ratio clean-up
Date: Sun,  9 Oct 2016 00:05:38 +0800
Message-Id: <cover.1475942324.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Implement the oversampling_ratio attribute using standard global define
as well as fix bug about incorrect setting of oversampling pins

Changes in v4:
* Reverse the order of patches: fix first followed by rework
* Add Lars' Acked-by tag for the bug fix

Changes in v3:
* Add follow-up patch fixing bug about incorrect setting of oversampling
  pins
* Add Fixes tag

Changes in v2:
* Add Lars' Acked-by tag
* Update dev_err() to use proper arguments

Eva Rachel Retuya (2):
  staging: iio: ad7606: fix improper setting of oversampling pins
  staging: iio: ad7606: implement IIO_CHAN_INFO_OVERSAMPLING_RATIO

 drivers/staging/iio/adc/ad7606_core.c | 67 ++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 36 deletions(-)

-- 
2.7.4


