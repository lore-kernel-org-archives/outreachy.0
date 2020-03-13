X-GM-THRID: 6803797661564534784
X-Received: by 2002:a2e:9017:: with SMTP id h23mr7342132ljg.144.1584132589200;
        Fri, 13 Mar 2020 13:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c795:: with SMTP id x143ls532277lff.10.gmail; Fri, 13
 Mar 2020 13:49:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuDNJoe1V3Bd8Kb8ed21Tm6i5LkLEbjHJlEj+aU2wf0Lvq1w0vqGO3vk78ZT0/TTiX01z3p
X-Received: by 2002:a19:be44:: with SMTP id o65mr9563424lff.116.1584132587726;
        Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132587; cv=none;
        d=google.com; s=arc-20160816;
        b=Jee1aOFdrzQPfKdGZRj0rk26aEZ+uBWu6Kpk3vl1OVLeukMRtnC0JneJybkWhmBPIA
         oaiiTyaelQbtWZtDcsjZFdO6ygTtETY3uAx7yQErbuBlEz8S3HQKLTHvuwLjLhJORtA9
         YC/DQNs69++IAsKn4f783jEpNSB/2QSxNsGaaTFIAjXdHy+5fGVFLYbFremTh+09Knvu
         LVJjuEDOlP8rsxYwyKMPkime0hRMDAKoqqpxnTKs0Qk+/kMQl9H4+G5nV065xyDCxyDh
         vcMMyBVC1wY9jdJMojNTuzYwfj+SipQbcm8hz8rCyMm6xGvekTiBljYl0uYvMSweDSJH
         J2Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:to:from:dkim-signature;
        bh=yr9RuXXL7lyUsPh3upsNFg+GKJlv5MhtRMnD7MXf2Qg=;
        b=OTi8Ufl+EZbLYblSppMnVdA+rMkdglZxVp+KZxJpFqO70sxcs7J80ICppCZQRX3t4+
         m9TT5SheRw7BF23aRchFezB/LFES8NXlXQFruG3MSt1SothyuUFtsyYjR1XMmKIJGBvq
         S6eizTQIZ2zbs4FRL2frMr42TBeUM1CZrJYg1kuwMQyz4DQ6Gr2iGFYTehXhHXbEvkyy
         MaG+CcwRlN4Pm8IhD2PJMUAMC3kbVOmMvFSxZ/zdpY+260yWoBCA/xZOGyfiGf/Qx83F
         pRAnNcSJeZ9Pz0O91/j5m+F7Ta/HgDQaE1SAcP671jlJZ1PhShHPXprdL55nMBzHaVQ8
         AaFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=jlOoL0Mm;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u8si438292lfu.3.2020.03.13.13.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=jlOoL0Mm;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id r15so13805795wrx.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=yr9RuXXL7lyUsPh3upsNFg+GKJlv5MhtRMnD7MXf2Qg=;
        b=jlOoL0MmtpfSs7whVFFQ1u9oaaIz4DZnyB5UfHN5LBCrCooX4tRbkGdLAafc1fabt4
         dqi0uezmt4EXOIENj2RngSCqwJDC7G6TfhjvitAvbWnBp54E/SNfbr9pv0DGhLAl11QN
         UK9mibLv9gWSTVjI5AK/9mLK1jBvOBpTGgS9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yr9RuXXL7lyUsPh3upsNFg+GKJlv5MhtRMnD7MXf2Qg=;
        b=i0fUH/SywioY6E9rtM+tQAYPJAR7uz2mrHebkKOmJOXphyr1i6czwaFuG6vun8PNYR
         OSEVOpVJfdvti295pTWQFc3VT/0OIZA1+Qd0oMkompgTuI1EipGslDBQTadEhWvAkCN9
         fyqaySowhbcam7RQBLklSwauhb01NKrD3JF6ZX0ruH1+r1ASW6zz0g/SA+HDDN37j7eI
         NguZoDK+SYBQNYngJwvgFS16efNHiJ3dVwYrhVHZOYpGr6qMpD/VNe+6boa6pvGlJY1S
         WGy/3G+sGi4IcMSE3m4rBIalwedhrGUItreDy5fwyFpzd9RgwEK6Gd7XkaZqBum4c6ie
         kkjQ==
X-Gm-Message-State: ANhLgQ2xyuSESrpGKuHPPn/RFXisn2eeu5OqPyB0pcFJlCFTmZsJ1SQg
	vTRqSao5FXlqCknIQCSEye07QkOVQRkn3Q==
X-Received: by 2002:adf:afdb:: with SMTP id y27mr19988174wrd.208.1584132586942;
        Fri, 13 Mar 2020 13:49:46 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id 61sm32240149wrd.58.2020.03.13.13.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:49:46 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	rmfrfs@gmail.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	vireshk@kernel.org
Subject: [PATCH 1/2] staging: greybus: gpio: improve bit fields formatting.
Date: Fri, 13 Mar 2020 21:49:36 +0100
Message-Id: <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584131593.git.lu@pplo.net>
References: <cover.1584131593.git.lu@pplo.net>
In-Reply-To: <cover.1584131593.git.lu@pplo.net>
References: <cover.1584131593.git.lu@pplo.net>

Fix the formatting of bit fields on structure gb_gpio_line, in order to
not confuse them with unindented labels.
Issue found with checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/greybus/gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
index 36d99f9e419e..50e93a393dba 100644
--- a/drivers/staging/greybus/gpio.c
+++ b/drivers/staging/greybus/gpio.c
@@ -20,9 +20,9 @@
 struct gb_gpio_line {
 	/* The following has to be an array of line_max entries */
 	/* --> make them just a flags field */
-	u8			active:    1,
+	u8			active: 1,
 				direction: 1,	/* 0 = output, 1 = input */
-				value:     1;	/* 0 = low, 1 = high */
+				value: 1;	/* 0 = low, 1 = high */
 	u16			debounce_usec;
 
 	u8			irq_type;
-- 
2.17.1


