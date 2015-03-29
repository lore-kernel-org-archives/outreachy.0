X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.87.110 with SMTP id w14mr5207906laz.3.1427642427138;
        Sun, 29 Mar 2015 08:20:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls508411lag.45.gmail; Sun, 29 Mar
 2015 08:20:26 -0700 (PDT)
X-Received: by 10.112.130.71 with SMTP id oc7mr2671799lbb.13.1427642426586;
        Sun, 29 Mar 2015 08:20:26 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id a14si157742wib.3.2015.03.29.08.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:20:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id m6so145569582wgd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ppdvLfI4OO8XieRL3hn/JS4RRHGpm+0cydvz95qG27Q=;
        b=Wx8/aTKT5jlI6NhKnzz56yTWVhYuK52RmXkU1Od6is0wrkRcAXwtTOo6Ap1f9MCOz5
         0ZNpBwd+mi+pTRQp9ReWoIh/OdpC/W/URSGrSjxA/AZ7X1e7cdyd+TGzwlm6rIgd6kIj
         c5B72tFUeprKyOTOHOQDKpy6yaJO/rwCvlzU+KxKEe0B8YqLF5VnCST6EpSridxlHjCt
         sHVmA+u2NTZW06CE18PR+29aYO9Xme7IfNmqnxZkKG6FTD/l2/coyMBvd6nQvdl/pSQJ
         9j4bKsRpi9JGrSXk6YtGpmsMbLoKd12jS5JMSyeHLqEKy8xIpsw/xM1qAIepqgg0OuL9
         fHRQ==
X-Received: by 10.194.211.104 with SMTP id nb8mr55732519wjc.51.1427642426496;
        Sun, 29 Mar 2015 08:20:26 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ga8sm11591868wib.11.2015.03.29.08.20.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:20:25 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:19:28 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchet removes explicit NULL comparison from the iio drivers.

Cristina Opriceana (7):
  Staging: iio: Simplify NULL comparison
  Staging: iio: Remove explicit NULL comparison
  Staging: iio: Remove explicit NULL comparison
  Staging: iio: Remove explicit NULL comparison
  Staging: iio: Remove explicit NULL comparison
  Staging: iio: Remove explicit NULL comparison
  Staging: iio: Remove explicit NULL comparison

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


