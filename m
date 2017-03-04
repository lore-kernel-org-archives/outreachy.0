X-GM-THRID: 6393699904957448192
X-Received: by 10.176.80.106 with SMTP id z39mr2010296uaz.6.1488649264784;
        Sat, 04 Mar 2017 09:41:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls13732031ota.5.gmail; Sat, 04 Mar 2017
 09:41:04 -0800 (PST)
X-Received: by 10.129.174.1 with SMTP id m1mr1935115ywh.64.1488649264448;
        Sat, 04 Mar 2017 09:41:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si599206pfa.4.2017.03.04.09.41.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:41:04 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so2137877pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=h64oiZYmgIaESLqPN5I8apa97v/+Amxltd/sqNh0yMw=;
        b=kE3nj7KpLNyN9N9BULjfH3GCJ5rK1+bYtDd6NPHtIsm8VD+mylsn85VvzQrg/xu9jd
         ikyD3phDcY4SkAUgRmdFTFVUpjTTsGvPTd39rVQw8rynQZveQNJB5Fym5rd/mVe8FgMc
         GK+icWY84zA+sF8GA3obdAl6x0ToxDWSV5x85qtnoe96fWE0deb8fUOkF7gEycwGen92
         TFM9nWM5fDIMkgjK3Pt412ydt98v2JSzKakiAPNeH4uvKYeWEiX5THKLaLyXXoFAVnhd
         wuXPaDzyTstH97MpVcJsZvOwH1jqGzTTwomU5gMpmjvbPcLlzADDsrRLNtz2VutxmMhE
         KaXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=h64oiZYmgIaESLqPN5I8apa97v/+Amxltd/sqNh0yMw=;
        b=d+bBuCAyoD1ur/3Y206YcJy7jOByKYcAMUalZ7jcdLOPb7MNXhvD2KSev1QD3DFYEk
         kmIG2FsxOAWCuV/d2DbNhQ1mOWmzUL/N1Nyy1vgk5lh7DD5cvZkZfcWhVc6aPHXevhWc
         csv/IvbFgTWLcGgSozVo/1V1Z4QPpcTCT1+F5emg2yJFE7BNotiWg5y4IcXcOMJ2rNvr
         XBNbZm/UHbtuVe1FZ0vgUbuZuWewoZ5ZDSfMoMw7bPrukfatdSsxMnl9l1joet9060I9
         CVqGQvmCV0wTtLpfdu50f7CW+tz/8zpD/OSu9zUxI5qAIj3BTpAZJ7wWSpte5qpD3kNL
         48FA==
X-Gm-Message-State: AMke39kRcsJyt3ABDRV/rZEUsTRzrqFtJKYPPvLq8/jT6MWPPaIp2keyYY37jgg0gVCCxg==
X-Received: by 10.98.214.4 with SMTP id r4mr10912049pfg.185.1488649264235;
        Sat, 04 Mar 2017 09:41:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z4sm30504578pge.49.2017.03.04.09.41.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:41:03 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH v1 0/3] staging: Replace "is is " with "is"
Date: Sat,  4 Mar 2017 23:10:58 +0530
Message-Id: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series replace "is is " with "is" in various drivers.

v1:
  -change the subject
  -Changed "If is a command..." to "It is a command..." in
   rtl8192u/r819xU_cmdpkt.c

simran singhal (3):
  staging: rtl8192u: Replace "is is" with "is"
  staging: greybus: Replace "is is" with "is"
  staging: comedi: Replace "is is" with "is"

 drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
 drivers/staging/greybus/uart.c              | 2 +-
 drivers/staging/rtl8192u/r819xU_cmdpkt.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


