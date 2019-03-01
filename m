X-GM-THRID: 6663286701018841088
X-Received: by 2002:a67:84cf:: with SMTP id g198mr2581159vsd.10.1551437340052;
        Fri, 01 Mar 2019 02:49:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c47:: with SMTP id j68ls1427818vka.2.gmail; Fri, 01 Mar
 2019 02:48:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0BajuDAnjduxd7xV7sAucaMKZbiXsGch2gLh7akQpxZpV/QBAv+PcOrTWMHsdYMOZlECz
X-Received: by 2002:a1f:9d49:: with SMTP id g70mr2812532vke.10.1551437339433;
        Fri, 01 Mar 2019 02:48:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551437339; cv=none;
        d=google.com; s=arc-20160816;
        b=GILk/PVssU2IqWIZsrbooUFfMcO0xZHH6WUYU6aFoWslKBq+GvcrMFCN9aNddw0Kl8
         T8OH78nNFaxCAcVDHE++MYGanO5Zam8GClprQNQSmP9LSrWChDD1S+ByzJjG+FhH26LF
         cJtb7dIt6DErIH1pjn9rIsfDoLNrGm/PQrZA0gi+eDgUha/Sev6MFlIMiF7KeyfUgDV4
         VPQLxWWV/u0TGmK8Z6otbsSVFxQvL4EQ+El3hHApxU3hI3+A4IhH8RUBkppNYoUwc4ZS
         TpoTIiW7/e/KDI6aCIu2rXug4BEaPbbxjRqPwJ8ia4cl+LjWDkyU/vMHJon2xT2KpDNV
         DT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=m9P04v7J19PxZ5FG6fUM/Zi+55wdJG0EJTDvtpUrCX0=;
        b=pkaRphyQwnS8yoDTS7HCr1cMUSTJy+oKaKVc4e43PD31G/fOak3QjGUUHfKAB8Qx9c
         FJogaPnUF0Cdo7qPb21bjIewC/S+QJz3QwxqHynt75W5nUEoWPTfWjzAEWZbYXwduChW
         d9vyoaZ7rHSIdSq6TAgEp574BaSF1QiJ8CMEvoj9qm7FHsNS+9h+gAS/iS7cZZrd2lU6
         bW4YioldU8cjmA++TeuAsXo8heBOGwSdA8ADGdl61Ej3R1m4Qaw/XGXq6vDbifJHsxfR
         pVfCwKho2W913+KEO3CkuVgqBiFq3dzOT8MmcPohDZhdZgmCVylU9k8l33uJb0HkCi7o
         pfng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tsXTwOvR;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s73si1251519vkd.1.2019.03.01.02.48.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:48:59 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tsXTwOvR;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id d25so11251882pfn.8
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 02:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=m9P04v7J19PxZ5FG6fUM/Zi+55wdJG0EJTDvtpUrCX0=;
        b=tsXTwOvRAjjJmC9Bdi3uyln/8wNOo218lL3fgEzBokk9bU+q8buhW7nBmh8qcOpS/J
         YFLV5AGtmt6AfyuGhJAuwn6EC93m8Tstj0n5snqilPgSmabQH3gMwKw7nwFXycbnAq3h
         WrfKbbqOBsY/9dmkNVSeux8sByO38cJfFOSSHbHlMvcnETmHRy1iBaAk6Ty0SD1svPHM
         J+aI9VnnEAnuQSOxg4bjbt/vzPRbfv+vTw5EdB9ypKHNwNw3MrLtJAh8rOH0JOmD2WXd
         cpIZ1UTZ7Z+4wfBwvaEFVsdjOk2IpIoSE6Zesy+iad2ogcyV9gb7vLX7jIVYg1SNpsAu
         DqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=m9P04v7J19PxZ5FG6fUM/Zi+55wdJG0EJTDvtpUrCX0=;
        b=S01DQ0x2IVFtkAXXaXacm3xIFrBtpa/rjTumq6Zno0wxszhxkKVcuOtu6cn91Vvp8T
         xXk7V6OOqJYO7ecR9UDRhdbBqfM7izokzbDxCJw3Zn70LDqFMtHQC17x2ksGFwRw1oxe
         xOnXAU56rwY2itDuOz7jvDIK68qGTiezlbPlFu56CXpkZZ5aHZ2AVEEBk1mzP3XLWeTZ
         7ifKE/KVyu9TY+BcAnyqgbIjdFsHfYB2I76iVoqq0d3D2j2YSCjEsSmQXf4Na9TnKoXW
         EU0cVtW+ol0BVGAwGPrzKss5q8LoDLgE82c3RJ5p7t7ywNSOh2GhyndUwXQGmDoZxuJ9
         BAVA==
X-Gm-Message-State: AHQUAuZYfqwUL1lKe1ByT9RMfW+rlKLOLg8rmpYzEJ1bEThxjeVyu848
	c/So3hhynCNAJjec4Hjt5KAuXcdDTDk=
X-Received: by 2002:aa7:8051:: with SMTP id y17mr4901385pfm.92.1551437338964;
        Fri, 01 Mar 2019 02:48:58 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id f193sm40260232pgc.3.2019.03.01.02.48.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:48:58 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/3] fix checkpatch warning: Avoid CamelCase
Date: Fri,  1 Mar 2019 16:18:39 +0530
Message-Id: <20190301104842.75482-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190301051505.55407-1-himadri18.07@gmail.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>

This patchset renames following three variables of struct _adapter to
fix checkpatch warning: Avoid CamelCase
 - bDriverStopped -> driver_stopped
 - bSurpriseRemoved -> surprise_removed
 - bSuspended -> suspended

v2:
 - Change types of these variable to bool as they are used as boolean

*** BLURB HERE ***

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


