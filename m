X-GM-THRID: 8985735331840
X-Received: by 10.236.26.9 with SMTP id b9mr2700229yha.27.1427471238261;
        Fri, 27 Mar 2015 08:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.233 with SMTP id 102ls1044685iom.25.gmail; Fri, 27 Mar
 2015 08:47:17 -0700 (PDT)
X-Received: by 10.66.100.198 with SMTP id fa6mr22313567pab.31.1427471237592;
        Fri, 27 Mar 2015 08:47:17 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gu4si261989pac.1.2015.03.27.08.47.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 08:47:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwz10 with SMTP id wz10so48076349pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 08:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=YD2N2Eqo/aeVE7iT1x2fcA9QX5T7CI/P+G0wcj6GRrg=;
        b=Iy2ZbbUtUyxv+OfD/aHPoe7DH7fogRAT4nIvfCpU8NrHaLnfe4nRDupol5OQuKxsRO
         oN7jSLpa9oq+Dpyfet7Y3C9SxwjSbUYNt7yvFzhNMKSEyK2HaX/JsfRKgcLJ5sBxkWXb
         ehHTgsf2NIKDWejeI7NmWLp7IIKQNBRCnS89zr2kCd4BnT3RGxpAR3FbQ7UgpZtiyrgJ
         40U9uYTXK/boY+27TUhbF7YHwPWWgbpZPiudPOjptUp3m6QIt7/+vSBGEQ6gwOWeJbyY
         N0Oo+vjxyAEpV54hhKdq4WnrmGIP2j7+9MmeTZ82dtqjYXdgSDfm/waWKbOKtdiOhbgq
         IEow==
X-Received: by 10.68.132.169 with SMTP id ov9mr36054347pbb.109.1427471237500;
        Fri, 27 Mar 2015 08:47:17 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.83.78])
        by mx.google.com with ESMTPSA id je11sm2537515pbd.65.2015.03.27.08.47.15
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 08:47:16 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v3 0/4] Replace memcpy with ether_addr_copy and fix checkpatch warning
Date: Fri, 27 Mar 2015 21:17:03 +0530
Message-Id: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch set replaces memcpy with ether_addr_copy if the
addresses of the structures are aligned. Structure layout is
shown by using the Pahole tool.

This patch set fixes the following warning reported by checkpatch:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2) 

Darshana Padmadas (4):
Changes in v3:
  - Abandoned patch 5/5 in v2 as it caused warnings during build.
  - Edited commit message in patch 3 to include structure layout.
  
  Staging: rtl8192e: Replace memcpy with ether_addr_copy
  Staging: rtl8192e: Use ether_addr_copy instead of memcpy
  Staging: rtl8192e: Use ether_addr_copy replacing memcpy
  Staging: rtl8192e: Use ether_addr_copy for aligned addresses

 drivers/staging/rtl8192e/rtl819x_BAProc.c    |  5 +++--
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 12 ++++++------
 drivers/staging/rtl8192e/rtllib_softmac.c    | 12 ++++++------
 drivers/staging/rtl8192e/rtllib_tx.c         |  6 +++---
 4 files changed, 18 insertions(+), 17 deletions(-)

-- 
1.9.1


