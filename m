X-GM-THRID: 6200291870677925888
X-Received: by 10.31.140.88 with SMTP id o85mr3052219vkd.8.1443617947593;
        Wed, 30 Sep 2015 05:59:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.55.10 with SMTP id n10ls179226obp.36.gmail; Wed, 30 Sep
 2015 05:59:07 -0700 (PDT)
X-Received: by 10.182.102.194 with SMTP id fq2mr2984469obb.43.1443617947187;
        Wed, 30 Sep 2015 05:59:07 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si50495pac.2.2015.09.30.05.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id lk4so39902278pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t5zU4Zk5RmpnoHgKwylmoIpw+5XdIZNFUjhJFoFiGzc=;
        b=BdMkNV4KsoEw9N7UwIIlxJI+8jsUMMRW0OQ0J+qJJDfclrbbr9gDAD5v/28U70JRtl
         9rMx7bXxJSPEbM38NSf4a3LhGtGfVcOYQpZkztA9b8vc8XTSij5dt83SKxApXC0lhgha
         aN0KWm9FiyQQDhLgGkFk0W2zmaia/d6FRuo2LgOe+8jOldB42HDq9E8SJYRJ86/G0ssO
         qb8m8L/vzs9coBZ3Y9wGiPK9p5pNYXqpEibEqLfQHJrSizlyNR+fVP8Rn3cEMG5RY1L4
         f0Q50mE85KbE5SVnHQ3sJOJAr9qNCtSGFrCeEg8H4dgmvvZhDDzbQkJkFIjX8Ag9arxN
         lLXg==
X-Received: by 10.69.25.1 with SMTP id im1mr4807752pbd.102.1443617947038;
        Wed, 30 Sep 2015 05:59:07 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gt1sm689575pbc.10.2015.09.30.05.59.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 05:59:06 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH v2 0/2] Staging: fbtft: Remove debug messages
Date: Wed, 30 Sep 2015 18:28:52 +0530
Message-Id: <1443617934-6468-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560BDC99.01B7,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove the debug messages which provide info
that can be obtained using kernel function tracer

Shraddha Barke (2):
  Staging: fbtft: Remove debug messages related to DEBUG_WRITE_VMEM
  Staging: fbtft: Remove debug messages related to DEBUG_BACKLIGHT

 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 --
 drivers/staging/fbtft/fb_pcd8544.c     | 2 --
 drivers/staging/fbtft/fb_ssd1306.c     | 2 --
 drivers/staging/fbtft/fb_ssd1351.c     | 2 --
 drivers/staging/fbtft/fb_tls8204.c     | 2 --
 drivers/staging/fbtft/fb_uc1611.c      | 2 --
 drivers/staging/fbtft/fb_uc1701.c      | 2 --
 drivers/staging/fbtft/fb_watterott.c   | 6 ------
 drivers/staging/fbtft/fbtft-core.c     | 4 ----
 9 files changed, 24 deletions(-)

-- 
2.1.4


