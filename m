X-GM-THRID: 6464108731042889728
X-Received: by 10.55.51.78 with SMTP id z75mr4415957qkz.51.1505042596405;
        Sun, 10 Sep 2017 04:23:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.79 with SMTP id i76ls826899itf.17.gmail; Sun, 10 Sep
 2017 04:23:15 -0700 (PDT)
X-Received: by 10.200.49.87 with SMTP id h23mr4520641qtb.37.1505042595559;
        Sun, 10 Sep 2017 04:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505042595; cv=none;
        d=google.com; s=arc-20160816;
        b=G6k7n2TI1RUuc4I6PivRDfWGKqhIvYS9yOoh023+F+H4uzWprrgcjV5uA8kfDgt5N2
         Shbfn8G6CQJdCpa2tTSkxIZwvd/anJ5GcxP9FtIN1fzGuCCfibqgjk0oee5+h6z75T4B
         f+5i6sIF02Vt8QY2Cs85v0SNthrmYDCdVr+/Y02A/MDcPBYYuMxLNiVvezyCRzN6s5+x
         /LDeNjf8MCk+Ri4mhkYmmYq6pYrU8n6Q8WhoSViDY4mqLDBi5wRzeXJMb4yg2rykNOAX
         S/050/gRD0v8fnKphuhQVjw3oCZXUipzSypFHXFxgZXxTSKOuxtS4S5+aXgGec/GFEYw
         jJgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=qfulGKKm5zy3KnIs+p/1YnGvbYt/rSwmNUP6FISraoY=;
        b=re12YZTJxMyVYnaH0bwK7boIw931hd8wpb3eAm6jCUd5Sfhg0klF6ptohK547VyIw0
         u7yoTbBNdG9H4zjHUfaBHmYBGoprmfqbhrS3kZCrTfFQ5V6/5uoKHtw3qSPAGI1pXI1R
         QVlGptz3HnEPWDW8DRVz6XuuMeaofN4gXxgwpXaDQCLizEVTrVE9FA4ez+IlRTotjzaS
         2onDkPZIE6+8KTx4x5xUMrrRTcT+IhosKawZ2sVH2y44si9KGv6/qeLT7l4C5oMXqRX6
         UqnChytlEQeSVoi5ldSOhwqLBt6kfTcLQzjhG4NYPBFl5b92i9DscgDc5AHYrnif/hSh
         E4iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CT3LL2po;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id p6si679346pfg.6.2017.09.10.04.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 04:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CT3LL2po;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v82so3371017pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 04:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qfulGKKm5zy3KnIs+p/1YnGvbYt/rSwmNUP6FISraoY=;
        b=CT3LL2poMcnc+52S3NnoVMQMByqHHjz3LAtqSBZVJUpVK1bJTZV8veeNyuBnk/96dQ
         QS/88u7eO1Qaar6vjbPc4DaFGW9y+uSZw05/fZAHpKK7ranXjyN/YfoubhnURXW1ms3r
         vwuPOgnPV5uIVEPbcs5/jVkyoq7gPFhGx/nCfDnmcRjBUvZPQuk7d0SbMdh2aUVZTbuA
         nD1eWvMLt0xd7ErjSfpqYSgKqFKm4HcJwITcjPyCLg4kqhG+yGM7KpBkf6ssXbOGZBV0
         m25ycArhGVoDcUTlPqWfq+5kOve0vo5hCFxRHX27crbal5uzViiODGjSt86ZajoZpA1S
         p0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qfulGKKm5zy3KnIs+p/1YnGvbYt/rSwmNUP6FISraoY=;
        b=MbaQEzKzwvLPaVIPAgT7wU8oEo9/LHl7XIAEUvaHWRVzLMBkBjbx8msDiAPCPhD+oH
         ZuiXRkTMUOFfKe3em13J97NdTsg5R8u95oJMOGC8cDRyMl3Mt1dvIDCGuEQzuopO8fsY
         Iwrv/Jb6NFm1Yshmag28Lk8+BDawk5gAnZMCiN9D+UEZgvv/cCmPGKb4b2xfI5nOVysv
         RaE4Nb7Dd4lWoNGnRNkKnQcELx57DX9qkA77kTt1ljcWRs0fxKdA3BXdfQ7z6dSLzsT8
         lHzGq9OSmtobsxIt0fYFaRWoEJQ9J/Sf3jYVBpSvilnxmSI1sAaKHoqsQxLVdghALFFV
         b7Ng==
X-Gm-Message-State: AHPjjUi8vktQg5gbQH+4vj8O4VGt3gc4smUSYKRtwN72GLnH1ZfPO1We
	4PSJaOe0VqpZlDeL
X-Google-Smtp-Source: ADKCNb6tLV6bnVm6NSVRaNjEOEhhpcc6cPl58b5VhRy/KgXOjaLPO8L9Mny3yIG67DSZt9UsIlErYQ==
X-Received: by 10.84.210.73 with SMTP id z67mr10056252plh.306.1505042595280;
        Sun, 10 Sep 2017 04:23:15 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.49.130.205])
        by smtp.gmail.com with ESMTPSA id b4sm11115646pfa.98.2017.09.10.04.23.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 04:23:14 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: xgifb: XGI_main_26.c: Fix alignment to match parentheses
Date: Sun, 10 Sep 2017 16:53:09 +0530
Message-Id: <1505042589-4432-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix alignment so that it matches open parentheses.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index b450c74..b813f1d 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -1697,7 +1697,7 @@ static int xgifb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)

 	if (XGIfb_get_dram_size(xgifb_info)) {
 		xgifb_info->video_size = min_t(unsigned long, video_size_max,
-						SZ_16M);
+					       SZ_16M);
 	} else if (xgifb_info->video_size > video_size_max) {
 		xgifb_info->video_size = video_size_max;
 	}
@@ -1736,7 +1736,7 @@ static int xgifb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw_info->pjVideoMemoryAddress =
 		ioremap_wc(xgifb_info->video_base, xgifb_info->video_size);
 	xgifb_info->mmio_vbase = ioremap(xgifb_info->mmio_base,
-					    xgifb_info->mmio_size);
+					 xgifb_info->mmio_size);

 	dev_info(&pdev->dev,
 		 "Framebuffer at 0x%llx, mapped to 0x%p, size %dk\n",
--
2.7.4


