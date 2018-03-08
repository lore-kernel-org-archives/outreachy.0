X-GM-THRID: 6530656197776769024
X-Received: by 2002:a17:902:8501:: with SMTP id bj1-v6mr5355641plb.8.1520536886153;
        Thu, 08 Mar 2018 11:21:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.98.203 with SMTP id m11ls1105262pgv.23.gmail; Thu, 08 Mar
 2018 11:21:24 -0800 (PST)
X-Google-Smtp-Source: AG47ELt8rRbwu7CX81HX3RxRHHVE/1NUDdyCeU4hLQKqryimcbyBok5ae1t6d3T7nHAG4XSVVlZf
X-Received: by 10.99.175.70 with SMTP id s6mr5453916pgo.15.1520536884691;
        Thu, 08 Mar 2018 11:21:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520536884; cv=none;
        d=google.com; s=arc-20160816;
        b=txnjKombU8bSII6gElalWrW5CAcCf39c6LhprDanVnzF81sGyM51kaYsW6qN+Gw1LR
         pZnzleRnGDYiL1uPl+HUhGGEx90mLOLyoCbF+D3PTK1yZuaDO5s5S+3kgd163bB7+gnU
         ozC4sCy9J0KCKFj95Ja/sFQJjsAYDeOHU76P1mOS0p4V6BDZzd2xivYM/hCh/wVSEQkG
         cSVPjgud7GOQAP9hqBVrFbooss+UCQevIeeyprzJ2aVvRmR6doziqs0HMghVPn9+bivV
         /Tia1qSniH7gH39xmYCwLMpDFLgCbSiyAFWrIL3bXRA4+8f1+fri9rzOUrDZKQdIIWOw
         XuaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=H69AxVOcnjZRsFWhRDXI1Hwuc/wRuYacfuDJJ+ZaWpU=;
        b=YfU5kGWWPpOYtGfwJPwTx4i/B4I2r8CvCtEW6CidXC0afI8foUODdFouMpkKI2PnrX
         4Fu9nHqAZMsRE8WVoBSD7OoSCFG2cP/dj5zz3jXRVW6EhwMaL3MabRQqJ/KP3mYHS3BI
         shAyKo22zuUaExhELXpVTCkaSvNaOrRuP9L8ZSvNbRkmLIRWc7RLbtRv6rUAi3EEOymJ
         yirGMzbdyQapiRvyhmOstmEm/IDC6J5le966tRE4ELeQJCt0GuMhxZ4/LGzBViIvUu/V
         WK9rEEy7kzKgTUh2a7wZyMA9g1UrMdMn7uqXE8jUR72URnkkhZSJx3M4X9DzkRXjzlUF
         3UYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Ebq3evCm;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id p6si1008507pgq.5.2018.03.08.11.21.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:21:24 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Ebq3evCm;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x22d.google.com with SMTP id l24so2599901pgc.5
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 11:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=H69AxVOcnjZRsFWhRDXI1Hwuc/wRuYacfuDJJ+ZaWpU=;
        b=Ebq3evCmBazY0/vbRO52eCE6y7z8zrsY/PTYbj+/fXwJ9AXLo2pJfudKAo+Hb615N9
         zYcRecNFibO/j2e2CBJ9k8B8+xMzy4ol/6aP2emhslgR7l9DjhPB6ulrujvqXYdXLC7V
         Nh20JTVCtzT9FyVwLfLSto+bkdNvB3ZiEBgkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=H69AxVOcnjZRsFWhRDXI1Hwuc/wRuYacfuDJJ+ZaWpU=;
        b=uUKBzHffiUmve6H8V1+0yCcpJX5dqdqMwtuViKWUtnRNfPd+i+7yr6j+vEvDCeXMPJ
         g+Fj3P9EIRodA/4m/uYgM5JWGLgr0hs2io3clHOewSRi0EvKY9klpy3L6VKnGwxJ1vw2
         +hvIZ7pPqkQQRgIcuu/rW8EGyfSmen0/oxaMPumUTZIu1i/6N/NdhL7GgUedd6fqABqn
         u0x/Hcs4FMcJWAF79HwkTfU2b5aHpj+7eMzLZl+MDD98w9WzbHV3YRm10EiLUtahPrFf
         reLWJhhxRk5ywzEd/Tg8NgNnkMRHZbRcB4y7p2otzav1H4lChCtHgVspQy3hDQm9GYVx
         //1Q==
X-Gm-Message-State: APf1xPB7ufrlFGqfD+VhIasT40Gb0GSAN6PgyEhdcZTo/KXw96Ewc5Yx
	kVOinCaOYT367bugequESyyCTw==
X-Received: by 10.98.133.86 with SMTP id u83mr27473630pfd.172.1520536884107;
        Thu, 08 Mar 2018 11:21:24 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id j25sm36381817pgn.92.2018.03.08.11.21.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Mar 2018 11:21:23 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Date: Fri,  9 Mar 2018 00:51:16 +0530
Message-Id: <1520536876-14181-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/speakup/kobjects.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index f1f9022..bd7cfab 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -120,6 +120,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 	ssize_t retval = count;
 	unsigned long flags;
 	unsigned long index = 0;
+	unsigned long val = 0;
 	int charclass = 0;
 	int received = 0;
 	int used = 0;
@@ -154,7 +155,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		index = kstrtoul(cp, 10, &val);
 		if (index > 255) {
 			rejected++;
 			cp = linefeed + 1;
-- 
1.9.1


