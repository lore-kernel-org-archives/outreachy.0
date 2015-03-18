X-GM-THRID: 8985735331840
X-Received: by 10.42.32.137 with SMTP id e9mr71035644icd.21.1426686214575;
        Wed, 18 Mar 2015 06:43:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.108 with SMTP id j12ls477893igh.35.gmail; Wed, 18 Mar
 2015 06:43:34 -0700 (PDT)
X-Received: by 10.50.122.7 with SMTP id lo7mr4774045igb.7.1426686214323;
        Wed, 18 Mar 2015 06:43:34 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id gu4si3125314pac.1.2015.03.18.06.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id ni2so43668621pdb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=8OYIDKAi17nDaSUl6+qsvqrTQwnq/GGdBG7HIxmHJYY=;
        b=jZS+ZRtC9kjmQzjkDAd/3/0bYH8TrgG4/VPjQsItKGSa4eT5f8lg8KayLUhvtUfdv+
         NlCEOfG9dVOovurUSs0ah28VXkxQqodH4B7FoH0ROU/B2iYcEeWvPpZOM2gZzwWLbIUa
         I3Msn8Sn1eVZFOsEdDIFMD4/UPvNDxELkRMmaXVEAYHlnJU2lnIV7kKxtwY1LE6Wtzcz
         j69sNgYTNR/rDjMkmGcaReKpUN/MAoDdH/3g22+pjuyGTFZhjDDfhqEA79Pr14Ul9yiR
         LrrqDhl3v2LlL7xgM5Z4XARkY4X7Srj4DdPD/J6FFhs4EYmWw0zp6bXYQRe2uJo1B/FO
         SdAw==
X-Received: by 10.66.101.73 with SMTP id fe9mr164284319pab.156.1426686214201;
        Wed, 18 Mar 2015 06:43:34 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id fm3sm9478686pdb.73.2015.03.18.06.43.32
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:43:33 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 0/5] Replace memcpy with ether_addr_copy and fix checkpatch warning
Date: Wed, 18 Mar 2015 19:13:18 +0530
Message-Id: <cover.1426685762.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch set replaces memcpy with ether_addr_copy if the
addresses of the structures are aligned. Structure layout is
shown by using the Pahole tool.

This patch set fixes the following warning reported by checkpatch:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Darshana Padmadas (5):
Changes in v2:
  - Included header files that define ether_addr_copy in 
    patch 1/5 and 2/5.
  - Edited the commit message more clear in 1/5 and 2/5.
  
  Staging: rtl8192e: Replace memcpy with ether_addr_copy
  Staging: rtl8192e: Use ether_addr_copy instead of memcpy
  Staging: rtl8192e: Use ether_addr_copy replacing memcpy
  Staging: rtl8192e: Use ether_addr_copy for aligned addresses
  Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned
    structures

 drivers/staging/rtl8192e/rtl819x_BAProc.c    |  5 +++--
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 12 +++++------
 drivers/staging/rtl8192e/rtllib_rx.c         | 32 ++++++++++++++--------------
 drivers/staging/rtl8192e/rtllib_softmac.c    | 12 +++++------
 drivers/staging/rtl8192e/rtllib_tx.c         |  6 +++---
 5 files changed, 34 insertions(+), 33 deletions(-)

-- 
1.9.1


