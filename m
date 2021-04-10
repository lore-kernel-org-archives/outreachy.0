X-GM-THRID: 6949544081527668736
X-Received: by 2002:a17:906:7497:: with SMTP id e23mr19860405ejl.327.1618066821656;
        Sat, 10 Apr 2021 08:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:c24:: with SMTP id ga36ls6140658ejc.9.gmail; Sat, 10
 Apr 2021 08:00:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrNRCfr0DyRPhkZE+cFx9xCEKsNaby54T9GPgdEFxkSSrV5Wb6oy0wvD4hT9Qm83NSMxHq
X-Received: by 2002:a17:906:c284:: with SMTP id r4mr4533784ejz.454.1618066820071;
        Sat, 10 Apr 2021 08:00:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618066820; cv=none;
        d=google.com; s=arc-20160816;
        b=0OqSKJPxlN63v17T8wyM7+IsJ/tEto/Y4/m+qLtONO1cAF8QBbqcqiKyizIhOvq6Cm
         Jmt3ezpnfVLTwr9/z3v1Aok3jE/BQ1AqDDLloucDsuBtbHKGL4nOL/ph2CbQDwoerCrt
         WHETvE1DQpZYYnhxg3D9YPOZyLZVQ0Yu+fyEGMBNs7vkNyCHGG32GrCFu5QZC5A3cD+N
         atm9eiBnxJJLwkUzs+VBgaixd6924T4Y6CFDJR0fc5kZKWhf0Ff5XHdG792TcSOjYmg3
         UbuN0t7ilG/m6rCxk5I0pcknnR1r1tsUM2958t8lcl5XtxVjVRDxu4Q0cW+RyahHseWI
         K1sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sMhLL/zmfb0UTfjF/sD2Sc2fOjk1wvP7x0u+3C18oCY=;
        b=E+Cawr59cTZ5/uc8sQkXgcZHr1/bIuC/BwmCA+gkeZFtY+TYR8RzI0Wx5+appdCxaF
         cZaiG/MvBv8JKUJ0CvzXtReHTXSyi73iD0NxoNXXo32YRUN9voX4brkQrGGC8rEO4Mel
         T7F6T9eDq531XwHP3akFNqtt55skMyLOXmfrSmM4JIBO9LWBX+w7D3ve+p9AdhWzre6x
         HdpdikgPPfG3C+aHNZql3Zg3NWsOtDoGBg7DAA2ZMlSt3obfndK0bTpg6X7OcK4s55Cj
         TJ1VM95qtwj5+6w3d/ntX4fBJqpyTuZn7ysxKL5L6KSRz11QTyzA03tnmslBjKmUm6SC
         LNDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W59pRIcc;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id y16si735936edq.2.2021.04.10.08.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 08:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W59pRIcc;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id f8so9854537edd.11
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 08:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sMhLL/zmfb0UTfjF/sD2Sc2fOjk1wvP7x0u+3C18oCY=;
        b=W59pRIcct6yXQX+TT3XK6OB0EQPzdKY93PYF/MoLTjbXvLETtuDWkvXb2RHDswlLlY
         OTGMcF09BYPVmmu16v8IZzLbsIyf/Agm5TVRWPQdHnV91bQRFRHiOXKQ05c61/4r7ZZ4
         o0/8cHxDNf/ZAVQEbuv8WmF5LWCk+SwEv1HbkyfUu4mu0BOtjTj+xgSC7bVElZ7eXB1W
         Xw6v++W2bDtAS40BYAsCysTqYWHeP4n1hxb2VbFHU1xVpriIM4wbSkX1VCkG7UtMtWXY
         a1s12/wTQS2bk/KbEMmwmP1uyX/k9smBqexOgLWBFbxsNd5nBnzI103StT4m5dCUA2OE
         yntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sMhLL/zmfb0UTfjF/sD2Sc2fOjk1wvP7x0u+3C18oCY=;
        b=EFuj/D4sLV5qaNaP5gGecNcROV/R53xAM1wGdR8CASRYFEVeHl45dm1auqadL8EpKa
         vvUHGyt+C9r5BFf6CecpKwDCq8HUnwMJSgFv5GoknKpgRfIHNuviBh1uOBkfmMeortxk
         vXDYGBCTVDXdfFrnV5somgQQHL3AODH3ETlgHRZSuMSKkHtuEYS9kAwmNcqMWySzqief
         W2zCzO6U4NZXuHVReJ3KzMIf/zW2qx6j6kFNVMJI9tG0maxTVBnP2xGatAWhGT7ASKD1
         SxxRIh28VasOuvST+OH8P/5Q9h8DcbYhG1d+wYP8+s1pmLd7MkmPc0XB1n8tEaBIcyqq
         0erQ==
X-Gm-Message-State: AOAM532qZ4weuU2KFw+z03r0EyVPNBNer0FLFmYwVgDsz4D/fMmBNloi
	SA3dJkwd4R6MsemUlMYliKk=
X-Received: by 2002:a05:6402:4386:: with SMTP id o6mr23039910edc.307.1618066819873;
        Sat, 10 Apr 2021 08:00:19 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gb4sm2719494ejc.122.2021.04.10.08.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:00:19 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 0/5] staging: rtl8723bs: Change
Date: Sat, 10 Apr 2021 17:00:03 +0200
Message-Id: <20210410150008.5460-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase, correct misspelled words in comments, remove an unused
variable, change the type of a variable and its use, change comparisons
with 'true' in controlling expressions.

Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

Fabio M. De Francesco (5):
  staging: rtl8723bs: Remove camelcase in several files
  staging: rtl8723bs: include: Fix misspelled words in comments
  staging: rtl8723bs: core: Remove an unused variable
  staging: rtl8723bs: Change the type and use of a variable
  staging: rtl8723bs: core: Change a controlling expression

 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  4 +--
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
 24 files changed, 71 insertions(+), 73 deletions(-)

-- 
2.31.1


