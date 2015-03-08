X-GM-THRID: 7122168315904
X-Received: by 10.236.2.35 with SMTP id 23mr22991855yhe.22.1425837831444;
        Sun, 08 Mar 2015 11:03:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.199 with SMTP id l7ls630024igx.8.canary; Sun, 08 Mar
 2015 11:03:51 -0700 (PDT)
X-Received: by 10.66.151.101 with SMTP id up5mr23429677pab.10.1425837831268;
        Sun, 08 Mar 2015 11:03:51 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id ri9si2159994pdb.1.2015.03.08.11.03.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 11:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so28886959pde.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 11:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=w4LRDq4kpRkgEzHWvbwEwi8DEpouKomyRAXvttktPeI=;
        b=bfoGVyRzcSn3zMj7Qb5yrS/NSgJdo41Doo2syIShe79eILYmu+FrbYTHYdICEpIknn
         r0F/td+s59Phi/dFdhICYaCos0ePQy3lSirnjFHoX+F4XSz1gsFhzHCnuW7fM3Yz1KKg
         Znv7Qi+PGQaPTNC3XOexhLQ4/K9UQQ/9b5FoEXj0fZYJhLT804lNOc07yuu3QLc24GKP
         xZh2b7hcvQI1/kmw9Hgb9RIIgLEl1Y2fE5IPgfXpaDE8cWRdulQNvx1yXQ7bpIImqqge
         3KvUdSbh2UGaP4rCpChaqnEIdwH13aK1EC5RUGXf8IACLDwUQRmY3CDRHkLwndVzhBQO
         493g==
X-Received: by 10.66.169.137 with SMTP id ae9mr44161223pac.7.1425837831030;
        Sun, 08 Mar 2015 11:03:51 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id rd7sm1759239pdb.85.2015.03.08.11.03.47
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 11:03:50 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 0/2] Replace min with min_t found by checkpatch.pl
Date: Sun,  8 Mar 2015 23:33:38 +0530
Message-Id: <cover.1425837526.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This pactch set replaces min with min_t found by checkpatch.pl.

Darshana Padmadas (2):
  Changes in v2: 
    - Combined patch 2/3 and 3/3 in v1 into a single patch.
    - Changed subject of patch 1/3.
    - Changed patch description to show only a single instance of
      fixed warning.
      
  drivers: staging: dgnc: Replace min with min_t
  staging: rtl8192e: Replace min with min_t

 drivers/staging/dgnc/dgnc_neo.c      |  2 +-
 drivers/staging/rtl8192e/rtllib_rx.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_wx.c |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.9.1


