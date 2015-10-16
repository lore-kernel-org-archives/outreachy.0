X-GM-THRID: 6206280629046214656
X-Received: by 10.66.121.135 with SMTP id lk7mr13301624pab.31.1445012313278;
        Fri, 16 Oct 2015 09:18:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.194 with SMTP id y185ls841235iod.90.gmail; Fri, 16 Oct
 2015 09:18:32 -0700 (PDT)
X-Received: by 10.66.246.198 with SMTP id xy6mr13339311pac.36.1445012312865;
        Fri, 16 Oct 2015 09:18:32 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si2139298pbb.2.2015.10.16.09.18.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id cn9so9805230pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cFIrQd1g4lj6/mXkd9R2sw1sPOao4MUpSb7U2Db9V+Q=;
        b=cS5PnWyhPozIx0scQ8RralT47VqysHUYdNu8wVX9II75W9hYd3tZlXqmXv6E3Smnc1
         lmjdTGns7f2k09OglTAuf7aVOWaOsOws7xVbuCKgjHIyz7UpppsHDrknoXAiuD+X0+Ur
         vCTDuTduP97IbZ++af3ACtiekPkyJJ5/vxYK6Y6/RIfc32OgYgDqNqJfXb6/CYMO6byL
         McQxPIdKnT2dqLV5EFpKwuBE77jzBUhBHhG9AgwWGczj5gMIXUvOHGVPnD+y3LU4xIaL
         pViao7u2RjWYQGKC5fbk2347h+xSP/uqH4dGrBX1J10OFIpJ8siIB74s92Oc9LhgXNqT
         /WrQ==
X-Received: by 10.69.26.101 with SMTP id ix5mr17404781pbd.144.1445012312762;
        Fri, 16 Oct 2015 09:18:32 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ez2sm22075184pbb.5.2015.10.16.09.18.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:18:31 -0700 (PDT)
Date: Fri, 16 Oct 2015 21:48:18 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Remove explicit type conversions
Message-ID: <cover.1445012164.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes explicit type conversions as compiler can convert
the type of variables implicitly.
After applying this patch, code looks better.

Shivani Bhardwaj (3):
  Staging: fbtft: fb_agm1264k-fl: Remove unnecessary cast
  Staging: fbtft: fb_ra8875: Remove useless cast
  Staging: fbtft: fb_ssd1331: Remove unnecessary cast

 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 drivers/staging/fbtft/fb_ra8875.c      | 2 +-
 drivers/staging/fbtft/fb_ssd1331.c     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.1.0


