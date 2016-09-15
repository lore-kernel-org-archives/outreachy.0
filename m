X-GM-THRID: 6330600437442412544
X-Received: by 10.157.35.244 with SMTP id t107mr6884153otb.2.1473957774616;
        Thu, 15 Sep 2016 09:42:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.148 with SMTP id e142ls515515itc.17.canary; Thu, 15 Sep
 2016 09:42:51 -0700 (PDT)
X-Received: by 10.98.23.88 with SMTP id 85mr5217854pfx.5.1473957771048;
        Thu, 15 Sep 2016 09:42:51 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si3047043pfx.2.2016.09.15.09.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 09:42:50 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x242.google.com with SMTP id n24so2425657pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 09:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=86a+A0/evXps51OUehh3rBUZBfrzFEgWD/PZFvAGTv4=;
        b=DVVfWj0f6YjOz2IcaYhPPXGxvnzUQo+U1let4pVbslHcEGj2uR/CE8suZgVsnSINnZ
         SJfdP9zY4JqPMytQlaewTah3EgbaE+ut6FScpB1BRRiQulcfpepZ3BsznWc6oFyFLXRk
         Dn81SyjZ2ca2UlZQJvK/GIKxygPXP9PunXQfioNpTs1mE/4R0ZMuTHcqO1kCCp4WGmS/
         IlKgWd+dd4N+8guditXWV3KjrCexU3NHS+d4VanN8BR1k9YsHRJWlvcddqgJEo81CXAa
         RNIe5kJyB/GWXNCqL2bEZXMq1mTP5+LiE5kepMuiIlJRNVE3mMisxkq5TWgDO4GjLGVX
         wuBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=86a+A0/evXps51OUehh3rBUZBfrzFEgWD/PZFvAGTv4=;
        b=f1UTDLfZTEFRjRaohhQFJ4qg66lpB0wtya4xvn+HAv3PWdeHDyEm1lHyfoGxAZxFbQ
         9EIv41O+cm50YAABW2P0rnJmMZPtYmRZBzFXMSBIbAadDhcJmS9OAxIy0LNga4M+OCk9
         AEok/CE1RQ18I42GTGWyJ1ODNm8qKYIViqhahaxvlEYiLZgf1ToJXhmgieVizLPJ2TKd
         zw6OqJ4FLf/7NwEBHnScwEpMaZpc2ljaLm078Snd54LjlJBrVqMfeyRcNMe2y0Q10t0j
         Qs8Sbk/q81J/b2zWmyPA5U1gNGP4zOlpVnFtD7Ve91qU3tXeXZNtRQDxNP8QAe3bsVGy
         fY/w==
X-Gm-Message-State: AE9vXwMdoFEZ+eF0+elRXJh/i6/ZlBwjvZC8JPINBwRQ62+jqGbBLW0WLKwdUTx0rG1usnS7
X-Received: by 10.98.96.193 with SMTP id u184mr15877178pfb.85.1473957770715;
        Thu, 15 Sep 2016 09:42:50 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id 3sm46398921pfz.33.2016.09.15.09.42.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 09:42:49 -0700 (PDT)
Date: Thu, 15 Sep 2016 09:42:48 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH] staging: iio: adc: Add spaces around operator
Message-ID: <20160915164248.GA4812@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Issue found by checkpatch.pl

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 2177f1d..bc40153 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -744,14 +744,14 @@ out:
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
-		in_voltage-voltage_thresh_low_value,
+		in_voltage - voltage_thresh_low_value,
 		S_IRUGO | S_IWUSR,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
 		AD7280A_CELL_UNDERVOLTAGE);
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
-		in_voltage-voltage_thresh_high_value,
+		in_voltage - voltage_thresh_high_value,
 		S_IRUGO | S_IWUSR,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
-- 
2.7.4


