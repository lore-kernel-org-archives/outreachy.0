X-GM-THRID: 6330646891713265664
X-Received: by 10.200.42.204 with SMTP id c12mr1153580qta.39.1474101086920;
        Sat, 17 Sep 2016 01:31:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.195 with SMTP id n64ls2238030ioi.36.gmail; Sat, 17 Sep
 2016 01:31:25 -0700 (PDT)
X-Received: by 10.36.124.80 with SMTP id a77mr383254itd.1.1474101085394;
        Sat, 17 Sep 2016 01:31:25 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si4976991pfe.0.2016.09.17.01.31.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 01:31:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so4421465pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 01:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PwPhnWvxFMQVYsqkcyRCnGlN4CpprBN3HXT8e/nnxew=;
        b=McnBJsT7kVIAI/Pl7AAT/rUOhDRXme9HuPFR9r5ln4y0rkaowwx815NgMcbusrqfg1
         43Y4duZL2+p8NVnlxlG/nnh/s+BGbJMGWPEBEiqaYVjpz8DUf0Lq4DjouxL/IlAYLwEX
         R1vAoGECKwjeiR0BLt210+1dRLotez8tjzSpJll/yqQjLy1X1WT7dxqTHj+BAGR2bUgu
         zaTVqcGgV/t375z7QAxiOoi9QcoHYSH4eUIH3D3xxJOp/HwPKirlrUgMrMWgJOLuw7Za
         U9i3MzaIDy06+VhSDjO/MCDVohjQGtQ7XT3j6R3fY6K3F1DFAenuLKnaRd+BEXqxEewa
         JY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PwPhnWvxFMQVYsqkcyRCnGlN4CpprBN3HXT8e/nnxew=;
        b=O7bHSlm2escwemp8af3MDrM7Xn0ybjRzHa/QW2hbzUz9XpU2teh9HJV0UV7bKO45NJ
         oL/VGeSBDMKa97bCjNj6uigL6qJORyhKW+SmIVLnVKCAWDt9G3OrJ5tqm5B7xvTE9cPx
         QPzcSXQ9ytqu+gRH3SqWrsWVy9j0QtzoXnRzWYgtHfxQyC0TiTtdUy/DZmtSeAozBcSE
         qcHH2qt6pDJJLSpT5ORuKy/OcZsuhu+c3V/p33BF83RSOhMMxNFHkuNkhqWKDqbfu+o1
         OAkjk7M2Rt3fGgPRbP/1jZy0prFgXFAKd2t+0TYtChRiR/FGo7I8nvcVAYMlkrwwJ1QK
         YE5A==
X-Gm-Message-State: AE9vXwM1u9pyN4SDVePiZsnT09oLuC+YeO8CiDHuINBPEboqt2YbLO7bTIKxOrszdKKHFg==
X-Received: by 10.66.235.100 with SMTP id ul4mr29716961pac.50.1474101085016;
        Sat, 17 Sep 2016 01:31:25 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id zy17sm1141934pab.28.2016.09.17.01.31.21
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 01:31:24 -0700 (PDT)
Date: Sat, 17 Sep 2016 03:01:06 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org
Subject: [PATCH v2] Staging: lustre: Convert array index from the loop bound
 to the loop index.
Message-ID: <20160916213106.GA4147@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert array index from the loop bound to the loop index.

The structure cl_env_percpu[NR_CPUS] has been initializing for each 
possible cpu (i.e 0 to i) but during initialization if any error will 
occurred this come to the error handling code which should uninitialize 
the cl_env_percpu upto i but currently cleanup is happening repeatedly for 
the same cl_env_percpu[i] element which does not seems to be correct.

Used below semantic patch to identify this issue:

@@
expression e1,e2,ar;
@@

for(e1 = 0; e1 < e2; e1++) { <...
  ar[
- e2
+ e1
  ]
  ...> }

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
 *Correcting the commit message.
 drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 91a5806..eeccd30 100755
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
 		 * thus we must uninitialize up to i, the rest are undefined.
 		 */
 		for (j = 0; j < i; j++) {
-			cle = &cl_env_percpu[i];
+			cle = &cl_env_percpu[j];
 			lu_context_exit(&cle->ce_ses);
 			lu_context_fini(&cle->ce_ses);
 			lu_env_fini(&cle->ce_lu);
-- 
1.7.1


