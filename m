X-GM-THRID: 6464947819093426176
X-Received: by 10.159.53.141 with SMTP id t13mr14311823uad.48.1505377761580;
        Thu, 14 Sep 2017 01:29:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.176.66 with SMTP id b2ls4552723itj.12.gmail; Thu, 14 Sep
 2017 01:29:20 -0700 (PDT)
X-Received: by 10.55.157.72 with SMTP id g69mr10970300qke.28.1505377760827;
        Thu, 14 Sep 2017 01:29:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505377760; cv=none;
        d=google.com; s=arc-20160816;
        b=REFDI+qxELyqhCL/LTjiTKAzwEZtRFHfHm4gRoek8/b6zhMMC/PRL/ybYIUaIXEbOx
         B/9cF1RMARMdZK1+pnjQ4/Qm/56pSV0pknjRe+nkWGgw50+HEYoXp+gylQRd6huBiG95
         5XgAOX4w4FaTde96JbCTxI9B/+7ZpdW+94LjvUHxlq/cifnpmcbq/wvYjhLb1zYDVeBV
         HbuKLVHgazJiFpzr5x1y8vBqUzNLo6iZKqqdCP4veg+ZLB3VvHSMi1iZC3HqemtU03tH
         z81I9awRZELV7VWELOjL3taglIdJQZe+MjADA5Ol1GIiDUQtREg1+88ZHjqs8f6J9CDc
         32vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=9zUKqrw2Q71ULAXeWnHSCk7zszFLHIoCWngwRjVBnr8=;
        b=dcDMuuxVlkagPj03chtuYd9c3TDWMFceVU0dvCptYtw8OGCVPFlbjVEM1ZittVyD9a
         S6EyB1e3qBe1Z+tEC5tBEr/K34y09XM6qachUYF3KyedY/rcBQRuBkMF9qGSDMM1JOBM
         zKB76TAGOwjQJ/+IuXZmxGIpTG99GlNS5gbaI90SxSjhpcops2QL0eEVolH/91CZWeO5
         /DOJUP7jdhglvnZ7WJPhD2WyxUdD4BRYDRTidMgRe6vBYLPvRV382uqoo8+krJUsxgJQ
         36TGz7nahwk2d7NoW6klZOyl8oyNc0YHk1Qx43z00zt4N96XRMyYTcjSqgVx+bYWUD/N
         KxKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eutNTJKR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q15si1395048pfi.7.2017.09.14.01.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eutNTJKR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v5so1353816pgn.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9zUKqrw2Q71ULAXeWnHSCk7zszFLHIoCWngwRjVBnr8=;
        b=eutNTJKR8pBD8Yjq8pl0MiwOBdt7zSo7/bwXZiHD6MkTAK4rBXEEbMlhutynhTVtHI
         tUkehNbFAQWP+UbVi2xm8CvwQWQ62MdvYrFPR2K6zkbxivYU3cI8hXOfe3p9eNu0Joe3
         YUQOAT1I/RLEY06iv742smkCKBUPdbaTyc61w2LQUIRV/HsShANPxv84gInLgMaIup9v
         PACdTOuIvk/SuWbHf1miLUWw4qpt6lkcMyVWxYXXjDnJV3s1+Rd3c9nTHlMs+i9cO3Y4
         PG6mL9E/QTSsTsQOYoav4JY3IhWg1AKHNwndbZk4Li7KnlD/2RWNRqIhzj+Oou/lT1wo
         RzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9zUKqrw2Q71ULAXeWnHSCk7zszFLHIoCWngwRjVBnr8=;
        b=s4s8K7AKzZdOI28D0wiqjlm/PtTZX+1KsQdK1ruH6WraOrd0SpZK/7ethzdlM6ZMqD
         06Hf1EK6aoD1u5Hz8Wdc2tPbitrfD2whif1YeWrcVZFth1IDAW8+0WjOCGxXtrkixwdd
         oDRaiFqBrV2aAHjGc99VcQUNY/HckE2hpqLNaUzZ8lEvWksW4oFxaVv1gxMd8iZ0/wVL
         9NOYpbYKcwxOM42e8p6VHO6Y5PnOskU9HMG4Yzvkp298g4HJmn5om783ZzzG772gbfO3
         TO2A8S/zebqim0onOf6n6p7zkn4H8MWh7GgdfXKNG6q4ScYCQ2Ujrn7l6MAdRdVgqkkM
         Cvjg==
X-Gm-Message-State: AHPjjUjEMPOWSuoJbtglEA+eXyO5BlVFbBlz+CF2AQq/ITX2VuSrhNDE
	IC9HH3d3tF1m3ym2P+U=
X-Google-Smtp-Source: ADKCNb69tZiAxHpRVvsaY/HhTpNr8/0/GUigiwAL41tB75yeS6bVdbeDRlSDlemkheC7rvkZNtD8qw==
X-Received: by 10.98.213.201 with SMTP id d192mr20986887pfg.210.1505377760226;
        Thu, 14 Sep 2017 01:29:20 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id e69sm27161069pfc.79.2017.09.14.01.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:29:19 -0700 (PDT)
Date: Thu, 14 Sep 2017 13:59:14 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4] Staging: vc04_services: Code cleanup
Message-ID: <cover.1505377440.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Changes in v2:
 -Rebase from master so that patch applies
 -Include "Remove typedef VCHI_CONNECTION_API_T"
       commit as part of this patchset. 

Changes in v3:
 -Include what changed in each patch

Meghana Madhyastha (4):
  Staging: vc04_services: Remove typedef VCHI_CONNECTION_API_T
  Staging: vc04_services: Remove code under comments
  Staging: vc04_services: Fix 80 column issue
  Staging: vc04_services: Remove trailing whitespace

 .../vc04_services/interface/vchi/connections/connection.h        | 4 ++--
 drivers/staging/vc04_services/interface/vchi/vchi.h              | 9 ++++-----
 drivers/staging/vc04_services/interface/vchi/vchi_common.h       | 3 ---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c   | 4 ++--
 4 files changed, 8 insertions(+), 12 deletions(-)

-- 
2.7.4


