X-GM-THRID: 6332043627755208704
X-Received: by 10.66.139.6 with SMTP id qu6mr4351456pab.121.1474293793926;
        Mon, 19 Sep 2016 07:03:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.114 with SMTP id l47ls3911168ote.24.gmail; Mon, 19 Sep
 2016 07:03:13 -0700 (PDT)
X-Received: by 10.129.160.15 with SMTP id x15mr3145375ywg.25.1474293793543;
        Mon, 19 Sep 2016 07:03:13 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si4849721pam.0.2016.09.19.07.03.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:03:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q2so4681995pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RDIywlrpzmbWxfz4v3X+NZO0SwdIe9uuCSa2UXvR/Ho=;
        b=mWppiRW9QGFY8qCm9ECoxE0/Bwn9NVZhb/MUh9gtotL0rpPHsNhIdO07GCgAVwiexj
         jg0moVStILs1+N0d/5Qzx9a9S17M6RwMHoCOzw91VBQo5QuXXJOvzheVxtYAnaVp6D8+
         Ec90AQtHoTpC/iEVclYQKZctBprYRqg8YoW+51PD/UEry7phieBrdcifuX0kn5jac6kF
         jAFfqNQmVCJekfLR0QYiKuo8Lt4Dk6XNncIvvvKCe23Sh1PcEInR1SeU5o4Y47v+tGPK
         m8fAIdHowhmNT4xwI30T9iBNIokbhJl6t0zYCoex5SR4aX6LRL+wRKmddvHNOOzYjbVT
         ICxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RDIywlrpzmbWxfz4v3X+NZO0SwdIe9uuCSa2UXvR/Ho=;
        b=V43wy8MRq4Kq8QYJ0OpTgz4COfws27napVkNA/CG4H0c4nApUuHY7tifEqMdPK6JYl
         unwo/IzjqDHswWFTubklsnxo82hG9Oo4h0Qt5qp69xTPNEgDnIcYVU6vWyx/K8OQAgad
         k3tfnirK+EW9MnvbznIml6WRcZGkTbLuxExCUoiN0MoBVfiljPFvvlFfbPr/QqPqQFVZ
         JTM+fkQ/XeVxJgwObjlQkkiBqCJAoI0EjzqlFO0djK9vCLvtFgylGttBye2z5qbmXtah
         JENMQ3QosB1o9nDs/QPiUM9Ujs0jtATb3YYUPs5501vXEB5LZ6rUfeziuoA2LEX/d0Jp
         0XJA==
X-Gm-Message-State: AE9vXwNtMBG3tYrBlAqaK49MFEapPYtvNBoxeibc1Dp7Gi7MDNz5eYViBalS5xsYJtQvMQ==
X-Received: by 10.98.81.1 with SMTP id f1mr47396062pfb.35.1474293792923;
        Mon, 19 Sep 2016 07:03:12 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.148.113])
        by smtp.gmail.com with ESMTPSA id w15sm369310pfi.68.2016.09.19.07.03.02
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 07:03:11 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 19:32:56 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Staging: wilc1000: Code cleanup
Date: Mon, 19 Sep 2016 19:32:48 +0530
Message-Id: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset declares some functions as static and remove their 
declaration from headers. Also, drop prototypes of some already
static functions.

Bhumika Goyal (2):
  Staging: wilc1000: Drop static function prototypes
  Staging: wilc1000: Make functions wilc_mac_{open/close} static

 drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
 drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
 3 files changed, 13 insertions(+), 23 deletions(-)

-- 
1.9.1


