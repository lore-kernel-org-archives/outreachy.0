X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.53.225 with SMTP id e1mr9582505wjp.4.1427795453588;
        Tue, 31 Mar 2015 02:50:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.198 with SMTP id ao6ls623728lac.103.gmail; Tue, 31 Mar
 2015 02:50:52 -0700 (PDT)
X-Received: by 10.112.130.71 with SMTP id oc7mr4003501lbb.13.1427795452942;
        Tue, 31 Mar 2015 02:50:52 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id a14si482989wib.3.2015.03.31.02.50.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 02:50:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id o5so4311954wix.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 02:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8WVv58qc2bQOzExAImTGhLbTXlqFcHuSOsF13BhUZtM=;
        b=yOE4X3xkaLwiIu78DgVssJdtG++fmdZItAA7eYAKvTqqummsnj6ke7xoe9ot8/wg5P
         4RWc7OaUT50LTznC+JqYgPBfma+se47vXJm5fQvnRSo8x+a/n/lBxpnkqyqdaiOI6G+l
         kaLW+N2zeDvaMV3+DFYWTyYoS1WxM3UVCuarxmaHi8TxGJCGfmNgdFgNQLooYhmLdLWe
         gldqv16DGE6rV056goEc5bS1rEfKXt/3cALVfmQ4cxEtHkssKavtQwzpxwoCI7ZwSoGa
         h02DIwuJn6So3PoyjVgyfe24iOkrRVH4r5DOG1tin6z7sP9hLi7r+V3smzQ6+zXOuL6Q
         uz8A==
X-Received: by 10.180.24.65 with SMTP id s1mr4001531wif.30.1427795452858;
        Tue, 31 Mar 2015 02:50:52 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id i10sm19553973wja.40.2015.03.31.02.50.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 02:50:52 -0700 (PDT)
Date: Tue, 31 Mar 2015 12:49:52 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes explicit NULL comparison from the iio drivers.
Changes in v2:
  - add explicit tag for each commit message to identify better the
  drivers to which the changes belong.

Cristina Opriceana (7):
  Staging: iio: iio_dummy_evgen: Simplify NULL comparison
  Staging: iio: iio_simple_dummy: Remove explicit NULL comparison
  Staging: iio: meter: Remove explicit NULL comparison
  Staging: iio: trigger: Remove explicit NULL comparison
  Staging: iio: impedance-analyzer: Remove explicit NULL comparison
  Staging: iio: adc: Remove explicit NULL comparison
  Staging: iio: accel: Remove explicit NULL comparison

 drivers/staging/iio/accel/lis3l02dq_ring.c          | 6 +++---
 drivers/staging/iio/adc/ad7606_ring.c               | 2 +-
 drivers/staging/iio/adc/ad7780.c                    | 2 +-
 drivers/staging/iio/iio_dummy_evgen.c               | 4 ++--
 drivers/staging/iio/iio_simple_dummy.c              | 2 +-
 drivers/staging/iio/iio_simple_dummy_buffer.c       | 6 +++---
 drivers/staging/iio/impedance-analyzer/ad5933.c     | 2 +-
 drivers/staging/iio/meter/ade7758_core.c            | 2 +-
 drivers/staging/iio/meter/ade7758_ring.c            | 2 +-
 drivers/staging/iio/meter/ade7758_trigger.c         | 2 +-
 drivers/staging/iio/trigger/iio-trig-periodic-rtc.c | 4 ++--
 11 files changed, 17 insertions(+), 17 deletions(-)

-- 
1.9.1


