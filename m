X-GM-THRID: 6806789560169660416
X-Received: by 2002:a05:6e02:5ce:: with SMTP id l14mr7642927ils.190.1584829194061;
        Sat, 21 Mar 2020 15:19:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls1589289ioq.5.gmail; Sat, 21 Mar
 2020 15:19:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvUk4dpJkk1u+TU3MFANY0uYNqlK2Qk5uoWDdCrBArtOSI5A2pJXvbeAHvLU8l227PA+JT+
X-Received: by 2002:a6b:ce02:: with SMTP id p2mr13500073iob.103.1584829192610;
        Sat, 21 Mar 2020 15:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829192; cv=none;
        d=google.com; s=arc-20160816;
        b=SQgWThA4f9cRwFSAGG0tj2CVLzSGW1N619uq/JkEnEHQkbgKeJ7DsVaXRW6dAItrIt
         oXT2iBtea6qVn9VZ/MHRY75xLdiVtemsU3zBtZderGYmaoT6nSeCrGBRyMWg/LoiQyMc
         BgtisgoLcoVuB8JaQ50gdxmF0wb6tX5+wvzc/vqwx+j0+yU9B6QwLNq3ngTmrLo7LdHQ
         9p4jPuVP65dZSnx7+FtNn6HDWxOcWLCu/JsywZzOdcuaxv29wKEB7tCC8GdfmTIqbCmJ
         hYdoJWPxbf75AUhKMs7H8MKPY08E5hW7Teui2pAiw14sX3dOS75QAfnLj4h+fuLjX0vU
         7Qkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dcdv1o2OE9Dbud7mtcZE4La5oxeElzOfy/RpqBkNU70=;
        b=AVkEfkHuzrvj3s03qSxDmtfARMgxzHawKR6Ea2W696+7gAdjfzteC6ErGAYfSkIHA2
         ApKlfej3PkeFMkd35BBym+W8bSAcwapoBQxhHxKUgAIAoDls73RyM2Zia+pmptyVtaun
         qEV+IiYbtugLIv1v6s2gzvzeShdlNFMzSlg8WiH29vAqYjSoolUnMDLXWpO9lbI2paU9
         X8wCsLKhQFilljsrfH4/bvYIyqBatLcRt8Ueve+PcT5+/rNnZX4CzdrX/8eF/DOjrrmM
         JAzo3UNPI2eHZBWXFoa0y5BE9S0UqMEA9DHY8WWoGwzXrtyHMfUydjUQ0ozxr8OWR/tl
         Dekg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hVIRgwnp;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id 131si477786iou.1.2020.03.21.15.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hVIRgwnp;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1029.google.com with SMTP id dw20so4547624pjb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Dcdv1o2OE9Dbud7mtcZE4La5oxeElzOfy/RpqBkNU70=;
        b=hVIRgwnpxdr69DeKdBTp+lmem0I+J1Srk0P5SlKdjskRkccRYyn8T7kWO43uveerfa
         /WlC//EaoG9P0xkUdAwMo1JOIcLFg3lZyM+OGAt06kQ2yF/kOlQHem+JTJzu2WEi45FV
         XqSUPnIvP/rAarBMKEySjJeyj9N6nShXt8DnGBpxbPED23J8HkBTgJaO85TlIyPlYzZn
         fllkCvtu3NwYUWgz0murvQmzEsdLr5peCBPXACC/ntu7On6jLl48TbtGjSnr8okcm8Iw
         gHxcR4NPlgVlcmLLMovEnYoYI32eQm4N07BMhtlmNqmJ5WQOTKDKYbgJpqyt3YMBeEDs
         xcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Dcdv1o2OE9Dbud7mtcZE4La5oxeElzOfy/RpqBkNU70=;
        b=bGimsYkWUh8VHnON5M4B/E8yDeNb2ZuynF+F5nkELzIHYQZ0cau9jfhpq8116DbVJK
         0TReltG+ux4nhdyLQ28UwsHO701oyt4ktQLagyyq8KlT5kOml0rtaitj5NUPXHXyhCzi
         h7lUtIZx8C3fl2yz0/1bcrVm48u0j6Ip6HhicNe6tE8JLLYpQAclb9MoSQNsp180bz0z
         SvA7PsXNRfEgfhzLWGIPRN3KYF/Ht49iStDUMPo/5xX4OC8C7FdTAYdK+YLpwg3pyGvr
         BcJuC2CWvWxnWh5A8YgYdeKx3ovuDwyoDkLY1V2PQT++QD9uvdSPnSLCYAAOcWDPjaBd
         2pVQ==
X-Gm-Message-State: ANhLgQ3Z8YIJnInTGjyO7FRCV8X1YTRtOxP1jVHc/IhYyzcjaqsWDgBE
	f1jA4Qv86kwr0UvEi+52V4Y=
X-Received: by 2002:a17:90a:cc01:: with SMTP id b1mr10480287pju.121.1584829191777;
        Sat, 21 Mar 2020 15:19:51 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id k24sm8227389pgf.59.2020.03.21.15.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:19:51 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 00/11] Staging: rtl8188eu: hal: Add space around operators
Date: Sun, 22 Mar 2020 03:49:43 +0530
Message-Id: <cover.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset adds space around operators and removes
all the checkpatch warnings for the same from the files
present under drivers/staging/rtl8188eu/hal/ directory.

Shreeya Patel (11):
  Staging: rtl8188eu: hal_com: Add space around operators
  Staging: rtl8188eu: odm: Add space around operators
  Staging: rtl8188eu: odm_hwconfig: Add space around operators
  Staging: rtl8188eu: phy: Add space around operators
  Staging: rtl8188eu: pwrseqcmd: Add space around operators
  Staging: rtl8188eu: rf: Add space around operators
  Staging: rtl8188eu: rf_cfg: Add space around operators
  Staging: rtl8188eu: rtl8188e_cmd: Add space around operators
  Staging: rtl8188eu: rtl8188e_hal_init: Add space around operators
  Staging: rtl8188eu: rtl8188e_rxdesc: Add space around operators
  Staging: rtl8188eu: rtl8188eu_xmit: Add space around operators

 drivers/staging/rtl8188eu/hal/hal_com.c       |  22 +--
 drivers/staging/rtl8188eu/hal/odm.c           |  48 +++---
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c  |  54 +++----
 drivers/staging/rtl8188eu/hal/phy.c           | 138 +++++++++---------
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c     |   2 +-
 drivers/staging/rtl8188eu/hal/rf.c            |  60 ++++----
 drivers/staging/rtl8188eu/hal/rf_cfg.c        |   4 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c  |  42 +++---
 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c |  44 +++---
 .../staging/rtl8188eu/hal/rtl8188e_rxdesc.c   |   2 +-
 .../staging/rtl8188eu/hal/rtl8188eu_xmit.c    |  32 ++--
 11 files changed, 224 insertions(+), 224 deletions(-)

-- 
2.17.1


