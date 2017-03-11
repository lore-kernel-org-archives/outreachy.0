X-GM-THRID: 6396079372840730624
X-Received: by 10.99.135.193 with SMTP id i184mr9980702pge.29.1489242409483;
        Sat, 11 Mar 2017 06:26:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.83 with SMTP id i80ls631374itb.6.gmail; Sat, 11 Mar 2017
 06:26:48 -0800 (PST)
X-Received: by 10.99.130.73 with SMTP id w70mr11286345pgd.64.1489242408808;
        Sat, 11 Mar 2017 06:26:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2287433pfx.8.2017.03.11.06.26.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:26:48 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so13931581pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wDH+Gg4+OT7nPINcDBErNpB00V8+5hV7KKUJLyTT+1c=;
        b=J/Cd9XxVS7OFNUd0+zz943QzLDtWNBJFE6O3S5WE73J1iujP0iuYEabcRDsQoldUAt
         w/+l+yotVFMuyygoOlLaEuRYuSoHlbOmO8FKeP14JMJwD3vj+GCwUB01emfUMYMJpF/j
         cpPvbX9N5RDIaFxR6jVNwDnFKcIPewsdl+vniz7luJp+XOUIO2Ce7V/tmF3bTPsHG74T
         2kWn2vkT8g27fXMgNc+clUpDvG85Oc1eqZ3osvwQ0bW3IHK+hFGOyNCp2fUm/iMQLW7d
         CqazxxZq2HaEYVdArtJBy6CsgXPO6qmzmutkpyIIvWCDBbQ/9+t8lKM2lZPxXDXUgLBW
         ZDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wDH+Gg4+OT7nPINcDBErNpB00V8+5hV7KKUJLyTT+1c=;
        b=DP76U0UxChtTzemgd3uJkCuMkxy9krM39fUu7UdDtCAaYCf1aX6kqlRMUlnPp9PMVp
         36F6FD2HojkIpY539SpY1NiXtjJfBIF5gz2nXxZRXH2+YHr+WcDFhKCTLBTFDvT5szMe
         VpwRUeKAgZ33hrwZx9wGcQVUUEyuNGY68lFQiFfwR9Io7vY9a7nWVOrFF02E0nIvXRbC
         q5nyCjX8PSUPTEEiWw5W792Y2nwGJzmOOKJdYUS/mGKnnm5MPGoC1eX4ebzsYrizsxYr
         nie+XdaVKvGJnPyBryCxTjtRzf8nwYvBHsuR8V3YVkw52WkM+MFbQctTvCf12t1o2mNb
         c4XA==
X-Gm-Message-State: AMke39kKySvSoBa5sDExJQBJL9Nc6ZBTbgZpPETh+qYI+amYYcT5mBOgA07i6Ish5lexyQ==
X-Received: by 10.98.201.212 with SMTP id l81mr27266315pfk.13.1489242408615;
        Sat, 11 Mar 2017 06:26:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s13sm24574883pfd.46.2017.03.11.06.26.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:26:47 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 00/10] staging: iio: Remove exceptional & on functions name
Date: Sat, 11 Mar 2017 19:56:34 +0530
Message-Id: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch-series removes exceptional & on functions name.

v1:
  -Change the commit message of all the patches of the patch-series

simran singhal (10):
  staging: iio: ad7192: Remove exceptional & on function name
  staging: iio: ad7780: Remove exceptional & on function name
  staging: iio: cdc: ad7746: Remove exceptional & on function name
  staging: iio: cdc: ad7152: Remove exceptional & on function name
  staging: iio: adis16240: Remove exceptional & on function name
  staging: iio: adis16201: Remove exceptional & on function name
  staging: iio: adis16209: Remove exceptional & on function name
  staging: iio: adis16203: Remove exceptional & on function name
  staging: iio: resolver: Remove exceptional & on function name
  staging: iio: gyro: Remove exceptional & on function name

 drivers/staging/iio/accel/adis16201.c     |  4 ++--
 drivers/staging/iio/accel/adis16203.c     |  4 ++--
 drivers/staging/iio/accel/adis16209.c     |  4 ++--
 drivers/staging/iio/accel/adis16240.c     |  4 ++--
 drivers/staging/iio/adc/ad7192.c          | 12 ++++++------
 drivers/staging/iio/adc/ad7780.c          |  2 +-
 drivers/staging/iio/cdc/ad7152.c          |  6 +++---
 drivers/staging/iio/cdc/ad7746.c          |  4 ++--
 drivers/staging/iio/gyro/adis16060_core.c |  2 +-
 drivers/staging/iio/resolver/ad2s1200.c   |  2 +-
 drivers/staging/iio/resolver/ad2s90.c     |  2 +-
 11 files changed, 23 insertions(+), 23 deletions(-)

-- 
2.7.4


