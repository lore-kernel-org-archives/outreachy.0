X-GM-THRID: 6536488278592323584
X-Received: by 2002:a24:99c4:: with SMTP id a187-v6mr6665127ite.11.1521894778594;
        Sat, 24 Mar 2018 05:32:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:74c6:: with SMTP id o189-v6ls821272itc.0.gmail; Sat, 24
 Mar 2018 05:32:57 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu2+rPdXVkwWF6YT9XRO54QGEqrMprqGT02UgfpFeiBy962yjHth7Qv7zY3Z4iNX0AVadIp
X-Received: by 2002:a24:258b:: with SMTP id g133-v6mr5817468itg.4.1521894777981;
        Sat, 24 Mar 2018 05:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521894777; cv=none;
        d=google.com; s=arc-20160816;
        b=bCygTgvJly581YbLL5NYWf8bh4/Y8lBpTh+eO9UODPOKkxGX4HJQOqwD4+69hlYxnU
         llCw8L9xd/8oWZ2hMsjdjNZtmX1e/2woAWDVDdFXheD4t9ExlN4l+QhkmAn7uoFe1MQp
         O0nhz3MJrY8h9L9vLmru9omElXAXKSmpV/p/jv/+SO9/f144OZqzxkBygXptANC5EgUV
         DeKNekuK67Oei6eVzln4Kv0eGuEjd97n8xC6+TgdQI3dMD555iObP7w3JZ/b1CQNssLF
         nXawaFAiIVPnnm+6QS5MWiks3VGwCLZVtWzr2jztz1N/EExk2CGpMpqlfp6+l/i6gMgc
         yU/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=WBKg+1ONzETD4JioK1ji3RMASHs7FN12U8CjSZJ0HfM=;
        b=HbJUnvS2CJCMkDM+63ZGm2PZos3LCtiDfEuB8clN94hwaK/E0DuNmMogLPXRfWYylc
         3sKyz1UvOZ/J4mpQvEiu/9LTx3Djll+gfoxJpQTlBBs0gcVhORu6eFhwSJchF+P5H1M2
         xRJtBjGFQRtCGIrm/Dpd4Hqcp5AiUPESiT7clYwT2BUIecTleozbH1gISznby2VaiovZ
         wEgnInjLwwoLIijFIvWQhkRFGNKXpY/0xPkNB20dslqpFgMOQI7nP6jIHzVgBJAFKTms
         UpwyO3+tygUgftQYKZph5NJdk8nVQrQ4IThA8ArjGpKFVJnTfLqMKEtpx4iDZwBOF0MV
         7gvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Xjwk23ZL;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id i201-v6si491850ite.0.2018.03.24.05.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Xjwk23ZL;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id u11-v6so9088218plq.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 05:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WBKg+1ONzETD4JioK1ji3RMASHs7FN12U8CjSZJ0HfM=;
        b=Xjwk23ZLd2gIbx1kCLtiXG9TdTVzWYJyQa64h/56fvNyJNEfsdRDIl+5ZzgdwVz4K+
         v8FVbsJ7h68Q4w5t1N4y/pmiZNwGdWkOHKj9a8MNv426b9qBKUdR6VsaACJl46rFvEMn
         aMEY3U9AZF9/bm3U75Zn/rnPFVRUM7k7Ale0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WBKg+1ONzETD4JioK1ji3RMASHs7FN12U8CjSZJ0HfM=;
        b=MGknGgrz6AJIVkWKH3gWV8hqgSFePRjddEtpc1/3YBYuwfk2PJVTVRx8NDQ3c8ne4b
         NFFDaAkSKUFz4ZrDXGdqvtU0bPbbKM4yRNplX1j6Z3GNjP0k3PGZNT+ZgpxSAuubs6Vy
         Jw+OdVniRSVxqKyvJl3IKodX2+auie/xBZHsB1z36mlNBfXqSTezZ3hlBBjMKSI5AWdI
         3gSWstrJU7VEnoUxqWQ7EwBfpPsHu6aBeX/tIusdSpWqfzgSn+8rkGPr6u9MHYO385eD
         m7oKsejVrRDgfnGFhz9MZdq3zFUuuNyWALfWG+vgKzkMx9dP0rCHHCl3lEcu4pe5RHDk
         YOXQ==
X-Gm-Message-State: AElRT7GRGqFxFRKF17G5FDXYsCvls4tocbLHlU6NGnFbTH3QE5ud0MIi
	YakjjbRpyz+Q1f/E1bj0Oue6Xkwl
X-Received: by 2002:a17:902:52e6:: with SMTP id a93-v6mr28776954pli.10.1521894777650;
        Sat, 24 Mar 2018 05:32:57 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id n13sm26128092pfg.45.2018.03.24.05.32.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 05:32:57 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 4/5] staging: media: davinci_vpfe: Remove explicit use of function name
Date: Sat, 24 Mar 2018 12:32:38 +0000
Message-Id: <1521894759-28450-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace explicit use of function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 61fb542..a59ab6f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -924,7 +924,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	gbce_param->en = gbce->en;
 	gbce_param->type = gbce->type;
 	if (!gbce_param->table) {
-		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4


