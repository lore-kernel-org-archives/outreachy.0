X-GM-THRID: 6663286701018841088
X-Received: by 2002:a0c:93f2:: with SMTP id g47mr5701882qvg.4.1551601113333;
        Sun, 03 Mar 2019 00:18:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:dc42:: with SMTP id v63ls1077210qki.3.gmail; Sun, 03 Mar
 2019 00:18:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqwGBoZXgn+mb21Md7LtqCfKqVKRaqesEvFU70gd58Cm/0Swm/FXfIG6EV1XCtsE3y1ssoCR
X-Received: by 2002:a05:620a:13d2:: with SMTP id g18mr7742569qkl.10.1551601112708;
        Sun, 03 Mar 2019 00:18:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551601112; cv=none;
        d=google.com; s=arc-20160816;
        b=Eful+HM1KGrNhVG4ZxmKfO1UYeXImYiyC10pxzKFhWVG07fmLd77EfvMVlZUUZE7Rx
         fjvuCAJoIJ6V2j88mMJs2JXkcxFJvNAvFu8DjmYUlg78ZF0jKnlOafPfUuzlkCRC8NA5
         QfcrL+DcbJcHQGcqFi6ZlwqT2m2AC4HzQJhjl+idpX46D7IDrDIln1Skh3cx6/CoxgPv
         3zMDKqPLvapxoCGauXDR7m6WZ4NByLxU0EfC3Mzx2FIonmgnDJLU6VhQ0SPJiArFKW05
         KlfArsQudG1vDuMT66U2JExXDinu93SVO+qSuy98uShW6zMCOv4MacJFQBbmJaUr4YtD
         OcGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=EAiKgs18dVmg1CkgnJyzmST7ezh/mIeItaVRx5r7Y5A=;
        b=FdRFs6Q1maozmGEsSiS5AsdIygSIzaFnIKULDAO6EdjB+tCu77qhZogJIdrB28LM+2
         AROmu7EV8et0vsDib9zHkHGaapDJ/TkguS+GYP0zRAw6N0Yst3wmSymwV16q5sHaIyMP
         QMGZLP3sDdr12+gYi7/xbSm+pW4ngy0xdkDpi+TbENXTxEMrB06sazda07AKcE7f55+9
         mS6c9n601j3r7XUNa4KcZKvz53O/0kyWua+zlkyb9YFHb+lDXp84riJdxwh77hFnyFec
         3NswXnOolFNjEN8ix4yQnnrfTtDYU1f2IbTqr5vhRBWvnd9ErdR4DDrFCqviY7H20KhP
         x2uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wne/WKqF";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t79si162874qke.0.2019.03.03.00.18.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:18:32 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wne/WKqF";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n22so988668pfa.3
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 00:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EAiKgs18dVmg1CkgnJyzmST7ezh/mIeItaVRx5r7Y5A=;
        b=Wne/WKqFyVuVv6O8BURDd0hLcdtzbsYrqf00Rw6E0bBz5OXMnkEv1IEZiAZ3XSsORu
         I+hV85/7Ml6YljiIXh1WA5KW01IIMZ+C4CT0orD9cJ53OqRrlJZcK4s4/3w6h27GxWDS
         N+xFiz6kDU7nkw5Zv5YW3DLf/85iKiYGz4IBz/9TToGxDe1B+sSMoUWqVeqYJLfAh+W5
         gcM6zlwUpK0UM+JEewb+8bydH0ubBtx/Jmf1f1ztR9inLbLajD5m08KwQ7O2ttgC5Ki+
         Pup9vtl2HVfFxEJrcMNM+NXD/N/Jy+Xgrdex/E487WnJxlet4hOKgKUs027h67fvvIRd
         mUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EAiKgs18dVmg1CkgnJyzmST7ezh/mIeItaVRx5r7Y5A=;
        b=LcU8wuhXYDVUbSDQ3YiWKBQs2T8E2JbdqO7cGJj7PAEi1Nd4Fw2XSGPFXD6FysKeTK
         YoSmgfXqJW+zoPiQZxutdSGLtMjyBDN05cKSrGS/dJDmiZEhu5MMBvbWnK1jhz53L0Uw
         LYke0o67LbzqvqqLQ4zNZezSiiQ6RTOoF6ZA/gRidyFWmQb6ofZZkJluag1BSVUBQ/1x
         rBs9hHpYVVRgmpF3u9xkBWEKpKBb/+E/T9SyJGeb+kBWyU1pfVBFgxtNGpvnCCQzZZGx
         e4OufboTCaEhK92PR1tWhd7AG423yFoyAPjqKlCw0MDzuZLwE6F7t6nhrjkTO4rooLDH
         tKSg==
X-Gm-Message-State: APjAAAWrdvlsdEr3YRRjm2NvdqRtB/zpVGY0ncrAY96In7zAbqEMy/c7
	7lfSd12azeIlYWF2P9wa0RMH1HlzLL8=
X-Received: by 2002:a63:a11:: with SMTP id 17mr13134148pgk.310.1551601111799;
        Sun, 03 Mar 2019 00:18:31 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id o6sm10924580pgo.27.2019.03.03.00.18.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:18:31 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	floarian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/3] fix checkpatch warning: Avoid CamelCase
Date: Sun,  3 Mar 2019 13:48:05 +0530
Message-Id: <20190303081808.83540-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset renames following three variables of struct _adapter to
fix checkpatch warning: Avoid CamelCase
 - bDriverStopped -> driver_stopped
 - bSurpriseRemoved -> surprise_removed
 - bSuspended -> suspended

v2:
 - Change types of these variable to bool as they are used as boolean

Himadri Pandya (3):
  staging: rtl8712: rename bDriverStopped to driver_stopped
  staging: rtl8712: rename bSurpriseRemoved to surprise_removed
  staging: rtl8712: rename bSuspended to suspended

 drivers/staging/rtl8712/drv_types.h           |  6 ++---
 drivers/staging/rtl8712/os_intfs.c            |  4 +--
 drivers/staging/rtl8712/rtl8712_cmd.c         |  6 ++---
 drivers/staging/rtl8712/rtl8712_io.c          |  4 +--
 drivers/staging/rtl8712/rtl8712_led.c         |  6 ++---
 drivers/staging/rtl8712/rtl8712_recv.c        | 16 ++++++------
 drivers/staging/rtl8712/rtl871x_eeprom.c      | 23 ++++++++--------
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++------
 drivers/staging/rtl8712/rtl871x_mlme.c        |  6 ++---
 drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 +--
 drivers/staging/rtl8712/usb_intf.c            | 12 ++++-----
 drivers/staging/rtl8712/usb_ops_linux.c       | 26 +++++++++----------
 12 files changed, 64 insertions(+), 65 deletions(-)

-- 
2.17.1


