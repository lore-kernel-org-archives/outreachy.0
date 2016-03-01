X-GM-THRID: 6257131864000036864
X-Received: by 10.129.80.3 with SMTP id e3mr17341358ywb.23.1456852039356;
        Tue, 01 Mar 2016 09:07:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.74 with SMTP id p10ls266454igi.23.gmail; Tue, 01 Mar
 2016 09:07:18 -0800 (PST)
X-Received: by 10.66.216.100 with SMTP id op4mr18536957pac.9.1456852038837;
        Tue, 01 Mar 2016 09:07:18 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id yd9si4476708pab.1.2016.03.01.09.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:07:18 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so9422523pax.3
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VGsqnW3ADSIFbWdH64/BE6CNlm+gdaFNlevB69HsqlE=;
        b=i9x5iFt+JgJHxGQ9glBZqiYmsrbgzAe6GtLpWFwo+uJRhkaYXH78ueOMJzZjPVlGNe
         PcgR9O30U9lfWHomOJcRlp7nPrXCsidZsvzsEuw2211GX7H+VwRJXAd1EVdWwSaHZzAm
         Xs/zoDV5RfCgGVHPgr1onc5+5S3TL8uvvYjulOzoDobJqSQFrHP4HE2/KLFOXaHY7o+1
         QT+/5rOz636yj18qpn3cZcGkVhOS2n2dSJgl8XwO9cu8CG8/N8hL2+ItU4CtXSftw06S
         JkkmeQrxMvhcMsnPXg64NbGOCYIc+UETpz2AeDhJmx3pBBvsQOmuL8QWo78uuRttL/Ub
         7blQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VGsqnW3ADSIFbWdH64/BE6CNlm+gdaFNlevB69HsqlE=;
        b=RDqW1rrz+ir77NrWRblhcti0nKABFlH2hhEdyYhgnuPYQ1goUd2Kyo6IDpIxC96vLb
         Li/slD65GnXA+r56YLyahQwceAYVENnJu84OOW8rJwQ8LujCP7g2c91mKhz5DaRHPeBm
         fxTTO599gpftUQtZzk2j5lGcCVGRbP1lRt/LiJHGJEQcqP19vgWMGraSjo3RdHNbBhth
         za0xzxByjNyoiTT7sA6J0Vnuk7naDIU8a0PD1huSyB6xOoLpaozumOoU5HfBFzd22yoE
         FVPwco90MXx3ueOJ0VDaSvBfuRPJPYS12q6jlPVOVCuxps5WOqvB++96p0eh/uIhiCQF
         hQoQ==
X-Gm-Message-State: AD7BkJKja3R+v0QE6Rzs0kK+A6m3ay6GpVpIu6yPxp3m2reyxXIZDLjjase39QW6tfbbsA==
X-Received: by 10.66.249.70 with SMTP id ys6mr31862809pac.5.1456852038655;
        Tue, 01 Mar 2016 09:07:18 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.66])
        by smtp.gmail.com with ESMTPSA id by3sm46962657pab.39.2016.03.01.09.07.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:07:17 -0800 (PST)
Date: Tue, 1 Mar 2016 14:37:18 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Staging: Do not print message if kzalloc() failed.
Message-ID: <cover.1456822984.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Sandhya Bankar (4):
  Staging: lustre: Do not print message if kzalloc() failed.
  Staging: rtl8188eu: Do not print message if kzalloc() failed.
  Staging: rtl8188eu: rtw_efuse: Do not print message if kzalloc() failed.
  Staging: wlan-ng: Do not print message if kzalloc() failed.

 drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ----
 drivers/staging/rtl8188eu/core/rtw_cmd.c        | 3 +--
 drivers/staging/rtl8188eu/core/rtw_efuse.c      | 3 +--
 drivers/staging/wlan-ng/prism2sta.c             | 1 -
 4 files changed, 2 insertions(+), 9 deletions(-)

-- 
1.8.3.4


