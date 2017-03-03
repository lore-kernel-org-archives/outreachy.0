X-GM-THRID: 6393234614676094976
X-Received: by 10.99.192.17 with SMTP id h17mr932086pgg.56.1488540930114;
        Fri, 03 Mar 2017 03:35:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls8949683otl.41.gmail; Fri, 03 Mar
 2017 03:35:29 -0800 (PST)
X-Received: by 10.129.79.19 with SMTP id d19mr855407ywb.19.1488540929775;
        Fri, 03 Mar 2017 03:35:29 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si2040178pfa.4.2017.03.03.03.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:35:29 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e66so4049618pfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 03:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QA2nzycVKDClkc8QtUupwU79SMvfypZOLrIhHXXzMpI=;
        b=bDLRjADqpUUMAoPSuna7qqr9iJhnK84JEodDK8Tb05qIeprXQk5iZ2DFTwQiKmwJXS
         NBPdDzPS91okObHOT5IXB81mnNDEx4uyspysA3AJoY74DREXarl/gTqrN1qtqpagoMJy
         /knujNciAtsY2B9ZRD5BrBtADPVnr5N1i+midQ907/XrOF+jaP2UMs34YXpT9e1Cmkio
         ZkrHsPkrbew5O/8ihWUEZOFhElT5mMoG12WQtef8SChCo84bo4zJ5QAxXm2ZrS92Hghl
         17E0h2Su3Ji/xuboz/xCnxyKOZkixIoUH5AQEzMYmXbX8Dv/uy71N48MaXWYlIKI6cOF
         xU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QA2nzycVKDClkc8QtUupwU79SMvfypZOLrIhHXXzMpI=;
        b=RsBe/Ic49XLpcRpdFUA7eWVV7DVirWFtVVfhG3IYiw3wcUMYfZ2zWqilbL51WjCzz3
         lJYqCjW2jIAOmX5J+VG17ubGBcTifM8Q0Zdy3FnV9csK6wmPQgWxDksa8AXh7eNHIqBa
         c4WEIN61IDD+oqdvcp8wKYPkj3yEbaFzJvpurviCd7JCrvLfXiwWBMogi69eP7wEfjUg
         nb642WugUnW3x/Wr1GB+AOlxkmzxGrpwUVs47yYsRX4uWxjB1OSqIXtH+nB7zSUH16Hd
         F6ZLyceLoll4IcKS4EMDPFWNXjGEjiO7o5GgMQ6pVw5HH8tZ6BmJ/A3wPN8wJIxPKq6c
         YWGg==
X-Gm-Message-State: AMke39mopY45hJtdamL6o1LHKKULuweD4jDbDXE1lce6QHsUwrNQYZy2j+BeJDXLYC4/OA==
X-Received: by 10.84.202.163 with SMTP id x32mr3635500pld.67.1488540929565;
        Fri, 03 Mar 2017 03:35:29 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r7sm22934029pfl.25.2017.03.03.03.35.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 03:35:28 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/5] Fixed compilation error
Date: Fri,  3 Mar 2017 17:05:20 +0530
Message-Id: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixed compilation warning in lustre/lustre/llite/range_lock.c

simran singhal (5):
  staging: nvec: Remove unnecessary cast on void pointer
  staging: lustre: Remove unnecessary cast on void pointer
  staging: lustre: lustre: Remove unnecessary cast on void pointer
  staging: rts5208: Remove unnecessary cast on void pointer
  staging: rtl8712: Remove unnecessary cast on void pointer

 drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
 drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
 drivers/staging/lustre/lustre/mgc/mgc_request.c  |  2 +-
 drivers/staging/nvec/nvec_kbd.c                  |  2 +-
 drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
 drivers/staging/rts5208/rtsx_transport.c         |  3 +--
 6 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.7.4


