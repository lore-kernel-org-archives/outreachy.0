X-GM-THRID: 6210467183328231424
X-Received: by 10.107.128.158 with SMTP id k30mr15842629ioi.33.1445987071820;
        Tue, 27 Oct 2015 16:04:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.138 with SMTP id d10ls3964159qge.27.gmail; Tue, 27 Oct
 2015 16:04:31 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr36367686ywg.26.1445987071076;
        Tue, 27 Oct 2015 16:04:31 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si4589878pbb.2.2015.10.27.16.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 16:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so235891417pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 16:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bhMwh7AAcoPGpYf0YD9SAePlbOSuSeW8B+EVW464YMM=;
        b=dfONDdXMb++E+te5KQzpuyq6jbinAFDQ7G6x5NHsqeOKGjPjzQhV1E87RNhTp31vm1
         2geAFJbXsAo29DszorT6RLN4ZzsrPFPG0pJCEy58M4TiRCgut3gHPbKTp5P+kwZ7V/ng
         +tlLcjCXmxpdwAbnv9M0TR3LLl2F/6tgkZV9Q1LMsuNnNUG0DsamfQCrNP2Md7QZaBun
         Sg3hygiAm8odoks0z8FJudVcncGPOzpk4uB6TGwV4tDJokYE/J/0YJ7Q8AoAMWED53l1
         FSNts3qidiTcgYjnC0rFjlHivC/PBmqxQtEZgHBE40Cwm4FVBXCJ1xkkGRMOzgJda+zi
         sJhQ==
X-Received: by 10.68.216.229 with SMTP id ot5mr30539912pbc.15.1445987070934;
        Tue, 27 Oct 2015 16:04:30 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id fl5sm1041628pbd.70.2015.10.27.16.04.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 16:04:30 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/2] Staging: iio: Fix sparse warnings
Date: Tue, 27 Oct 2015 16:04:23 -0700
Message-Id: <cover.1445986777.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix sparse warnings regarding cast to restricted __be16 in iio drivers.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (2):
  Staging: iio: impedance-analyzer: Fix sparse warning
  Staging: iio: adc: Fix sparse warning

 drivers/staging/iio/adc/ad7816.c                |  5 +++--
 drivers/staging/iio/impedance-analyzer/ad5933.c | 11 ++++++-----
 2 files changed, 9 insertions(+), 7 deletions(-)

-- 
1.9.1


