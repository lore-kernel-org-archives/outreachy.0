X-GM-THRID: 6329929865196732416
X-Received: by 10.36.89.85 with SMTP id p82mr3346008itb.0.1473964714046;
        Thu, 15 Sep 2016 11:38:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls592535itd.6.canary; Thu, 15 Sep
 2016 11:38:33 -0700 (PDT)
X-Received: by 10.36.238.142 with SMTP id b136mr3332696iti.8.1473964712789;
        Thu, 15 Sep 2016 11:38:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si1458512pab.2.2016.09.15.11.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:38:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so2527419pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 11:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0iFjFsnsVfW8OvnWrXgUKNbuhU0Zzj7LALU49u6Su6I=;
        b=iOfZ3OouMbGybR/razmc4gZ9VYgCsSipCn82nfuraxeJvEkj3PrrFMTl0ZhJ+XcQTf
         FRd8RLqalQlBUYL6CfHM9DW23c8ogRJ+z8Kbta9wCJ4br+3eoQUZB/pLPpI2+YnZTCbH
         SZuHMTK7tW5uD3fwlP6P6AlBqaquQvxUFl7xmsZD8vcSFPqcpJIw/ctBOQiqfK8oz8Ka
         WdHgRJZAE7uynIa3c3LMDTaxCY+MH1wJSFdmR0RPXK2tTeOMqwlphVcHrdPCWsWI2YsW
         a5rrvfkwTRk/pDg17QSiO4TVpxZXUtKtPi27kt5kK41tQC4sMtfxaKd+U9cS9GFp93Se
         facw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0iFjFsnsVfW8OvnWrXgUKNbuhU0Zzj7LALU49u6Su6I=;
        b=UP9WCetzNqT00LupYShsTzrW0UIWY5/2HgR+1xISX6Wc0nr87/D37Z3ykItFfIoeUQ
         yx3lXf+/3ZMVxX+7cq9AQfcmsrIldfG4DH/BZJIsSMufijtASqPUp/LpLNdwVAKjKDrA
         Sr4snqmfLjgnK2w2mx4IxYE5z3eotM8LJFGxxFZOeUNk0FkicT6aKxUW3ySM5u53h9+I
         ARRkLFgrLobORm2iVC1Tro2zhEJnDRPeNv5+bSCftLbQFMG+U+lDrztqe0LkRnaReGAl
         38dvedNPltQFZwGJfUDS8bdvbGthWxReILdAzEYzNmdhKz4KyuyTdYuQFZslRnK5Lgs8
         9olg==
X-Gm-Message-State: AE9vXwM64q7Qadd3R7KkMSSyQQczVXVvbBKDF5Io0rRK7C84hBERI1IW7rSv2eUhxmsRcA==
X-Received: by 10.98.64.93 with SMTP id n90mr16774562pfa.29.1473964712581;
        Thu, 15 Sep 2016 11:38:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id q14sm27636668pfg.63.2016.09.15.11.38.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 11:38:31 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5] staging: octeon: remove multiple blank lines
Date: Fri, 16 Sep 2016 00:07:51 +0530
Message-Id: <20160915183751.6826-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fixes the checkpatch issue Please don't use multiple blank lines.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>

---
Changes in v5:
	-move the signed-off line before ---.

Changes in v4
	-Make the commit message follow protocol by putting v3 commit
	 subject before v2.

Changes in v3
        - Make the commit message more clearer. Also, fixed the subject
	  mistake in v2.

Changes in v2
	- Change the commit subject to :Correcting the commit
	  message. Fixes the checkpatch issue Please don't use multiple
	  blank lines.
---
 drivers/staging/octeon/ethernet.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 0bd5c18..ec8e424 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.9.2

base-commit: 45e35b5041a07a4cdf122ba8280e61cdba4f1092

