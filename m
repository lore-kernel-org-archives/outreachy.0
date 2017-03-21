X-GM-THRID: 6399943776789331968
X-Received: by 10.157.32.138 with SMTP id x10mr15552239ota.65.1490103028544;
        Tue, 21 Mar 2017 06:30:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.143 with SMTP id y137ls2874321itc.9.canary-gmail; Tue,
 21 Mar 2017 06:30:27 -0700 (PDT)
X-Received: by 10.99.115.66 with SMTP id d2mr18966708pgn.144.1490103027526;
        Tue, 21 Mar 2017 06:30:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si3437003pfb.0.2017.03.21.06.30.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:30:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so17134064pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cny1iD9b9kNXK8KcHC3PknDi1g52/RikdvQ7+wGbXDM=;
        b=RISyHZw7gb5hXGqNuMZ5GDFnGtKDIVxq5IiadgHlDA12XmOU/sF48Vwd25+x9EA+fk
         neNnsIQy2PDADldbBJRYokIpIRNJQdNj9emsW8hrsqDjwaMx/1hI0sr5/gM6uEpfWZQu
         p2E+AfKnQSBG8FSCjWoIm/lfdOhJWKkLgRUSDdeW3arwCde4BuQzMNHt72Y/FcWEbMUK
         cnrASJGlJmYXv0Jo/KlPcmvpdtpsJ8ivW7gYLM2LdNfrY4kvoOpip/+w0riG/kmxxBiC
         KrCkh9/BjQiTIAOXXpeS4oZ1+bGjbALR6hUzC7FeASOoXEyDpYXAXy7Q1pDaNE8p1DXW
         y55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cny1iD9b9kNXK8KcHC3PknDi1g52/RikdvQ7+wGbXDM=;
        b=uJZmjbdzI9bp/yWxHQG7faVwkiPluwc1qNDPMTLnsAUvD19sZbrbfOEpgJFzjoxSJ2
         z+rY52WCkZzgUdM1lchWXw/WeRewUc1MhtJ+0ZefMovO76aSe7tQFy5JCTux8IQ7bLGo
         5/NM5s2Z3/9SRkrJ7SsA/dxx0D4PvTSR+ifCu7YoLggIbRYwgh1j8PbKl7WZNmnquE/u
         NJoBsjshSl7Cj54RrQOQrOTNmhGO+y6BB4Ukzr1k2vI0YTR8RLNEkMEdCvOcFlOsVtVq
         458GTqDoV7j11cPzMp4BTTBENr8hY8pSwcuHK7sUpIOd46CZQWg5+XyT0yM8o5AnKeiJ
         EQZQ==
X-Gm-Message-State: AFeK/H3TbN9RjWIo+PeTmzgfR+VnHA53T8WPymRBQYvCqUGvznfjeqswfSrVaDJ9Y1ULpQ==
X-Received: by 10.99.132.73 with SMTP id k70mr36047646pgd.28.1490103027275;
        Tue, 21 Mar 2017 06:30:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l29sm29966599pfb.118.2017.03.21.06.30.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:30:25 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com,
	lars@metafoo.de,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/2] IIO coding tasks
Date: Tue, 21 Mar 2017 19:00:17 +0530
Message-Id: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Patchseries of IIO coding tasks

Arushi Singhal (2):
  staging: ad7759: Replace mlock with driver private lock
  staging: iio: ade7759: Move header content to implementation file

 drivers/staging/iio/meter/ade7759.c   | 56 +++++++++++++++++++++++++++++++++--
 drivers/staging/iio/meter/ade7759.h   | 53 ---------------------------------
 2 files changed, 54 insertions(+), 57 deletions(-)

-- 
2.11.0


