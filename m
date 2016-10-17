X-GM-THRID: 6342251740685926400
X-Received: by 10.13.208.133 with SMTP id s127mr5915860ywd.142.1476670554502;
        Sun, 16 Oct 2016 19:15:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.91 with SMTP id n27ls1196958otd.18.gmail; Sun, 16 Oct
 2016 19:15:54 -0700 (PDT)
X-Received: by 10.129.179.135 with SMTP id r129mr3575111ywh.162.1476670554087;
        Sun, 16 Oct 2016 19:15:54 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p70si3586643vkd.0.2016.10.16.19.15.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:15:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id 2so7213280vkb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 19:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=14kxqloKTw7n3f9E0jbjCQRVHnEOAeZ25xqzwIJgFl0=;
        b=RV3UU/K9QWxUHBvXXvRyUK/idFmP/Ykqsh7imxdLjroegSCdqY5xXAuulg3ttQr3d+
         qGHVJajzvShfYBjEXgQKmFEe5u7pmK8xtcwUmz1FQOGK3JYPT2lkN6gBII16Qru+zGqI
         xfGWm0vLMcBvdpMahPhBgOImOx+4bFzoqYBRqhm9XtDanS0Ulexts/fxEPkwkFMfSd9q
         oQripq0VJmDtl3Blsoc6SPdww+l72pzHheLOopUMjSe/uiVlJC1aoLGgk849VDkngYLB
         8x0XRgz5YGg9GDs2sL+y9By90j9FBDPYWcQWXQtdEiRnJ2zBbM9jjXCUhXKjPi47igFz
         OQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=14kxqloKTw7n3f9E0jbjCQRVHnEOAeZ25xqzwIJgFl0=;
        b=XziFFxjcW2gfP9JDQsjpYBGMWpirn6W/bAapK/moBxAuA2OgbLz6xJzxye5n/lx+lU
         0XurR+ueUlJp7YIcCvJeweKHrqGWW1qAzsZY5NXK7b3AhtnxQVXPHj0z32sSUk7DJwDs
         00qv2Xea4lO5vShSSqF5p7QlZgHPKejIb99Nh5g11aBXpWJA6hohbANc3EY9yvv2PIwz
         PdD37T6pHgR4MFKNi2JBuDQeIB5YdpSsKl1A/dN4PXvkgWBw/2CLr6Kx6PoYxP8n0dKD
         tKvXNBqMzFd02pTJtjQ2xUg0LGgF+WmAjHBQTsoGtOqH/Qo1gSwqcGwEFfdCY8rED8E2
         fCkg==
X-Gm-Message-State: AA6/9RkVNP/jEiiqQyz8EMbALBa6xwfxKROmTU7MuHF1hQyDo5H/umkos5jVoTA7zfXCxw==
X-Received: by 10.31.115.8 with SMTP id o8mr16280902vkc.2.1476670553945;
        Sun, 16 Oct 2016 19:15:53 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id y72sm10862023vky.9.2016.10.16.19.15.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:15:53 -0700 (PDT)
Date: Mon, 17 Oct 2016 00:15:47 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8192e: Compress return logic into one line.
Message-ID: <20161017021547.GA7552@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify return logic to avoid unnecessary variable assignments.

Coccinelle was used with this semantic patch:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
index 9aaa855..bbe3990 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
@@ -202,7 +202,5 @@ bool rtl92e_init_fw(struct net_device *dev)
 
 download_firmware_fail:
 	netdev_err(dev, "%s: Failed to initialize firmware.\n", __func__);
-	rt_status = false;
-	return rt_status;
-
+	return false;
 }
-- 
2.7.4


