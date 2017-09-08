X-GM-THRID: 6463333308428189696
X-Received: by 10.101.93.79 with SMTP id e15mr1460823pgt.30.1504863719881;
        Fri, 08 Sep 2017 02:41:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.97.24 with SMTP id v24ls3075899iob.17.gmail; Fri, 08 Sep
 2017 02:41:59 -0700 (PDT)
X-Received: by 10.129.111.196 with SMTP id k187mr1443608ywc.95.1504863719241;
        Fri, 08 Sep 2017 02:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504863719; cv=none;
        d=google.com; s=arc-20160816;
        b=hz3BNDrts/nwvDxFiXoN2WrWTVuMNut04+lDEJuwllUHI4LJH0eQx7lj8u8HzrmxSW
         lGp2W/iBoy6iAezbuFpITGfaNjkBQEjmgH093pidFFSGt2f/z4wV+0seX/GHqNQPhe7x
         6rGaWQHd3hDDtweubSYKNP55XZG3ilOxcoLEq9y8SkNtpKxatIC1LKhk7mm3sCqdeZH7
         aHu/9wBKqZv9XOpVOtKqFgMfYGdkUqs0WpGsYzEQ8mH1c7Wtt8UyaNZFca5i4nD60SPg
         wTA1rgm3aE1fIW+d23aRc+CSnl9emS1wmM6qdj+nH+D170U3DECemkGLg3CpdW5MLM/K
         VP9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=+dS365HdEtwK6M/zUqsobQd3z6fsHukiJylDLgkwz2E=;
        b=EULcTL31LrAU0nAH6fc5TJZxc3ezgzvxwSVE5pZkFqWw/BYtI2fpvOty4dVZKNzlC4
         NiSpHLJECCZFtGAP0oZhjFo3x+a0HorQKUABZ67LEf37CmfjOJTvm4HQTyqv2f1gTSDs
         Ik55fr6b+MxEwahDvWIQDOQJMcq850LzZJP68ULbV+0m5vRvomQe/oOeiKfTRCojq7Bq
         Hthm6oIX8DG6eo9JXqdPAH6/TGvtas404lf6D+awiSRtKTVazzpd7Onam7afoacX6UfF
         kr6KTpn2sCB6CiiQ0TTlUCqRwmJKvXGAb+8qavsiwiUmRvm0Y8uFROIQzCpazaP/c86k
         2A5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOEaXFLi;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q65si208730pfj.8.2017.09.08.02.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOEaXFLi;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so956526pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 02:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+dS365HdEtwK6M/zUqsobQd3z6fsHukiJylDLgkwz2E=;
        b=QOEaXFLifZXw7+/Pp3hIMCpfh/m2B4U8DmQmVrc5isvnEQtsPQDxJ/I7c6DBs7D8x9
         44yNg/ydcnz7oD/0wDIvj0AX0h4+QjGM09kCQPGiu+UvIXsMWFDtlegv5wAOIPoSnoXz
         RHpH89APmrb3Ie2fqdQuHX3rhC43P4wb+G9RlWaQHzBSaHVO9BH2f7IP9uepp7YieZif
         +nikZ9EuxMdSO/pb90s8fUnm7AibC3oyxuVY0+BAQaKDwjtkCq85lZvopSy1/YlglJUP
         xWIjHg+g1Pvs036v5ad9C+accowGOwcOIDGcr6M772UgVEgbg83ZWaSo81ALlYshir1C
         fE7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+dS365HdEtwK6M/zUqsobQd3z6fsHukiJylDLgkwz2E=;
        b=a/Gold1zPQW1jk5mAAexykrivofSWnDxUh8UzytdGW0aEQSLGpdavMcR6W4TbpJH/m
         +hRCxQ6kYRM+g93cQNPF5g8AkwZX5ZgxOcGx0KKCpS9VrnKH68G0vkR3oR+QHgoVqsQH
         Jdx8s3N9U1wBkllvXXJq6TDxbLZt8BeT4ciY0H1Sz4s7IYYQUxcsZykwxz0MM5bh4zJs
         67ImrOiJmXVvoNIcD97rNRiXWJB5acDacNRHD7mEEOB4lqFIM1eUVUgQbh/z0Zvtjw/Q
         8EtUwUQM4W0oHB3hBJh57X7U7RTqHyELasJ6wQdW1L9id+UdmOGRGQTlrmorGHqz7lgD
         Oi7A==
X-Gm-Message-State: AHPjjUiZbYQRiyN6qacabko6tX4R34Mse4pl6oIXVn61pw8mQiXCBK6D
	1xMJkNRkx5Jfj5Uo
X-Google-Smtp-Source: ADKCNb5PhRzmMKuQeKITj7M+YwdmkT+jcZjwhgFi0vvgCIem8cQi3fHHM3RPmKcH/1U0/1W9LqIYew==
X-Received: by 10.99.47.66 with SMTP id v63mr2434903pgv.259.1504863718978;
        Fri, 08 Sep 2017 02:41:58 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id w4sm3130938pfa.8.2017.09.08.02.41.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 02:41:58 -0700 (PDT)
From: harsha <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v4] staging: pi433: Fixes minor typo errors
Date: Fri,  8 Sep 2017 15:09:58 +0530
Message-Id: <1504863598-16301-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

From: Harsha Sharma <harshasharmaiitr@gmail.com>

Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v4:
 -Correct the format of the subject.
 -Signed-off properly.
 drivers/staging/pi433/pi433_if.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 6b9b7df..6a10478 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -473,7 +473,7 @@ struct pi433_instance {
 	}
 
 
-	/* rx done, wait was interrupted or error occured */
+	/* rx done, wait was interrupted or error occurred */
 abort:
 	dev->interrupt_rx_allowed = true;
 	SET_CHECKED(rf69_set_mode(dev->spi, standby));
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		if (retval)
 			return retval;
 
-		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
+		dev_dbg(&device->spi->dev, "%s successfully configured", name);
 	}
 
 	return 0;
-- 
1.9.1


