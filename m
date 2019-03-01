X-GM-THRID: 6663287446197764096
X-Received: by 2002:a17:902:8648:: with SMTP id y8mr996057plt.38.1551417504366;
        Thu, 28 Feb 2019 21:18:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:47ca:: with SMTP id p71ls3004509pfi.1.gmail; Thu, 28 Feb
 2019 21:18:23 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYiDxzRCZ6P9/wovmsBNCYcM1ZBNNVli+hnmnCySi1+iaA9DiobQ9nzx9DztoTWQGMRe0SS
X-Received: by 2002:a62:d2c4:: with SMTP id c187mr1295119pfg.133.1551417503659;
        Thu, 28 Feb 2019 21:18:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551417503; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5qMe7Vus5QviHS8AtAA3ccAAPUTJPI+BBUSA1Nhgd+9lGYL2PoAkrZM3RVruKQGoH
         qmHy1nWGKd19zFlpBOhas2IwOf7g27Fetfsm+6z7WkpXStvqS6b1dU/H18sN1lbua2yP
         t9MFSZ1DQBr2Z+ZlZ8uf7rF0nJEOsSJ5ROwUHtjE5rbPC+Tsf2k3TttM7BY/Cu34Fxw5
         UchosghU2vJJ9gAPHb31ieWxu2UXNcdB0RgdT/KqojvyqGJm/Fqseuf3X/buYCQJtgK4
         jdj1aIJIK9hVN6rQ8ief2hLZt8zPQ3ZwD4PRNJPi2zJuGO7ZFGGem1v5ZPYUMD4ONce6
         Nt5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MZ9P+P48nYAii+SlD9Cfd9IABYl1F1bP6LgZdp26i4U=;
        b=Sqf/eyQMbKjJEHIor0NbgaBzKNttkhi3Tv/8Pwe6dPAZpIaLeoA19MAVcEpT8oK3Em
         6Q0mSaN4v52x5Mt4LHqGdi25n/FhOaoHPJgheRtLfIReelTSjJwU/CHvlBfdxf5vVK0g
         nAG9RFHgc9cUlns3lo4jEHbbgCkcLDmPFaRHqfo7/vEhPVbYPUgHz364TlIYU2POeE+e
         QpFonVhtxAPiT8ByRAFwj4kKCsmhfUNPoJqNVvjpfmix2GcbDyhD9xBqsWd6bpOJl4R6
         CARjZ6+VxELW2/L3ZAQc/Aba5DJvvKrYatUya1Nl2PHyHJQCktdMisAKgUhipYbeLcE2
         O62A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dvZvq7Or;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d62si701471pgc.5.2019.02.28.21.18.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 21:18:23 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dvZvq7Or;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b2so10857662pgl.9
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 21:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MZ9P+P48nYAii+SlD9Cfd9IABYl1F1bP6LgZdp26i4U=;
        b=dvZvq7OrAY1B6djbHUzh/e+nO8qvinAr0yvY2Wn4eq0vkH5SaIiFfiV9r4B8TEIHHp
         TRhM0iUgHsZN9Hn2p9JopqIJYg+hcRgkuNBW440lwB7hnXNG0BW5p9OBjC4WK1EciIp0
         SsVYI6sFmvLcneJdI8Huxt4b3b/sLqDR9/J2EDoo81LjSySHbVhfCgH060JSlfI/699d
         uuFiqEOzCrV1yQnGVwE0Yo6+bvORQCMPg5br8KnVQZ6Il789IB1xy+L0Qoi2qsisynvy
         f1RFu4Vszk5ME4PCRox0lUkDmGWj60MKSQaWUa9gBTFNJk1CrxPxrV5k41aJS1ez7mK+
         oFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MZ9P+P48nYAii+SlD9Cfd9IABYl1F1bP6LgZdp26i4U=;
        b=F0ck5FFzIvJfpJu8uz2bor2ONH/xCth5Pqwt0FeiddKHM9pL9+MGn6ktPJe+mKzPzn
         zHA04fEAHA3L4VHAN1E+lHZr4+bJnCd6Cq6X/I/KhmwxQgDsQT8Wz2mbeXudiMmePccn
         oqRJqHKGkrrGZgd+4yhuImRxI6KqFPd1XQ4NoJN1MfzqP699P5zobKBeYrpu3iMBzCsC
         6P4GzXOxcIeUeR4xG0YLoOTn+DgSvnrJ7JK56zLL9b+TIRCgjUCu8ycg+gfhXClM0WfF
         UA0dbXQ+9bTp0sovp51hp5UXuRR8aLxNzwbNPny0b352VyVmmC41VS9HUmIzwkIL+rRj
         VghA==
X-Gm-Message-State: AHQUAuZaXfbodMOYstUhg9VZzoBct3zs1eu25nREDtCT7AT5EZ7Pha9P
	A52IiqSNFytrkDWWLCJZNVY=
X-Received: by 2002:a62:b242:: with SMTP id x63mr3725058pfe.4.1551417503426;
        Thu, 28 Feb 2019 21:18:23 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost.localdomain ([112.122.31.150])
        by smtp.googlemail.com with ESMTPSA id a19sm26124818pfo.52.2019.02.28.21.18.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 21:18:22 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Media: imx: Cleanup constant zero preprocessor lines
Date: Fri,  1 Mar 2019 13:18:07 +0800
Message-Id: <20190301051807.14089-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch fixes the checkpatch.pl warning:
WARNING: Consider removing the code enclosed by this #if 0 and its #endif

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 4223f8d418ae..3f43ade226e9 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1081,14 +1081,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
 		 * enters the CSI's however, they are treated internally
 		 * in the IPU as virtual channel 0.
 		 */
-#if 0
-		mutex_unlock(&priv->lock);
-		vc_num = imx_media_find_mipi_csi2_channel(priv->md,
-							  &priv->sd.entity);
-		if (vc_num < 0)
-			return vc_num;
-		mutex_lock(&priv->lock);
-#endif
 		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
 					  &priv->format_mbus[CSI_SINK_PAD]);
 	}
-- 
2.17.1


