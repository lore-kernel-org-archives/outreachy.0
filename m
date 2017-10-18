X-GM-THRID: 6478335539266191360
X-Received: by 10.107.174.38 with SMTP id x38mr8416855ioe.61.1508355033256;
        Wed, 18 Oct 2017 12:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.232.14 with SMTP id f14ls1227784ioh.20.gmail; Wed, 18 Oct
 2017 12:30:32 -0700 (PDT)
X-Received: by 10.36.116.145 with SMTP id o139mr5954408itc.26.1508355032429;
        Wed, 18 Oct 2017 12:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508355032; cv=none;
        d=google.com; s=arc-20160816;
        b=eCutAeqjfT79SUBAF4hb/Kv2Wt4Krhb8AhuHVXEh8L63hLnB37tF23rAVnnWfMjHgm
         WTTgCdUtI+i2ox3QgTcJ8ebkLl2J4gEqK4nbKCqzBTUisL2Rp5XRhCcSLYeNec8oJYty
         GIu4KHAL7Kvf6h3TIcTFp93XutY9iSSmNHUR/3b7nWs2FR4cIh8xBs2FX8wpGoKKj7r0
         Utamp3Oog33IbS42hJWw4X2lsowMwk+nXJMS6iM63S0abXZCTNROCGeRiaUDl+K2gd73
         gacZfYYugENlQ+/BBjb8UYoNpPxVydXAtc8b+v+vlgcLG7G+yD2+mkqeglnHBcWS4Els
         G6Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=7N5W85LxUZtPIVICS30rl9/XC4FJPFz5W1+BfKwi03M=;
        b=d+SlGD+xxNeRiJDjU7XfkexbvHu4OcE1BBNdHCI8J7/LmAb7OpOMR7cJUp7eLQ8Z5D
         Dm2IrqkpN/7NUoOn6eKRPOsckavLrqZcRQDKsQo//8HPYU3XK4rSzEvd3dgQXdeioYwV
         V0pftuuilE7oNvOB5BvnskJvUx2nIhPkGQUDGF8NCBQIzdHKRtEywZsIMMkH4fZ0GYkm
         es0AJV0jo78T/fcOeep92c4K4l7dbULJ25T7xuMG69oznLAUv2mGBsbWpiuWHATlG5Yo
         dxB2gV8/WfZDHsPn0z7EKGZHn0i128OWU1SAOY6wCyPZMASMQSPArKo8HHqXQYZGKryp
         jZ7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C62/F1CM;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c29si725627iod.3.2017.10.18.12.30.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 12:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C62/F1CM;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id a8so4687795pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 12:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7N5W85LxUZtPIVICS30rl9/XC4FJPFz5W1+BfKwi03M=;
        b=C62/F1CMn3RBBeCKE/dVyN9dVyMUiLR6vqn4q4vOCHBzaYH5k1mP8IV2lv8Qsk1zdT
         C6Ea8SvPCs+PhuTNRGQndwmYfLJyNnHafOa11IyTDis/hRejWUxMUwZ1a14oCoECZFzb
         RTPxy3peWR/G9VUwIBxjDT9IF7Ph/emNBibzU53xpMpSJpCThUdKtcCjN7jP1i3oxgC/
         L7HfLCKcMitnuLfPKOlxV0/+1PEuFtaED2KWrI3GmvLYHtTdJGLQJ2GxOfyae+3ywII+
         eob7tunyuaHBzkptB0TX35D2mUAhBO6nftGM5kdP7GDA7IJuS+2WnTXQ+ESwcO975We9
         J0+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7N5W85LxUZtPIVICS30rl9/XC4FJPFz5W1+BfKwi03M=;
        b=Bl2de46j5EC4iMKWKmQTxU/LbCP4YXspESbYALrSFFYODxDegb7lsey5MgiR2iw92b
         /ZIt7wLVoMqPRxMrmyvzD97lSqAXbbkv8ybMQSF3MBMsabBQqe1nhKVEyNw/VUaBSevW
         ZzPfvab/OC5JD3aGaBwXosQILOs2eZNoM5cgpfhpt7x+4a3OvjATXmyiFemeFP77+ipJ
         BC0IF1zlRZRcpVeWpy+DUXEL8H/b6QGWNg8Kmqh70N+gxrqW3Ln+RoErE4EPBixze7XX
         l5y+578QUvYjfbpUP1pAQAa/VIaSp7UANHji/aNUJp96Fsqil6TAZZnnuYqZ235ldH8r
         Oq5w==
X-Gm-Message-State: AMCzsaXksz6z4lyB8rLKO0HFu0LcHlQm0+BJakXxZRYmTyI7ANtS5IjJ
	tBsZXNMCE87fny/979/iP/o=
X-Google-Smtp-Source: AOwi7QCpF+2RSV23mr0waqIDYcUUnuNta77UMbYXZbGyYpAtWjuetGW10qDoxY5yToabq1UI5x43sQ==
X-Received: by 10.99.160.71 with SMTP id u7mr14599143pgn.22.1508355031879;
        Wed, 18 Oct 2017 12:30:31 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.60.166.95])
        by smtp.gmail.com with ESMTPSA id s87sm10767082pfi.23.2017.10.18.12.30.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 12:30:31 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 0/4] Code cleanup
Date: Thu, 19 Oct 2017 01:00:25 +0530
Message-Id: <cover.1508354332.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series performs code cleanup like using list_for_each_entry_safe
to make code more compact and using list_entry instead of container_of for 
struct list_head* variable types. 

Srishti Sharma (4):
  Staging: rtl8188eu: core: rtw_xmit: Use list_for_each_entry_safe
  Staging: rtl8188eu: core: rtw_ap: Use list_for_each_entry_safe
  Staging: rtl8188eu: core: rtw_mlme_ext: Use list_for_each_entry_safe
  Staging: rtl8188eu: core: Use list_entry instead of container_of

 drivers/staging/rtl8188eu/core/rtw_ap.c       | 38 ++++++++-------------------
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |  8 +++---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 11 ++++----
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c  | 12 ++++-----
 drivers/staging/rtl8188eu/core/rtw_xmit.c     | 30 +++++++--------------
 5 files changed, 36 insertions(+), 63 deletions(-)

-- 
2.7.4


