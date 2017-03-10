X-GM-THRID: 6395538220161957888
X-Received: by 10.129.84.136 with SMTP id i130mr7651160ywb.54.1489141789983;
        Fri, 10 Mar 2017 02:29:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.74 with SMTP id b71ls2455421iod.32.gmail; Fri, 10 Mar
 2017 02:29:49 -0800 (PST)
X-Received: by 10.99.94.7 with SMTP id s7mr8864586pgb.105.1489141789151;
        Fri, 10 Mar 2017 02:29:49 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si1672401pfa.6.2017.03.10.02.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 02:29:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so10373759pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 02:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=R7qCzBZkR9oSk4j8aSntN9shzCyO+AFz3JS+E+8Q5Ic=;
        b=EJt7jxWiPlukPyg8ekjvfLCb9Oe+SCVnE+jCRTmA/oe9hwc/hRyp3bL/c0DDk2QBhT
         RoUgeCPrchIQjym9QABBOEcoUVaQuMCjWXwq/CLAvjQhN5uwo4G6M0nHVrQznJA+UweQ
         Z4k7pwvNXSPKcaQO3kCGkbIICGqmC8mrxfUhuHpn3whEEhjlDtzgiFtlatzQo8LVnGz9
         7STjjMw1HZjpVyg2VOsM+6k9S/vfxy36pdDp77MW36RBFmwFxAvW4SN0zvIu66xyDVbJ
         4HYcVZqV3rgIMAVl8qPW27xp61NzPlhOEm49pDdRiSQrbkfaMZhLzkXIInNseFcWKA5M
         zf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R7qCzBZkR9oSk4j8aSntN9shzCyO+AFz3JS+E+8Q5Ic=;
        b=f0FAJ7/lNZ8KArAdDfuTc9j8atoTr/ehc2AwvPil69+dfdXmEX6fZ91BVqAbZvIZO1
         RHQocDQXiYYBW85ZH4G0hRYDrOOkAhRdE30cYAmNHYReddQrb+kq7OkagfJcx1OaeTRs
         46ZZfB9Upo+gZbJKOeFEtUIKO1UzGWnMZfhTwmqCikvJFggmr/RhqS71L+35UcYW6UXK
         QNLb8Q/DUsA3O2CYKynx/LvofghHLBSjE9VmmQBnVySBG4oSpS6v5x27nvtOba5NJkxt
         fDm4ze0tam+6ZOz7JeNp2ZFiPYHvbAtU8lNtKZFq1zzd2FRWyqHUrGxpUk2YM6Erj1CW
         R+Cg==
X-Gm-Message-State: AMke39n8LqO1UXfDhrHpLDVHnZcE+HArJW7kOItOVL5LIANV8w7aPjSeR471yziTNDcLRQ==
X-Received: by 10.84.215.155 with SMTP id l27mr24525549pli.31.1489141788955;
        Fri, 10 Mar 2017 02:29:48 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m3sm9926648pfc.66.2017.03.10.02.29.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 02:29:47 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/2] staging: speakup: checkpatch guided cleanups
Date: Fri, 10 Mar 2017 15:59:41 +0530
Message-Id: <20170310102943.1970-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (2):
  staging: speakup: Placed Logical on the previous line
  staging: speakup: spaces preferred around operator

 drivers/staging/speakup/main.c           |  8 ++++----
 drivers/staging/speakup/serialio.c       |  4 ++--
 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c |  4 ++--
 drivers/staging/speakup/speakup_decpc.c  | 14 +++++++-------
 drivers/staging/speakup/speakup_dtlk.c   | 14 +++++++-------
 drivers/staging/speakup/speakup_keypc.c  | 12 ++++++------
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 8 files changed, 35 insertions(+), 35 deletions(-)

-- 
2.11.0


