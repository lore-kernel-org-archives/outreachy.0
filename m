X-GM-THRID: 6674267883353145344
X-Received: by 2002:a65:528c:: with SMTP id y12mr620748pgp.40.1553974087943;
        Sat, 30 Mar 2019 12:28:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls1921339plq.3.gmail; Sat, 30
 Mar 2019 12:28:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAaL/W2B5bL1dnCvlBfxsWxetLxp7v5bH8ezBQcI+Wy/0XuS0N1Wm8hdHaY9Ib2jX1AIEi
X-Received: by 2002:a17:902:288a:: with SMTP id f10mr1332510plb.101.1553974087273;
        Sat, 30 Mar 2019 12:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974087; cv=none;
        d=google.com; s=arc-20160816;
        b=R4hMsBA/Q151Eb4u2yTZmma1WxeUEu+1WOx2yfKxW595DhNtwdQfh8KUQB9/W58K+P
         zW2Dsbtx1yPNZVeqFIcJ8E4rBdxQKFvBzSMymrC41SbnHHmwiOvZVHCiKvF9mMmw4Ggp
         69xCDvk4dL5Gm2DzyKuokX9qKczVei58nbfnHxGIE0OEWEXdSIE41tS5GRcGUB8NUYen
         IdABZS3hUwB0l0bZD3txDUxC7fp6/TjeEa8Z1weg7lZO+IWTsfAkn0mE2uD497SxAP5X
         jGMzbfNKXbCBihj3kxJhtVmKbN6xhw31fl1HyrtA6tG4ixoff7P01Xc76pTQP0eG14EU
         0Bfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=w4Jrs3OS8h4MzX/kxcXsLn28SGsW/mNj0OJhhUgKRp8=;
        b=deuHabwoEj4QLC54V5glLqjeNXhbY9TjpIhKAlDONSXC4UyPmYsJGf8kvBQTYDGgwm
         ST6CBMvlsED8EFeL8fwkej5nWGojZ7Rsuf3Zk9KVBNCg9EeeH/urrEgaNzTXNmDqNbCB
         JrXpAhcC2QvmmSx4yXcUdTg5L+o+l60CIIlunxxatPt7Q9UWoJR5QcSgCXqLDbCNvu5v
         Xgh+v6WyaMZ49/PSRhHgin6wJpnNw1iVIrLDhm2FUvnEXPFgrDiNrP4+tBblVAUJ59O6
         BMW0MHCWxcSxyEx4JMZR7lrZbOTgIzz85EiZj5eCkUfVLL8NH4kaAi+2gU8N7uviU+WH
         VNvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EEu/9VSa";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 141si397172pgb.1.2019.03.30.12.28.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EEu/9VSa";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q206so2770748pgq.4
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=w4Jrs3OS8h4MzX/kxcXsLn28SGsW/mNj0OJhhUgKRp8=;
        b=EEu/9VSaRdXZvVwcSInQNgY0i72XIysvIUUx7rwyfcEdCWxlZEpbDO3uPBOvvc0m0l
         4k3DUvkAgxNP0nTh/0tOa9V9LTlRe593+O+GsiY64jMNOnuIyKP9UzA71Ays58LhpwTC
         27/PCstFFIVWnBBy9zLGJCs0qFbHLA5bC6IrnOuIhH+cI0YUZ/RS8RJoIEvWYtRiFeiX
         uPnixiDcQirtV/u+A694ioHoJUksunPEnmVa9HDUJLpJ6Bif+jpxaHNKaMfAkEPw6T/c
         Bb5IoKDZRV+mLUUqpWi2CcQS6zOXZpfXmIke9NhFn+OJkRl9M4W+F3+QIBLonhVGr7iT
         +gmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w4Jrs3OS8h4MzX/kxcXsLn28SGsW/mNj0OJhhUgKRp8=;
        b=ZT/DOYoVS9Sgso6p7tWKEz+21v947GUjotvmRAvoi50/w4wpUoAKfAf5S75ZFkCBva
         R8OljJSIFz2wlsbNrFw8lrcfaVh2pHvZs0Ozcj4rXz2FRVQ+o7+ucJPA7CqOMpLGvMgl
         E+n7hGCzcC7BlDBml7vWiqUcQ/fnlWRtkQ7ktmAtm+7eT8nyyRRDMIA24idb/BHV3eMA
         ucX9XW58mYiZGyMViU5/L/5Ll33LTOG9WgFVklPYSyPNoj0/+0SzUHP41DWNqYFcJsVc
         B7g7J42DHVkGp9UYXb91urrlS1u10OxIYAewcwVSJjta9I90B3SGGzYDdezdrBonZ0Hi
         KSdg==
X-Gm-Message-State: APjAAAWTt4evTwNRQRcmORPJq/QRz4FiLo3G48MwOwuxWpa0Myx36w4Y
	hJ523aHUWEoqLV+gp1M714s=
X-Received: by 2002:a63:d304:: with SMTP id b4mr39535080pgg.300.1553974086329;
        Sat, 30 Mar 2019 12:28:06 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:03 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/7] staging: rtl8712: use list macros
Date: Sun, 31 Mar 2019 00:57:35 +0530
Message-Id: <20190330192742.65250-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset
-  Replaces usage of container_of with list_entry
-  Replaces a while loop with list_for_each
-  Removes an unnecessary NULL check 

V2:
- Include new patches for using list_for_each and removing unnecessary
  NULL check

Himadri Pandya (7):
  staging: rtl8712: use list_entry in function _r8712_find_network
  staging: rtl8712: use list_for_each in function _r8712_find_network
  staging: rtl8712: use list_entry in function _free_network_queue
  staging: rtl8712: use list_entry in function
    r8712_get_oldest_wlan_network
  staging: rtl8712: use list_entry in function update_scanned_network
  staging: rtl8712: remove unnecessary NULL check
  staging: rtl8712: use list_entry in function
    r8712_select_and_join_from_scan

 drivers/staging/rtl8712/rtl871x_mlme.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

-- 
2.17.1


