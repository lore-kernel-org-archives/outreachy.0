X-GM-THRID: 6532871168257425408
X-Received: by 10.101.101.199 with SMTP id y7mr4717614pgv.46.1521578872803;
        Tue, 20 Mar 2018 13:47:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b589:: with SMTP id a9-v6ls909992pls.14.gmail; Tue,
 20 Mar 2018 13:47:51 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsUHD3W43EwXJy+bOpMltJMlfh+y6//t4qznUQWmvzgusCIJpUpSvcHng+YS9gRaXP+J+AW
X-Received: by 2002:a17:902:6b0c:: with SMTP id o12-v6mr6074162plk.60.1521578871327;
        Tue, 20 Mar 2018 13:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521578871; cv=none;
        d=google.com; s=arc-20160816;
        b=MF9UTO+bAf1bMjtKPcsuAPbq4zRJC4RPivvCFr/9935L6p8mVgwm6W8X7kH9hLMLt3
         j0UcpS0bNssfamCQfEytC6Qkc9iyDgNrjXjQPs9KJelyUoB/EAI5YkD9Mum1T5y057qv
         Q4aaK2S5CUnA8VwF23OLKsskaRfbrO5FNgTd496aCoW2YPxAlBYR/7mD4tJs7eDoAL51
         2n8W/xUKAV91Jh+b0w0s/rZPXmCBoXI0m3EYtrJhcCfcFwYITdbnDNM1fYncmrO0Tl/W
         eicaUmiCDiVl3OLOrViVQu3f+DTu+IsuIMhnDG1ElKgdMW/aQ8SRB3oLp3jzbMsQUO/u
         OISw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=aqHjM9M6CS/thlyu9NRs9mDtjAizHsbck7JKJRz8CTkvm+5HR7g/EH1uvj7EJFJHLq
         Mgs3LzUd21okKCjNC7wahKM+LEBH7NhvM6PyAna6yymG9tLFLQdwapiM+FnevRYH7vHp
         Y4qUW1HSuW7NOZ8WAC4d6NGJbzh8DftJU7TPDXyMGqQ7oPeW9FDxgy28/boy1mwp7llp
         HFW/DEdqZeVAMDa6AJNJCxyBzOfRl9MJ9Wioi5or3TS20S+PVClYRtije/aQMN/TUkFG
         jJbA3B5fg7knzBjC/XxJCY88i181tgpOPRhhHjB6+f4fLAc2KuF5MTbZp18Oa8ia4cKg
         cQnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bnfLtGBa;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f4-v6si147815plr.5.2018.03.20.13.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bnfLtGBa;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x244.google.com with SMTP id i14so1113622pgv.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=bnfLtGBac5nV7gKwerMC1fQ3vwGfPXYM0yATczc41UI+jX7ggklOzSZk7bOEegp8JH
         vje3cJbp78rd6beiL1Bbzpz1fDA0tSqOr6kV/iFfc9wuT34EGJ2N+Y5ZVJy1QPpfcMy0
         DZZCdhcnSahSMqu8Ey11wKs/BjSW3Y5tviXMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=EQEC79yap5dd7dPeNRGCRyqhkTHRCaGxiEInjlRljlqK4hC3nYAzUGh+MPkuonsfTm
         SUraeEiH4RCf1kqoncuh1tHNywo7IcPKVjFowz79sPdcC6xG+hS1MXA8CjYNQfPoZGZS
         Qtc6v2pgCxKXMEMpUSPrtWH9rmCeBysOvzvzy0P8a2R7YF9fFtmbo+WRG0WgsGPQ36Uo
         OCbS9Ho6OfHpFLqHRqvX9ptbts18xPG0k7TBkq+JjfIoCYc91MRAwYOty/YLGClChUL1
         IjsGbr/LV8x5VznZn4fj/R9/QcRESY2yKcis2kqsbeiaEQ310rxcU62ZoIuk4RsrTTOv
         hcIA==
X-Gm-Message-State: AElRT7Gn/Sis5fKG6ZlL41kTGH9eAs7WAl/ezGr/4yE1Za66XaLgcmHW
	r4Yl3JspXT7Tg4O7FjTfMZPIbg==
X-Received: by 10.98.58.75 with SMTP id h72mr8842165pfa.209.1521578870860;
        Tue, 20 Mar 2018 13:47:50 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d75sm4581805pga.38.2018.03.20.13.47.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 13:47:49 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [RESEND PATCH] staging: vc04_services: bcm2835-camera: Add blank line after declaration
Date: Tue, 20 Mar 2018 20:47:22 +0000
Message-Id: <1521578856-21390-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Add blank line after declaration. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 0736214..cff7b1e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1270,6 +1270,7 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				 * mismatches.
 				 */
 				int i;
+
 				mask = 1 << V4L2_SCENE_MODE_NONE;
 				for (i = 0;
 				     i < ARRAY_SIZE(scene_configs);
-- 
2.7.4


