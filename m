X-GM-THRID: 6396076706969419776
X-Received: by 10.157.63.153 with SMTP id r25mr8718549otc.112.1489202656426;
        Fri, 10 Mar 2017 19:24:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls9914184otx.21.gmail; Fri, 10 Mar
 2017 19:24:15 -0800 (PST)
X-Received: by 10.129.155.148 with SMTP id s142mr2527519ywg.30.1489202655935;
        Fri, 10 Mar 2017 19:24:15 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si2066859pfb.7.2017.03.10.19.24.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:24:15 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so12687777pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Gt3fYulzxBS0qBc1fmZUCZFxib7/nCOuwPqxmt67FrY=;
        b=slTF2hjxo1z6mRUCRX2BJ8IUfWFfRgneniWWcmmmQcSFeX8XXU3NN6nwwLiw16jVDO
         9KVuKlBWv5gQWzvgUeHWGBlJY/dG+7+B1i7jw3F5Utqru4NKYuNA5aYuhOd5O+ch9S8S
         y/+/kYDSgPg9wS73Aw752YnK02mhjTHpZ6AJmWFoktbiGyyTngG0wESR0DP/z92J5B/D
         5b44Qzbq0hNH4wyVEZDedo1nLsy2bgEkm/iI4GEQJHZp4sOu4AeyDmX1ExrkfIEKIeUh
         zT3sDZR2+MHQ4FWZHqWHKIA85Pdh2am5U/cyYAP7exnIQl9EjBSz6f4draiB86nMMC7N
         Ilgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Gt3fYulzxBS0qBc1fmZUCZFxib7/nCOuwPqxmt67FrY=;
        b=A0/d8Fetthb+BFbotftkr3iOw3jQP5jzap5Gb0OYKAra+wy1QGIVYNl7kNflNEmFe2
         18eClPKKQB6qtohY3w71SaOZTLiT9HlRPcO+xmeptJcOoAN3FGYxsItb+vk9q5XP7MFH
         Qp1YQ/j8SCq+WEdGpEJubYe/Giif3BYq2f1KYgZ43w9mwAzO84sRY3m+cwP9RolPfhfM
         My1M6HiDtzbzfU8VRHWUXR8OFRav/GMq+sHdo4y7yFdjgOF+tFajfhxgTMBDCX6Sn0RG
         mHsCck4XubNeCPFm7J8o+QQwWtZok0Dsg/nCs3wda5gRu1mr03mXqaM3+6BrsiqI529k
         bnwA==
X-Gm-Message-State: AMke39kGS0A6JhY+LAOQ263cweSE8oQw+C7QStxANsSNJZEeWFpolhzD/jKE2VqqTsUYlA==
X-Received: by 10.98.49.1 with SMTP id x1mr24741594pfx.26.1489202655693;
        Fri, 10 Mar 2017 19:24:15 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k184sm21252015pgc.23.2017.03.10.19.24.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:24:14 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/3] staging: sm750fb: multiple checkpatch issues
Date: Sat, 11 Mar 2017 08:54:07 +0530
Message-Id: <20170311032410.8265-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in sm750fb driver.

Arushi Singhal (3):
  staging: sm750fb: function prototype argument should have an
    identifier name
  staging: sm750fb: fixes add blank line after
    function/struct/union/enum declarations
  staging: sm750fb: Alignment should match open parenthesis

 drivers/staging/sm750fb/ddk750_display.h |  2 +-
 drivers/staging/sm750fb/ddk750_mode.c    | 79 ++++++++++++++++----------------
 drivers/staging/sm750fb/ddk750_mode.h    |  2 +-
 drivers/staging/sm750fb/ddk750_power.h   |  2 +-
 drivers/staging/sm750fb/sm750.h          |  2 +-
 drivers/staging/sm750fb/sm750_cursor.c   |  3 ++
 6 files changed, 46 insertions(+), 44 deletions(-)

-- 
2.11.0


