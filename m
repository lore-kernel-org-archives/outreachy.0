X-GM-THRID: 6805874038364176384
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr3398232wrw.383.1584616032369;
        Thu, 19 Mar 2020 04:07:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls782608wrr.4.gmail; Thu, 19 Mar
 2020 04:07:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtazZv6y5WJ2z7zE7GTNZKD+9e025ZOaYHZHkRrawcPg51Mcf20DL0NmskCaQGx5hZ0NCQ/
X-Received: by 2002:adf:cf04:: with SMTP id o4mr3788256wrj.347.1584616031111;
        Thu, 19 Mar 2020 04:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616031; cv=none;
        d=google.com; s=arc-20160816;
        b=VkbgQlBF2NRNfKMW25+8JgiqVj8FUrdep6Ka5aAefSsj6meGpl0gxJ4kwRX27iFtFY
         6oimTs35BL5RuI2usYJgYbstyF+FDg5wjzAvXUa2+m4J+tIBB5Bzg/kNWO/aMbAhdA+0
         /n9W8hsqKrotjTp1pBB/fs0rVhVBdyyJNzX83kbwv0lbDU0BbTOQaTxCYUm3klAHxuj7
         rJHp1YJU7CkcgOgUGYXvrddtyUaepXC2KWcINuEL+iaW49Qb5U2yG4ayFAm301olr+Jo
         9o1b7mBizRg6ke7tSjix450KI/axDyYNC5TaqtCAAe2cWKgfizWNrA19kRnXQds6uG1e
         DAzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=mW7pqgOmMGsY+MB9XJ3ujOBCgg2F+Id3SeOU8XcvVtI=;
        b=BSu9BCXNmTF0o1Eg69+3qSyO4A9gkpQGT0BfwlezzJG9769f7LgJObhWIafBGkpIQH
         Rw6aoDRUAYGxnEhMzzUNYRv/aTsKgxyI/8tYlE3xx3T71UbJvSYk81giXZv3SoEk8K1y
         c+UW7hQreZ0GzD5C4DrKVEspRzf+rhHHG+VOD9pcHye0FfDXfFuHT3tlSjQX4XvKnRLO
         L069gO5xfumdnRYwuFIhOeN71N8FdaQFmcRx85CEQjxO5HfS8eIfJzwp61/OYMwh90dR
         lJbzrLRSy5u0KFcZbyR9Buh+M+BYwAh+Fu8FZhOUVbUN9wAVej0h1goKudFHVkmyEZG9
         atsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id i19si96599wml.0.2020.03.19.04.07.11
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27675 invoked from network); 19 Mar 2020 11:07:10 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:10 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 00/10] Correction of typos and long lines of comments
Date: Thu, 19 Mar 2020 16:36:43 +0530
Message-Id: <cover.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correction of typos and long lines of comments.
Misspellings found using checkpatch.pl.

---
R Veera Kumar (10):
  staging: rtl8723bs: hal: Correct a typo in a comment
  staging: rtl8723bs: hal: Correct a typo in a comment
  staging: rtl8723bs: hal: Correct typos and long line of comment
  staging: rtl8723bs: hal: Correct a typo and long line of a comment
  staging: rtl8723bs: hal: Correct a typo and long line of a comment
  staging: rtl8723bs: hal: Correct typos and long line of comments
  staging: rtl8723bs: hal: Correct a typo in a comment
  staging: rtl8723bs: hal: Correct typos in a comment
  staging: rtl8723bs: hal: Correct a typo in a comment
  staging: rtl8723bs: hal: Correct a typo in a comment

 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c |  2 +-
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c |  2 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c        |  7 +++++--
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c    |  5 ++++-
 drivers/staging/rtl8723bs/hal/hal_intf.c        |  3 ++-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 16 +++++++++-------
 drivers/staging/rtl8723bs/hal/odm_debug.h       |  4 ++--
 drivers/staging/rtl8723bs/hal/odm_types.h       |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c  |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c    |  2 +-
 10 files changed, 27 insertions(+), 18 deletions(-)

-- 
2.20.1


