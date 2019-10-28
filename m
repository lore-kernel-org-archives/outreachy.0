X-GM-THRID: 6751575419230617600
X-Received: by 2002:a1f:4b05:: with SMTP id y5mr7167074vka.12.1572226995658;
        Sun, 27 Oct 2019 18:43:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:21c7:: with SMTP id 65ls78898uac.12.gmail; Sun, 27 Oct
 2019 18:43:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzo5tTHsDFG7xjKBLRWV2mKthocLdmDG61YFEXz0P9niVsZhJWxFqdkdo16APS40AQ1u+KD
X-Received: by 2002:ab0:6994:: with SMTP id t20mr6993696uaq.124.1572226994284;
        Sun, 27 Oct 2019 18:43:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572226994; cv=none;
        d=google.com; s=arc-20160816;
        b=aX5lK52/lrBN+YcZ+Hi+7aiWuvbzip8RWwSnhlE91at7hzGX3FsdsVx/9c1DXdM4PZ
         2t+Q1Rlq7I6CoHyJk/K3Ax30dPbdshqVX7+6poJwOl0bfjdYEJWzQP1RyWjXrLubfwaV
         yMGe0EDQCSyyv42erEbTRihVW578iYlc2BRGQn9ok6su/KZYdeyXBEW3GUg+65ycT5NO
         oeGka3UIIaT16JsM9YW2rSYDuVOAhOpqZcwcz9YWf5sZ96bV9Ff0mSCXJtrK63IclBEm
         CCpejBzg+eDtDOjPQlOdHjLuhqpP6xZ6H9oLXRtbcp/IzboxCKHmCT0s/1QLtoaLbdO8
         xi9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3xM/LAMgPGJPPWEWq/LASFBYFGiQh5Az2a3r6JCVpuU=;
        b=hpv8iigoUrLZ8AENQwsczhwrXxn0n77EpYQU1uwwwj8PnawwIXe4khVnxd1fE2bHZg
         Q06I0lYTRBwgRxUBwYa9id77fRSxJE0rN7UKiizmoEVWy++cwbaTaAabulh3/77zXCui
         B4ItfCaz90+xyFZ8iaYqv9TQGblNjJye3fKMJHPSTPmZ//cgENtuYizpwnYu02FIhjSU
         aNqOAJG6885K1FjRCq+JLXITCNY02YaoXwxUFB+TGAzOSrnj6fff2MsJyV/z0+UZfb0U
         ShD3mnGEK+PVw+TlzC/8tqqHoq8dX07VYl6UZ6XmU3eaLaRO3bk3jC5wwDBvi5UuDJ9/
         NnQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QsaHokea;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u206si588783vke.2.2019.10.27.18.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 18:43:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QsaHokea;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id e4so1404663pgs.1
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 18:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3xM/LAMgPGJPPWEWq/LASFBYFGiQh5Az2a3r6JCVpuU=;
        b=QsaHokeaC6dZX5SCqs0uuUVT2+lQ9NQhDQ+PNEm/hcxXbkZgDJaj8ySiTfy5bW+XyB
         XsipvHQPO30mt15b2TdoL6tWatRKdlfub3ZcHCCKGFd3SMtIpGHx2PoUK8Ou3oDisVKW
         WY4yrb1MTt1AuuJcW+/o6K4benGJm3UzKV/ICUuv8COeG6twmvcmeTAVQcRS7r6it+Wk
         eUG8ZMRguVYj0QUuE2m9xZimYbOwbw7QbICO5aT4Qk5Ofn+OWghJ9dokzFfUJavI3eZr
         u4wgFM4e7FCue84P4Z4Jt+W/I+6ACTuSMoGmW4IeDWG+J03Il9WPMjHouL85z3+4PqSG
         rk5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3xM/LAMgPGJPPWEWq/LASFBYFGiQh5Az2a3r6JCVpuU=;
        b=SCdRaCsYzfTR+dgQQCHK03mvKG5fSPyiGRhaOlqnIJUynUNo6xXpusvkFctChV3nYf
         5WN3kQkzy8K53no4QwuH7lgxy0+UcnSV9D36rnehR/8YHtitigaK3xIu710lSTba0bEQ
         nHpyfLERTsmDAps1XQOka8uhwxSSNRlKHXwcjAHkK24Vmg8Do8E/KZE+COPnECRdWlkW
         dygCQvqldbFE53aTwXoSCy2HLfEa5QeYfs70blU8HwzmdHJZwN02JxvuOnWl/zyjd9Z9
         t2o3bvmdAAo/sxH0Rj2CWkKfrwAZ0bxA3IfW1Cyc1+yFlKenDZ0dJbOdRlO6ZO/+64FL
         V3Gg==
X-Gm-Message-State: APjAAAWoe0JFFPEY6qBxhnDvMm3WxRLnVCMC9fG9ROjq2eMagRJCNfNH
	EuhtkJ7KVyn0Kfu+NfpY/4g=
X-Received: by 2002:a17:90a:86c1:: with SMTP id y1mr8177475pjv.71.1572226993251;
        Sun, 27 Oct 2019 18:43:13 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id v1sm10177489pjd.22.2019.10.27.18.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 18:43:12 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 0/4] Edit CamelCase in sm750fb
Date: Sun, 27 Oct 2019 18:43:03 -0700
Message-Id: <cover.1572226786.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes CamelCase in sm750fb files.
Patches are organized into groups of dependent files.

Changes in v2:
 - Fix merge conflicts with staging-next in Patch 1 and Patch 4

Jamal Shareef (4):
  staging: sm750sb: Edit CamelCase in dvi/sii164 files
  staging: sm750fb: Edit CamelCase in ddk750_mode files
  staging: sm750fb: Edit CamelCase in ddk750_power.h
  staging: sm750fb: Edits CamelCase in sm750 files

 drivers/staging/sm750fb/ddk750_dvi.c    |  68 ++++-----
 drivers/staging/sm750fb/ddk750_dvi.h    |  80 +++++-----
 drivers/staging/sm750fb/ddk750_mode.c   |  86 +++++------
 drivers/staging/sm750fb/ddk750_mode.h   |   2 +-
 drivers/staging/sm750fb/ddk750_power.h  |  10 +-
 drivers/staging/sm750fb/ddk750_sii164.c | 185 ++++++++++++------------
 drivers/staging/sm750fb/ddk750_sii164.h |  40 ++---
 drivers/staging/sm750fb/sm750.c         | 144 +++++++++---------
 drivers/staging/sm750fb/sm750.h         |  70 ++++-----
 drivers/staging/sm750fb/sm750_accel.c   | 143 +++++++++---------
 drivers/staging/sm750fb/sm750_accel.h   |  26 ++--
 drivers/staging/sm750fb/sm750_cursor.c  |  18 +--
 drivers/staging/sm750fb/sm750_cursor.h  |  17 ++-
 drivers/staging/sm750fb/sm750_hw.c      |  68 ++++-----
 14 files changed, 486 insertions(+), 471 deletions(-)

-- 
2.17.1


