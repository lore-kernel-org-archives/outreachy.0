X-GM-THRID: 6388545566354178048
X-Received: by 10.36.64.11 with SMTP id n11mr4354021ita.7.1487449383623;
        Sat, 18 Feb 2017 12:23:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls5861808oty.30.gmail; Sat, 18 Feb
 2017 12:23:03 -0800 (PST)
X-Received: by 10.157.44.245 with SMTP id e50mr4619335otd.117.1487449383338;
        Sat, 18 Feb 2017 12:23:03 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h130si1416863pfe.1.2017.02.18.12.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:23:03 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so730109pgz.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 12:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jt6LoDmJKO0TXwjpBGxBe2q0h5wQsLDU+1pmbzp4/Ew=;
        b=X2nTDB5lMEaBCtCSljjvOo/2oP3wMuRAT8RqvOjrWGB720hcjSMAMerKzzMO8f6OWc
         MqvPIEJ8GgTaiImXB41BI42zXMAa8ij/6YZvka4dg20aw+qBZDJGsRyERvXM0atT4J6G
         pzrJ9lpRU7/WYo505EUbg/ttpvGkj++9GLsMapudaVB0h2fQKuzfQE5s+VG04B/bmh35
         afLmlRAN8QggtMZf105/5ICOM35dO26Eg7wcusAKItya5+g8JxPvAQYIaKtyS89KIH67
         zuo+hMkbT0jmRbKbbdOWc/XF+m2+LiavVAI93DFnnqUR1aApYo0XQT3XqtV6wwrNUdt3
         Vz4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jt6LoDmJKO0TXwjpBGxBe2q0h5wQsLDU+1pmbzp4/Ew=;
        b=HYEVDZQjkw1wQyv8bWoPiQCHRySBtG2EVx7ASLlxobm0gnTE7WRpELSpzV8cVYY2gK
         /fjm79nlnc2huo0xeUgzzhsHUCBUdqqjmYimQuQyuWlnT8z75EHN4SJdEx4o2mvk2tIl
         L9AMzsFDbQz4IHA0e2kFmw3B9M6/SVa/p1B+NRL/2ogmOa4zT9KXOtmaoatkHUVxewzy
         FdrJR3ZQCoh6YtxsVkhd9BLX43TwLWOt83eJ2lutizZddPQXjfDnHrX+uWAlV+U7LnrH
         A4WA/uou4BECCRtTRvIsdd0k7ToDwCKFq4mM2sa+WcGL5RGFBMdqrAywbCt3yGwB5NCN
         qeVA==
X-Gm-Message-State: AMke39kTf9eqQdNgKEaSAwXk+2TQcn1GhxSk/lEpnYACZ1SwggeZV48ZGRP0J51RXXxmUw==
X-Received: by 10.98.9.206 with SMTP id 75mr16937715pfj.159.1487449383097;
        Sat, 18 Feb 2017 12:23:03 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id t14sm26689608pfk.85.2017.02.18.12.22.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:23:02 -0800 (PST)
Date: Sun, 19 Feb 2017 01:52:40 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH 3/3] staging: iio: ad7152: Add a blank line after a function
 definition
Message-ID: <ddaac235c7d0ea2b1a9218a22b3b1e8f6510215e.1487448326.git.karniksayli1995@gmail.com>
References: <cover.1487448326.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487448326.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch resolves the checkpatch issue:
CHECK: Please use a blank line after function/struct/union/enum declarations.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 988b89b..2ed6a90 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -244,6 +244,7 @@ static int ad7152_write_raw_samp_freq(struct device *dev, int val)
 
 	return ret;
 }
+
 static int ad7152_write_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int val,
-- 
2.7.4


