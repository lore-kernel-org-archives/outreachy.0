X-GM-THRID: 6201868537095520256
X-Received: by 10.112.12.132 with SMTP id y4mr4487994lbb.0.1443985043881;
        Sun, 04 Oct 2015 11:57:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.98 with SMTP id fn2ls619315wib.54.gmail; Sun, 04 Oct
 2015 11:57:23 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr4525164wjd.4.1443985043538;
        Sun, 04 Oct 2015 11:57:23 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id o5si233707wib.0.2015.10.04.11.57.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 11:57:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx3so92169305wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 11:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oFda9rZipxYFa4T1r/N1LnPjMJqFP/HRLflmm/yug6Y=;
        b=OPy/uKIUMf9o9vIHjGbfPV1yPiTjW8Ca82XwXtf7GPIoj5tRIklDaMC3vEqRikYO13
         HTpYap1j+nkNhyLu4NyyOgPgx7AiuEHvLJgANgqPcRK9xv3TIlX678iB+mu2Ok2HczRn
         3bUXXB8FqpMtEFMpLZlxLjpde2RTQ4EEt/xLDaaUYVNiO5nRnHydN+94bs6WFgtK+yPf
         boXAFcGdTFDjT2e/hibEoLsdOxHTmiZv/5B1kvZ7h/tfWOsuq5K4kA97Yr9OhVxfEDoC
         aslLuT27pkUbJxnV09FssDbpKJHcPAKPg2/QJ/xaJzg9pJOLK6ZCxSsBlAVBG4l9vJ17
         3kFA==
X-Received: by 10.180.106.66 with SMTP id gs2mr7906960wib.14.1443985043422;
        Sun, 04 Oct 2015 11:57:23 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.223])
        by smtp.gmail.com with ESMTPSA id ld5sm22897097wjc.18.2015.10.04.11.57.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 11:57:22 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Remove extra line from kernel-doc
Date: Sun,  4 Oct 2015 21:56:18 +0300
Message-Id: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'bad line' kernel-doc warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..a8da250 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -368,7 +368,7 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
  * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
  * @dev:    The device in question.
  * @addr:   Address structure to change it too.
-
+ *
  * Returns Zero on success
  */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
-- 
1.9.1


