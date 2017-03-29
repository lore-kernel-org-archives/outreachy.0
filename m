X-GM-THRID: 6402897717905850368
X-Received: by 10.129.97.214 with SMTP id v205mr73941ywb.131.1490790796987;
        Wed, 29 Mar 2017 05:33:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls15226864otb.2.gmail; Wed, 29 Mar
 2017 05:33:16 -0700 (PDT)
X-Received: by 10.31.137.8 with SMTP id l8mr35796vkd.9.1490790796592;
        Wed, 29 Mar 2017 05:33:16 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1085709pfz.1.2017.03.29.05.33.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so2558067pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 05:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=b125Krd8+0OheH/4nJ7ujX9NyUzXwb8yoMO5EZJUf4w=;
        b=GV8Sf/cKS8wZUAVZHNg1OZc0GL5LggZpc0C1j1sPFya6nSldIe8LuoRVfD2oMOo9eU
         BoldFyWo5cqRvSLKulVfmBF02Z24P8m0VzUdagC9oPNAVK7ygL7jPYfRJAjb5uWjsrqC
         XCvESyD4yZY5BS/w9RYfSI9YC7Pb3qT14IMnmuHqtMcp8qSrjdqGOBuooyJA5YEgz5Ls
         +NfBXfft0F1V9G1Mp5EyEGDfkEodjRRV13y/epbk/JXBWDENTp6KxLld9Me3Q+lYby98
         Z0EwhPd+SBbSqZcxWUHTKDUVg1iPImiS3PsjwVdSZlMbUgHEGv0xzAoh3QakRO7EzpfR
         4Fqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=b125Krd8+0OheH/4nJ7ujX9NyUzXwb8yoMO5EZJUf4w=;
        b=QeiNFM9peXX8U+QZwqiApQYj2RV43X7ArCWnpvlyLbCW57sf+5YU/4cfrC4CkpME9r
         zke3IQZYL3tz39I6TdTalPFiodtOyQGGqO+udYYD5Wt7PrmnlkdzRInQJAxvcTX4Gxrm
         sCBKdxZKZrFWWoHfu2/Gyn9ThniR1iKTRZhYJyNyPBpscCBW5XXjdtlK4W4fB40gXcxG
         f+5y8/Xvwx9JY8wXReuFvg2Hj+Q0LUAw+tmyMosSUYdIfVeUE1ZGRkZSe9Rq/jdIV363
         AfvDyDxDitnrIGlA7RGomyc+ieP+n8mCkxpNZ+hwglAUoLIWhZkTdcY8oObzPW0IhFEy
         g4eg==
X-Gm-Message-State: AFeK/H1X34V5O3PA+L6JvhSi7OxcBWZCtaEeuhGAp3hcnivQ2enCtHxwNrgw8yfCJeQYcA==
X-Received: by 10.98.97.7 with SMTP id v7mr240934pfb.161.1490790796347;
        Wed, 29 Mar 2017 05:33:16 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b8sm13523171pgn.6.2017.03.29.05.33.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 05:33:15 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] drivers: iio: Replace ternary operator with min macro
Date: Wed, 29 Mar 2017 18:03:07 +0530
Message-Id: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

Use macro min() to get the minimum of two values for brevity and readability. 

simran singhal (4):
  iio: common: st_sensors: Replace ternary operator with min macro
  iio: imu: st_lsm6dsx: Replace ternary operator with min macro
  iio: imu: st_lsm6dsx: Replace ternary operator with min macro
  iio: light: si1145: Replace ternary operator with min macro

 drivers/iio/common/st_sensors/st_sensors_i2c.c | 2 +-
 drivers/iio/humidity/hts221_core.c             | 2 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c | 2 +-
 drivers/iio/light/si1145.c                     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.7.4


