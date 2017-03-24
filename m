X-GM-THRID: 6400174624352501760
X-Received: by 10.99.119.11 with SMTP id s11mr2698974pgc.160.1490371312577;
        Fri, 24 Mar 2017 09:01:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls8489610otb.38.gmail; Fri, 24 Mar
 2017 09:01:52 -0700 (PDT)
X-Received: by 10.176.68.66 with SMTP id m60mr2400016uam.18.1490371312075;
        Fri, 24 Mar 2017 09:01:52 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s67si550031pfs.4.2017.03.24.09.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 09:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so1251832pgf.0
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 09:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=39e2CW+lkb3GGnYxKgsFMlYH9CVfYxLzB2LUx2lvNwg=;
        b=oW77PC2d+BMF3XFsXfCizvGlRQBFJCkaZfZhQeTqX76lqCgN/uoj+0IaLKja1VV5bv
         34qHUXUKQU5AvigyRlkJDlFEDxvBzlYGEBw7O2y988lsXPYwR3bSqumY8Z0BxYDzpzQc
         KTWyO2LjbDXcv9d2Ha/HsK41kBXcqZCNeggWQy5piMU3wCIkZ3Qp8oW4qYZHxswujSr6
         enQMWdAiC6UbE5Hfu9tbAvq29f/485DYGABmGvub6Cg0z7ZP67QzC+uKzaML6DdM+osl
         Rvso1hRTvuIKuMfN+aInS1R+aJ9a7iiiSD/nadIxtQ16sbGd931v1+aNJwGH+1v+e/B2
         gOsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=39e2CW+lkb3GGnYxKgsFMlYH9CVfYxLzB2LUx2lvNwg=;
        b=FlnhX7NWLGSjWrj1vuYcL+rpN4gnUjIhg0k8epewy5zuFpzSpNkugpS+HN6Pf+TkkA
         OC/WCPD19/8irSa9qq7b0SOs5dxkMWoWaUtAqzg12usBXUGjJOhyDw2ZuntRtb2ERQNZ
         TzbSd1XH9MmnK9/GwAwq6CRj9ROMUo7DddILkhFxPhYZrlxEZ0tkYnbxudHohcif+ziU
         3/o6JNjC+hxbcBo2qGaEE8DT8xlJMhiQt/fBHWQquzmdkGH8kAyGKrbpNbVwQj+D7mqU
         HZdYiwVhNqkMTGL7jh5shx2xLnNqP8oej7Z8Arx4KBK/5udNcDemNnJl/Cwr+BvRAAPl
         5+kQ==
X-Gm-Message-State: AFeK/H2LZ05QED5Nu4HO+r7vlmFYevuKm11m/eBOzB6A/VIaQMgyYHAsr+w4HWVbLcDFmg==
X-Received: by 10.98.54.196 with SMTP id d187mr4404542pfa.90.1490371311771;
        Fri, 24 Mar 2017 09:01:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h14sm5582216pgn.41.2017.03.24.09.01.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 09:01:50 -0700 (PDT)
Date: Fri, 24 Mar 2017 21:31:45 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: media: omap4iss: Replace a bit shift by a use of
 BIT.
Message-ID: <20170324160145.GA13421@arushi-HP-Pavilion-Notebook>
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
changes in v2
 -Remove unnecessary parenthesis

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


