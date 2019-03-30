X-GM-THRID: 6673442126229929984
X-Received: by 2002:a24:2704:: with SMTP id g4mr2876793ita.36.1553922783475;
        Fri, 29 Mar 2019 22:13:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cd39:: with SMTP id h25ls1532608jaq.1.gmail; Fri, 29 Mar
 2019 22:13:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwuIZPttlFO2HCyC4MdlLshZdDv2jyYzW2qL97s95+8YkKpPZqC8lw+jSczrQRvbHDyQBuq
X-Received: by 2002:a02:5ec9:: with SMTP id h192mr6112899jab.2.1553922782614;
        Fri, 29 Mar 2019 22:13:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922782; cv=none;
        d=google.com; s=arc-20160816;
        b=b4NrlJTEa738ZOilTnMv/nFAvxjVRyHXmV1F433zURqpxx3T+hSQXb4HhmckKKNKjA
         euDgI7H7jLDgeIbDJzDosQOl7hTn/GDGGdq6NNDSZ8Eo/iVN1lIHygYiZmHFWVCZ8N9Z
         Y2Gj/GV3xMfkFMH02TprObXUvg4zWvVx2XA+bfRTsV5T0wCY5rSVOovaI6fOcAZiAqkr
         hfL9jFQROk4tEhgxB7qTKFK0bFPIWQwQWjYE3AOuFd7zf4+oiQNab4/WMV6y3KWzRJZU
         86S/mC8BqjQ2W5Ad7ipRlQNBlb8HiGYEmWB0OCgS0f4VBkWg2i16Bwdzx4qPDorA7w03
         UOZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=qoA8WrfWMwyst6Bb0EmDQlIHev2JBrNhiZLMlajF3jg=;
        b=Ghx+S3BxaTrh0KhwkvJCHU7xRVpM+A0vy1jiaSBrABVQcuuDjRDa1wsNJeqV7OnkBq
         D9qozn7gESvSWZUTyFBaU5y/LIu17/mBIeuho74KTQQku5ZTEBgQ3YojVj9S1TuUbNo2
         4YXqqjn31FKKLkyMJw2lVu7nHTwDybSj+sqyxSGJGWTBzpa6nft2xSt8yIY0IvuprPRP
         JBqKW0U43wj4izOW6/EGU90D3UM9I17tGXs6/Y9GHYMut8IwpxhBofd6LgD6KNJpebFm
         lJjw1yhKedR0hZlKDpoZ6OOovXqVKb5qLCtRGYpaIOQ1hF42oI1EYJXPAdEv9n7wkgCO
         XWSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSNEM6ru;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id u1si695820itj.2.2019.03.29.22.13.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSNEM6ru;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id 188so1996158pfd.8
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qoA8WrfWMwyst6Bb0EmDQlIHev2JBrNhiZLMlajF3jg=;
        b=sSNEM6ruStwVlllIzDx5r3RGv9V1keA1TbnvJ8VzmaqneZdToEbOvLdtDIGWg6DX5D
         5YpXd8qamWqWnWldb8uhWhMxMrJBX5YYJUqoZJiT/lcyxEo0UeOhhRuXc2bnZ95gapyz
         aXdVvIVLT2aVx5OTufAE9c8NzuVyB1T7H7XiU5jKUYin6l1M6kv619DbWTqr/PyBmu63
         ph1GaP0D78mnupXMzaN8p4+Le6kpEwtUOciv5SuTTzA4I/9q6Ssw7XbcjzxAZ89MGlyD
         ubCsqTLwQuo9czz4EDaF6ga8McBUv/etVNnsy8VZ4uNfq+XdTnbVRLsPOjY/LecSda+V
         Lb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qoA8WrfWMwyst6Bb0EmDQlIHev2JBrNhiZLMlajF3jg=;
        b=UoFXEO1TBNRmNDdwsqseVBlGyNWZKynMXX5jbJMOlum4PYaI99B2pAntQ3YxKfFS3y
         AXLuAFeYFp27g4nHgjrnn/7LwANAbvDKQyMMebQzxX9vg6eXKteBJrC8+YZ/E+rPjzhx
         IzjJhow2b8+kPxb4EET9Ef+nrM96B+ZxtA1JJH3+jInfdjcBhBWWvSZRZiKne4xaEefN
         KRsXkIicMQERBgp/HU2nOii1QFXq0fcpg2CDaEGnn6KJgxE1oyilRTUF6zhdu8MEP269
         mwyfZjaDxTPtkdGV9eHOq4YDbjkhrZiBuWIMCot1oUO+dOeCU9lGxSepzKUdFsQxgZUU
         4xTg==
X-Gm-Message-State: APjAAAUsbF42CO5Mf65hFIq1o4wXAfJsFlXu50i0gMcFes+xFEYfPkKo
	omxYroKAYpbTlsNP1dc+ngrjjfjo
X-Received: by 2002:a62:f24e:: with SMTP id y14mr51115363pfl.209.1553922782057;
        Fri, 29 Mar 2019 22:13:02 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.12.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:01 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/8]staging: rtl8723bs: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:39 +0530
Message-Id: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle

This patchset removes unnecessary parentheses while returning a value by
evaluating an expression, using following semantic patch:

@@ 
expression e;
@@

return
- (
e
- )
;

Payal Kshirsagar (8):
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

 drivers/staging/rtl8723bs/core/rtw_ieee80211.c  | 6 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme.c       | 8 ++++----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
 drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c        | 6 +++---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c  | 2 +-
 8 files changed, 17 insertions(+), 17 deletions(-)

-- 
2.7.4


