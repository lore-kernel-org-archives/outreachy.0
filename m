X-GM-THRID: 6393685966647721984
X-Received: by 10.99.152.9 with SMTP id q9mr3414334pgd.84.1488646018681;
        Sat, 04 Mar 2017 08:46:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls12382668otg.39.gmail; Sat, 04
 Mar 2017 08:46:58 -0800 (PST)
X-Received: by 10.129.44.69 with SMTP id s66mr3342543yws.132.1488646018332;
        Sat, 04 Mar 2017 08:46:58 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 207si566347pfu.8.2017.03.04.08.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:46:58 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so15652982pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QfJq096v2opntKiZU1aqYixkPilsfO7iCI+LAc5xHGM=;
        b=u7hAnfk8FUfNyNG3gfcjS+/in7i/F9NVoL/X0bXZfshvAt/EW0aTFzmVVyWO27+BUR
         AlWM6cSPyMWlCC9IzQJ3KoqIFcutHehs6ApBAna2sZ8iDQZB7Xdk/rKm05YO2jUTTr+/
         EXV2CyqcnzWN+pnzXWr/CVp6A4D4IgYR1UfY96guK90fqpjELySDb0Uw4VEZnpCmciON
         l/LZhnOcBIIqu+CvBpysWTTOEZcRWy2lE0cxKqPUzxfBJ4Z77FmgnxKigPIVTq+zwJEa
         t8gqSeSUhpBr7lHpPF5PE9pSZuVvMmMdnfpVWDd+8govWthVcO32yyDyu6yPIbw5k3g3
         LSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QfJq096v2opntKiZU1aqYixkPilsfO7iCI+LAc5xHGM=;
        b=XpGmj9QvNrpIVeKoXFqaKLH6CpN3AA3ih7oPAD1RcuWPRqNwePnxYdOIQJbpV6Youq
         PViBUh3dvXDtjkXbcfVtP2BGlsucc+RChMH0IIrEjMbeyHZfqhlfmefWsAnDN4cFiQUk
         iHZWJbxe0z/DdgBX1KWv7ai97AbqXMeVqm6NSgIhFXtXob6P6YyLZIP4SSggQy2qYA85
         21wa5d2TAGJhfVtPyTqOFPYhxP15pwuZfRTteRS0b8gF4+uWlXwAE3zvH9LClT8jsOTV
         k8shLWOiTbdBe99rmpu8Wk8Jopf4v+3rHbSGJVWuLPS/u9AcPtFDlzqkL9KfeuYTRWgU
         8lxA==
X-Gm-Message-State: AMke39n3QR7u2uway8Tq8fsgEpg24xrgR9pQK2aADF7ol7Q/6YefXWZIWeLOCfPhQ+a8jA==
X-Received: by 10.98.4.71 with SMTP id 68mr10572456pfe.92.1488646018127;
        Sat, 04 Mar 2017 08:46:58 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b8sm30399172pgn.6.2017.03.04.08.46.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:46:56 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org,
	linux-rpi-kernel@lists.infradead.org,
	outreachy-kernel@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] staging: Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 22:16:52 +0530
Message-Id: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series tests if functions like kmalloc/kzalloc return NULL
on failure. When NULL represents failure, !x is commonly used.

simran singhal (3):
  staging: rtl8192u: Clean up tests if NULL returned on failure
  staging: speakup: Clean up tests if NULL returned on failure
  staging: vc04_services: Clean up tests if NULL returned on failure

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c      | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c       | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c         | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c              | 4 ++--
 drivers/staging/speakup/main.c                                 | 2 +-
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

-- 
2.7.4


