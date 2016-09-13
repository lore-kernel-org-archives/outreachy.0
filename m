X-GM-THRID: 6329847978033938432
X-Received: by 10.31.192.13 with SMTP id q13mr1240658vkf.0.1473782578860;
        Tue, 13 Sep 2016 09:02:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.70 with SMTP id d67ls238967iod.10.gmail; Tue, 13 Sep
 2016 09:02:57 -0700 (PDT)
X-Received: by 10.66.227.167 with SMTP id sb7mr1189710pac.19.1473782577918;
        Tue, 13 Sep 2016 09:02:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 125si508308itw.2.2016.09.13.09.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 09:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x24so9753154pfa.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 09:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=NXo/QF2zdGRoEFg8nzuWAHjr4FkLCf/Ik1XEvy2aKQU=;
        b=hDSZw28I6KzWjniiXVxD+hkLoyy7VyK4xFnSUC/SfXZQ8diLqsvHqYeb9dLzstSIBq
         W8d1Wwl45DK+GfDfeTCj2h26S3F3pmwcEQXvmaCT7b8Q2BQIHe9E5LaSAmeUAFYJPIud
         5BIa2XfzKGTxNsPULLAnlG4aksvt415WzWG5eXTUIOKiu9OsuLQwUpU8JaNCtVzshI5m
         0aU+jxTC0GWLYV+4nRDUezrtCQq/H1ky5umTXKdeQz7lOv6/1a75rcKTZufjCrX6mhMR
         WtjxdJ78OPeFJ7u4FldpuzaR33KbofokXiZA4jl3o974fD/nWIIO5Zd2UblEY/quVl8E
         ORIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NXo/QF2zdGRoEFg8nzuWAHjr4FkLCf/Ik1XEvy2aKQU=;
        b=LdKGVaZjie6p1Ke3wOwxu/Z1oHWum4dZiB7tsTqoSawLRmWjN0E9xthe/FhL7xSyTS
         ryun6U9enoSYmWDgYWH3BNDTs1w1kK0Zv4MBukZ4LOtH7gKOT7uvym4fCyULi92N274T
         nSfYZ4Bzm4S6LBGWVZWz9oTRIIQpf9kenS40Auw7CaUjIQHgOM3/baFRPR/7ATslC4wJ
         jNsZ6CKvSAcbii1g+3K8uhhsuTKafTDGLbKQAkOfUUmcJ34iwsPJlb6LjtHy87JLA7Ie
         nKEmTM342uJc9ClLzYnJ7Fx/8sd5YL4ctc4FtyeHgyWPdE0kn62LnjPTynOMuhWM9rMN
         BAEw==
X-Gm-Message-State: AE9vXwNhKmHJsNM4sEdCAwRzKhAOQtzgTn23ycnIxlpL4Lwbcku5OTe9XKTwJlneFaCvwQ==
X-Received: by 10.98.89.91 with SMTP id n88mr2574286pfb.119.1473782577522;
        Tue, 13 Sep 2016 09:02:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id tq5sm32178476pac.42.2016.09.13.09.02.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 09:02:56 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: octeon: Removing multiple blank lines
Date: Tue, 13 Sep 2016 21:32:13 +0530
Message-Id: <20160913160213.12708-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fixes the checkpatch issue Please don't use multiple blank lines.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
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


