X-GM-THRID: 6473412482924806144
X-Received: by 10.99.3.8 with SMTP id 8mr241578pgd.20.1507208795204;
        Thu, 05 Oct 2017 06:06:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.235.134 with SMTP id p6ls6577866plk.12.gmail; Thu, 05 Oct
 2017 06:06:34 -0700 (PDT)
X-Received: by 10.101.67.130 with SMTP id m2mr2104452pgp.178.1507208794118;
        Thu, 05 Oct 2017 06:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208794; cv=none;
        d=google.com; s=arc-20160816;
        b=mdK8fZqS2WEMrNZD9jn+x+3St55MePfX5TBXtM5E0Orlx/hr2jqwJ9TEkk46tJ6ERg
         FxMWHEdWZP7u5lQfk1uGdK8O+1gsAwNkoC+JaeoU9m5VDWRGJh/MwqfVXUSbXTcBL2yR
         Dgtf0SEn7lHPkoVv2mQojFKQUKI1wricxC12EXK97jU2k2ZPUqUqODKJwbHD9LnJiuC1
         Ml3pfBgvmDVAeFLcgfWdPSDD/ZFTPNxEpJl4EgziZbl79xkA5+RDkHWnNNYCnRCtydVf
         fNQFrTVAGouHb+qs8ZdKEKuf4uDXgwikmdoQ72VMVWuntiGAjR+FnngUW9/WJk8+K2mc
         dDIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=EgBbktxGoKKbfPQu+Od6eS7BTrqk4epN2Y55ndj04UU=;
        b=LTulPh1W1fvdciyAUv50d1vTozwvS0/h+ZX5u8jSquxKXT1IaUPuG1jyP/J4mbCIBt
         EjQKaV7Wk1YHzcua55cwggyvL4fNChHtcCOHqB6Q7J0U7QW/Np2DxwszDc9B1vRHZWxn
         X2umv+DoVOqnGQPlthbpPCzw02TqFRV//l+CTzDIMxucBaTsKWMj+G3XlWbe01qgoSp9
         iGQry2ZnmrzLBNiIxJ7tTYJAhRIFCReKuIFcLCOBXiaTqhxacok5w9jCCVQENsCqe6FI
         9nHNZ8YPPyRQmSwQFzgpVrjXhEcyRtiZMnyiopJXV7dqD4SMgFUFQm3hm+1rCr6AhV36
         RyrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lp8lE2Kt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id x71si2025045pfe.0.2017.10.05.06.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lp8lE2Kt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g65so14602000pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EgBbktxGoKKbfPQu+Od6eS7BTrqk4epN2Y55ndj04UU=;
        b=lp8lE2KtZyBGZxvvsWOLGJ4+pnisAFWEYb9p+QKm0FOodH7nPu5SVsATvcsH07ZX3u
         bPEI1z4kc6Lgd4Qa/W3+AMd/iLZNcmNI620sQkDOBRIGQxet40rNKEuRVFrPqaIdKKY/
         cJXD4lJKJ7hfC7sgySfeKijqk/MeG00DEfSk/VtOPKQGVU6bmJQNG1BsrIbq35sSxA4M
         beNCJlCoOa72HHqQiqbhay1h6IL1uKbpldAv/n8HMQvoW5+cUkXwKe7goYLBafvRwYpA
         uVPT2UFCal3g7nIOukQxH89fFxtAAGAFzX1QFvOKWw+2ScFtCC8T1cSdqLkhRR2bvv62
         Tqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EgBbktxGoKKbfPQu+Od6eS7BTrqk4epN2Y55ndj04UU=;
        b=seFAc88uuK9ht9/jmgumoKWL2oP62wIq+pcUCEWaj9wHLkKEnjnNBABOP+DfqHs28f
         iLb0w0rupjFTFxFa7mC4arNt22MIT6U9+JTIH9ZvsLJ4C7KBzIFgwIZGcICJYzXkfP75
         JYpwDhhXkmxToL+kd5IpWRvkMR98tPveQW4gjhl2P9/H6DGJC5JQh7kTcC4l4EhhzQO9
         7Tfu3g7AzqHrAlTRevauRP7Juc4DVZJAX1YZ3thqMhdb/xh6CRQzV6XnGF5NJf8Zlytg
         XoYu9M7CtYGFMJ6qyrmhq+3CqVxSzxtTHgsqsxugdSJJb+NkLNjiyJDYsAEkh/N2Wmgo
         jS5g==
X-Gm-Message-State: AMCzsaVMH5q4LudRJrvXXG+Oclzk0iXMvtKFJTwgh1zNrDgemgTtE8w4
	33I7ER3yiHMg1h8KXCCo8Io=
X-Google-Smtp-Source: AOwi7QC05G02Ldcoa8wXx7MZKFJ4s/6dNwV/w38Wwnxf9DMEZqLE7hgaG4mIRo8LHTPwjE8OtC0f4A==
X-Received: by 10.98.32.212 with SMTP id m81mr3432211pfj.227.1507208793780;
        Thu, 05 Oct 2017 06:06:33 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id q23sm31091527pfk.182.2017.10.05.06.06.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:06:33 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 0/7] staging: rtl8188eu: fix code styling issues
Date: Thu,  5 Oct 2017 18:36:20 +0530
Message-Id: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix:
- multi line comment styling
- whitespaces styling issues
- use pr_info() instead of printk()
- prefer using BIT macro

This patch series includes all the patches I sent for this driver to
show the correct order.

Aastha Gupta (7):
  staging: rtl8188eu: fix block comment styling in rtl8188eu files
  staging: rtl8188eu: fix space between function name and '('
  staging: rtl8188eu: use pr_info() instead of printk()
  staging: rtl8188eu: fix spaces before tabs
  staging: rtl8188eu: add spaces around algebric and boolean operators
  staging: rtl8188eu: prefer using BIT macro
  staging: rtl8188eu: add spaces around '|'

 drivers/staging/rtl8188eu/include/Hal8188EPhyCfg.h |  33 ++-
 drivers/staging/rtl8188eu/include/Hal8188EPhyReg.h |   3 +-
 .../rtl8188eu/include/Hal8188ERateAdaptive.h       |  28 +--
 drivers/staging/rtl8188eu/include/basic_types.h    |  14 +-
 drivers/staging/rtl8188eu/include/drv_types.h      |   3 +-
 drivers/staging/rtl8188eu/include/hal_intf.h       |   6 +-
 drivers/staging/rtl8188eu/include/ieee80211.h      | 114 ++++++-----
 drivers/staging/rtl8188eu/include/odm.h            |  44 ++--
 drivers/staging/rtl8188eu/include/osdep_intf.h     |   2 +-
 drivers/staging/rtl8188eu/include/pwrseq.h         |  44 ++--
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h   |  29 ++-
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h  | 153 +++++++-------
 drivers/staging/rtl8188eu/include/rtw_cmd.h        | 222 +++++++++++----------
 drivers/staging/rtl8188eu/include/rtw_debug.h      |   4 +-
 drivers/staging/rtl8188eu/include/rtw_eeprom.h     |   9 +-
 drivers/staging/rtl8188eu/include/rtw_event.h      |  40 ++--
 drivers/staging/rtl8188eu/include/rtw_led.h        |   6 +-
 drivers/staging/rtl8188eu/include/rtw_mlme.h       |  38 ++--
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h   |  27 ++-
 .../staging/rtl8188eu/include/rtw_mp_phy_regdef.h  |  19 +-
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h    |  22 +-
 drivers/staging/rtl8188eu/include/rtw_qos.h        |   3 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h       |  80 ++++----
 drivers/staging/rtl8188eu/include/rtw_rf.h         |   6 +-
 drivers/staging/rtl8188eu/include/rtw_security.h   |  27 ++-
 drivers/staging/rtl8188eu/include/rtw_xmit.h       |  12 +-
 drivers/staging/rtl8188eu/include/sta_info.h       |  12 +-
 drivers/staging/rtl8188eu/include/wifi.h           |  25 ++-
 drivers/staging/rtl8188eu/include/wlan_bssdef.h    |  22 +-
 29 files changed, 583 insertions(+), 464 deletions(-)

-- 
2.7.4


