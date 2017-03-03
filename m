X-GM-THRID: 6393296356207755264
X-Received: by 10.157.23.42 with SMTP id i42mr1232202ota.11.1488555683691;
        Fri, 03 Mar 2017 07:41:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls728738ita.12.canary-gmail; Fri, 03
 Mar 2017 07:41:23 -0800 (PST)
X-Received: by 10.107.164.99 with SMTP id n96mr1218369ioe.70.1488555682966;
        Fri, 03 Mar 2017 07:41:22 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si107759pfd.3.2017.03.03.07.41.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:41:22 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so12993429pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HKuaE5WMjNKe+4AHZEuxWdgbgi77H5boN7OxiaQgUa0=;
        b=G9f/XClyyA2wlTdxVinI1Wk6pmd0yd3GQ5Jfgk6BYen9yr3GsN2NC6xwpmsVRHvASt
         ltvd5hdXYv0r4CEkvNG7c07zgdnZs3GIgKiLMtGDNuJeF01yBMtQU7Lsg1UJq41wBv0Y
         dPhbidIShw743FBDeoEgNJooabWzrffCNMmZlZTXzKMIQrgyqRojte0FL2EuGJaZdSG4
         1RXe2R1+av7P6HobO8+zLOdQqfNhqEYTrSXBKtqEJFsbLsNZQ/ahXx5OxcHg+hRfNyIi
         tyL0UsbZjCip4Sg4oqMiTAetUQ2V0kqjroMAHrjqgxv0J7gbVkoKOLY9WUwYf2K+YLz0
         9lcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HKuaE5WMjNKe+4AHZEuxWdgbgi77H5boN7OxiaQgUa0=;
        b=qKG62YVMfQ9S0J5PexNUqA1Mke16frSbODegIZmbyQdJXc55t1wNx/MJfi1KzBKIpB
         dC3CeMZE2MAFoCIzgphMLECN0MARTORiKnctPa8aY13XI7USzJ7drld6aciXuqIE9WW9
         sVeuvYxmfosXWmo/qWLKo4xMKPjrZxi/7aWWbsRLOi8mUKGqBPY05e+XTR3EMnLVoEUj
         3wbEzxCLVOpFVYi8mstLfhacUIFQvsCgiDsDJQDRMJr1aeESyW4J3PCNiToqigBmItCD
         +mE64fnLA7lHKLVkK1cU6dLzfRzh3gW3hkesyJGhfszY7ss6McmOe5Q1hrxIOgOProEg
         rS/A==
X-Gm-Message-State: AMke39l9QDbbt4vCm1dYq5NNqL1IY7NuDpLYjs8+ve+VL8BolIvK2XgCc+Xea4ClOd9IbA==
X-Received: by 10.98.3.3 with SMTP id 3mr4227559pfd.95.1488555682749;
        Fri, 03 Mar 2017 07:41:22 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q90sm24201507pfk.73.2017.03.03.07.41.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:41:21 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 0/3] Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:11:16 +0530
Message-Id: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series replace "the the " with "the" in various drivers. 

v1: 
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


