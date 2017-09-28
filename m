X-GM-THRID: 6470761478432489472
X-Received: by 10.28.218.143 with SMTP id r137mr71178wmg.15.1506591559780;
        Thu, 28 Sep 2017 02:39:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls1021942wri.12.gmail; Thu, 28 Sep
 2017 02:39:19 -0700 (PDT)
X-Received: by 10.223.182.18 with SMTP id f18mr465519wre.9.1506591559003;
        Thu, 28 Sep 2017 02:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506591558; cv=none;
        d=google.com; s=arc-20160816;
        b=j9c8xHGjaCOMFI3MT2k20HuAXPCCscq0Tfc8mZONC8CbyIE1T2rjhFr6IXILX38AxW
         zTCZWdQSeo4u2bdzGD4scrUQ30+QCjl11KMmk3g4vd7fZqjp2EuDMmdBdjp8w4Kh9Wkp
         X5azXhev9sws5vbBnpjacMQbA/0/Q6JEPLHJGlw/rCERk95zFa/oN8RHzRfAQoNoEle5
         VjhbESwhwxUWIifndZS8GLkevhb7wrNUMz0UZOz+Sjz9+658g100CNdL3yzPbPrJdaV5
         KL5OT8b6+vjlzoy8PsDEi+NxnSNX4e/kTlEaePIH3+K1Ssc2cHQX+PJk6bMpdrlwatai
         ONkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=fGarHjycT8KWljVAK8T1xNulnH8rS87nfxxWeeKH0SY=;
        b=k6oyX117Vm3x6nIdet8yxIs/kNjC0zqoBZaj1ikINlEeXSrcLfy/l7PzQKIEhZeaPp
         pOR3ooJC7ZrHyLsDGYc33Kw9DPZMtTm1PZBHNV01mKP9zH/hLcARO7ellxcVgkZWY/Xj
         qnxR/m1ZDrM9nqI6ShBKtO7at0lJZbUnBQrdL1/VYmMvyWQTA8Dw5c54XJgsVxFrJI//
         GecWOBvq4jRrWZOncNckmEI4I+wZ+ksom0RIqEog5pEm5gNcyusOCE4HdBjtQInht4Fk
         Lm/r/Cx6Tw2BFxPvaQhehchRMBn24SK9TnjH2rGBvJs2G5Fs69//LXsreL7eLFZfITAh
         +oeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4IbjiRu;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id q145si159873wme.4.2017.09.28.02.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4IbjiRu;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id q132so995841wmd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 02:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fGarHjycT8KWljVAK8T1xNulnH8rS87nfxxWeeKH0SY=;
        b=l4IbjiRuTx3TQwI52ApUroer5XFv9m7xxhbku4kCrPFt9d/ahTQUUAZ0tTIDUlHYAV
         r5X+zPNRfUZ/0j6dnzRRu81SFYD7RD88zwtdzvkXv8+bo8VZ+jiDbyyOOVhgNHL4Kbk9
         wC9ko9fNFlrlPmkL4gXUQ8ZXTwmtoYWnPsY2NbU6Szml8IWei7iNwftfLQvctjYjMYOj
         F9q1kHBqehV3CjoCBOlIMOF2O7nQO3hd9xRRjf6N5l/KEvwQtvtIIP1So63OApo0CRBA
         2ltVpOQDmS8Z6OkjeZrRl6c8bwpfXUyLGl0zJU4LvFoDAG77CAVL5vvodprZuXsS+WwS
         /r7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fGarHjycT8KWljVAK8T1xNulnH8rS87nfxxWeeKH0SY=;
        b=MUWaA1C8hfRxHfFXlaW79G40nKc5W17VQK/YIh7WLGd6XhQ2feuYeKBLyh/CsqSR/K
         7LHTGrgHNhtzQystPdVxvTIQXRoYsmn14C0QnPr0MYUc/Zv675bPD+EMCfs/fzc81idp
         AWBN2Jdx5aXXhWNCsyGHCrEgI+J9ZJ//jhpRIaveRDk3H3AH+wQs+dV89q/rIK0twIGx
         kadOSrOP8dOe0ofYM5O9KQNEtn2Ug6uhzNW7/JdrM1dypUq/LAsVg1OnGg3QpHTRxMht
         01TaEXGgvPGgLaPVqB1ZOO7S3UQEBu6bgP4vR+MwK0Wf+iTsgkCEUGTdjnQh5WA2HRFg
         5S8w==
X-Gm-Message-State: AMCzsaXNJSqL+C4DLKQwd3mcndqLN3cofNmiTtbc/6Q7Oua4Crxelefa
	2FYuzcRGQjKOpEvYJs+WpSCT5A==
X-Google-Smtp-Source: AOwi7QAB/QVB0d9yq1s/EzR4KsfncIWxTcMMJ7caMSzIYuSvpMUUR+f+uaXTdKYVYSBBYNRPwM/BhA==
X-Received: by 10.28.63.206 with SMTP id m197mr533985wma.106.1506591558711;
        Thu, 28 Sep 2017 02:39:18 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id e8sm763577wmc.46.2017.09.28.02.39.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 02:39:18 -0700 (PDT)
Date: Thu, 28 Sep 2017 02:39:17 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Remove duplicate extern variable
Message-ID: <20170928093917.GA5023@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes the extern vchiq_arm_log_level variable from
vchiq_2835_arm.c.The variable is also declared in vchiq_arm.h header.

Issue found by checpatch.pl

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 0159ca4..12b0e0d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -84,7 +84,6 @@ static char *g_free_fragments;
 static struct semaphore g_free_fragments_sema;
 static struct device *g_dev;
 
-extern int vchiq_arm_log_level;
 
 static DEFINE_SEMAPHORE(g_free_fragments_mutex);
 
-- 
2.7.4


