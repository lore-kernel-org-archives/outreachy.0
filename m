X-GM-THRID: 8658120343552
X-Received: by 10.50.92.67 with SMTP id ck3mr30106862igb.5.1426533505354;
        Mon, 16 Mar 2015 12:18:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.101 with SMTP id fn5ls1264756obb.85.gmail; Mon, 16 Mar
 2015 12:18:25 -0700 (PDT)
X-Received: by 10.182.47.228 with SMTP id g4mr67462843obn.5.1426533505133;
        Mon, 16 Mar 2015 12:18:25 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ni4si2079627pdb.2.2015.03.16.12.18.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id yw6so73152463pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=41f4szOMmfsFkKmKhgNFdg71LJAPi+GfzYIhKhrsg4I=;
        b=dKgOUkGqvFC037JfuVv7FTKan1TRm4xRP2IsVnW52NxvU6ErJDCweu09tQDJ5/Zr2n
         OWy+XDZS1hW5jQIcyCKbpI00puotv+A8qlTsIhQZQNPOhu3dzN2llvfHrU/0mmnRFrM5
         9GLNAfqmLtaKJFQDLWOpYOSuELGbDqyDZGyjaAtNgl/gXeLfouNmhxdNxR1erOHpvJcY
         phDrAR2/7s5+iiAIk3F02D4v3LTfOfwaaLgiQkudujOhXKnJBuPBnQ2iWVwvHB7pnYTX
         U7d5kKIFY1MwK7oLyqHmP7mjF8PLQ0iw3up5pPCfCZeQGBPecSOKGr2M7wugh3VjSC0q
         dvyg==
X-Received: by 10.70.130.69 with SMTP id oc5mr32069987pdb.89.1426533505028;
        Mon, 16 Mar 2015 12:18:25 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.162.199])
        by mx.google.com with ESMTPSA id ce1sm18564737pdb.34.2015.03.16.12.18.22
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:18:23 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 0/5] Replace memcpy with ether_addr_copy and fix checkpatch warning
Date: Tue, 17 Mar 2015 00:48:10 +0530
Message-Id: <cover.1426533157.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch set replaces memcpy with ether_addr_copy if the 
addresses of the structures are aligned. Structure layout is 
shown by using the Pahole tool.

This patch set fixes the following warning reported by checkpatch:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Darshana Padmadas (5):
  Staging: rtl8192e: Replace memcpy with ether_addr_copy
  Staging: rtl8192e: Use ether_addr_copy instead of memcpy
  Staging: rtl8192e: Use ether_addr_copy replacing memcpy
  Staging: rtl8192e: Use ether_addr_copy for aligned addresses
  Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned
    structures

 drivers/staging/rtl8192e/rtl819x_BAProc.c    |  4 ++--
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 10 ++++----
 drivers/staging/rtl8192e/rtllib_rx.c         | 34 ++++++++++++++--------------
 drivers/staging/rtl8192e/rtllib_softmac.c    | 12 +++++-----
 drivers/staging/rtl8192e/rtllib_tx.c         |  6 ++---
 5 files changed, 33 insertions(+), 33 deletions(-)

-- 
1.9.1


