X-GM-THRID: 6387814559590121472
X-Received: by 10.129.181.4 with SMTP id t4mr1324083ywh.154.1487278975376;
        Thu, 16 Feb 2017 13:02:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.179 with SMTP id 48ls1251863otj.27.gmail; Thu, 16 Feb
 2017 13:02:55 -0800 (PST)
X-Received: by 10.157.7.16 with SMTP id 16mr1298675ote.28.1487278974983;
        Thu, 16 Feb 2017 13:02:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h130si310464pfe.1.2017.02.16.13.02.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 13:02:54 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v184so2901325pgv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 13:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JTu2ybvlDUFcU1tuZ5NFqKnrwwz9jSLzmX4p7vRQfSI=;
        b=FYQ/GB7Ox4A3IHgVKe9k1t616mcuh5lJLnpT+DX6fnq87QrMq/aHgIASf5ZMyOiZr2
         d/y7gmHTsypl9+uYKnfWGd9UF/dJrpK7mExnahcE3zwHZM5ZqM5wNGV7qtfHO9oyA9/9
         J7zYdz75WWny/KEr/v/okE/7ZU6AOlV1Opde1YrMb3zSKSPo/zp/SkHuYGPKbUmXNnhE
         Thh3rjcLeWI0v20qwxfDPU4qDQhS+qARNDRs8bGUdRJNqyU30jrpE19ApDv+2uJJyFx/
         wwbP40UFRchzsZlG7HzDK6aex3IJ9CrJN3GwXMh3+hDv0agO06T+S9EE9yej0orE2FkS
         K+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JTu2ybvlDUFcU1tuZ5NFqKnrwwz9jSLzmX4p7vRQfSI=;
        b=JTRa7Tu+atCa8h5JJFaIAdYQsL2kpQcMDjgYknWaOTtONL65NdA1FaQZqP8ghRpSI4
         t/godNK1EVBie5/ATcrkxAZBz2EywlsQVhdFv9PBqBAX8zv7o5gwsj9QNynetN+4cWNh
         j6tkoRYpt/B4XjdlygP8+cp06eJea34zzyNiejcdMC/zX4AMZTLqFP/WrqZT/Uj1PgWD
         pA0NUXBoa6IIW/jR+ULZ2x4VdofgtW01TN70HgtmQNKjvi5fEbI6CQqejQ7wkFBn1GGd
         XXEL6dT+js4+1sndKF2yhJxvXeYHjj5s0HrY2B4vi5BSlozB9xdpLghjzTeK1D7i9ofZ
         8kBA==
X-Gm-Message-State: AMke39lIXOEoT6gI9sRI8GoKF2d5hiWwOqsq/WLpxGF1MXk8WmhJaxIy2Uw0MXE8LlIgMw==
X-Received: by 10.98.95.70 with SMTP id t67mr4954602pfb.37.1487278974446;
        Thu, 16 Feb 2017 13:02:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 188sm15235190pfg.99.2017.02.16.13.02.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 13:02:53 -0800 (PST)
Date: Fri, 17 Feb 2017 02:32:50 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8192u: Fixed 'tabstop' coding style warnings
Message-ID: <20170216210249.GA28497@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace a mix of tabs and spaces indentation by tabs only.

Fixed checkpatch warning "Statements should start on a tabstop" in
rtl8192u module.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 563d7fe..814ab5a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -666,7 +666,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 	if (ieee->set_security)
 		ieee->set_security(ieee->dev, &sec);
 
-	 if (ieee->reset_on_keychange &&
+	if (ieee->reset_on_keychange &&
 	    ieee->iw_mode != IW_MODE_INFRA &&
 	    ieee->reset_port && ieee->reset_port(dev)) {
 		IEEE80211_DEBUG_WX("%s: reset_port failed\n", dev->name);
-- 
2.7.4


