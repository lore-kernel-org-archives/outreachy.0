X-GM-THRID: 6258590629737005056
X-Received: by 10.107.135.209 with SMTP id r78mr12006681ioi.19.1457241627703;
        Sat, 05 Mar 2016 21:20:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.142 with SMTP id u14ls1106252qge.82.gmail; Sat, 05 Mar
 2016 21:20:27 -0800 (PST)
X-Received: by 10.129.78.78 with SMTP id c75mr3532242ywb.30.1457241627022;
        Sat, 05 Mar 2016 21:20:27 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2244653pfb.1.2016.03.05.21.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 21:20:26 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 63so5841970pfe.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 21:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7sULkpw/WKFQSkbL29fM+oAkKpRxEK5sVpcx2dEfIZk=;
        b=IUEfOpe69X4Qx58ms+RrAjhTv1tkUglFcYLL9/Yg/9Le9oFVEtYD/PciQ+TG6SPJAN
         U+I8ZJnPGGNGZpyuR64OjrPoLl/vP+rGQP3/JieIRMJSaulhlXFQk7qt3qea0mnZIop8
         zxwwE7MO2DgzQiRmelpSrquyyId6FTpoEAKTPspj1PSLVkdrJGa6rAXgxe16ZxJnBtn+
         1dVwoYcGKxJkR/c2P3MdQDelWgma9koaEjJMbXru8oAgd6Eh9l8AqPn9fDJ8iHsF5+qe
         XygZHmA4Tw3wOUNn7QiN/O4LB4D3HzWhHQlYQUiJ8XKKCF+Bx9QU73eTnKqjcA8EBnbV
         Lf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7sULkpw/WKFQSkbL29fM+oAkKpRxEK5sVpcx2dEfIZk=;
        b=cCWgRiqRAjv7wB44I+kKpHQf0ZWyMswLzFa6aJXYDw8goq3zj4uXSfTX3HlZI93+M1
         NJp178Ilm11MnSLN2b27YqZLcuA68YohoGabm7eVQH45egL8xoM7PyCprjOfK5BN5GQ1
         FlWwOpJS/up07ZwFve5c0FR34SHEa+tXmJz2l10jGfVh93i3UQYmP3ikTLWyBBdzwS+k
         OIftHrFKE/nnH1Z4op07xCZgI+escrRvihgKLyebrfrZBUPmsWfVHP88P9ioxCCF/X1p
         /L0Wen4Pti0ew9QCTFm1cOxq4WAgO1msla8ILYlG0dAy9gqyZ/qAuUbtTGAUl4wiLZan
         9NmQ==
X-Gm-Message-State: AD7BkJJ4Bwykj9U8iMz2KtKwZgWCLXMtbMZYZ6dcQ3l0XhaUu+M6NpfAuobuTve/ozWxjw==
X-Received: by 10.98.8.74 with SMTP id c71mr24485165pfd.155.1457241626863;
        Sat, 05 Mar 2016 21:20:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.141])
        by smtp.gmail.com with ESMTPSA id cq9sm15623755pac.26.2016.03.05.21.20.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 21:20:26 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2] staging: sm750fb: convert pr_err() to dev_err()
Date: Sun,  6 Mar 2016 13:20:21 +0800
Message-Id: <1457241621-11080-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace pr_err() calls with respective dev_err() counterpart.
Change is safe since pdev is not NULL, this was identified by hand.
Semantic patch used to detect and apply the transformation:

@r exists@
identifier f,s,i;
position p;
@@

f(...,struct s *i,...) {
  <+...
  pr_err@p(...)
  ...+>
}

@s@
identifier r.s, dev;
@@

struct s {
	...
	struct device dev;
	...
};

@t@
identifier r.i, s.dev;
expression fmt;
position r.p;
@@

- pr_err@p(
+ dev_err(&i->dev,
			fmt, ...);

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---

Change in v2:
* update commit message stating that pdev is not NULL and that it was identified by hand

 drivers/staging/sm750fb/sm750.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 59c7455..7275cdb 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -418,14 +418,17 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 
 		ret = pci_save_state(pdev);
 		if (ret) {
-			pr_err("error:%d occurred in pci_save_state\n", ret);
+			dev_err(&pdev->dev,
+				"error:%d occurred in pci_save_state\n", ret);
 			return ret;
 		}
 
 		pci_disable_device(pdev);
 		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
 		if (ret) {
-			pr_err("error:%d occurred in pci_set_power_state\n", ret);
+			dev_err(&pdev->dev,
+				"error:%d occurred in pci_set_power_state\n",
+				ret);
 			return ret;
 		}
 	}
@@ -453,7 +456,8 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	ret = pci_set_power_state(pdev, PCI_D0);
 	if (ret) {
-		pr_err("error:%d occurred in pci_set_power_state\n", ret);
+		dev_err(&pdev->dev,
+			"error:%d occurred in pci_set_power_state\n", ret);
 		return ret;
 	}
 
@@ -461,7 +465,9 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		pci_restore_state(pdev);
 		ret = pci_enable_device(pdev);
 		if (ret) {
-			pr_err("error:%d occurred in pci_enable_device\n", ret);
+			dev_err(&pdev->dev,
+				"error:%d occurred in pci_enable_device\n",
+				ret);
 			return ret;
 		}
 		pci_set_master(pdev);
-- 
1.9.1


