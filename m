X-GM-THRID: 6396932116719861760
X-Received: by 10.157.51.165 with SMTP id u37mr15160650otc.77.1489401822097;
        Mon, 13 Mar 2017 03:43:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls4062725iof.31.gmail; Mon, 13
 Mar 2017 03:43:41 -0700 (PDT)
X-Received: by 10.99.166.2 with SMTP id t2mr16061675pge.127.1489401821271;
        Mon, 13 Mar 2017 03:43:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si2639672pfb.0.2017.03.13.03.43.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 03:43:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so18613662pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 03:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/B+f2t8yuNGo7SnkJrSEZF/XtvP2F7BChRJjveGKOzg=;
        b=ATwaAuwCGptKU1jFng8scHWl7j88X0rzQSrcxazOHwHIP+kdxwaPeUe+sPtQ4AXUiX
         xrQl2jr5I5XBweSxpYsoo6fq195mV6ywqZuFTqnb9yTepiE1l2WrItgfROA9RBIsn1AD
         DflOgNr6m3nTYC2HXXQ2+QxOcJLNHgMmdCGVzWSb29xRzW71ZT8zw93rMn+FrrjcPSiC
         KGCA6Dr139q6SNW11xJhH0+yVfAwOxD+ltVFLf1W4Z7PFW2N2ERIWbX2NhB5jPqnUpwV
         Jpv1bTjIA3LHrvZu/bN7SwREyos/jF7OcRHXUHLIglND2Jz/AfGZTWaJ+MIQr2aBGiua
         6RCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/B+f2t8yuNGo7SnkJrSEZF/XtvP2F7BChRJjveGKOzg=;
        b=OWrEJmAdDIv0lgtJ/8gsiJunD2/o+PZpQtbSWIRQZMrbpaXs0LWZGim+YrwRi14Gtu
         BpQluTcPdFO83V48aDo89t7KRrmxl7GrxXxBKj+WMLET+mwAFnHoChgva3AlsndDgSWk
         fmWO/K6sNseZZpGkW2roOUNo8qz7b5HQbnyDai02tZ1vNXz7AGoMeHiCYpitjaqV8aKW
         xtfJ7Hz2Ep8fGlI0oCfkdCSoOtkPsMhrTjvZjAvfEiVKTx4pCFtXgD84rhB+PLksKKqe
         ECT89OqeJu6TBI1exyJINMwWPbNdjzcGznb8Ua4vSNgk9Id8FZaVVdhJxnhIGdyHtJoo
         98Hw==
X-Gm-Message-State: AMke39kOon8MwwDvikM5cFbJ8/yCwV3xTetX+VSX4UU75r4dz5juEo8qiJ5xs+wZFs7NqA==
X-Received: by 10.84.214.129 with SMTP id j1mr47408762pli.23.1489401820982;
        Mon, 13 Mar 2017 03:43:40 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id e129sm32389588pfe.8.2017.03.13.03.43.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 03:43:40 -0700 (PDT)
Date: Mon, 13 Mar 2017 16:13:07 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ad7192: Replace mlock with private driver lock
Message-ID: <20170313104307.GA12480@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

indio_dev->mlock should be used by the IIO core only for protecting
device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
INDIO_BUFFER_* modes.
Replace mlock with a lock in the device's global data to protect
hardware state changes.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 4fc8588..bed48e7 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -162,6 +162,7 @@ struct ad7192_state {
 	u32				scale_avail[8][2];
 	u8				gpocon;
 	u8				devid;
+	struct mutex			lock;	/* protect sensor state */
 
 	struct ad_sigma_delta		sd;
 };
@@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_SCALE:
 		switch (chan->type) {
 		case IIO_VOLTAGE:
-			mutex_lock(&indio_dev->mlock);
+			mutex_lock(&st->lock);
 			*val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
 			*val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->lock);
 			return IIO_VAL_INT_PLUS_NANO;
 		case IIO_TEMP:
 			*val = 0;
-- 
2.7.4


