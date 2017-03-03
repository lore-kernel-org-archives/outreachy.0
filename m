X-GM-THRID: 6393296356207755264
X-Received: by 10.99.44.131 with SMTP id s125mr1367396pgs.150.1488555305743;
        Fri, 03 Mar 2017 07:35:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls732045itc.19.canary-gmail; Fri, 03
 Mar 2017 07:35:03 -0800 (PST)
X-Received: by 10.99.48.73 with SMTP id w70mr1280005pgw.76.1488555303903;
        Fri, 03 Mar 2017 07:35:03 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si97785pfa.4.2017.03.03.07.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so5801316pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gqsOAJq2VWLRuoHxbgLF2ag1GAoG0VWAqYbQZQfQhfo=;
        b=nrcQPJ/QqrH4QyyEKYcj5e9PJsNK1Rth1KrYgXw7mowYhUhajwZjNDknvNyKImzhiT
         YQVV8Ose7Ey3llyaTu1leU4N7Oo444dxxk3FJO/WQUWPvs4cCrHHoK39mbUV56mSetan
         s+bBObeGlnge/FEYFusouqbm5nGAomURZhK0+DNb2TDlsDI0fan9W7CQXYS8RjKP3cXL
         Pi/zmoP6GExYfyxrQ7T4i3yk7Ev/P0yaUG4rDiwHPRvPaYqXh2KPq3fZyzVnQVmXRR8W
         JbN8RzCWqLblwVIWuXcr3R7FnYbQjkGpkuVZL5V6ycsIOAmA+xOQysx8VpsGke4TKZWc
         mszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gqsOAJq2VWLRuoHxbgLF2ag1GAoG0VWAqYbQZQfQhfo=;
        b=s/G5nE18A/q7slapYtmUNDyvHMBdjZ30ZzdBVutd5gPpbhHqdvPyXMfppp6h0njoIE
         ln9o9LyMUCm+LLqMfUo1DZoIzGMovp/bNMtzFJZZvoFciP4NLRRbd2X5X+TmCVFjiv95
         52W/7u5kn9dBH8aA9f9D19VvmFBZro8yCWAY8yZpk0hwQdst18IDJP2uMqUgGgb7MB5B
         h0iqe4rr4CkPVuYnFxIyvchFAqrev16Wvs8o+kcbBbtEJXsx6zFRZV6EC+Ylul+XgrDL
         B1qo4j36rMyGl08GvQIIj8W/VqglEOeoSn+x7pez+MNA4pA7UVNKFji4UVVJAZuZQ8so
         +Cvg==
X-Gm-Message-State: AMke39mu1UG72TK5PEo9ztSd0yN/2ZlaE+O0zEXhc+Gi8eLDrs49nVKyGHABf1BqyCmU3Q==
X-Received: by 10.98.212.81 with SMTP id u17mr4289701pfl.75.1488555303722;
        Fri, 03 Mar 2017 07:35:03 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w124sm24226114pfw.29.2017.03.03.07.35.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:35:02 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:04:57 +0530
Message-Id: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series replace "the the " with "the" in various drivers.

v2:
  -Adding cover-letter for the series.

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


