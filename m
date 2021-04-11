X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:6512:3455:: with SMTP id j21mr9736544lfr.410.1618139104056;
        Sun, 11 Apr 2021 04:05:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2106:: with SMTP id a6ls159831ljq.3.gmail; Sun, 11
 Apr 2021 04:05:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSCWt6GN1M3U4Wx/rOMVzvPzpxs0zgCn94K29RUWLvFv7GBtbvpLQdMIjJTwolT/dHAEu0
X-Received: by 2002:a2e:9899:: with SMTP id b25mr14685073ljj.376.1618139102467;
        Sun, 11 Apr 2021 04:05:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618139102; cv=none;
        d=google.com; s=arc-20160816;
        b=LDuHAeUJq3NDgbLW1v+izbfMsaxyCn2/aqAOjJCCXoEfRVM1/CcfZKzr3YhutD7san
         DdVpS0/RBn2+E6sMZYjl8um16n6hE/RTw2bHRZeJqglHcGGmLgsHod90WJGOksIzYQYK
         HQgMoATwGx9Jl6jhNU4Drzgn7S7HShAOBobb7Vx445q3hT74wCEwjyAuQ43rgZzvn+LU
         VN+nfW+s6VPTM29LZYgqgH7U0Ay8Mxn/PUonENCvbsHda8+fxDw0SMJ6fZdG3b7CAH29
         ck9WtCXu5XnJShJvxo8HFt1rvDLkzx+312sYQfTqgjD/nBPsr9QoTMrpnqzWp6Q+7qWM
         o2KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=az8q2odqAehv/6ccb9+lYFG/ANi2ZGKRpdq6W0qCMck=;
        b=e+eK5Daj1ngHhR+ht9yJgZcOJ4Nxqusy/kOYLu24i6gQCPiwKL0Ya30AABgnuu5S+l
         A8BiBkCbzj3Fa4hKmMZ3vEZj6NXDxsDuN0MKlgOLdm91CyBEkF/wh35mqmzQKcAEyRr0
         zOY9Eu6te2+WUr8CjPLQBl4Deb1qtvTn/H+H7mb52F76l3dpGS6rQ9JcKtYaRaUcLvp0
         McLLBmqnno1V9qSbHZbq/h63jP7SXxTO98Lsa32y9FjhimbOAsAWbXmmdTqihMUJx2MD
         kSA1GJYSGl75xZc36mn/QpSVs/iWGjKMjJHUnsJUE1fIKJpdr5OFiDlwVKNd2GUdolvU
         JBkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h157FVAE;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id p5si524014lfd.4.2021.04.11.04.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:05:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h157FVAE;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x632.google.com with SMTP id sd23so6867164ejb.12
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=az8q2odqAehv/6ccb9+lYFG/ANi2ZGKRpdq6W0qCMck=;
        b=h157FVAEdsj22vfj8EhBEa/n516NW0gIl7o8+tw8rdFUvDIObwG7ab0F0McIFnlhWU
         HkABfVBoQ6FHOSVgoRTXMgAUJIBJQolYbWyTpdji0iWbYNOE8vXpXSdH+HOaExRsP5Or
         7cxTCcuPfmxB9K6X+FNJ671tqC6PQJqMlrZqnB4rBvcdclTM8ubwSbxrR0hV4nL7swNU
         xo1ATP47vzutATXf6CQJkF/t5lQhjhs4BwZhEkFZfN3SBMMaS5cYOQuJRrhfKoEDf9oQ
         D7+j4LXPTt/0ET4Oo8S+7+y5F5IKafEOIB1yuMr9KD9qdjF2T6I86OQaWL8L0eAW9DrV
         paEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=az8q2odqAehv/6ccb9+lYFG/ANi2ZGKRpdq6W0qCMck=;
        b=R5K1slAQezHTsSaqwLy7f9SDkN9MjWyG4X2pSsycqeut/HkyHSTyPaGpvoz/ItAvff
         F53TbOn2sC4g8TMvvlq5loseux8HSXg9wyd1GUVdheJ3PTiUwrsKIkdAcPwf9AxnGakT
         2JeeMtz5isf9LQxBZMLfrpaYUtoeUntIHWFrDTbSlwD3oMBvWAhgH9R8hAGL0wOkGMxT
         57e0G5ZuvKWHr7C7JsjqvGZjgb3ulyCym60CByRkfhzGLHbU5jD3pCS+8RJLqQjN9OnG
         DR5fSFIov8ynU3usToVXY8FUvNBUO+FmCVrASX4e7EZBqDWO6wc67c2E/RXBkfAX30dh
         LTGQ==
X-Gm-Message-State: AOAM530QobVkR1hBCLQcRvXi5TMfELPWuP/ktrBsCX384R8/GnL9NNNW
	4d897/vsLy99AczJ6k2YW1RmBoJz4293XHG7
X-Received: by 2002:a17:906:b28c:: with SMTP id q12mr8781212ejz.284.1618139102222;
        Sun, 11 Apr 2021 04:05:02 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id i2sm4577202edy.72.2021.04.11.04.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:05:01 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v5 0/4] staging: rtl8723bs: Change several files of the driver
Date: Sun, 11 Apr 2021 13:04:54 +0200
Message-Id: <20210411110458.15955-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase, correct misspelled words in comments, change 
the type of a variable and its use, change comparisons with 'true'
in controlling expressions.

Changes from v4: Write patch version number in 2/4.
Changes from v3: Move changes of controlling expressions in patch 4/4.
Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

Fabio M. De Francesco (4):
  staging: rtl8723bs: Remove camelcase in several files
  staging: rtl8723bs: include: Fix misspelled words in comments
  staging: rtl8723bs: include: Change the type of a variable
  staging: rtl8723bs: Change controlling expressions

 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 18 +++++-----
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  6 ++--
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c      | 14 ++++----
 .../rtl8723bs/include/Hal8192CPhyReg.h        |  8 ++---
 .../staging/rtl8723bs/include/basic_types.h   |  2 +-
 drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
 drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
 .../staging/rtl8723bs/include/hal_com_reg.h   | 34 +++++++++----------
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 .../staging/rtl8723bs/include/hal_pwr_seq.h   |  2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  6 ++--
 drivers/staging/rtl8723bs/include/rtw_mlme.h  | 18 +++++-----
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mp.h    |  2 +-
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  4 +--
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
 23 files changed, 70 insertions(+), 70 deletions(-)

-- 
2.31.1


