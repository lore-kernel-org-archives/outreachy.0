X-GM-THRID: 6609200682225369088
X-Received: by 2002:a67:47c3:: with SMTP id b64mr17271129vsg.38.1538908642388;
        Sun, 07 Oct 2018 03:37:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:4108:: with SMTP id o8ls1945168vsa.7.gmail; Sun, 07 Oct
 2018 03:37:21 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63AoTglOyT3/bra8SzW61spaWloAXAsIJlXRTJjzjMddXuU5wrpLcTZpZKEvyLArreUofSx
X-Received: by 2002:a67:a950:: with SMTP id s77mr17321474vse.31.1538908641680;
        Sun, 07 Oct 2018 03:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538908641; cv=none;
        d=google.com; s=arc-20160816;
        b=rBWlOUzh8oUleLh/eIUNk9JcKBBEq02n6/yAcWvenvxZQYkO4WVrsKyq6VTJ+73p9o
         diNbH61M+CrT4ekUUSZBvKxuO3R2rMfKPpQ4gul3nUE2g/UQyT5ZdimpQH3GD8y16QF5
         mULK8RV5+W6jxVMLKm+iitW74Axa3PdsXPpeahQdERhK2OI/SPVa8EewJ99wGpcs4PR/
         2+XUmjnFH8SFN9qVB8KPd5bjiWCCh5UxqXc+h18TGez8ghVPVAQ9b1sD74LQSotWZif5
         XCPPYCpY6NRV2EWbx7mNNcCEKHy6G1PdnrdKgT6Tp5JkFgY6kTfWBmWmG/kZkxFIpxZr
         K8JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cqhRVUWTICufFoXQUwF+ODZDLd+6jV71hjxO3QuJMDI=;
        b=DEBL2oCsBRlp+RBKJN23DpBibcHAB/RHADf8tntbbIpTcJCxwtfxJVTcQgWdWVkJOg
         WwKwqRAgfG0T0JOlmUdkZintxr7ArzfrJhcz/h8X122zR4W9NiL7mYJc7V49W8ErHgDJ
         Cy4XfGZPbIAjweRzYDLtvT17ffMn6aouSS2UgOIjlKEk3qui74dvB3b6TgvhrNbQiVHn
         Uhcc2lfB7Kp7ZsQ03FcHVdXHr/XzABhD1Jyl8RZ49ETBLnNn/kJVkaE9oHSNARyvTBn9
         QtcJ0/OS5Bg6L/MaYQwve4mPEQj+/OBaYzNvhq0LPUtT+JxlCmQk77S/jWbR0w0SySEB
         Tc1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SLPWBtjM;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w137si670135vsc.0.2018.10.07.03.37.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 03:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SLPWBtjM;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id l81-v6so1971687pfg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 03:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:user-agent;
        bh=cqhRVUWTICufFoXQUwF+ODZDLd+6jV71hjxO3QuJMDI=;
        b=SLPWBtjMZEjxhdQOHu6LigNLxeVbqMTwlJ6YG/6TmKY6OAG+Qu8lnLkraj43aDW4z/
         e6U4dAsHFYK8EoCtQaHRtyBsdsiJoBPyfP+G2eg8F7Y0cNXmrLkNdnxAD60ITPtAk0zO
         AYsDKStnioegdtdr8bL/lT97UJijtXcUlpANbo9EudD3T6BiAqMqX+oC9YhVnTgAVVbS
         lFRlxnqzyaBSR4VtPzfO84KH/UuOy8P1Id149gFmUCpCU0Re2nV4hECe4HJMblw7rP4O
         odomwqN17guEvV9LabK2rXTuY7hnWX/6QaBZTIrfQsa2R7YPF0+hc43GmjUOr6IeRHYH
         IxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :mime-version:content-disposition:user-agent;
        bh=cqhRVUWTICufFoXQUwF+ODZDLd+6jV71hjxO3QuJMDI=;
        b=oMv+SquGBzuCN0VrkR2cUwlG2vi1hSqg11OBAi0qSAR/zRQfvhn9+OfP9q6TIePaCr
         G1mDnlFblCrmES+5z69zqGUfiwGJSc0oYeEpdz4tRCMDRltkvPpgQdnSoVpzX2pjZQjc
         naEVc62xPZYW0tJ1JNZXS71DdO06dXFzAWJiGb1x1EaAv5NIYX8ky2s82v1PzvAqQJpO
         I6PGFZrHIyDgZyOpMQAmu0e5gWk84rApDbVEXOE3xeuQEyY+Dzvq0WMkiwvxs+fp+Ft9
         yCiYQnIPAvJGyp5fd45MMm3J8QOxvHwIAH00WRvEU6myenKJZIRvlCSZFwoGkLtRLfzf
         OkGQ==
X-Gm-Message-State: ABuFfogiU71wJ7AZEy3f3ascSV8afjVHRoAo/piLlIcJQI6+DOhSYV/v
	8JPZeBeY1Ie/8j7FF5nN2L4=
X-Received: by 2002:a63:9c3:: with SMTP id 186-v6mr17151128pgj.249.1538908640668;
        Sun, 07 Oct 2018 03:37:20 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id r73-v6sm26549497pfk.157.2018.10.07.03.37.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 07 Oct 2018 03:37:19 -0700 (PDT)
Date: Sun, 7 Oct 2018 16:07:17 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: [Outreachy kernel][PATCH v6] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
Message-ID: <20181007103716.GA27575@veda-VGN-CS3AGH-R>
Reply-To: bhanu20anu@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Adjust all lines exceeding 75 chars per line to fix checkpatch warning.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

changes in v6:
-Always commit on the base version.

changes in v5:
-Fixed Change log
-Change in subject line. Do not send as 'Re:'

changes in v4:
-Remove Whitespace in comment section of module_comedi_pci_driver()
 to fix checkpatch Error.

changes in v3:
-Comment section of module_pci_driver() exceeds 75 characters.
 Adjust the chars to 75 per line
-Modified log message.
-Added change log.

changes in v2:
-comedi_pci_auto_config() function prototype is exceeds
 75 characters per line. Adjust to 75 chars to improve
 readability and also adjust the arguments to match open
 parantheses.
-Comment section of module_comedi_pci_driver() exceeds 75
 characters. Modified contents to adjust 75 chars per line.

 drivers/staging/comedi/comedi_pci.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
index 4e069440cbdc..9d07c9a68f53 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -31,7 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
 void comedi_pci_disable(struct comedi_device *dev);
 void comedi_pci_detach(struct comedi_device *dev);
 
-int comedi_pci_auto_config(struct pci_dev *pcidev, struct comedi_driver *driver,
+int comedi_pci_auto_config(struct pci_dev *pcidev,
+			   struct comedi_driver *driver,
 			   unsigned long context);
 void comedi_pci_auto_unconfig(struct pci_dev *pcidev);
 
@@ -41,7 +42,8 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
 				  struct pci_driver *pci_driver);
 
 /**
- * module_comedi_pci_driver() - Helper macro for registering a comedi PCI driver
+ * module_comedi_pci_driver() - Helper macro for registering a comedi PCI
+ * driver
  * @__comedi_driver: comedi_driver struct
  * @__pci_driver: pci_driver struct
  *
-- 
2.17.1


