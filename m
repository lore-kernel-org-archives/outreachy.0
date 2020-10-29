X-GM-THRID: 6889129421220872192
X-Received: by 2002:a17:902:8698:b029:d3:b362:7342 with SMTP id g24-20020a1709028698b02900d3b3627342mr5507517plo.50.1604000437557;
        Thu, 29 Oct 2020 12:40:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8686:: with SMTP id x128ls1424133pfd.5.gmail; Thu, 29
 Oct 2020 12:40:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/iqQuy8tXWN9kteunnIdwaCNJv48PNlJiCej0Q1gu/BUds50oJ+OdCxXG/7Eyt9xdLFzd
X-Received: by 2002:a65:624c:: with SMTP id q12mr5447283pgv.310.1604000435960;
        Thu, 29 Oct 2020 12:40:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000435; cv=none;
        d=google.com; s=arc-20160816;
        b=q0s3mVOCHeTeXTCMEOGdhGVXUgJVDMaIw6TgmjdVgq+f2uL7PxtYT5f8VU1EQuT0D7
         wSqSLq1VM2gjeT47eDkxdDDzifCU4miExxD6lpjjdNwbOmJJ37iiaH8OWQJnGcIrA4X5
         DbudGZzfZ2ycqJkL+Tza1GZH1VZrtnDEBUea6n/XANjSeLiTci2v7Y9t+DAXWJ2gG30L
         dhXwrSAC7siexL/RGGUGK57TtMYcH0r5BTuPGtJ6nnprDZB3lgoPxKGEJDeDtQ5oTMRk
         i13TM2FfulA6mVqFe2RToxZuLf4wLXd51zXDoILpNv75S2p/Z+6T4D9Rym5z7lkuvLL7
         H7hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vWxVWqT4PGyeS05kKfarUX0FXAQeyJpn9XmmpqS3nhQ=;
        b=h7q0VBSWMrKiobAGlzlpJBBRd7hhxIpdco7Tz4U3jqejMoB4ewS+btM45iVTWL+ZwY
         8kIbAMptq+c/74goQx/EFuA330n5q3Vio8Cwr21dbGButjAT9DVx/YYcA7L7U5ofoG7Y
         4NEV60zrGOQO43VU1wryroGkEfzE4WMlMd9eTXwkZNT8S6t0mE6yo/KVi5bVd+QJI9LL
         DcetPIWfydxkh6S7WjnOD0DnEM8EwWAfwsHg/Y62uwZtxSKmSe7wNRHJxDTvrZWDJiLE
         K357sQcJ0BlS6F0WpC8K67dtl1OyObbYlNhRN/Lz+cyNnsACAVKcF90Iqyebg+PGuP2R
         TN9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XGCKW7uL;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id i4si198807pjj.2.2020.10.29.12.40.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:40:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XGCKW7uL;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id i7so1268326pgh.6
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vWxVWqT4PGyeS05kKfarUX0FXAQeyJpn9XmmpqS3nhQ=;
        b=XGCKW7uL+6FQ+kZB6HkcKO2N/biFyJe/yqLPGEzLvGY6kDL/GHD+9ZOCSbmY96am9B
         m0J6dL1X3VCRNdS2DUmqegopAM0JkKGw+VhV8yKvMjzMAhYNs3lppQJKLcOelnpefSAH
         78ma02RN1wssYYgDMps3mxlwUUrudypLNjJLz6HVGz36bHA8nVawwi0KLwyEQhtpn6Dh
         7af8aVGtc+iNLxTGIgxpP44AZkwkpnTeEzunSYSRZP2VMhAOdmuZPPU+okY84NMkCyo+
         VytDB5yH1nnLXVwk92jsYi6nwp2VDpI7SEeW6iQM7tb3AOjfAOqkNWJWpE00ead+A3Fx
         lpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vWxVWqT4PGyeS05kKfarUX0FXAQeyJpn9XmmpqS3nhQ=;
        b=gHYW6WRDU+u5jgMVJLNIu8TIp88CR0B4aFTZKjPTs9uFpYhD623yRNDT2PP366AV5d
         nP9rNFxF9UqaGCQwbSkLEKZSxJdf2G+r/kbWBmIJ1i1dl0y7pAR19O0+UoXbB5JGn9kG
         USL0+3lLcsC3kmcqK4ky8nDJZ1Ei9rf9o2QjyyWGDywYEIbhyyVPD1v7AsyHjFKXcQM4
         /5hk9I9+cUvrk9UUcZeiHVTpkEu7DmLRaS40/i8BK4Nv/RHGplFa/fKNJndy+Czx3zGN
         tAUAYaw8vK/CJIHmshHSgeH68Ut0F4YQQh6rJxfEHgjuvU4JLBz9IYvN6geHQfWcdxX9
         TfkA==
X-Gm-Message-State: AOAM531eKvCVmrHYYvF7spyBNFeq9gb5n3rEkPGWcvBL74W1UrP1/5ND
	7IQt/PkOYUqyIAA8dcEKwfk7l3uj+TZKwd9b
X-Received: by 2002:a05:6a00:8b:b029:164:2a80:e13 with SMTP id c11-20020a056a00008bb02901642a800e13mr5866417pfj.74.1604000435748;
        Thu, 29 Oct 2020 12:40:35 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.185.125])
        by smtp.googlemail.com with ESMTPSA id 9sm6397715pjs.1.2020.10.29.12.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:40:35 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 0/4] staging: rtl8723bs: hal: checkpatch cleanups
Date: Fri, 30 Oct 2020 03:40:25 +0800
Message-Id: <20201029194029.141165-1-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset fixes various issues found by checkpatch.

Amarjargal Gundjalam (4):
  staging: rtl8723bs: hal: fix position of constant in comparison
  staging: rtl8723bs: hal: fix space before tabs and at the start of
    line
  staging: rtl8723bs: hal: fix unnecessary braces
  staging: rtl8723bs: hal: use __func__ instead of function name

 drivers/staging/rtl8723bs/hal/Hal8723BReg.h   |  30 +--
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 134 +++++-----
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   | 124 +++++-----
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  |   2 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.c  |  10 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.c |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.c  |   8 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c      |   5 +-
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 222 ++++++++---------
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c  |  15 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    |  95 ++++---
 drivers/staging/rtl8723bs/hal/hal_com.c       |  32 +--
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |  84 +++----
 drivers/staging/rtl8723bs/hal/hal_intf.c      |   4 +-
 drivers/staging/rtl8723bs/hal/odm.c           |  10 +-
 drivers/staging/rtl8723bs/hal/odm.h           |  22 +-
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   |  31 +--
 drivers/staging/rtl8723bs/hal/odm_DIG.c       |  85 ++++---
 .../rtl8723bs/hal/odm_EdcaTurboCheck.c        |   4 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |   6 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.c        |   7 +-
 drivers/staging/rtl8723bs/hal/odm_debug.c     |  46 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  50 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  11 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 231 ++++++++----------
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |  42 ++--
 .../staging/rtl8723bs/hal/rtl8723bs_recv.c    |  20 +-
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |  22 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 100 ++++----
 29 files changed, 712 insertions(+), 746 deletions(-)

-- 
2.25.1


