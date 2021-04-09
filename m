X-GM-THRID: 6949198562719694848
X-Received: by 2002:a7b:cb98:: with SMTP id m24mr14668025wmi.107.1617986374607;
        Fri, 09 Apr 2021 09:39:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls584421wrz.0.gmail; Fri, 09 Apr
 2021 09:39:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzM5mvRBuTvSXpBbepaPkHvdpLyo4Ld8ndZN8z5OW3bLH/GGp2sDw2m4YqvsXeurcP24ye3
X-Received: by 2002:a5d:65c2:: with SMTP id e2mr18202862wrw.317.1617986373162;
        Fri, 09 Apr 2021 09:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617986373; cv=none;
        d=google.com; s=arc-20160816;
        b=EJJo1KODFzfVdGvwG0iwcmx2zCpmg3brDSmUztRGL6Hqc5tGYB1isU+tC8tejLPHyQ
         ysVIgX/xIsJU5YMFe5Rhp6wvApHUmqWc8ynNnPJqBObWkSr9q7vFLDI3iLxfRv8YBaFc
         u7w+RRDT+W2LngiTyVFEoOa8alsD1bWmlZ1JbW8ZX4vmWKqI+9T15j20iD7mCFNceTdO
         CD6JcvdyrmXiTAyThUfUhme73JamGOYBZktARfOV+2x4IOBMSUvSP7dFvqoQ3Ph5Bjvu
         1s1Mu4BHJxc/irQqIrIWY26MybD8jOQ3etwMFdBqe8QBBz9dMa706LJGX80pz0cYy1ZZ
         uhtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=MeVCMSWpDbGHYzheWdu+Y717xanF98ksnqPfJAYkw1M=;
        b=L1zGBq4A4YMZ7HAg2fFLvrGq18WhW3chi5ljP4vTcpwjW/Za9W6xEE+ROPpMqpRR1s
         mxD6rVGmIUaQBbrNs1X/9YyFUY4xfrO+EjwqlUfitWUqU2bjOK0RqmP2Shif8wuE5akI
         BdtdLXjzupe28QlFRFgS3dFRVnQruipk4iEr/TehCjk1BpEQMo4eCrJW3XPPB/KMaJWg
         zA4P8j1Cl1wIIQR+8+3U8qHO0VTsH4dxBRKLb8mZmUmjy0Fg/9lYnHYc1AAu9/w3XCYD
         zKB9vs498dOLefLgRNnKPmxtdCTZvGEWxH+puRwXytXAD29sRqF38ausDb+4X9mV45hC
         ThRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XPDFVuIx;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id o12si355802wrw.1.2021.04.09.09.39.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 09:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XPDFVuIx;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52c.google.com with SMTP id s15so7285840edd.4
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 09:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MeVCMSWpDbGHYzheWdu+Y717xanF98ksnqPfJAYkw1M=;
        b=XPDFVuIxP0211a+q0DgzOzr7FRJbb7qGyrMux5F9IVWsm0zBRIB5GsMhp0ef5ACmfl
         fbfLIDbngewfHiVw3tEUza5NDpDRw7XB/p5OO9ZrnO9I2M549MUxjWwI8wH+YFTbiXY5
         AIxtid5ZQeU7iFjI70/WiIoaQHIxzrgqu2oP9DdnErUXTSQN2i3hUWqqrx2RqFQST4rq
         hb83RLjbL4HYCiMVyWI1GJILnonyvuoAWMUAAJhDLQP+Ad5BsojszOZVZkhD6Mkf2IYv
         8r99CSm6BBv7msF1uj9zEP7SHgpg0msw5uot1f3erCf13OIlcIg6y3HgEpsBzS/GlRiZ
         32Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MeVCMSWpDbGHYzheWdu+Y717xanF98ksnqPfJAYkw1M=;
        b=DF1ZNYNvQJDjUNWERYfbM/1/oDRVQEicP/6llgzwOTw1lVW2vcK3zjZ3zefNQJMgtL
         Jx45pMmTdhe9KQ+a9ve/5yFtU0pkegr3yrKejO5CXCHWUeIxyZxECVrn/Pz2lhOZktUN
         JXnh2lgWERcL68TA5mcYuXIGpnZnTRugBSArWTiPKuSVRmDPCPT/Y/ZCCofs4J5ecMrQ
         tGUlCR4puKaIxMJQN4pjxWA02Q13PoyuscZbGRp+ipHFsJ9BeI4QV+OzrjsQXsOA0c9W
         swzGHaLjJ6YXtkmaZVkDmsY+0nwr0q4i4X+5YuN2gFR+2dmbvbv65XB6e/qIn4x8Isw3
         hmgQ==
X-Gm-Message-State: AOAM530q1qO3a6Bx2zOsahg11xLnkKzJmaFlzyNe6TnPvz/VJ7Xcqe8F
	AjaWMjyI0I0e10uWutMAiaw=
X-Received: by 2002:aa7:ca04:: with SMTP id y4mr8266748eds.72.1617986373012;
        Fri, 09 Apr 2021 09:39:33 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id q2sm1474051eje.24.2021.04.09.09.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 09:39:32 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [Outreachy kernel] [Resend Patch 0/3] staging: rtl8723bs: Patchset for rtl8723bs
Date: Fri, 09 Apr 2021 18:39:31 +0200
Message-ID: <3311077.CXPNp9SFPB@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

This patch series removes camelcase, changes the type and use of a 
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







