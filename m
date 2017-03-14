X-GM-THRID: 6397218994574589952
X-Received: by 10.157.52.210 with SMTP id t18mr16298227otd.119.1489468616533;
        Mon, 13 Mar 2017 22:16:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls4338097otb.24.gmail; Mon, 13 Mar
 2017 22:16:56 -0700 (PDT)
X-Received: by 10.129.39.142 with SMTP id n136mr17090040ywn.160.1489468616210;
        Mon, 13 Mar 2017 22:16:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si3411733pfa.4.2017.03.13.22.16.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 22:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so21931318pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 22:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sD/LkVoKQlJvXTM92TjrzDJF/le3vy7JrhSsIEa4hjQ=;
        b=AclONpqVZpNeqQ/yhilTJbhK+fAk2IkYGMfCzbWjGQgm22X/x7umbATwSAFv9tC2yd
         67c/tfqEcvD+VDA49qIkIEY8bcjGJKyrAaUGUcoOfDEBROazP8A5pK2cn4USWDV+q+2Q
         rUJpMiOrZjw1iAHKAxQmOROKN+89AaeCVmpybQmCbs7KB0iwKEYCjGxScj6mxRs3UMbN
         kTGr/ff1JGZqIX4mTrs4+liXLHLAobaG6AmeF81YQOvrOHaItJhzzEpnY05J4U4vp8Vp
         E6GTKkeivdmX1BBog8UfMdEaBDz4sI784un2XwRh5cYBGvfg7EoVv/y5vqUDwFDN8FVY
         xjPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sD/LkVoKQlJvXTM92TjrzDJF/le3vy7JrhSsIEa4hjQ=;
        b=fyTwhYGmxjc4DhqDxEe5q/BSYHpy/lkrgt1chqIG2gHonFlQ6v9UzJoWRoHxy54Pij
         wC/uqJ1VQ8apNdl10ZTP9Pl9/rULbqlGRYN0s9Ow+t9J/dxI67vI3GcjkIWyuWnBhrC1
         4JX6gHiWilz+LPpvHH6dFgV8CJ2oxTx/22Q1XXxdA3CVKWsLi+a5F8WD5+7Nj+E4uBO2
         g6lh8L5PjkiKllZSwaYQiqHQm1w3s8hjWRMSux4thAP8+8APmG51CAAH5IVX+H/LekIJ
         +t1F8750LvGfhXIRGM+9PTyJ5TrLMvtPmZKBWe85tXotx+MnXooI9AxXIsdmz/aw6Cpp
         QI3g==
X-Gm-Message-State: AMke39k12xM3gvYZlsS+cvYtrnRA7O5wwr7jGVaN68LqtUONlDb3Q7E6NOOArDt1acJjBQ==
X-Received: by 10.99.160.89 with SMTP id u25mr41001616pgn.92.1489468615988;
        Mon, 13 Mar 2017 22:16:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f21sm35534219pff.48.2017.03.13.22.16.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 22:16:54 -0700 (PDT)
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
Subject: [PATCH v3 0/2] staging: speakup: checkpatch guided cleanups.
Date: Tue, 14 Mar 2017 10:46:41 +0530
Message-Id: <20170314051643.28085-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (2):
  staging: speakup: Add blank line after declarations
  staging: speakup: fix "Alignment match open parenthesis"

 drivers/staging/speakup/kobjects.c     | 2 +-
 drivers/staging/speakup/main.c         | 1 +
 drivers/staging/speakup/serialio.c     | 1 +
 drivers/staging/speakup/speakup_dtlk.c | 1 +
 4 files changed, 4 insertions(+), 1 deletion(-)

-- 
2.11.0


