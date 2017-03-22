X-GM-THRID: 6400174624352501760
X-Received: by 10.99.135.193 with SMTP id i184mr12094351pge.133.1490156792232;
        Tue, 21 Mar 2017 21:26:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.66 with SMTP id 60ls892451otr.45.gmail; Tue, 21 Mar
 2017 21:26:31 -0700 (PDT)
X-Received: by 10.157.80.152 with SMTP id b24mr17928488oth.31.1490156791816;
        Tue, 21 Mar 2017 21:26:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si38166pfa.6.2017.03.21.21.26.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 21:26:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n11so13508375pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 21:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/45tiwI0RlIm4n8OoljvepTR0WZcJ7uAHFOFRJoVUxg=;
        b=msJkMToxFVZhsieVcLkPpJ5wHqKh6WA0ale7NZqS58aERRGrdWPpzTCsHDgdaxJzYc
         TJa1cCPmLTan3N98q7C1mA0otl5Re6yJB70opkvl/8d5RFAwKLLAFJtUhWY3eKwOeJPb
         L2B9h3BVEWHcNX7Hf47GG+A0FzHFjbIIgGKWrVbcdRHDprKpBGgAYW4QYI79b0HGISe6
         2DPjrSfwMzXYdVhiyzdT5ib6Ml/boMtiCvn6YOqJkuqVyUEqkS1xCN3VsNEwkUknKGa8
         968MMojRTjX5WAKhxMbNbEmphYORQjTLSlrSAGs40xtOzKwnrTrTEv240nkDVUxF9zse
         5GgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/45tiwI0RlIm4n8OoljvepTR0WZcJ7uAHFOFRJoVUxg=;
        b=oP8noElmQvkJvE6RwZKgJoHwP2f0DF/tbN8twR3vrlwmxpJT2K5hCCmlWjVvROpz7p
         4xaFBdt1gk/EsbNf9WQNt/NI9q9zMAdP/y2GLiDPuMtrxPYKaijbZMsM0Zl+R7ZWxaKJ
         pdadowKP9ki3WAz5TNToo2802XuLlOilCUvpkamxsRHgC8hNpqWReDMfbHbZ4TtIOGN1
         lZ+WwVP0t6DcayDQOE93k79mpgBXIDyBQa2X9duXd9M+EH1SFpJMInXthl34ic8369L9
         usiHaGGWFvc670LKk+IrjKG0XZuK4D91X8PwEJv7X/rqkHH0rq2JmVFuuFZMVrIltaOU
         cT/g==
X-Gm-Message-State: AFeK/H0GLK9Izm0ZVigdKPWZ+gl47mSwn/lTB/3pFqarfh1wLxmEjjBKzPrTieKYZg4Oqw==
X-Received: by 10.98.51.198 with SMTP id z189mr43638141pfz.68.1490156791550;
        Tue, 21 Mar 2017 21:26:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x63sm399480pgb.30.2017.03.21.21.26.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 21:26:30 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-media@vger.kernel.org,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/3] staging: media: omap4iss: Replace a bit shift by a use of BIT.
Date: Wed, 22 Mar 2017 09:56:09 +0530
Message-Id: <20170322042609.23525-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170322042609.23525-1-arushisinghal19971997@gmail.com>
References: <20170322042609.23525-1-arushisinghal19971997@gmail.com>

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/media/omap4iss/iss_csi2.c    | 2 +-
 drivers/staging/media/omap4iss/iss_ipipe.c   | 2 +-
 drivers/staging/media/omap4iss/iss_ipipeif.c | 2 +-
 drivers/staging/media/omap4iss/iss_resizer.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
index f71d5f2f179f..f6acc541e8a2 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -1268,7 +1268,7 @@ static int csi2_init_entities(struct iss_csi2_device *csi2, const char *subname)
 	snprintf(name, sizeof(name), "CSI2%s", subname);
 	snprintf(sd->name, sizeof(sd->name), "OMAP4 ISS %s", name);
 
-	sd->grp_id = 1 << 16;	/* group ID for iss subdevs */
+	sd->grp_id = BIT(16);	/* group ID for iss subdevs */
 	v4l2_set_subdevdata(sd, csi2);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
diff --git a/drivers/staging/media/omap4iss/iss_ipipe.c b/drivers/staging/media/omap4iss/iss_ipipe.c
index d38782e8e84c..d86ef8a031f2 100644
--- a/drivers/staging/media/omap4iss/iss_ipipe.c
+++ b/drivers/staging/media/omap4iss/iss_ipipe.c
@@ -508,7 +508,7 @@ static int ipipe_init_entities(struct iss_ipipe_device *ipipe)
 	v4l2_subdev_init(sd, &ipipe_v4l2_ops);
 	sd->internal_ops = &ipipe_v4l2_internal_ops;
 	strlcpy(sd->name, "OMAP4 ISS ISP IPIPE", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for iss subdevs */
+	sd->grp_id = BIT(16);	/* group ID for iss subdevs */
 	v4l2_set_subdevdata(sd, ipipe);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.c b/drivers/staging/media/omap4iss/iss_ipipeif.c
index 23de8330731d..cb88b2bd0d82 100644
--- a/drivers/staging/media/omap4iss/iss_ipipeif.c
+++ b/drivers/staging/media/omap4iss/iss_ipipeif.c
@@ -739,7 +739,7 @@ static int ipipeif_init_entities(struct iss_ipipeif_device *ipipeif)
 	v4l2_subdev_init(sd, &ipipeif_v4l2_ops);
 	sd->internal_ops = &ipipeif_v4l2_internal_ops;
 	strlcpy(sd->name, "OMAP4 ISS ISP IPIPEIF", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for iss subdevs */
+	sd->grp_id = BIT(16);	/* group ID for iss subdevs */
 	v4l2_set_subdevdata(sd, ipipeif);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
diff --git a/drivers/staging/media/omap4iss/iss_resizer.c b/drivers/staging/media/omap4iss/iss_resizer.c
index f1d352c711d5..4bbfa20b3c38 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.c
+++ b/drivers/staging/media/omap4iss/iss_resizer.c
@@ -782,7 +782,7 @@ static int resizer_init_entities(struct iss_resizer_device *resizer)
 	v4l2_subdev_init(sd, &resizer_v4l2_ops);
 	sd->internal_ops = &resizer_v4l2_internal_ops;
 	strlcpy(sd->name, "OMAP4 ISS ISP resizer", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for iss subdevs */
+	sd->grp_id = BIT(16);	/* group ID for iss subdevs */
 	v4l2_set_subdevdata(sd, resizer);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
-- 
2.11.0


