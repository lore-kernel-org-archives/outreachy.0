X-GM-THRID: 6809017254478348288
X-Received: by 2002:a5d:498b:: with SMTP id r11mr1739576wrq.368.1585347870724;
        Fri, 27 Mar 2020 15:24:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls4734394wrp.6.gmail; Fri, 27 Mar
 2020 15:24:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuVW+xPuViIz3J/1uTdvVdo6pfJtLjUAvBhHWMfwVk+YAKfcU5n4S+oGUuDLqiDtz0bGdyl
X-Received: by 2002:adf:bbcf:: with SMTP id z15mr1884137wrg.340.1585347869226;
        Fri, 27 Mar 2020 15:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585347869; cv=none;
        d=google.com; s=arc-20160816;
        b=WzmMFt7JKn2DTwmQ9Eud+iBgvP6trw/jcwqRwbWKV3kRhdq2KzZ2BMMnMbto66zTTq
         sXV7dUvQaeboWUczMCU291xtrynOj1aX6NUIuzOeaO97hpastmke/aazMijf/OIoUr5z
         lpPXwCWbZoNrfL59XmOIgcsLeEcIuPZlfQ0ikDmd7C+mRvVTCILWARRfFvgmPwxlBmQ3
         oHTPUlqtd430d6F4gmlh90FkrRRCKbhB6sDDSjCdzOEpZZlch1dNmeiTWNjxb+vrEwqy
         cfpohdNThkXEVAs2my9V94Ud1Ux6E7k70ZoijA3y9xuyPeJjmK81cMCdqpqmG07ZEZyq
         5swQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iPm0nm4Iexv3JxIqHPg7/h9BdyWg5DSUcuiF3zSKyWQ=;
        b=AKBJFHcGzEBpsTMEmtHMSxmYBS6Pb5SzWo+LsAlprMgt750fDUw+3Sf/mmoync2Iue
         lu5WPLxuoT2qXfSs0nteRyKFpyJWCSaX5JCDWFs+NK82mRyzmlu9n5xHVZ5gVf/roLVa
         /g44liXI4EX/9RmeP8CNk9gHdDWjpxth5dFdYwmlOeI1b9jeqQwcVYzyR8P71ofMcVgH
         l8XULJk5MSR2Wz/fFTPsUSX3OmAvpH4qrSsHlaqmYQ6uafTtOT6kGU7VQ54QFVBeUr/0
         /rimAJk0onywVzRxoq6AFBi4iuSBRc2ncC1VRtKzM5OVtEPrHAVcza9dxCzdUemmYuKd
         oaRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CgUOa2IZ;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id y83si207262wmb.1.2020.03.27.15.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 15:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CgUOa2IZ;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id n20so9147677lfl.10
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 15:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iPm0nm4Iexv3JxIqHPg7/h9BdyWg5DSUcuiF3zSKyWQ=;
        b=CgUOa2IZRbBiBQ9EaGPZ2D7k762wIWgxuKKigsmNGV+I7xRH/yXxCnRpmqySsfDlwu
         FlTQNgh6SeHrB1pEXnljq+rI3+r4I8XKSsITz0FJ5vmiZUGHotxq5D26XtvCHT+AD7A9
         K+UTsuoyqJm1Fv2gD5UzRE3bldfJcZ8r7nWcjvCudtkVtSYO4MB8oAE7vw9mzX4NE4cg
         lA3JByHRdpzGfC5T1/nKwuy5NciOBk1YaiLlM82tJ2q3zb5G5jaxAf86Y9WPNYgvlYKt
         PghDpoe862M9Ifij/1DDCCxSTwtaPV8Au6Or7tZUa0L9XTLOCRJjB4kWHCifqQVASexj
         DS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iPm0nm4Iexv3JxIqHPg7/h9BdyWg5DSUcuiF3zSKyWQ=;
        b=Btnbx5OHgtE+4OgJdGx6IF9+cU0yOv0MTLca0OZ+RsE86AYR8EHidHlAUN5QAxEAuQ
         ujOJ/bOoFulD+0YFFA8bJ+9Lhd05PNxhchPKcT05Z+05GC2Q+BXIZPgcPwfVCjy1L/oD
         FpUTYdwl8Un0xm/wmJIImSztaMXvTgl09KLhUv4A6hKrS9pLW47k5EYBNDUzrgr0Rzi+
         XyZHa0/RPoU5xtpkQ8IyIMNg+wlgg6db1MmIsD1n2meAlXUYkBad+/RQGNwlEcKx+sXM
         ZLiqHhRmUob/G29LG3k6RYpsnrhWKWjuuImJCeVwJFNSYnRFKUxiqQ0xHPmkcAA4jM83
         sqsQ==
X-Gm-Message-State: AGi0PubZjFcCkLBlWZJsRSXFfB4Gl6BVppfgDA0laChPT2yswokMr0yx
	6RTNhodf9QXLabfY7XEr2uOjuLzdAvM=
X-Received: by 2002:a19:89d4:: with SMTP id l203mr874414lfd.45.1585347868696;
        Fri, 27 Mar 2020 15:24:28 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id m7sm3538947lfh.26.2020.03.27.15.24.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Mar 2020 15:24:28 -0700 (PDT)
Date: Sat, 28 Mar 2020 01:24:26 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: rearrange line exceeding 80 characters
Message-ID: <20200327222426.GA29189@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved from the comma character to the bottom line after for it exceeds 80 characters.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/wlan-ng/p80211netdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index b809c00..76cd2d8 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -101,7 +101,8 @@ static void p80211knetdev_set_multicast_list(struct net_device *dev);
 static int p80211knetdev_do_ioctl(struct net_device *dev, struct ifreq *ifr,
 				  int cmd);
 static int p80211knetdev_set_mac_address(struct net_device *dev, void *addr);
-static void p80211knetdev_tx_timeout(struct net_device *netdev, unsigned int txqueue);
+static void p80211knetdev_tx_timeout(struct net_device *netdev,
+			             unsigned int txqueue);
 static int p80211_rx_typedrop(struct wlandevice *wlandev, u16 fc);
 
 int wlan_watchdog = 5000;
@@ -1074,7 +1075,8 @@ static int p80211_rx_typedrop(struct wlandevice *wlandev, u16 fc)
 	return drop;
 }
 
-static void p80211knetdev_tx_timeout(struct net_device *netdev, unsigned int txqueue)
+static void p80211knetdev_tx_timeout(struct net_device *netdev,
+				     unsigned int txqueue)
 {
 	struct wlandevice *wlandev = netdev->ml_priv;
 
-- 
2.7.4


