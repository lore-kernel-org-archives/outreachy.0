X-GM-THRID: 6393330913423392768
X-Received: by 10.31.165.12 with SMTP id o12mr1297077vke.34.1488641458262;
        Sat, 04 Mar 2017 07:30:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.50.212 with SMTP id y203ls2236467ioy.7.gmail; Sat, 04 Mar
 2017 07:30:57 -0800 (PST)
X-Received: by 10.99.147.16 with SMTP id b16mr3213131pge.22.1488641457306;
        Sat, 04 Mar 2017 07:30:57 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si556207pfa.6.2017.03.04.07.30.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:30:57 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so8394683pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BeMqM3xRwHsUj+a83Y8/XhnTwUU5qHneJ+MUfBb10YI=;
        b=TdeR6GvB1RxaSImgK/yheJIKup2BmZg4K5iZOKRu/BhkqCtrh84QgZOY/mdwDbJICQ
         R4bT2toOyVkxF03PhfW59aPuIz8AK3Kyxrji/cKgGn9GnfpUq9Z2l+3nu64jIir8dYcZ
         mufPYiAhNTBZrfsBQnJS8vn2OrjFTskq+kOWk1smNfRjzQm5R3+IJs5fFx/16YGn4Wop
         BM0nzP4JbpXrpTUwDdERUrU8MgPtdMSwyjQ4LyqHZu/ftfsfdbj/Xrg+DI3yjItL3SiK
         nW1tf6hzVX3xCcNmYC3jYhpuEvMC+H8guA0+cPsKd7xpkLOybYKSl5z9hCWX/g1LgXAB
         hEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BeMqM3xRwHsUj+a83Y8/XhnTwUU5qHneJ+MUfBb10YI=;
        b=L65j7gwdMBHE8vUdV1/S390MmnlXqJYFCwytoUm3gzGpwy+NC/Z9LeoSF11DN9uUKz
         hHPIklbwGZgnpg8Zy98LdX2QIQzF8ujRS15apQ0pjW+HFU0phw6ZSEtQ9iQbj3WvLkZ7
         p2JmEKJnJy3XcAJQ305KJ5bsMl/x6e57lmbV5GN0vz3cq8Dd5IGMcgdYE+ngsyQlpmL5
         kEg3HhhvXSLOgaqa9SHjtk926lS55+vd9ybFVzoWgrosrzvZpazUfCIPP4P2zOQHur4Y
         VdRVdT1ORMQwfExcfyfHmhos9Fz6ZD9huT/SxmpEhV+pT6GxWHszMgHp01QLcQgYSsbN
         ImYA==
X-Gm-Message-State: AMke39kvhi19rSouYypvPF23RcrMflzLeB4/eCminK8IiEayKaUnN3KcNdbliZT5BUwTKQ==
X-Received: by 10.98.38.130 with SMTP id m124mr10425639pfm.22.1488641457111;
        Sat, 04 Mar 2017 07:30:57 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm29594520pgf.15.2017.03.04.07.30.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:30:55 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5 0/5] Remove unnecessary cast on void pointer
Date: Sat,  4 Mar 2017 21:00:48 +0530
Message-Id: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch-series removes unnecessary cast on void pointer in various
drivers.

v5:
  -Fixed compliation warning in lustre/lustre/llite/range_lock.c
   which remain unfixed in v3.
v4:
  -change the cover-letter subject
v3:
  -Fixed compilation warning in lustre/lustre/llite/range_lock.c	

simran singhal (5):
  staging: nvec: Remove unnecessary cast on void pointer
  staging: lustre: Remove unnecessary cast on void pointer
  staging: lustre: lustre: Remove unnecessary cast on void pointer
  staging: rts5208: Remove unnecessary cast on void pointer
  staging: rtl8712: Remove unnecessary cast on void pointer

 drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
 drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
 drivers/staging/nvec/nvec_kbd.c                  |  2 +-
 drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
 drivers/staging/rts5208/rtsx_transport.c         |  3 +--
 5 files changed, 10 insertions(+), 12 deletions(-)

-- 
2.7.4


