X-GM-THRID: 6808532332710985728
X-Received: by 2002:a5d:6992:: with SMTP id g18mr10062701wru.426.1585234965887;
        Thu, 26 Mar 2020 08:02:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9781:: with SMTP id s1ls2935604wrb.2.gmail; Thu, 26 Mar
 2020 08:02:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs8lisJ4fd7FUe1SktwQftxUfY203ec+DTGc+ORB+xIWfFP4jgEOrPxajyuZOdLa6axJ61I
X-Received: by 2002:adf:e684:: with SMTP id r4mr9891448wrm.6.1585234964150;
        Thu, 26 Mar 2020 08:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585234964; cv=none;
        d=google.com; s=arc-20160816;
        b=wXTm0EnM/GdcnhnbcDL4htJ/suEostm5MinkmITRw3KDjgYF/gQE7WP2vssxtey76t
         SwzZCaLqpu55Zi/nCoQFi5kNZd5BBh1OQFv/iaBkCYvfHCj4lf3e5dMhFBDettz26L5W
         tM+2P54E76pheaCEltwnxL4ywO+j6DIrBkHezZK//9gq+qbWB3lFYTI6C4akhdN4QXdy
         6cMN1N3HJT2PB0AQs+F0FHxvC4mCVobnjV9d3T0KWI2kY2ZlGSulUJHUBR8Uv1smA7H4
         2jdUBcvhBDz/TgCOEjw7uRisDfAnXUURYEJwu9iw3TzrNTDL7ZhAkKnO8SswSvB6td4j
         6Hnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QFoGDl0ixaHrTO0T2+l3wU+SHrOfQyQEGNkPUPo62CU=;
        b=rFQfPNXqYhfcI+np76386ivSOEBjOwJkXKbKxu3iV+tV9QYAtp2fbPu2TwXJjcAc61
         JncWFTA0JkmYqfb2m9C/nJTmlpJsNicFWkeNIzWlpb2bIcbD3PF3DZV6RjLaVpXyD1zo
         9ZbNXp4xT/9+CbOB8p3jO4MNLsJmZUms+EZmtZJ5+tAtjddwH5fuso19TVzhyV8hKdca
         SxXxpOJ2ieKGl+UZ4awtRgzyeQjeKk2BGMGgWsRWucc1uxGxNsNCTIjx5qdf3ROeortZ
         s03PqMfPd+9lWjqbXL7aNeS6RbNEXIaA7FDYIjsxssUXLB9IKI2tbbnzQ9++Q6cqA0c5
         y0Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qbcf2qiK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q205si564831wme.4.2020.03.26.08.02.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 08:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qbcf2qiK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id m17so8158288wrw.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 08:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QFoGDl0ixaHrTO0T2+l3wU+SHrOfQyQEGNkPUPo62CU=;
        b=Qbcf2qiK26xh5adu9/FNsljsdMtIYBG2AF3P68YPv7bqnT+lr5NDlGD4soYf200xDB
         wOBHeA4PSnMgbLH3kCmKltyW3rWsso/ySPobcvqfqMoST+iAMifZyAh+ZBeIRI/IOwei
         VSBB+PqHdlR2kjb2NQ8hgOLgO/FG3902E/n3HE03Gzzj0sBIf6rYhFJPFE+x/6rJOpS/
         58gCYd3v6Ph8VxyjulIYcvSx+PbwT+U16o6q7FSKJxbM3OCWsGMQnchHRmdBF7Hqc0A9
         HxMqCEUqqLKi1lNmwhg7rxQt2qaXytuacbDIaquBNU4yS34nPUmjoMynKdkdDAAr+5HM
         XAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QFoGDl0ixaHrTO0T2+l3wU+SHrOfQyQEGNkPUPo62CU=;
        b=krVYt4Fj8KxaNRehHUidJr9BmhI3zKueKPBj/PdEvK/00Jk2fvRARJFBl/VGtOrBwt
         2HAR3zDKlQ+B1QUfKCKUuUPT2p0yw3q/pKh+tjrCF/71lWFsbJy7hVgMXwyEoWkCtyMr
         teXHHowZk2nrhGt6QKal66rJzGwPoP0wGG0FWv6qCFHNZoKEMJSxuD5pk0PJhRmGF4/o
         tZXvpufwjPsdKkdhuicUAI/GYT4XXRtERIOhjGCpUgqiUBajl4iiKWtilNoRuZhnQMIw
         OEa4Y/Pw1ZnRf6dFoKOz8JcHhqAZyn/s6fY6C98y2Q6LxmaaRVpXmRem0w8BMpVN87AG
         BosA==
X-Gm-Message-State: ANhLgQ2NAoaKiyqjyoKTe8jrYGUwrXNqtw7VCwUsQ70bFuWBuTq20HDt
	DgVIoSd74g8WuQiIoi5Bx8s2TLAh5/g=
X-Received: by 2002:a5d:674f:: with SMTP id l15mr9696459wrw.196.1585234963295;
        Thu, 26 Mar 2020 08:02:43 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.179])
        by smtp.gmail.com with ESMTPSA id b202sm4043634wmd.15.2020.03.26.08.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 08:02:42 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 0/4] Staging: rtl8192u: ieee80211: Replace printk(KERN_<LEVEL> ...) with netdev_*() family.
Date: Thu, 26 Mar 2020 11:02:34 -0400
Message-Id: <cover.1585233434.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the netdev_*() family across the driver, since it's specific
for network devices and already been used in multiple cases.
This series replaces the rest.
Checkpatch.pl: WARNINGS:

	Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then
	dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...

	Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
	dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

	WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ...
	then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

	Prefer [subsystem eg: netdev]_alert([subsystem]dev, ... then
	dev_alert(dev, ... then pr_alert(...  to printk(KERN_ALERT ...

Sam Muhammed (4):
  Staging: rtl8192u: ieee80211: Use netdev_dbg() for debug messages.
  Staging: rtl8192u: ieee80211: Use netdev_warn() for network devices.
  Staging: rtl8192u: ieee80211: Use netdev_info() with network devices.
  Staging: rtl8192u: ieee80211: Use netdev_alert().

 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 19 ++++++------
 .../rtl8192u/ieee80211/ieee80211_module.c     |  3 +-
 .../rtl8192u/ieee80211/ieee80211_softmac.c    | 30 +++++++++++--------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c |  4 +--
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 26 +++++++---------
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |  7 ++---
 6 files changed, 43 insertions(+), 46 deletions(-)

---
2.20.1


