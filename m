X-GM-THRID: 6535126466824241152
X-Received: by 10.13.244.194 with SMTP id d185mr7404979ywf.76.1521577755304;
        Tue, 20 Mar 2018 13:29:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.198.129 with SMTP id i123ls161723ywd.42.gmail; Tue, 20 Mar
 2018 13:29:13 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuKiFfp6I0qpYqf8GKxQDoUyEGuTmOYqSR23r/TNRBtI9Rk+W1XCL3330YvqpaES9an9q0p
X-Received: by 10.129.47.19 with SMTP id v19mr7007272ywv.52.1521577753930;
        Tue, 20 Mar 2018 13:29:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521577753; cv=none;
        d=google.com; s=arc-20160816;
        b=R1wn1mLPvdtqoP6BVPeGxwl/9AeuVshXbkO8OkQGMEmZkQAFNjc2Jf6ykxz3ibr9aS
         YRYS+Lw4+INPgjpqEMddErMHfUoesLPPVlcdVi3sTsnJC6zapq4uVgjQyxklI+7aXd1K
         KAUD3S1bVSjykVHQwwQDMe9ExxxGKeRpK3DHUbFQH/ugb3c35e4L7fnGdRSRZ6B0cQch
         8gZnVqXUga6mWFEMZvrUJWIVwxUEIK5E1CREZgkZGn3RPrOCcNDz7TE3KEeHSIRl3fC/
         Wwu3uBJ9m+6UjdAxvNhQ7YsWByyJy8yTaGovVwJqNcPeKwiweDeiI2tIutdTB6pqIjKU
         E+vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=RjvBi8ZsUDs2jirYGX6Zh2YihwzPo2CebDWZ6/v+lqk=;
        b=TxItgaPhTtKRztJbu0dvPOVQEqex21CZrYGML08vpqQfUQLisHN0SdGpjy6ODvRawL
         l/RZfyGQiyEmvUh2Op9P8UHMML5++cfjwQguGt6FDT5XgTH9fX7wc8HYUau1LneGcF8L
         Gh7TR4bSyk2u+T49AKAhpAIi4Pcd4kCjBgDM/HO4jir1b0jbvoOBxqo809F6NTGjjfg2
         URaE85mqwQG8EeYbzEhnuJ2gHV17uYRMSwBdaGDrbykh0JendXiSZX0e/44D+ScsPDyo
         I2RLtKurhfknF2Hff7AzTmwuBmaujUqvHKxBdNZYPVunAvrrZPrlB0gmInnTIDuI5lbU
         5gJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=GIz6xiKv;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id g2si179756ywd.0.2018.03.20.13.29.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=GIz6xiKv;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id c11-v6so1731108plo.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RjvBi8ZsUDs2jirYGX6Zh2YihwzPo2CebDWZ6/v+lqk=;
        b=GIz6xiKvlx1oijfqLfn/cpX7wPVLs0NKF6ndlpLHhuq1/aEHxTuHozAFoFiyCXpkRI
         jjKMcEM2Wk/isrxgP1q0P0CClY+vDLG5EedybMDG1DY1d6hpMpCeb2IshvmVUNo8yiDv
         wPce7H0iTYvyPhMQo1FOjmeNEMFkwdhi0JLN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RjvBi8ZsUDs2jirYGX6Zh2YihwzPo2CebDWZ6/v+lqk=;
        b=PQuztcvUiF9jxgMSx8q2BLmGozZaCAtzStyMrRmTgPFbUrjHk/ZjXuYoxbqhNn0tk3
         aSegOxayddtaZBQS/mqyOujbFCEcZqvQQkFU1w7bkXKHD1OMTh/wByiufc+nyvNm6xSV
         RavEIpAYjfFzI5680TTM+eRay90jkH2896sx6LBH2pDAHAX5GxbsoBsGKkHctdMyc/9D
         Yhj8QsIVKGqd8FHlJt0y5uCrH75jvi+aK0B7iDs1oRi9B/y4maAXPJYXmkRCfhqIAB7I
         LagCCjgxMQ9caRqXfNcOCp40ZuASjFumCWeMZr0fV7R3xTxwgGmIAuDi3RxEFqpdsOzD
         80IA==
X-Gm-Message-State: AElRT7EIlY3F47rtRBGD54W3dQlAuZPW7thM4QqRlQ4o6+4n86sQW12t
	iM7Rx/cr27RSX14NUjvP+avpVxGX
X-Received: by 2002:a17:902:66e6:: with SMTP id e93-v6mr18089400plk.312.1521577752578;
        Tue, 20 Mar 2018 13:29:12 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d77sm5480831pfe.20.2018.03.20.13.29.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 13:29:12 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 4/5] staging:vt6655:Delete typedef in typedef enum
Date: Tue, 20 Mar 2018 20:27:58 +0000
Message-Id: <1521577679-21104-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Change typedef enum to enum. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vt6655/device_cfg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index 3972881..2f38634 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -51,8 +51,8 @@ struct version {
 
 #define PKT_BUF_SZ          2390
 
-typedef enum  _chip_type {
+enum CHIP_TYPE {
 	VT3253 = 1
-} CHIP_TYPE, *PCHIP_TYPE;
+};
 
 #endif
-- 
2.7.4


