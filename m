X-GM-THRID: 6396079372840730624
X-Received: by 10.99.110.1 with SMTP id j1mr10257739pgc.52.1489203277142;
        Fri, 10 Mar 2017 19:34:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls7814142otb.38.gmail; Fri, 10 Mar
 2017 19:34:36 -0800 (PST)
X-Received: by 10.13.238.134 with SMTP id x128mr10424208ywe.59.1489203276709;
        Fri, 10 Mar 2017 19:34:36 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si2102747pfd.3.2017.03.10.19.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:36 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so12714974pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mQH+Gxtw1uHugJ1vThNHhXhFxL+GSJuD1PlHonGiYaU=;
        b=pgAGz78W1KCtKIngSQ7ZZ0HehvbAEa17ULCtO1215wHt2H08HjnKCPnlWCr9Uo1y5u
         atkU8/h7yQRUesxrcnTvzRu4911oUemjRtUuGjOgwmUluIJzyPJy9jfI/9N5L/gft9/t
         F4X/A7SXYbLMo2acc2fthwLmFXUGom4GzPjweWK8ap8/rL6gWZsKZ1jkxMY2KPyiIXHK
         ljP5GhH9R/ArmjitkLIZzqT2v5RD7oHe9IsQz81q4NsqZ+0VffGd6h653n566OrkYxAY
         IMaNlSgf5SrxTYk1QpbatO/v2RAw+/ioM9fSFakIuyxUkUCDZCH7HVpn/HcMnrVPi0x6
         V3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mQH+Gxtw1uHugJ1vThNHhXhFxL+GSJuD1PlHonGiYaU=;
        b=oxYpDBGrCOw/Y767GCliHlMaS7d+vqhOFyENMu7hMlsFqvlAEnIBkXTwMOxgKONvPb
         k3xOPYSMuLr9w/3Bko5K+pWSMgCr5ffYVYh1phanZyxZXZaWkbpZEoIiNQe8wVRUVMkL
         JlPZAmywwDXr0UpXFq94Zqi6mlzmtj3/tANJhcPVzBxDbyRl/oZF4Dgc7rJ1t3duig+H
         5+toHq2kE0WDL46kqFPafuWD5ZPg1v4VcE3vdURkX7wwJCETmLlBtMgm6VEX4zfUyL+o
         WxNlN/IIeNER8h9zpLPRQGp05u8UAyO7QMANX9SHLwZv1L2q3Rs60lkPTgbTs5HmdeaC
         YwbQ==
X-Gm-Message-State: AMke39nfoI7H82peSx+4s7/lNYxvptiHWpk8BPdGVNMQMsxZYWRoAbXahIYk8+wAr5Px/A==
X-Received: by 10.99.137.66 with SMTP id v63mr23434771pgd.207.1489203276481;
        Fri, 10 Mar 2017 19:34:36 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p129sm21038917pfp.118.2017.03.10.19.34.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:35 -0800 (PST)
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
Subject: [PATCH 00/10] staging: iio: Remove exceptional & on functions name
Date: Sat, 11 Mar 2017 09:06:31 +0530
Message-Id: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch-series removes exceptional & on functions name.

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


