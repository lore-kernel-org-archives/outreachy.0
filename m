X-GM-THRID: 6201868537095520256
X-Received: by 10.180.91.233 with SMTP id ch9mr175667wib.4.1444418346976;
        Fri, 09 Oct 2015 12:19:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.144 with SMTP id l138ls340976lfl.8.gmail; Fri, 09 Oct
 2015 12:19:06 -0700 (PDT)
X-Received: by 10.112.26.212 with SMTP id n20mr2989674lbg.2.1444418346498;
        Fri, 09 Oct 2015 12:19:06 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id w4si60502wiz.0.2015.10.09.12.19.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:19:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx3so83163356wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oFda9rZipxYFa4T1r/N1LnPjMJqFP/HRLflmm/yug6Y=;
        b=IUc3HeBflOtLKhk3RqTYKkl0e7yvtY82SnEMuC5Mkz230e8RjSvPpvZ+61qoTad2Xp
         MMRSJhn720O16Th++w+TJQq9yXcu/TpRgJ266ZgPOrOfsMblgdoOKmgJ5ej3fD0qaml4
         ZDPFSpe4D9dwQh6xjAqqp4KBIBShIKuQXVaUsZVHl5EE7OdU8rV4EjSYRLYxG2IWofuC
         JQRxLIaACEtj60u4hlOyoHwhODOeS7bTVYmZb9YmPwZdcVG4RL45qrMWbLSBy+7UiVrV
         rBgJLyN8AGZ1qRn2vnanqT8sNCRd1nj7jl5IX/tnhF7j6AatyKMd8KpaimQe+TRXqIPh
         eImQ==
X-Received: by 10.194.123.193 with SMTP id mc1mr16290101wjb.154.1444418346369;
        Fri, 09 Oct 2015 12:19:06 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.180])
        by smtp.gmail.com with ESMTPSA id hk5sm3761118wjb.6.2015.10.09.12.19.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:19:05 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 1/3] staging: octeon: Remove extra line from kernel-doc
Date: Fri,  9 Oct 2015 22:17:56 +0300
Message-Id: <1444418279-127467-2-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>
References: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
 <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>

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


