X-GM-THRID: 6393296356207755264
X-Received: by 10.157.17.29 with SMTP id g29mr1359184ote.86.1488556750118;
        Fri, 03 Mar 2017 07:59:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls11035118ota.5.gmail; Fri, 03 Mar 2017
 07:59:09 -0800 (PST)
X-Received: by 10.129.128.67 with SMTP id q64mr1417927ywf.88.1488556749668;
        Fri, 03 Mar 2017 07:59:09 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u12si115732pfd.3.2017.03.03.07.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:59:09 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so10215444pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MS5VnpgTKIpb3zm4Ut8P3j3oA5M0tj9nK0Qy6sUCBjE=;
        b=aHLn6rw3VH1wb8JmSLimI785DePyNeIldkodIwjxHqspwKRwh6YxMTI2fBrTLm1I+F
         V5uUrQC/WZUPN2bYND+MB2MTC3LWaE327hf44YYdtdqhwO6U4s2IESlxwS1vbSILFLds
         FUVncDTMIZuXvBQgVcyXGP1qqEpX3IICOt6ve89552LN+67sNTG4PRu2gFyyXKOp1osf
         4wPpki1XtsoegjtUBTMKj5k7hkdKAlbw2MBk/9zl9nSM3GyVpn0FS4a8uWnVYn/71Frq
         PWRXnVSg/TLmJu4ksm7si+/NXDHiKe93q+RqPYwItzLb47jDGKjZM8cUnhEd4EbgphZy
         wZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MS5VnpgTKIpb3zm4Ut8P3j3oA5M0tj9nK0Qy6sUCBjE=;
        b=T+lRbx4Gm+iGPwUALoe1xBRrkDo/meTl8GK0+raNVgBGUFsCTMXbOj4ke71E3IPo59
         7kE3ykYOiFDMdFH3f2h4+dOS5HZAVLHm+xCoB+bFvYpyJVAWsVpaV6o6LqC0QtGSqKQg
         fxxrFk7V4B3ZCE8tAeJEtPTqAr+icc5KqSfCmsuHNIErZaMWiJPBx7kVW++gJz02AHAw
         SWPKcxNvt6c961mwWsGKyf+1kr4Zbm+WY5i4JrIgCLpyeYllzSb/LZrGmaqlNcNjhmnX
         Ury5OOEHS9TP4grkGcWLHEkq81wVR2JCXznrT2bwN4RKcL2YMiqSAGbxCIjynvhEUHUb
         Bd0A==
X-Gm-Message-State: AMke39lgH/oSZ6YNPxmVLTZU5+h6jeVy4YcsEuClsXqbLdM2wsgEvcoeJuSQHj7YPNv5tQ==
X-Received: by 10.98.2.21 with SMTP id 21mr4238696pfc.93.1488556749463;
        Fri, 03 Mar 2017 07:59:09 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e70sm11338278pfh.84.2017.03.03.07.59.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:59:08 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:29:03 +0530
Message-Id: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series replace "the the " with "the" in various drivers.

v3:
  -Resend the complete patch series.


simran singhal (3):
  staging: wlan-ng: Replace "the the " with "the"
  staging: rtl8192u: Replace "the the " with "the"
  staging: unisys: Replace "the the " with "the"

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 drivers/staging/unisys/visorbus/visorbus_main.c   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c               | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


