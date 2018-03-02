X-GM-THRID: 6528466201738215424
X-Received: by 10.157.86.134 with SMTP id o6mr3677336oth.45.1520026987268;
        Fri, 02 Mar 2018 13:43:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.90.133 with SMTP id o127ls1310220oib.7.gmail; Fri, 02 Mar
 2018 13:43:06 -0800 (PST)
X-Google-Smtp-Source: AG47ELuZ+fAUsazILOJtyerVcwJPiqnk+SFv7H4iPtWBeM0Pa4bCaddNQGysZcQdUkWQLvqcsRM4
X-Received: by 10.202.76.13 with SMTP id z13mr3169843oia.66.1520026986333;
        Fri, 02 Mar 2018 13:43:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520026986; cv=none;
        d=google.com; s=arc-20160816;
        b=LJFHPnHjJjsSIUh6d4QoREPrtjVkqqOicyiPm09ESyKKanuMndXcJ4oIwOYLuPMGgy
         qSPstuhkYPQ2GhwXHzuN6IpOfk6pc7CyfEYbUX7zMWlsbHgsYIP/1HbeAbqTvPamV2km
         QZWPks52KrJOp+go1BZyW7osQ2+ccdpoiukqb/xRW90ylO5ZYY65ofoXQc83volYGsJj
         kw+VhoP0+vQ4giCmmmZuvjXbIff4/nkk6g1FJbJ9P/JVOBn/GnXn9Q9UNqY80y5uHAzr
         d+bBqq7rxjnqYxy7SHdXh/nwiGODOpCJjC1cCh+I62VtsQ2FhaGXHFQroxttDHT7tsBY
         pyeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=HWNyyHa7g4hkFUHgN6zhhvOKy/IsD3Ywz8W2lovMN/0=;
        b=a/H7MvaPSf7ymKJSdgnWLLMxNI2UpWXsijEvWKhXzKzqeUv7c0ruph6q+Tp8nNE40V
         NgXi8glxCSetYgPfqEBtSqxovE3XM543wfx/1NbdD0I/7nHtpRbAns7rC+kZHfMiXGxW
         RxiLhuzlFpDVGqZikG6IG8/FnZ62FA0xSLmV2JzRKkfNrneAbHPKm//iWzzAkOBPaFEy
         ueYSd8KzFJ3jym7zMCluQoSld4HSo8vsrXtA2ZF1uLk8ENOAIuAqB3srPI6DcRjh7U2R
         qC77u/sCkf0C4D0SH/Zze6lXHe1nAN3WS2va5N/5qo4MxasQV7D9zBxozh1SS3vZZxtw
         oJpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOnNwUK0;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id b13si519061otf.2.2018.03.02.13.43.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 13:43:06 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOnNwUK0;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so4288770pgn.7
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 13:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HWNyyHa7g4hkFUHgN6zhhvOKy/IsD3Ywz8W2lovMN/0=;
        b=ZOnNwUK0jPzk8XvroSeYsyJ3yAH4ZHa+KgKyHhcECIFIOgh6sVOTJwv1ndGIkoVDRS
         LCnHuhdXEP3vnmXNyuRBekeKv0FemHlOjR3lqoNA2dmhRRO81288Clqs4sSNm/AnjJRl
         zAUNoRRjdTVn9uL2BehmK+a8JtAIOaDAduAjeCEpRwyznsFe7CICx5YoEFbgJu6tCKZc
         J7OkVxjrpruxyrZyPOa1c+tUbQkzJeThWQakmLbXBUef+8OuuK+HxcDrW3Frl424kQvP
         42EhP+USK810TmK9cdChfD70KardeAX8Mk4D+zRF45EmNiLEbYzuKYUckLMM4ablcHRK
         TftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HWNyyHa7g4hkFUHgN6zhhvOKy/IsD3Ywz8W2lovMN/0=;
        b=dds6rh4IQvfeZe0c4s72WRaExqlczsfSd04ZndwHclrcp89cbtox0r88YYRM3pXUqS
         u+Eulz6i6MvvefSMttryCBuL9oooqvBngvRrdhxEakpvMiWubqWpHx2nKOgcdh3IwT9D
         /BQrY13MUPIpOs6YMyvhULadrOYwaXfWNNojtscY0N73mCjN/x3D68qc7NfzqAh8isUi
         vC4Dsj+BDRbwsE5oM8A0dBfNy3dl5bE7L8sCOicKRSGLI9HLG0th3fQImbM9JpYOX05l
         weII5RFVDpKINklHa4Drg7i6bDsn+eO2o03Td0LjWk+Cf4EbY+BgfplLs07O/gkd5mPN
         QXEg==
X-Gm-Message-State: APf1xPDq+PM4564MIVaPvUANP802PnCZAG1nUwr7EQ8f7qr7jKXsnFvk
	di4nyYRH6HNJBTudamG7hH0=
X-Received: by 10.101.82.139 with SMTP id y11mr5612511pgp.68.1520026985651;
        Fri, 02 Mar 2018 13:43:05 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id a28sm13774531pfe.70.2018.03.02.13.43.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 13:43:04 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: outreachy-kernel@googlegroups.com,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/4] staging: rtl8712: fix coding style issues
Date: Sat,  3 Mar 2018 03:12:17 +0530
Message-Id: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix issues found with checkpatch.pl for rtl8712 driver.

Arushi Singhal (4):
  staging: rtl8712: Remove multiple blank line(s)
  staging: rtl8712: Added spaces around '+'.
  staging: rtl8712: Add spaces around '|'
  staging: rtl8712: remove unnecessary parentheses

 drivers/staging/rtl8712/os_intfs.c                 |  1 -
 drivers/staging/rtl8712/recv_linux.c               |  4 +-
 drivers/staging/rtl8712/rtl8712_bitdef.h           |  1 -
 drivers/staging/rtl8712/rtl8712_cmd.c              |  8 +--
 drivers/staging/rtl8712/rtl8712_cmd.h              |  4 +-
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h   |  2 +-
 drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   |  2 -
 drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h |  1 -
 drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h |  2 -
 drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  |  1 -
 drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  |  2 -
 drivers/staging/rtl8712/rtl8712_gp_bitdef.h        |  2 +-
 drivers/staging/rtl8712/rtl8712_gp_regdef.h        |  1 -
 drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h |  1 -
 drivers/staging/rtl8712/rtl8712_led.c              | 70 +++++++++++-----------
 15 files changed, 45 insertions(+), 57 deletions(-)

-- 
2.7.4


