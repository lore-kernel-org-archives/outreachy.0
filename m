X-GM-THRID: 6536482227090358272
X-Received: by 10.176.96.179 with SMTP id f19mr3324911uam.106.1521893364336;
        Sat, 24 Mar 2018 05:09:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.41.229 with SMTP id s92ls1450193uas.1.gmail; Sat, 24 Mar
 2018 05:09:23 -0700 (PDT)
X-Google-Smtp-Source: AIpwx498JY10WIAd9An4iA3hBizF4BChsTxDev1FOm3g3Bu7iYyQlD9pI/FWRqPRo6OIjjerT8sM
X-Received: by 10.176.93.13 with SMTP id u13mr1711663uaf.45.1521893363393;
        Sat, 24 Mar 2018 05:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521893363; cv=none;
        d=google.com; s=arc-20160816;
        b=dCpLWG9pzswPb9K2skr0ZGMVOnFovzfXLLxWGgMV47fYuWz86c/d1alV7m9wc/4aoF
         3rxl4GrqoloV21BEYsFlYeBHLxLQNmpQmgnlSadj2lNdxYmWLkhuIln2sy91y7DlDMmO
         rLJn/EYbFxH8kntScYEM2864qGnKJmr77ym5mk1kyJe+NXWnO5ZtWT/LE+YZ2/1FtdCP
         OBMuRcEqP3oh6aqbvEs4XCOe/dYPcQ2BkTG7JHdHfTiJPiFRWQgaYUSr9qrNPOoGmatJ
         h1XI9rmLhNC435CpCrPd9Q/gIOxTeQECpIuo2MSf8gv3TkS68h4cW+XE0FjhqVd1Daob
         EGxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eiQoPpZB7sYzDodA0mO1twSAmU+X0DK3I7cnkoOV8Ps=;
        b=Cc0rooEjmyKdA/DqS9+pZrq6hW3NdDOY5wCXfgN8mgo5W9LKBm/G0i+zfFlaKWXurp
         WDd8yNTacQ5HBkgwLc9RwFwTJF4rmTHAO86HKck+wRb6zpzVCfj0Em/nSq/jg1uoIrwG
         tQKNskJIJx8uRwm+hU1y4t11VjU7M8e0ybuOnP58XKRmNxz/h1D9PMX/I5HJZFzFVAsH
         2LN56pdGeLMPA8YcYo7c8gBKnY4MeDq0f8mu3/zIOzu8peW9wq5iIG88W8UubIjL7qyK
         O8bVALGL79s1njFI+k/fTHu+RATEA9dLiHUDIu/+eL99PHTurnesd0do6//2eNvjDMF8
         gJyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=daj4iK/4;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g138si847000vke.3.2018.03.24.05.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=daj4iK/4;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x243.google.com with SMTP id a19so5560606pgw.6
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 05:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=eiQoPpZB7sYzDodA0mO1twSAmU+X0DK3I7cnkoOV8Ps=;
        b=daj4iK/4ZT1U35MiCZhuP9Jcg04l+yJO2HgoJtZFB9vKRQATY/rW29p8aw4Dnd93xH
         JGgirLHMyiBNC0x8UdotgdCOpsdZf84d0e6zYDgG2lIlcNmq868g25ANFopMTvu+9/ta
         QExqyIfoXGMvYm7/kjQw8Y5PngqovAeFlruKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eiQoPpZB7sYzDodA0mO1twSAmU+X0DK3I7cnkoOV8Ps=;
        b=plqCq6HLlMdHSkpvXbEF9fLMdLjjWBwzH2IYQYdFTAZMMPqE7jXikr6ql19+hY/qmZ
         dJuC9Q3w2DVUfKkosz7hfLbn5fgRnqJ98YqDxYoZc9KftNPXXe1CeEAjDMYrqu+xwV9c
         j/f+oI1R6gikViINeVR5paK8+YDcf/rvtKWT9/FcnGr6joMMNt05EU+5QAWEHXN8iQEY
         6LzBZkQR8EZgOpxhY89gZuTDX71Ub4r6A6RSan6TX4yvFI6EwkqGMF5kE3LWjBfHLmFI
         nCh0t6xG9nku4YqNj0qvlZLJmVlW0n7K5E2fPjWdcSPbIcYzPDGUguqHGVA4B2RYyI9j
         VcoQ==
X-Gm-Message-State: AElRT7El+CK33lHBLPGYfEU7jJj8mkt4/C2/H1yP1esyLxpPrRKy+dFr
	94xl1MIjKq1iPOP0v/V1qvZfLA==
X-Received: by 10.99.114.2 with SMTP id n2mr23970865pgc.274.1521893362324;
        Sat, 24 Mar 2018 05:09:22 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id u18sm21508074pfm.48.2018.03.24.05.09.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 05:09:21 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregk@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [RESEND PATCH] staging:media:davinci_vpfe: Remove explicit function name in string
Date: Sat, 24 Mar 2018 12:08:45 +0000
Message-Id: <1521893340-28090-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change explicit use of function name in string to "%s...", __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 7d3349b..0f94b8e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -703,7 +703,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g && !gamma_param->table_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
-- 
2.7.4


