X-GM-THRID: 6669239463558774784
X-Received: by 2002:a24:6cd5:: with SMTP id w204mr7080741itb.16.1552803316632;
        Sat, 16 Mar 2019 23:15:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls1742681jad.0.gmail; Sat, 16 Mar
 2019 23:15:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJJB2tp4vjDuGPP4oAT9Shg3qO3IGJPNrvEE7OxJ/7oJSFY5dwUwRKuPDqjepTJh7Eju9H
X-Received: by 2002:a02:6a1c:: with SMTP id l28mr7003506jac.8.1552803315714;
        Sat, 16 Mar 2019 23:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803315; cv=none;
        d=google.com; s=arc-20160816;
        b=Lqbrwrylhnkxxu85kZfKhEI5v7vDoMGMFJei/ggT3rrL2g+npGF06QPvSSvz09smwz
         nUrta6OIu+8suSRB5H+zNBMusHEzGx1BsjZygqLkYMGY8o8wSH5itJ7/cfkTj0W2f8wc
         1isEG778ecZmVP/+zB3kTeRAtmQPhAHt/hISH29z7yd7SY0XcOFj2Lex4/9Wo9xvggp1
         F3r3Z5zxHQmQ5TtluBHiK9Ix6AK1WuDPW+oycbQnl9kSD9Cwh2D6JNqLo365A+7C5gOv
         ag7T8ovNaD8aWqHM1+2Xcs6nWVd4ZrYN4iHIeV/uKaQ6X4jGKTRuDlj5b46KDiA4ORS/
         wu4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DScWCXA3NGwWCMMwV9/NZiXmEsEDK0rUTRuZ7A5Lz8k=;
        b=nR4Zd9OUMabPJKbU0dWBsU1bWRz97sCr+JuBNO5ClyoNM8B3ZoSbLQDDDrcgu+Fe3I
         6QbWoO+XuIPg0UyaeDU0JXkPTxHzsJYM12psPzwtPjho4DeS30LTGgXi/1JfZl5y/D9n
         rcPaAQq40gsnksF9rzd9tQfzsu8lQ6SKwx8QpNnYT73H9cMXGNkSfmiDv3kxJPsowO9K
         CrkWyYPi4ayK4K5pihylg8b8reXa9g1mI1w3FOp46d4WrH0EePaKnQzxXibu0uzWgpN5
         Grlz440vEUFYhu6NYclAHmQhVx6XdPEYvg3cdinQqIIInzD4W/Ox/55JkpLBBXkIBwoy
         baQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XlL5819s;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id u1si424598itb.2.2019.03.16.23.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XlL5819s;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id c4so10495886ywa.11
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DScWCXA3NGwWCMMwV9/NZiXmEsEDK0rUTRuZ7A5Lz8k=;
        b=XlL5819sRxecYO5FPE3nr3WvlPQ7IhUrgcVRpOBp819gphX5PxbLdKePqXgpM0Iw1w
         etavCbAqRKiGn+uVIg6LTajcXimkNzQem1hOtUHN22M9NRqF0kwsueLs4YbTjsmVrjRC
         DwM/yacM1IsxbaCocGkkN6uxA3kILNzvwcPy3weVk2Fg9R9vDqPjpY4ThmArTPG0c/vp
         DOe/RwVq60svOEa1+2aabVuXWLSEJwNgTT/n7XebkNcIntz0Q6Lv7dos4zFSeFxpIZfw
         LxrgJsqtYGKiUJxKwVeYjVltyKQiml3+4zaion6mfPf9un9Xbet5TGAlToZELu9rqrb1
         A6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DScWCXA3NGwWCMMwV9/NZiXmEsEDK0rUTRuZ7A5Lz8k=;
        b=khF91fzQoUIt+7mZT8jRNrhagb6hgJY7IgKOnnQsIYTqOb7YbOTY2Z4GwmUgiRcB0b
         FuTHwm1LDtcdGNaKRjwNeqEwJt+3J7epBMRPeB9juMbCurQwEVJ/lPR6413A+SyKN+dx
         o7BcNFIuKn7TmFwMKWuuc9Pu4RyIrF4lHZR0QZYlB23VZfbF5cXUd3iD4vNcd5S5zTN5
         MGIjThLkbmEIGhCfMXs+WqHSOCKMObMRRVpNKCxd9/DjenvnNAC3N3zlQ+8sJaC3t+GD
         V0wLcDdJckN78qmKzSBZGOvBv7EmBGWYLGTK11PeUxtCsUvdtnt8URN+Ugp2j79GczBx
         QVNA==
X-Gm-Message-State: APjAAAXlyMOHQQTWFrSWO6SxtTfx5Yo0u+0gZ3z3Sks0ZjImpuf3bN14
	hFYAnBxlm8CmG62WrfwckEG0ayEk
X-Received: by 2002:a81:a849:: with SMTP id f70mr9381892ywh.219.1552803315166;
        Sat, 16 Mar 2019 23:15:15 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:14 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 00/11] staging: rtl8723bs: hal: remove NULL
Date: Sun, 17 Mar 2019 11:44:50 +0530
Message-Id: <20190317061501.85447-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset
- Removes comparisons to NULL
- Modifies comparisons to constants

V2:
- Change subject lines of patches

V3:
- Break changes into changes per file

V4:
- Include separate patches for modification to comparisons to constants

Himadri Pandya (11):
  staging: rtl8723bs: hal: Remove comparison to NULL in
    rtl8723b_rxdesc.c
  staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723bs_recv.c
  staging: rtl8723bs: hal: Remove comparison to NULL in
    rtl8723b_hal_init.c
  staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_dm.c
  staging: rtl8723bs: hal:Remove comparison to NULL in rtl8723bs_xmit.c
  staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_cmd.c
  staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c
  staging: rtl8723bs: hal: Remove comparison to NULL in hal_com.c
  staging: rtl8723bs: hal: Remove comparison to NULL in hal_btcoex.c
  staging: rtl8723bs: hal: Modify comparison to constant in hal_btcoex.c
  staging: rtl8723bs: hal: Modify comparison to constant in
    rtl8723bs_xmit.c

 drivers/staging/rtl8723bs/hal/hal_btcoex.c       | 11 +++++------
 drivers/staging/rtl8723bs/hal/hal_com.c          |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c   | 16 ++++++++--------
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c     | 12 ++++++------
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c      |  2 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c    |  8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c  |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c   |  8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c   |  9 ++++-----
 9 files changed, 37 insertions(+), 39 deletions(-)

-- 
2.17.1


