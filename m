X-GM-THRID: 6532871168257425408
X-Received: by 10.55.178.66 with SMTP id b63mr8281156qkf.15.1521467530650;
        Mon, 19 Mar 2018 06:52:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.181.69 with SMTP id e66ls4457176qkf.5.gmail; Mon, 19 Mar
 2018 06:52:09 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtWZr41ngJwTunP07A/NujNUfjMT8ud6esRmAQffR7gd20o58aOxEqyyn/nTl8VpFnmCHN0
X-Received: by 10.55.78.200 with SMTP id c191mr7991136qkb.21.1521467529661;
        Mon, 19 Mar 2018 06:52:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521467529; cv=none;
        d=google.com; s=arc-20160816;
        b=Aerbjfc5mdMhmsmE5BqTcTA+k8jEtq2fXAIIYA2fZYJ0hMwp/LuP+A+xmZ2tQnlQOS
         iFsjNYhASpiF/H8VO0J6GadX/IJloQD1A9cNxWTBKqFuBiH2XikqrXSR6x0T+dY4jHS/
         sXKBEieUOt9wWHEVpC0uTENKxx1gjAdYn3Bg+cIooWSt4hWRV3d5jDyoJqVrnxHhWmTV
         vfaFt5oQzTvPJ3eC1sd8/X6lqIsC/jNf4pCXdFEUchi0h+uSUDzHf4kxu8KPJ+ORlrXL
         LjunnSPEWHrf0eB3d9G0twxH70OXuSUMUNF30lCeSDZSmOyg5Rf1dNoS9kHzLC1p4Rr0
         M9DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=CKbptveAtOg//tjLbBMBgoAg2AT9g01GaDuLoq3nV7T99P37b5rdjSu3fW4/TqcTsp
         FgF+FBGdWrKjUFhc27+0S/4UDTWh1AXSBWecXeA3TA5BKAIF3tkZaoYsa0bg2sZcp9jd
         YaZ1eg6EG1BKfgjkCBih+KdceI5SaFqr8ejxdkJ4VON1HcVSdf1ybo2gOj8TJdSQe8Fx
         xVWfXSxBOds7yEdBes8PdOBJo1PXScG5fJcu/ofuswHwpQq6KxBuUKTLzVTxTd2sMKXW
         EHlm10TJkPbRSDTDh9g0UV5fJXqVnMXb7lwYgJ4AzTp5eobsXfWF8ylbUN52hYSXxCGz
         YwEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JggyowBM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z15si4116qti.3.2018.03.19.06.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 06:52:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JggyowBM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x242.google.com with SMTP id f80so7028114pfa.8
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 06:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=JggyowBM4wlUATe5A/cim9pD9XM797lOO1Dyz4FrbjMUIm/IN2AufX08frwFWlQYLO
         56X5pwDQ1B+Y1wnnUAl04QmszyBNRmDCCX+f0xrRshuJmyiPAKV6NKSjHIbCtXZwM7fO
         lUmB1w1UR87cL4AAH37lq5/KHanLFxsgzPu8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=hGBeuNV/EQui3RjFuLzwqcQoN23CZm0CVVMMZ2pa7brRQjSSqR3/XeX5OHqKcRIGSF
         5DC2r2aiVqPx1sMqo+IHnL91Q0OkQ2VHU+ONTAbNxycDVDGVzuMyOY/VqDCUQUEt1kI0
         He5SEoPjAQqZ9U8FB/aknne9vqKOikjXVZAP9YCAFhARBxhd3vDwJhIcw8WuWA1q9+6K
         aBTs/9gR7veV1u5TGjJDKLphHJrqubUuaRHJHs0SolxEe6mzkhbRWf3oNS3zTakmSOMH
         5pFyncndpqJXUD2MqGb+r0ryBV0LEF3eegErTfEI60DIlzlaUL8Nx22UyDN+6CZUzk3W
         EA0w==
X-Gm-Message-State: AElRT7E4Ju6SY+h4R1y4RMWJkRTOwpwOvQ37w1nQpMZMUW0lv9WVh2Wc
	zSz2AypfNuL5hCgUw01ousicO0O+
X-Received: by 10.98.206.77 with SMTP id y74mr1502229pfg.205.1521467528463;
        Mon, 19 Mar 2018 06:52:08 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id t8sm119444pgu.48.2018.03.19.06.52.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Mar 2018 06:52:07 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [RESEND PATCH] staging: vc04_services: bcm2835-camera: Add blank line after declaration
Date: Mon, 19 Mar 2018 13:51:44 +0000
Message-Id: <1521467506-26815-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
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


