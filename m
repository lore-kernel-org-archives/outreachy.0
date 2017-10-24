X-GM-THRID: 6480148992322699264
X-Received: by 10.237.53.98 with SMTP id b31mr13628143qte.53.1508854298120;
        Tue, 24 Oct 2017 07:11:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.79.200 with SMTP id d191ls187447qkb.9.gmail; Tue, 24 Oct
 2017 07:11:37 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SBa4LanOdZGGqpQj63t/xZtxIaNAkOtN+PX5Dzh3+a3x91gee09wqNWTW++Rd+TkiTSzCM
X-Received: by 10.55.198.79 with SMTP id b76mr12572119qkj.26.1508854297633;
        Tue, 24 Oct 2017 07:11:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854297; cv=none;
        d=google.com; s=arc-20160816;
        b=WUCaSkMBEmpDneI8Llq9UFYYqfGAgz5kV6NAvW5nsNjKxPBhPMN3POPpGzrg+yI2WU
         3sW7s6lvNMUJnIkIX0eGmRN9pr7H1WFx9HTjl98UT3vlrbxBe5gwPmg7NS1c3FIVaLfT
         VV6cAiyPCKcDQt1VMVVqP2vE8RBlNMMbRMHbq211RDm9vteA20y6nYH0pXp0yEUTM9sR
         OgJ4a4643c7XctMD+gv3tE4ptdQmT7PLpDf4i/rvo+JwqLSUdETb/58cB+1jc12nu+1b
         4rsvZPqVfnpmPbWKJSzuG2IqkghQ0bh7k2fpcHlyu0/nonXn/ZgDyBsRX4sB30YBFfxQ
         BHAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eQdNgLLhvF9kZmbQ/4ULlLNM6voi9AEb8BYr/BZMywg=;
        b=yQImf9taTulTb+Ctt8JZn4Rm1HMl2xJ2nN6e89+QCcBNqngjBFoiBxvp+9awVj8iBN
         ZYFeP1O5t5hmM7maVmrIBURzfOSZK0N/gm4jbAwn3VabKdI5Yfod+3bJioG+r300oscT
         DFeEChlEOyNV4UXEulLs/ieQTrt7powfELZt+3qtrjFgrL1K8YCmKYp2/uBi1NogrGIw
         K7prjnsFRFWG5zWQiRX97B4qvOWOWSu+NQ8IdiSN+7vpznjVe0ub2JZqQGNeT0E/l6Sl
         dj2FF+wy+AkYQWN0rji7XhOMVwqMHurm9WnzUd7GxMJFYFxavmHDa+36qr9XattgZsra
         luqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VcUYoCJN;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 5si33180qki.1.2017.10.24.07.11.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VcUYoCJN;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v78so14621510pgb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eQdNgLLhvF9kZmbQ/4ULlLNM6voi9AEb8BYr/BZMywg=;
        b=VcUYoCJN6pyXGPJBMAy8uuXfZxyd/65o2IkZ2ZCQHjYL7xA9eWpULa7PaR1vSghXOU
         w0n0FuVl1AnDJrgA4cI3EBaric02nivmE1NE6o9ZBIib0/Njt/xALy672Lj3okMuDfh/
         MMiasVKS4LrZ743qV6z89kfGb0jEXGCZa5g8ADoieXo/DFdziOflekLvoSBnaRdqwHCH
         SM1fmTaXqJ6DRhh35uoYUaCpZxtPqs73rKhXZH/jk1bbxODP5ptA9fhz3Ns2n67BMI4c
         vi54gO3Ir6+pHNDbEc2CLMbWYLB6NksdeSMkhPpvtKqSgr/U7rd+ZmfGiOD26SJxKEMg
         7nhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eQdNgLLhvF9kZmbQ/4ULlLNM6voi9AEb8BYr/BZMywg=;
        b=JbDXK4i9n9ThH/WXpXi0+7oBudnc07PrwgoF4gIsguilTr0rJZP84oIAduQqUKfAXf
         iQyBZC4spUivNWI5gJ+N2npPMO96UZZbJXmEWRPiA5wWdpIHje3KyRMtcdwkN3Ituqd0
         zKIcK/ZuRMYTbVDJPPi4mBUELOgAtTsTG77ZnhletLVxHGGueM+Tn0j59tKGg1dZS8Hg
         ZLdwQGhH2uUqXdBYo1csKYStWMsAZLhEwivia5jhj9/+0tMxDMOwFpfVfdYzomb6CAkt
         719znGfI93dV/u8V/PFsZY/Zt9njieIudNEY9f/clH2XI1d65ROQacUE+bhP+dQE+PcA
         PbuA==
X-Gm-Message-State: AMCzsaUGrGLhIizurazSycLhIlZ97wlv2AHrf9kLt4oMxWDlzbCmHx8U
	Zt53M5rkfJwhw7gJQAn7oeM=
X-Received: by 10.98.233.20 with SMTP id j20mr16848897pfh.281.1508854297010;
        Tue, 24 Oct 2017 07:11:37 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id b22sm1092913pfj.123.2017.10.24.07.11.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:36 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 06/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-lvds
Date: Tue, 24 Oct 2017 19:40:57 +0530
Message-Id: <1508854263-18881-7-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formatted specific log messages.

This patch is using following Coccinelle script:
@@
@@

(
- dev_info
+ DRM_DEV_INFO
|
- dev_err
+ DRM_DEV_ERROR
|
- dev_dbg
+ DRM_DEV_DEBUG
)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/panel/panel-lvds.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/panel-lvds.c
index e2d57c0..e19ad41 100644
--- a/drivers/gpu/drm/panel/panel-lvds.c
+++ b/drivers/gpu/drm/panel/panel-lvds.c
@@ -143,14 +143,16 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
 
 	ret = of_property_read_u32(np, "width-mm", &lvds->width);
 	if (ret < 0) {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "width-mm");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "width-mm");
 		return -ENODEV;
 	}
 	ret = of_property_read_u32(np, "height-mm", &lvds->height);
 	if (ret < 0) {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "height-mm");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "height-mm");
 		return -ENODEV;
 	}
 
@@ -158,8 +160,9 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
 
 	ret = of_property_read_string(np, "data-mapping", &mapping);
 	if (ret < 0) {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "data-mapping");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "data-mapping");
 		return -ENODEV;
 	}
 
@@ -170,8 +173,9 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
 	} else if (!strcmp(mapping, "vesa-24")) {
 		lvds->bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG;
 	} else {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "data-mapping");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "data-mapping");
 		return -EINVAL;
 	}
 
@@ -201,8 +205,8 @@ static int panel_lvds_probe(struct platform_device *pdev)
 						     GPIOD_OUT_LOW);
 	if (IS_ERR(lvds->enable_gpio)) {
 		ret = PTR_ERR(lvds->enable_gpio);
-		dev_err(lvds->dev, "failed to request %s GPIO: %d\n",
-			"enable", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to request %s GPIO: %d\n",
+			      "enable", ret);
 		return ret;
 	}
 
@@ -210,8 +214,8 @@ static int panel_lvds_probe(struct platform_device *pdev)
 						     GPIOD_OUT_HIGH);
 	if (IS_ERR(lvds->reset_gpio)) {
 		ret = PTR_ERR(lvds->reset_gpio);
-		dev_err(lvds->dev, "failed to request %s GPIO: %d\n",
-			"reset", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to request %s GPIO: %d\n",
+			      "reset", ret);
 		return ret;
 	}
 
-- 
2.7.4


