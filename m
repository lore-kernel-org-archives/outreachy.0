X-GM-THRID: 6392026082663464960
X-Received: by 10.99.157.142 with SMTP id i136mr1427566pgd.78.1489576841611;
        Wed, 15 Mar 2017 04:20:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls1855552otb.17.gmail; Wed, 15 Mar
 2017 04:20:41 -0700 (PDT)
X-Received: by 10.157.82.35 with SMTP id e35mr1123369oth.127.1489576841181;
        Wed, 15 Mar 2017 04:20:41 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si279742pfa.4.2017.03.15.04.20.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so1970805pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=n6f4IaTcZowcDftHq4NtUYYTOESVinTb8t2pJgjzp7c=;
        b=sqHXfKPtD8YyYaAEHdNIGx8rdWqlAsDnmG5jgyVlcREDbmek0b4HGGRidPyGKbY71l
         1xhuoqPbdPgep8GVq0UhLLgvslkm//Ky6OQ1OFrqS5ZPJrsVXjCbPKWiLv48yaiYHueJ
         CeYfhwaw1E2L8t19e+CRWrwyf95dmg5NC9cdFeoZqY+HmC3EyHdRxJiDG0ZWeNG559U5
         JDqz0d9gADpdShnjQ+afHWIbt6GYbcipOCYDfcuHSbtX82OLyNHZOIFz/DdHbetQrPJj
         m1BKEQwvZ+zyepIrFQSFz0SZo4hgXT8jTuW88DL4e+5Q20r3/cXvXjwQPkTj/69PciB/
         vh/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=n6f4IaTcZowcDftHq4NtUYYTOESVinTb8t2pJgjzp7c=;
        b=HqoIvH2FQZTwnvboP641OiLNK+44vTRHOlYgy2CUtBgybqjeAFKyYUN/QSCzo29Cua
         lzvB+u13sKoJ3oaJ8ENcTa6of5Oq+HpUnlaWxZz5JTKfyq4WJBEgMKP4fUabJ7m5Qv1l
         urNPVHBVyKKBVHaHGVhA55JNfymfLmXcA3UurlIa5+WLp4GmV9sa4CxGO2lSS0ZARzIi
         0/vCm41lDZ5FKkWoljVxzlYk83oxwLjV09Rgr34ZrmRq/Xz1Y8rw+D0M0MBGiuBRzath
         xrcCitfWKCujS67+JAVHVXDcdmg3malD2uI63sBRUnLt7UyAQd7ncjvm8jUJfc8J/ZlQ
         EkqQ==
X-Gm-Message-State: AFeK/H1oOgRDeLUq38wQo3gP/F1No7gSy/k7V0WbCAhh/PCk/SSxoaINyjckNqbeW7jgaw==
X-Received: by 10.98.160.84 with SMTP id r81mr3154396pfe.71.1489576840959;
        Wed, 15 Mar 2017 04:20:40 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.20.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:20:40 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 0/6] staging: lustre: Replace typedef with struct
Date: Wed, 15 Mar 2017 16:50:49 +0530
Message-Id: <cover.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove struct typedefs and rename structs accordingly
as per kernel coding conventions.

---
Changes in v2:
	- Split multiple typedef replacements into different patches.

Gargi Sharma (6):
  staging: lustre: Replace typedef lnet_rc_data_t with struct
  staging: lustre: Replace typedef lnet_remotenet_t with struct
  staging: lustre: Replace typedef lnet_route_t with struct
  staging: lustre: Replace typedef lnet_rtrbuf_t with struct
  staging: lustre: Replace typedef lnet_test_peer_t with struct
  staging: lustre: Replace typedef lnet_rtrbufpool_t with struct

 .../staging/lustre/include/linux/lnet/lib-lnet.h   |   8 +-
 .../staging/lustre/include/linux/lnet/lib-types.h  |  32 +++----
 drivers/staging/lustre/lnet/lnet/api-ni.c          |   2 +-
 drivers/staging/lustre/lnet/lnet/lib-move.c        |  48 +++++-----
 drivers/staging/lustre/lnet/lnet/router.c          | 103 +++++++++++----------
 drivers/staging/lustre/lnet/lnet/router_proc.c     |  15 +--
 6 files changed, 106 insertions(+), 102 deletions(-)

-- 
2.7.4


