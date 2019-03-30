X-GM-THRID: 6673442126229929984
X-Received: by 2002:a24:1c0c:: with SMTP id c12mr3822643itc.19.1553965935598;
        Sat, 30 Mar 2019 10:12:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:574d:: with SMTP id u74ls1641187ita.4.canary-gmail; Sat,
 30 Mar 2019 10:12:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzOTHWQJAbbdZkd2a97qMmOb1F4duxdE9dzLPY0g842tmW67IU2MUCza3dAUkibSX3mTzaN
X-Received: by 2002:a24:7b4c:: with SMTP id q73mr4104125itc.1.1553965934887;
        Sat, 30 Mar 2019 10:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965934; cv=none;
        d=google.com; s=arc-20160816;
        b=K3UqdUIUufGVBTQKjuAEdzVqNSj8+Iqs6j16Cj8DKJQ4n7hHKEwYnyiEzi7DAfDgdb
         Igep8a1Xf6RDganCyculyfc8gO9thn7iF7S0Rxd/zSB8rdGbipaPBjFWX9QY/zU5gCji
         uskEXxFnTDaoM//FuYOTgaw7/G4J4lmBGr5DqddwRK8eY2dDqasbdgJwxgBiiyelJdX1
         tKTiXa6LlUwxn8KGKaFyJq7SYluokjvE+8WvTpHK3vIYe5VKCTXYN/43kthHdOF0PtZk
         6h1IaqjcpAR4DWdUO3+Ednj/tg287nJMVf5AF8Vpjfw3ah6QGiDHOo2+8XnfQyQf1vya
         viOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=12YgL14vr1RSVhvoG47E6nypeaPnDrce/aus1/jNzGw=;
        b=zT27kSnKwm0c2uBu2Evrz26n/oXl75QzaUbkaAjMMGr7iLOGOSlY6Vt1RbOsFDqxmN
         3jLix20ZTRMOT/dBZWNw0M4bmdWsO0lNWne4sEXpjCNJFl6CLkHwghWS6rUJJbiL2i2B
         QhcwyxiZlJ8R39F/0e0aIw45KLVxjB6XjX4r1BC5svHuil6MUg0flwuJdkbuaCc+ZuMs
         5ULeD5Kx/LuE6naxQxxen19FOm3kIpgLb5V4dEiPNa2q/jP02b7Y+rS3qC1hOOxDOxYV
         j7coGPay/C4UeE00w1oSHokfNpaiYZOqvJGEZ7H2tGmY87Ggeus4XVO9ZZ22IlxXVz65
         qwrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hkuaAyZf;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id q130si278616itb.1.2019.03.30.10.12.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hkuaAyZf;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id q1so2661123pgv.13
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=12YgL14vr1RSVhvoG47E6nypeaPnDrce/aus1/jNzGw=;
        b=hkuaAyZfUP1CQuL+8LNlUQ0HYFkyZthkqsUfyX4GNHc/szxO2Pz3BfwAv08KsyUKxp
         FikoDAyyawAxBm9j+WzFU6BVG7ki/cKfWd56+no6Z3ZUqYX0wJizbvK+c2zkDLCR7jqB
         0R3EpWB9vNvVCdy3ERrt2lqsU438MZdPmpGB8K1fhAJk0nl56CuySjLLmAaQ68cL8LPQ
         iUMUwrJ8fHNLFV64U2764pdWDEvm/JK3WfJ9+UyvbaZ+5WAnP6wyindOPCXGhiJeR+xV
         azkYW4ZC1FlxWrgytS6yjyzTZ9QpnHQaIsZga6z8oXrGZvrzIyCB64ZG+EundMVJ9WAR
         xovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=12YgL14vr1RSVhvoG47E6nypeaPnDrce/aus1/jNzGw=;
        b=bzblIRRJ0nY5gT1YJqJrLiQX2CZa6CKltxLkHUIibK0dXfQpukImLUT/gb1Qn+ABw6
         FGOsh3uDTg+sZM12MEqKjH1MxIHr3Jb7dWDPsoJZmwx0hcgUbWAlEv3s/WcA9T+SWvF9
         xnzAVjdLOZuHSWW/OEQg16b/db4gGdW2k9HzSW9NHRCqccldojOsmbp+ru2M8F7kIDeN
         WXEX5aPK9BtiE1VZLx2yYEvlFwKlUCBLqaSfJ2pR+MPjcDS8Rvl7Lhw2vDTFbsD3fE/G
         sDioCFgrSpugKUdsk7B9lFZzA7ftezVqWtz4Xq8Az3azhrPNWyAbqEMjNnYnYvB7zcsw
         tY3g==
X-Gm-Message-State: APjAAAWI8/ohYM4hp1eUqAZF7hB0maGvci5B+ZHph4lWvggJDG/uKiLV
	AdMBmfUQlsDnZYsV1qngc5pZVZGi
X-Received: by 2002:a63:6786:: with SMTP id b128mr42780247pgc.318.1553965934294;
        Sat, 30 Mar 2019 10:12:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:13 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 0/9] staging: rtl8723bs: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:47 +0530
Message-Id: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle
This patchset does following tasks:
	-Remove unnecessary parentheses while returning a value by evaluating an expression.
	-Fix indentation issues by removing spaces and adding tabs.

Changes in v3:
	-One new patch added to the series to fix indentation issue.
	-Patch 8/9 separated to remove unnecessary parentheses only.

Changes in v2:
	-Tried to separate two issues in different patches.

Payal Kshirsagar (9):
  staging: rtl8723bs: hal: sdio_ops.c: Remove unnecessary parentheses
  staging: rtl8723bs: hal: rtl8723b_phycfg.c: Remove unnecessary
    parentheses
  staging: rtl8723bs: hal: hal_com.c: Remove unnecessary parentheses
  staging: rtl8723bs: hal: odm_HWConfig.c: Remove unnecessary
    parentheses
  staging: rtl8723bs: core: rtw_mlme.c: Remove unnecessary parentheses
  staging: rtl8723bs: core: rtw_wlan_util.c: Remove unnecessary
    parentheses
  staging: rtl8723bs: core: rtw_ieee80211.c: Remove unnecessary
    parentheses
  staging: rtl8723bs: os_dep: ioctl_linux.c: Remove unnecessary
    parentheses
  staging: rtl8723bs: Fix indentation issue.

 drivers/staging/rtl8723bs/core/rtw_ieee80211.c  | 6 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme.c       | 8 ++++----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
 drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c        | 6 +++---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c  | 4 ++--
 8 files changed, 18 insertions(+), 18 deletions(-)

-- 
2.7.4


