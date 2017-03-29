X-GM-THRID: 6402936544164839424
X-Received: by 10.99.119.11 with SMTP id s11mr301997pgc.160.1490799836629;
        Wed, 29 Mar 2017 08:03:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.116 with SMTP id p49ls7442763otp.4.gmail; Wed, 29 Mar
 2017 08:03:56 -0700 (PDT)
X-Received: by 10.129.157.75 with SMTP id u72mr312754ywg.11.1490799836132;
        Wed, 29 Mar 2017 08:03:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s67si1104919pfs.4.2017.03.29.08.03.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 08:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so2191387pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 08:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/45tiwI0RlIm4n8OoljvepTR0WZcJ7uAHFOFRJoVUxg=;
        b=OLFUoHHrSKR8tzss5ozlgIN2Aw+TUOMZPRu9Cz0g8Uw0yHL0ByzI6lhwX2coFkWFv1
         5oJBPs+x5JY9pANElUVgB+5HhN2hrihXfdQ4OimDPWeXFaU349pFGef0RGND5XNd0kNg
         WWfhhbSkMl2vyvCEJ5iQJ9MFX3U8yTLIP8w1Bxo9Q6FAESa1CqHM6vpTqfXXOktwsWHz
         rupfS6HhhERQ1Z+WR7+KvNZw/JeEk+zW6p0kwDKICuKHg8n/1KHVd2bAI8l/ew+32Iw5
         7O3wtValcS/4ooHYdsF6hIvqqvtbAqGmQWEi/0G8nqF+Bgu7v10r+2UoReQqHibB5R5r
         GN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/45tiwI0RlIm4n8OoljvepTR0WZcJ7uAHFOFRJoVUxg=;
        b=tAeOCn5c2ADn85TEpUex9Aioh5aK3el+rXeJXxhvoo5/aUKFPHaeePOB5/tNaoxxEG
         hCExHy4lmDvzgMvlq35yGJxdWj3IG/+JwuSK4I3U+EbU8IdIflSNLrFiOd3yunb8BBTr
         KSBqMeGKH52Z3axm5+Z1bHm4pHizTEmcREg3ky2SCvKKRPqAQtOXseY+n7OR4iXAjfoR
         pMjI2OBLxfRalKCGQ7eaEG7wh/cg+MkFDrLU5kuyfBZw7BX6CBOPOvL87A1qSKiuf+io
         resHzKgzmPMQYOqFlR85CWzA8KAZnKsEeAyeF/nSh1tdwW0vGLAZdAUMivbkLWaejYz8
         ZdSg==
X-Gm-Message-State: AFeK/H0h+jQ9GPlVrL4TIyIDZudocm3OFV1OR8hBLfIBo6xbHCDzcj1QHw1C4VwyI9jtvQ==
X-Received: by 10.84.138.193 with SMTP id 59mr1087487plp.167.1490799835819;
        Wed, 29 Mar 2017 08:03:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y186sm14211944pfg.52.2017.03.29.08.03.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 08:03:54 -0700 (PDT)
Date: Wed, 29 Mar 2017 20:33:51 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] staging: media: omap4iss: Replace a bit shift by a
 use of BIT
Message-ID: <20170329150351.GA3203@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

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


