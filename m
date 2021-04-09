X-GM-THRID: 6949196106394763264
X-Received: by 2002:a5d:5291:: with SMTP id c17mr18925167wrv.110.1617985802704;
        Fri, 09 Apr 2021 09:30:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c1:: with SMTP id b184ls1534004wmc.1.canary-gmail;
 Fri, 09 Apr 2021 09:30:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyximS4xT28fYXHLw4H6yEgFaGzXWPybQlf8gaf3JB96YTMnJwFFB/SQPbuZCoIqcJ0DmBD
X-Received: by 2002:a7b:c2fa:: with SMTP id e26mr14930971wmk.114.1617985801316;
        Fri, 09 Apr 2021 09:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617985801; cv=none;
        d=google.com; s=arc-20160816;
        b=NCqOQOaAo+2XOZfvc/qpfqdXGSsivPOHYr1WPl0eh1zwSsczGHY2Q/1XgrUOLmTQrR
         urJiGT0ZaR9P5H0PCrdh8v8zfU60BPNZUiMyBSBcM0DlAOuv3AFDzZUzz+WAUmE9XAWS
         JpaYQufZQPnEQgC1GM2s252wrEGfeFiaA3DeA+C/PWTFXwv9fKtmAzVw2unl3ehR8eIU
         pRZdO+MDilBywfjERXEuZYMW/Lz0s8s46IFsrBMtnwO70znYkAQDhfkgjlkT6sRVooyY
         VipjJ53+wjosr+fyqEwBq466dDLVvbV5IMo8LLzWDSYQTmOjpQaKWzJnUWvt13dhK4rN
         8ipw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=O3vu4JiCvawgkzQRTM733t0EmK6dXnhEuYP8MQmV/cQ=;
        b=X2+9mNyJmYdinAcaddsCO/6GwVXynkW1Tra84LjViNWylx+WgCoIUKGb0zdbbYMH5u
         Wj0kSuoTsLafSi/n4Djw5iTZEIvRhqqH4zXfiayqDOnfjKmNzLdPbxYTGgbRz+BMlkGF
         igLyWfx3xVMhgNIu6HRhC6T5GIN+wQ8NcjULJ0GtpSs5lGjg1kxiapy/ZIxITyAns3qm
         X7UWhlz16OH68BDFr/93px23u2oEC8njuKxPL3GhAhCCUajoGi0dIJogl2gtj4J0acds
         JOP+Q/LLHkM0Z8NTsGr809J9phjMf2oAftDblaGbsSccoIBeUe708HBpqVmYJliazwZE
         Y7Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYaZinIj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id a4si250472wrc.0.2021.04.09.09.30.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 09:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYaZinIj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x636.google.com with SMTP id r9so9611293ejj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 09:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O3vu4JiCvawgkzQRTM733t0EmK6dXnhEuYP8MQmV/cQ=;
        b=XYaZinIjzm7bKXCZvWWYr4et4NaJwkj9zBf+7IkCaB+ak+bZUgBTWbU1CSkb8mX15s
         4+uczQ4jcSv3bXbFKUV4hbS+NQV4KiFQouIwJztvQ/FI6434CmaiQQ2v+CbsoewMm02x
         lyJPTnD8tDgygvzS/6eq3A9TTyxjL8j3wMYb8+XqZ3htIyjrOol+/mp/z8NuF2xK8TNA
         VUZskotMeznEZvvs82pDZHXzrPQ7YNkhcLtvRLQyYd5t5La8qwKF57V1bfjaX1c6A6mi
         HG5dIRYa6GNJiaILTS0FxGnu8mvbs9SHbwH5sTweGCPQlLMeerESEpkhoQfgwGLt4VKS
         PlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O3vu4JiCvawgkzQRTM733t0EmK6dXnhEuYP8MQmV/cQ=;
        b=KQLhS04f1r3lPFnv4IiZC1/uAl/STDeE+nmlkPkZVEfkVXxqObCAKSvwdaLzdnB5A3
         yp7LqlNg6IHx+4ayjbUk+LzncbI1JsmnOt2BtL+i2SXlWWWxynYdkLnP21s0I9YBOBFn
         Qtn+MytnR/jaKcn/7Fw2Ye3lvex4NiP1vgIp62qe0O3v0Z4VOGw5XLmnmA1LTw53QbpV
         TStOmDS0lLDNbP2eAyWnz5tbZMbMilJNm9+Sto+EGCEChemVq8TuhXeRwKjVFI2o9bFu
         UDfUnL4ml+Uney1Mc8q4K3qDghji3n1y4X5zqlm+MHypyCsAtOZxhKWh2D4WuPimS3Pp
         aS0A==
X-Gm-Message-State: AOAM532QrGpiDZBK9aHhlTGkt5oW1hJnb3iDL7koK5npT5BdIWJK07Sm
	reaY5v2UMLpi7nd6OVwadIM=
X-Received: by 2002:a17:907:213a:: with SMTP id qo26mr16615247ejb.547.1617985801079;
        Fri, 09 Apr 2021 09:30:01 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id mp36sm1415095ejc.48.2021.04.09.09.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 09:30:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [Outreachy kernel] [Patch 0/3]
Date: Fri, 09 Apr 2021 18:29:59 +0200
Message-ID: <6552860.D8CPca6BT0@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

This patch series removes camelcases, changes the type and use of a 
variable, and correct misspelled words.

Patch 1/3: staging: rtl8723bs: Remove camelcase in several files

drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
.../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
.../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
8 files changed, 24 insertions(+), 24 deletions(-)

Patch 2/3: staging: rtl8723bs: Change the type and use of a variable

drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

Patch 3/3: staging: rtl8723bs: include: Fix misspelled words in comments

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
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  2 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
 16 files changed, 46 insertions(+), 46 deletions(-)

Fabio M. De Francesco




