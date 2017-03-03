X-GM-THRID: 6393330913423392768
X-Received: by 10.157.12.97 with SMTP id 88mr1452053otr.122.1488563351479;
        Fri, 03 Mar 2017 09:49:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls1240690ioe.23.gmail; Fri, 03
 Mar 2017 09:49:10 -0800 (PST)
X-Received: by 10.99.108.71 with SMTP id h68mr1573374pgc.130.1488563350548;
        Fri, 03 Mar 2017 09:49:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si164284pfb.7.2017.03.03.09.49.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:49:10 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so13285616pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 09:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lXVVy0s0V9HdpKIuY2/Yuv64s2AZ7WtVHzoGqX5SIgQ=;
        b=tHOscT1qYZPpehk4jlwQ6mZHoGFP5D2E8t7U6HEYF4v5oS3SyMvN+AndAzkb1kgSwn
         DFHG4QAZbHUy9P2VhRc0JbYcb7BpnWaLu+svl/30mI6jPgXXoPJVR7q9gU4163xc7tyR
         BJNAVMjnAVoogEOXpbhALIROywbG5fJCl4IBk4jyFUPySqCaCITAiW2PrJ1gaYiM1oas
         FTm3BuZq7LzETKdAUiTLG5uJpN/zPKV2sUbCmVssVu3QhQeNgP172NXFYcQ6JC1i5IYa
         mPW34vPuRW72vFpMLaaB1j8MtgDYAUMOFSuUpKJzMfIbMPPet1Qn3xShRJIw2HpdENuy
         mPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lXVVy0s0V9HdpKIuY2/Yuv64s2AZ7WtVHzoGqX5SIgQ=;
        b=U2j05SLpihsVQuAI0AdyJdASUUymIzfgSV/LGxTJybgQeJwhs5VMwG0EtaXaLIZO6U
         TiiqTxLFdlKtxeFMzh/Xi7FOcaVIlG+fLCMy0mixbc4Chh1i1K653hIKoGyuI1Q12rAe
         fZNGOPDdGhCBMhBO/0QTm5t48wmaXLXRJ89krZ7r4I2ZRQM/tQAW6Zcd6sqM3HMDWa4E
         7jNTjp4O0D4PTdUWIh/W38XQakTZYeSnJx/05BCXNvqTxozmLrtF2ZIwQT0CHO4WUrrZ
         UzQx7jyfYOu+sWZ45OmLLef/tBtfEqDZqIYbYbDk/qE5sLNL15xOZfI8vdhz0Ed51c2x
         8PjQ==
X-Gm-Message-State: AMke39nsarqKMjr4a/eZMC9S+On85qh4aavNxpcDGGXsWgxk+QEi8sGD4stotRTSKhD/5Q==
X-Received: by 10.98.16.14 with SMTP id y14mr4896092pfi.63.1488563350027;
        Fri, 03 Mar 2017 09:49:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q23sm24654321pfg.63.2017.03.03.09.49.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:49:09 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/5] Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 23:18:59 +0530
Message-Id: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch-series removes unnecessary cast on void pointer in various 
drivers.

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
 drivers/staging/lustre/lustre/mgc/mgc_request.c  |  2 +-
 drivers/staging/nvec/nvec_kbd.c                  |  2 +-
 drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
 drivers/staging/rts5208/rtsx_transport.c         |  3 +--
 6 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.7.4


