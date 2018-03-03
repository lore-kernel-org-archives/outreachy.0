X-GM-THRID: 6528466201738215424
X-Received: by 10.176.24.87 with SMTP id j23mr3732562uag.25.1520055226321;
        Fri, 02 Mar 2018 21:33:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.52.151 with SMTP id b145ls5911550vka.12.gmail; Fri, 02 Mar
 2018 21:33:45 -0800 (PST)
X-Google-Smtp-Source: AG47ELuEDCtyEPdmZxvfp7ZfbpJfpucuS/3IaWb+AmLfKIGTjBuYNSGJ6Y477QyfKcI3pD0SWOQT
X-Received: by 10.31.165.207 with SMTP id o198mr3540668vke.79.1520055225383;
        Fri, 02 Mar 2018 21:33:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055225; cv=none;
        d=google.com; s=arc-20160816;
        b=AOB+unMVAAVU6tumnX+eUAkZg8M0GOveIg0z/+luKHdOPg5iSj/cZKPwpNzFVO8ccz
         lbANtA7bOG99GmcFIq+oe0zPKXm46rhIVAfSx+YA5oCnp/DhcKZN/q/jy8uKPaFhKZmI
         RgdLxEp+yyHg3iIWVP7WddS31xB9wuot7AjY/pl1ITjQvWX78Bjs5VMng/esct3htLf/
         bcmrGF17s9ZTvoGWfwtfplkA/uiwjG8WkVMorFO59bPk6RP6IhpnbybobNRe6QBRfd1+
         7ze8WlIVpriTzCA5+9G8k/GU4PcB7l6KEM6lVuOLKXalx8/UGUivG4Sn/ttTCyJUFrL2
         Ptrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=a8DBUH/BehwAD528YFcfeBspGu2h6Q9nKhIyyffcJag=;
        b=i450fLSakNDtpmu5qm2r4LJlsfyYDSCf6xyWH6Z77iveWurQCMG1EmeblyxV6Ch63H
         macWUKV7MHAVrZgVBMo0BYlWYA19q/TRBW6M+Sv/fxNAtUYM+/7i/fiPab1EQCstm6z/
         MYffveu1MjbduhvmtpB7gtIEHaMCVoC+mAqhzzOflWz0Wq8HuHfx7YOhAmjqP42VryzP
         j70hjQiVwk6+8rsveeiW8Ibqo3Mij0jrjkgtQVzWUa5e9FOPPxDrNUDNqYtg/FiRyNPo
         nlJgQu1xbxBrxNbmo4QS5DlpOeATUI7wgLdTpx3sHeytSQ9GFibCnB/MVZ83ZR328Lhw
         0dGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxFRQXSy;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 1si524258uag.2.2018.03.02.21.33.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:33:45 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxFRQXSy;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h19so4007034pfd.12
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=a8DBUH/BehwAD528YFcfeBspGu2h6Q9nKhIyyffcJag=;
        b=JxFRQXSyrRSQiF//sLtX8WtATQMVzaRXYzEkXq9ETitlb0hviXhNPCyW5E4HuA6dcC
         sJpgVrZBGajevtq2VanNVd/XKRxiStV8IcgqkakoauPtsuCI1L02qUudHGc98oyORNxK
         X/dunc8o8ZUwaWi4XC2kC+lhNjrvQ8RYCj+2EHOOtzdHEkBizuciTjFojP7JFnMOJS+B
         ce1WqDmcZTpp4vZtzzv7a5nQ2fXrOgetJlMW9uleiH7h5hqmc6ndwvdkGkf77yE18bdW
         x1ImsSgmit0u0ocQcRjVtgKqw/Sb5xZKXEG0Jvro5JtdfFuwJWrg8V7ZbCTNRGxbpiI/
         jZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=a8DBUH/BehwAD528YFcfeBspGu2h6Q9nKhIyyffcJag=;
        b=pHrY45XBmPtjrOs1z9w4keDE9S7cQqmSh2aQ2h0R5e0tmW4T0YkXq88Fv0WdjMG1bJ
         GQDZiC89tNzXfpJ/ThM8xL4rQiJz2wjSHncFVSHk4ItOFOvFeF4nenOnVxGQ+I9Oczbz
         CWV0RA/Z/pNF5sNc8UxyS3L9gp7SlcaXEYIAYdk97ye0UWyCPwpblxBn/RboJxtGTaAM
         uzhc/h3APefuZqbBKkt3nBiomukHclrHvODyXrVFwK3wjyBs0MCKeDOCux32agpmDKvM
         RWlyPUIXEigKAAAe8gmaNb4iYmSsG29fgVdKD9kl49IS6sflE0srOKNvDHDxM9izpEPv
         yfKg==
X-Gm-Message-State: APf1xPDtj8VHVbP43QY0/S+L09kyCz5FtdS9mj6hu3gb8jgtWjO2xys3
	G9FAnk7uBluLTtgLiNm8l0Nnrw==
X-Received: by 10.99.127.80 with SMTP id p16mr6420464pgn.144.1520055223927;
        Fri, 02 Mar 2018 21:33:43 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.33.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:33:41 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 0/6] staging: rtl8712: fix coding style issues
Date: Sat,  3 Mar 2018 11:02:30 +0530
Message-Id: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix issues found with checkpatch.pl to conform to the Linux
kernel coding style.

Changes in v2:
* From and Signed-off emails were not same in v1.
* Added detailed commit message

Arushi Singhal (6):
  staging: rtl8712: Fixed 'tabstop' coding style warning
  staging: rtl8712: match alignment with open parenthesis
  staging: rtl8712: Remove multiple blank line(s)
  staging: rtl8712: Added spaces around '+'
  staging: rtl8712: Add spaces around '|'
  staging: rtl8712: remove unnecessary parentheses

 drivers/staging/rtl8712/drv_types.h                |  2 +-
 drivers/staging/rtl8712/mlme_linux.c               |  2 +-
 drivers/staging/rtl8712/os_intfs.c                 |  3 +-
 drivers/staging/rtl8712/recv_linux.c               |  4 +-
 drivers/staging/rtl8712/rtl8712_bitdef.h           |  1 -
 drivers/staging/rtl8712/rtl8712_cmd.c              |  8 +--
 drivers/staging/rtl8712/rtl8712_cmd.h              |  4 +-
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h   |  2 +-
 drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   |  2 -
 drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h |  1 -
 drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h |  2 -
 drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  |  1 -
 drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  |  2 -
 drivers/staging/rtl8712/rtl8712_gp_bitdef.h        |  2 +-
 drivers/staging/rtl8712/rtl8712_gp_regdef.h        |  1 -
 drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h |  1 -
 drivers/staging/rtl8712/rtl8712_led.c              | 70 +++++++++++-----------
 17 files changed, 48 insertions(+), 60 deletions(-)

-- 
2.7.4


