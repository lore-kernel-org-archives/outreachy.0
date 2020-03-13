X-GM-THRID: 6803797198848917504
X-Received: by 2002:a92:d842:: with SMTP id h2mr14391608ilq.34.1584136467789;
        Fri, 13 Mar 2020 14:54:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:cf0f:: with SMTP id c15ls3123669ilo.2.gmail; Fri, 13 Mar
 2020 14:54:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtE0XH0kxX+rVRG4dDnyej6dRs6bMq/7v+6hw47RWWFDApZahq0xA9ncGZU35Tn4+/vtWIM
X-Received: by 2002:a92:c50e:: with SMTP id r14mr16159702ilg.52.1584136466515;
        Fri, 13 Mar 2020 14:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584136466; cv=none;
        d=google.com; s=arc-20160816;
        b=sd8mJMr3C16xWgQGI/gHWYdOgEkt4vY8td8+yakQ2hGny41d6JMAMiqDzWLDzGr+XX
         cMab6Nun8i+uxARqlFG7mbCdvx+WFlgG+bC1ViKmZvSxGFnjdFKXDUugyyfIVdbdswMJ
         0QSJlpW2F/zV7vUvRY6CyT8/TYN3n67N7+fCJ1SuoI7Vz0aeBaa8SwX0UiKGKG8bRdPz
         7SVE4WgqjgiY0uChb/uX1arwlsAqs1pd9Q++3iCPp+lrfKhWCh96vhM0e5J2LR7UeCFn
         o72uSqkhBQZBiHdX/ka1EKDWajhFvk7iGHr0TkvNa7faVdi1rhiTUrQlNSc04W9JpOjJ
         RRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=LWqp8lCL1uffHil6B2ZXNucYg5cBJNbMrdKGr/WNt3c=;
        b=q2qgajVC0bTpusnicdysrBZ75SYuTqJ8w12ap6COUQyfw57VYppUJfeSqLv+Tde7Ch
         no6PU3X/FyOg33yQKiBZEV/8xCgSHDRd6oWJNZu5ivBWtYAQXzlyulwkFTSX4AYRZJUO
         /uUSybHrbpwcbOYFIOGt78IROgxYDEm8dxlybY+nBq+q9rJyIGcyivsRW8UBUeN8bbCN
         PNIsObo5HAoip4S3gRs0k+bnQ2MH+s8WUHrVJiAUF8fWFQhpecv92p8FHHDJbkg/cxBU
         tzCBFadS1JWll5Ys/8RD5L6lwT6Ubjfso8e1xpjpPB9dDjgkia52thdZrsfQfmOiEUGm
         N7tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=SAUQfuzq;
       spf=neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v13si448195ilg.4.2020.03.13.14.54.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:54:25 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=SAUQfuzq;
       spf=neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x444.google.com with SMTP id l184so6060847pfl.7
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LWqp8lCL1uffHil6B2ZXNucYg5cBJNbMrdKGr/WNt3c=;
        b=SAUQfuzqPvSSdh0R/frszSPpblV/Ynn24e/2jzeoohnv7MLSpYf5GdGtsxthAYzVK5
         +mxdXGEtjTIoQw3wTGWAfBBLEXQg0G4x3/ncjGJ9D8iZLeCymgmNhXmWggWMKKkLSr9+
         7zgXcVP4jyMEmHr4U98GL5wkw+Xp5lU+4mmvbAIsE74ZsMCUE+Tusiinm2di1pnY2u7n
         9cNDvUSFCFMp7L+8X5krxg4D0ZaLnM05mV8BFRPpfQS64xYSYKR2ryDna2Wvmxm2Smrl
         rKzEI47V080JBRbxsIDZBIpI40d3WLR2erROTywPlyhWBgj4d7vzkNh2xDNaZF8pZFNT
         xgGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LWqp8lCL1uffHil6B2ZXNucYg5cBJNbMrdKGr/WNt3c=;
        b=uRcjc1VaEj5wF/tYArDaPVd6ciY02BIy1mabSBIkVgv+4zlPiuk+K+JoGs+0GuIRUt
         2ezFJBeenft+sJlEdDpaDp2h8S69CTrctoc3ubmmslsTXD++YFDBZ6WoBumaFuczV7pj
         0tpPY0X3vch8A3V1+F4T+p/BWzauD0WBru1iWMftfBFdSX1AymWWqIUYhNyvJcYgLIXn
         Fkm3Cx70VIIK5h0mHWhUjxGirxkMvwKvxW9he7HsCBnGDtcK4MctIGb3a9iMbS1LXqVu
         p8WEda+4/MIDaalYzaSyvcQ+HmP7U7r8BDVbHMi1akGHbsGLyydMjpG4fC9DqxG8Xg68
         reGg==
X-Gm-Message-State: ANhLgQ1v/5/wFVVOM5AX8g6tvT6ZNp0/IDAHLHeaPbiTDy9u2oyptj3Y
	G0uV20qWfc4IiHYuCGWMUyv5sQ==
X-Received: by 2002:a65:638e:: with SMTP id h14mr14871363pgv.433.1584136465016;
        Fri, 13 Mar 2020 14:54:25 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id s25sm32199973pfe.147.2020.03.13.14.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 14:54:24 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH v2 1/4] staging: media: allegro: align with parenthesis
Date: Sat, 14 Mar 2020 03:24:03 +0530
Message-Id: <20200313215406.2485-2-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
References: <20200313215406.2485-1-kgupta@es.iitr.ac.in>

Align the lines of allegro-core.c with open parenthesis by giving proper
tabs and thereby fix checkpatch.pl warnings of matching alignment with
open parenthesis. Do it only for lines where character limit doesn't
exceed 80 characters.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 0a09b3622e78..1162cc38f3fc 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -2324,10 +2324,10 @@ static int allegro_open(struct file *file)
 			0, ALLEGRO_GOP_SIZE_MAX,
 			1, channel->gop_size);
 	v4l2_ctrl_new_std(handler,
-			&allegro_ctrl_ops,
-			V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
-			1, 32,
-			1, 1);
+			  &allegro_ctrl_ops,
+			  V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
+			  1, 32,
+			  1, 1);
 	channel->fh.ctrl_handler = handler;
 
 	channel->mcu_channel_id = -1;
@@ -2933,8 +2933,8 @@ static int allegro_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 	sram_regs = devm_ioremap(&pdev->dev,
-					 sram_res->start,
-					 resource_size(sram_res));
+				 sram_res->start,
+				 resource_size(sram_res));
 	if (IS_ERR(sram_regs)) {
 		dev_err(&pdev->dev, "failed to map sram\n");
 		return PTR_ERR(sram_regs);
-- 
2.17.1


