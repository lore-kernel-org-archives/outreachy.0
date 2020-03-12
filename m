X-GM-THRID: 6802879895263248384
X-Received: by 2002:a05:6214:12c7:: with SMTP id s7mr9002633qvv.218.1584040002381;
        Thu, 12 Mar 2020 12:06:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls3474092qkl.0.gmail; Thu, 12 Mar
 2020 12:06:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuhLItNwNOY052jXIWi0gMVtdRDI540F5auCixylP92UG4iQ5na909FA6H+KdjyLm2Sf5Sl
X-Received: by 2002:a37:687:: with SMTP id 129mr9094826qkg.321.1584039999388;
        Thu, 12 Mar 2020 12:06:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584039999; cv=none;
        d=google.com; s=arc-20160816;
        b=C0iMX78qYp6p+NwvtJEw8J1Q1iA1yp+D9yE46GcFkAERMT/qVVrQzmxgoFGqU6ETFC
         QkIXc6TOWDezMRfl1yWoQT20bA5eqOds4Av9MGdiurDspWtQP/d37CsZtopq+Tkc3zdN
         y/EXoCi737guwKrHBDjvqM60Cn+YPGnUv5jy8So0w6Cfr+ZdfQSobSQw8jIFr1HSnhpy
         TLnjKpwokRT6CjC1JnxDEj5qZftvpvkpu/HTVmEV4ceOGt/oPK33NKx8LqGmZVd7NZIX
         5OtxSOOX9riEMmv7M0P2ZybgjF117hsO+qDO7GuwtvN5kRTDuJCZWNB0JoP94FkhQNTV
         1WNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=t4cARmn/bMQVMNyUCS6UYWIq4LDhDCCDGPsfZKCxVSw=;
        b=t+63wI65sIiti5QseD70ht8Fd1ay5yb+Hwzd4XGyzEkkcMZJfOQ6YkA/zxGw+e0u1M
         l5u/I0fJ3/RlInN0aGz36IrFGOazzOstqjMenfmISpP53K0hhPUXZAYeHB4v4g67iKBK
         PPVg2LI/QInF6meStKQ88X+/Dc1/Vl6Y0/KJ6QnYt828PNF9fGDguBuoAWbWOEL/C7zw
         OcG2peO0jXDl2aRuTBiNxi3bS/5/xLVyfiUH224NTs7QqLW+L1p5Ry6/wvn36tKCN4tK
         z2b/AduEPIRIns7rIW8U0fLKmnbMU+4iFnbUnTh64Z+yqAGFs6+FwclcC/+YQ2fxsS8b
         3+Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hl1Pm+D5;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g23si355917qki.4.2020.03.12.12.06.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hl1Pm+D5;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id c7so3531312pgw.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=t4cARmn/bMQVMNyUCS6UYWIq4LDhDCCDGPsfZKCxVSw=;
        b=Hl1Pm+D5Ct/xGEbgJqTizU/GOzPzqDjyBDOYmg6DUnjbAduUuoXEWBtS+JJG5y4gWE
         AUolzrGtIHyGFvHzQduKyZFttq0jcx6NFvvrf/jjd1MDw+FI5pEXqspdfnBBin/YknXj
         u3pKX0/gjH/iuV63kZkMnEJ8kMCB/Pe+C4Mi+ulQLHmv7RENT7Xe/G+2ffpWIAckq5vo
         5hqa77qRGsUydGlVa7vwcRXMRlt5zFnNCcLrT7LjLz8oOp/8/uKo2cW3kARGLyeVRG2M
         3DHvj1Epkr2bi+trXaXjuduL1jpeJXWIrJQG0gRDcXxQNjC2ItjPSBY+90fWb0XUm/KJ
         ZGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=t4cARmn/bMQVMNyUCS6UYWIq4LDhDCCDGPsfZKCxVSw=;
        b=A8cQu7kmGgwWpzR/d5tmGZzc7vVRh/uKNr2FqaGuz5CmmJ+a7psv94nCgwCEdiycU9
         kopFcJreAnjwfB3uo7U2cWchd3JbpZachs+30r73XMuf9lDFpMkzWa8695gzd+AUpG0O
         GQpQREAYoXWSy4AC2UYBm7ZATNeKvjb503Gdp7Bk9VMRVLkYIWl8YJzm/iOP/u9QzAcg
         KEWp7R1Keu6RyZw4e5vPPIOMYvIHE83uNYCbiXKB20z7WSLZX8zFh9mKsHaMooJZ4zhU
         H0mwMCBEHDGl14FMMJXlYN6GHhWfnUfvFUPhXel9atmJ7qOflfVmnDNEUEYFUtCHG0x2
         uAfQ==
X-Gm-Message-State: ANhLgQ2sFXdPJP3bxoX3fHy5gUnK08esgdtfm9iu8/WtbO/vS64DeM18
	uDNnCVMd/+IeJnBdpOyrdrZBXdzU
X-Received: by 2002:a62:8144:: with SMTP id t65mr9988480pfd.188.1584039998465;
        Thu, 12 Mar 2020 12:06:38 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.gmail.com with ESMTPSA id k24sm52803474pgm.61.2020.03.12.12.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 12:06:37 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 1/4] staging: qlge: qlge_main.c: remove an unneeded variable
Date: Fri, 13 Mar 2020 00:36:21 +0530
Message-Id: <20200312190624.24167-2-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
References: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
v2: Nothing has changed.

 drivers/staging/qlge/qlge_main.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c712e1af90de..057034319e4e 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3905,14 +3905,11 @@ static void ql_release_adapter_resources(struct ql_adapter *qdev)
 
 static int ql_get_adapter_resources(struct ql_adapter *qdev)
 {
-	int status = 0;
-
 	if (ql_alloc_mem_resources(qdev)) {
 		netif_err(qdev, ifup, qdev->ndev, "Unable to  allocate memory.\n");
 		return -ENOMEM;
 	}
-	status = ql_request_irq(qdev);
-	return status;
+	return ql_request_irq(qdev);
 }
 
 static int qlge_close(struct net_device *ndev)
-- 
2.17.1


