X-GM-THRID: 6532041434877394944
X-Received: by 2002:a17:902:1a2:: with SMTP id b31-v6mr1753815plb.17.1520859411843;
        Mon, 12 Mar 2018 05:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b109:: with SMTP id q9-v6ls5142650plr.11.gmail; Mon,
 12 Mar 2018 05:56:50 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsqVq4E+zloYBOrOkws8ZWB8fKTBs1a+KAHGokLpY9CTU6Ie12fqCM72oMhUAwUPDEUmzPg
X-Received: by 2002:a17:902:7c0d:: with SMTP id x13-v6mr1786320pll.14.1520859410629;
        Mon, 12 Mar 2018 05:56:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520859410; cv=none;
        d=google.com; s=arc-20160816;
        b=fDyRtcAO27sjeiPdGUgHbIQtvx8Kxjc7CG1+YeKX+fo+tzLlR7c6AxufPqPZdqOuks
         Rap7g+96YJFugDbuMEdeomlaet4zcws2GlVZcRja1rJECS0mf0o9ZpYT0NslsF3VRBAK
         yNBFMD7rkzkUrnwsKK3j3JHRtF0H/Tc5BqMV4x0ny4+wcdT6p5Rc10z6llITVVIs0VbZ
         sHfiNdmctCT3n/gMeeo6StfjSuIPRotZ6JEPrAu9OohcOzrRRS9iZU8x8b9XrZi4ojBH
         SCbO4UXkFoEcAj7QgNCHY2zUugc0g9qIWa4EuuEOfo16Q92kHlLk7Ld4c1G7LyuC0tOM
         +1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=taYygoCRG2Ug3sIrDBD5TyCa1WuyBBHigXqhtVNhK0c=;
        b=RqunLcJg4LSy8ucm6/EwGTbtiYL++kmb6C9m7JnQ6ld3v9nwfxP1NnXhx+lDHiP5NN
         89Y5BeVbkHnNZinnhzSAzhlKGnzi4qulyUNGv3V796tkW32DF+1JFaDkXj4GhEh51D4T
         1cTSs83fwrv6/RIvf1RagaSh4FmHQPrUOfnlU4GAXpQ78ztV1e4AQwNPhlM2OGGEphBl
         qn+cEJTfmwOl70YoomtF+N0qS5on9FlI6SENZQbs+NHaa5WG/z6O7jllMkJq/c7Qxe9t
         KSACkq4yyQrIfa/5r0QMnNDRhLGS+fM9B1oODe0kzUaZLeDHHwxg5qaPeUCWUlEso7M9
         J1lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CNYRf5Dv;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e70si588300pfb.4.2018.03.12.05.56.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 05:56:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CNYRf5Dv;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x243.google.com with SMTP id h19so4276831pfd.12
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Mar 2018 05:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=taYygoCRG2Ug3sIrDBD5TyCa1WuyBBHigXqhtVNhK0c=;
        b=CNYRf5DvTVAWCe8zM63Lb/lrAJ0F1FlDzldvh5R72TfmCNempA2vNdbIRdHqPOpfIe
         eoAVYEZFV3fcESwV/Re+yuyS0dGgYY+selicVM0Go0uXxyh48ufiJdvjGgDvRbZqNuOg
         envNMxgnuBxWozyzu+fOj8C9ub21iQRCdrS6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=taYygoCRG2Ug3sIrDBD5TyCa1WuyBBHigXqhtVNhK0c=;
        b=rpYhUpkFj38MbcnBehESl/3w7YqW1Du7CyDnmquOW12B1iMUHsZvpVPl00e/CNbcI0
         YFnvlwito4NPLDzxb1KtXFmsun59TgPQHqM5eUMBXydEqY6NCjjyqAUqdXIIshuYKkkV
         2WnNfk+PWy677Z9ZXzELVSkjH8B6GC/hO/U6ep/xJ0hmKk0U7np/xEchNUDOYy8sfIJk
         +GO1hfPfTc9Nb+CdM4pkVwuun0C5BnoooLSLzsDOdSX/EJxz7yC264WjaIP4TUztPSJr
         xznllhLW0SgaLOgB3HEeE/Wr0hWFIfMbdZw7TA5ou2IRNiTQRQsNO+iisZiQI9cwHTeq
         k5hQ==
X-Gm-Message-State: AElRT7FtqejswDvoX8RppiNTh00kQf0MOwo/cN2bwAPBs6eg4DVIEmyg
	eJoc2XS9w2vRVmY9wzpshcpg9w==
X-Received: by 10.98.93.193 with SMTP id n62mr7939361pfj.83.1520859410133;
        Mon, 12 Mar 2018 05:56:50 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id j185sm14390885pgc.79.2018.03.12.05.56.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Mar 2018 05:56:49 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: media: davinci_vpfe: Fix line break
Date: Mon, 12 Mar 2018 12:56:37 +0000
Message-Id: <1520859397-31387-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Break line after operator instead of in the middle of a variable name.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 46fd2c7..9376c6a 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -922,8 +922,8 @@ ipipeif_link_setup(struct media_entity *entity, const struct media_pad *local,
 		if (remote->entity == &vpfe->vpfe_ipipe.subdev.entity)
 			/* connencted to ipipe */
 			ipipeif->output = IPIPEIF_OUTPUT_IPIPE;
-		else if (remote->entity == &vpfe->vpfe_resizer.
-			crop_resizer.subdev.entity)
+		else if (remote->entity ==
+				&vpfe->vpfe_resizer.crop_resizer.subdev.entity)
 			/* connected to resizer */
 			ipipeif->output = IPIPEIF_OUTPUT_RESIZER;
 		else
-- 
2.7.4


