X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:8984:: with SMTP id c4mr11462771lji.456.1618046559122;
        Sat, 10 Apr 2021 02:22:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b0e:: with SMTP id u14ls11258lji.5.gmail; Sat, 10 Apr
 2021 02:22:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUYXh7kPExAti0vw5w5SNeCIqi1Xx1GJAXVyGlJfyCcPxAuPEM2XEv3mkzdJjjPmyD2wMI
X-Received: by 2002:a2e:3c12:: with SMTP id j18mr4770263lja.260.1618046556874;
        Sat, 10 Apr 2021 02:22:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618046556; cv=none;
        d=google.com; s=arc-20160816;
        b=BaZT80lFK2WPPqBW5Wl2TUl/vO+Pmx984fNeLudSyVxf+yCx99MpfhtOtYTDEGN1mk
         rR3K0D6JptWdg0y/pyiFI9JJGvgeJIOy/IrO30B2X8DegGNSjgDnWtIxf2xyodZNdBSF
         BBAZIXQiAaz9uTtHuCivOb+iCBhesL3heQWmRSYcE90w79/2kMYlxHfZbhVjfQSkL7SV
         d6RGJFwWo2opA36AG4M63dsr95nEhp362Yyg14WS9G7gi8iPmDBy0oPx9fYI+fANI4cH
         awmvUf7iMngaITktNZurA/sao1SNTHwB66dZIImSF1O+M4EeYKDigoyqaNRqWwvmr3zv
         tjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=j6Hgr1/sJJuLw4JsoDZoO0HpzSCcQbNfMw8CuF77WYo=;
        b=vFZe3yyc7FZhXLJGFEh+hk/LvnqFeo5EYRtzn4jtd/FnVTDCNHz1CCVpd0UHfWn5io
         b9sWY2IfhU2B98smeQ1HU545BhrsrWLE33WxdEbcNIwAU/3GbFuZsjJzjQxin2tzaFXx
         hUk+pG4F6vLzeQqFOsmx5UIMU7Xg0tB2p/xdlK7xUiYBWK+BBF7G2kOR2QbkmOv+E6EZ
         A8gA37RESN7uyHWjlIswmH2TgeZE8qjMUjJ30KJYd1wgklDlxCEbyNsuu8lZoA7WKWMo
         uc/dt1/+wLWuAF6GPEh5NJ5f/xc4XpiOpsqaG1uLlEHLeWaupG3WGZ6sOUvgWHOK7inx
         tB1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEjYqvDo;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id q9si364031ljm.3.2021.04.10.02.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEjYqvDo;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x632.google.com with SMTP id u17so12334580ejk.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 02:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j6Hgr1/sJJuLw4JsoDZoO0HpzSCcQbNfMw8CuF77WYo=;
        b=gEjYqvDoOF1dDhmzRVR2z+XELtVZkb4wgK5o0PD8utd14YnS+87ij8cRoTNTU8JYSK
         sEtfSgdHaIzMgK+86tpxSSxs7imjOfmtqCJ0DPhAT2/4AdRtMqxkNQ4tXWuoQR4BGNHb
         qbLub64zmF2lTNTkOL+oLku/MY5NmECBBKzKug1UcoKaxGUjCP5moQtOHMifnNwY0K6W
         aT8++simrBcnDPAdDWLiuaSr8pGDFEfXpsWZTV8DLIzF/LNvNmfp2WpeeV4JAWXSyTUt
         h03373bTqdMwPmhHRUmHg4xualF/MP42FWZTUZ4qJxxq5xsDxxRpSOKxjSS+DZ8RbVx+
         lhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j6Hgr1/sJJuLw4JsoDZoO0HpzSCcQbNfMw8CuF77WYo=;
        b=sDxoyesHRfYz99FqHW4rxo0wvOj00BHldgxS5XEJTUsLMHceZbGQYdUiktSu2+jLX7
         WDCjBagqyfDmeGNNrZAwob5YlZ1KbDJ4s727m3k7jNUF5dCpCbVZjlPIq82VjVNejXVa
         yi8CfcnXkQ82EhC/dW10tITOb0MnKXPx5HZRVYYMeYCiXMqoF3tX7C7atjHPFx+CuChI
         y2a3zpMzxkKsHKdAxM/zcZwquZTAWUKN9yCc1dMkJfD3JU4Ar/o9PKLNO9knwD/z1jz+
         szH0JDTG6qtmEZZBoyb3X0SBQa2BlBpiBThx8zn3RVx7SvVcVhor+9vUERp3/G8zRHde
         /Vsg==
X-Gm-Message-State: AOAM533s3PjP6Y6M/OpVDgs4p4+1ZVK6RJY/AxTrGtzSbVgSYMJ71n4I
	1VbX0qSGF3HCMT17CDe5F+OwqhpzI2Jnm8AU
X-Received: by 2002:a17:906:3f88:: with SMTP id b8mr19971657ejj.36.1618046556670;
        Sat, 10 Apr 2021 02:22:36 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id a22sm2801624edu.14.2021.04.10.02.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 02:22:35 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/4] staging: rtl8723bs: Change several files of the driver
Date: Sat, 10 Apr 2021 11:22:28 +0200
Message-Id: <20210410092232.15155-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase, correct misspelled words in comments, remove an unused
variable, change type and use of another variable. These changes affect 
files in different subdirectories of this driver.

Fabio M. De Francesco (4):
  staging: rtl8723bs: Remove camelcase in several files
  staging: rtl8723bs: include: Fix misspelled words in comments
  staging: rtl8723bs: core: Remove an unused variable
  staging: rtl8723bs: Change the type and use of a variable

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


