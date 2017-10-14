X-GM-THRID: 6476861978347307008
X-Received: by 10.55.78.70 with SMTP id c67mr4039608qkb.46.1508011943959;
        Sat, 14 Oct 2017 13:12:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.50.68 with SMTP id y62ls3049750qtd.5.gmail; Sat, 14 Oct
 2017 13:12:23 -0700 (PDT)
X-Received: by 10.200.1.77 with SMTP id f13mr4560045qtg.4.1508011943459;
        Sat, 14 Oct 2017 13:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508011943; cv=none;
        d=google.com; s=arc-20160816;
        b=t6RcrgTiEafLYiZYYxGhbA7UJW+T5+S16O6/0SqyEiHZ6yIBCeo+p8T7pndGOmQp++
         5ifZsqayOEG7ixtJAwESXuEviwTY3qIVT6xnnlCSACJROWAGND0AwqXQIvl/Y6lgrsWi
         6zvQXz7OTKLYO5FG77LveH2ehljyuJnRV4/kvV5gYJvUYCqu4b8H4PXhMozmmUr4jEhN
         lwHfyJR1sufflsdkr6o5L3qTcazhBuxy7KGXgKzePCVaTs2VPMq6bQeCyY0pDo6ckr5Z
         55DxQ/GP1i7P67f6dKEzm51rUnD8e/y9A0Rl0NvFEyXxUhXpncGpMXIXYqrhr21ckZNk
         lEVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Uno1BOV23/nMtZm4n9mCujAfeQFz3uRT7fPyh8vbQuE=;
        b=wXjo45vYtX+gMcCBi4lZC19Dy+nyLy7HTx+Ovm+VOES/S5D3VuTJfv0YUGdTiH2LZS
         Uj9xqCZuk1Pd/VjxUd3X405ZIBG9UKgnxHoTa+zdGGj1uBmBCV0/4bOv0ZWBpQCcyvO0
         U5RJ2pf/R7ZpTjDqZ5Ug67kKk1xE7GX47jNwP+Kt1YdiquE/HbZ14YdmE16dfG8JPzhH
         n843DblQchO6ep0ic+9Px9iGAfTVs9I4OdZNPDE/3b3m7CQID5OTj27pO4mtUHnI3g+E
         vH3bTc+FD0z+Hi1fEY55YsMCIxkkn+JiEgYJv6g/XkM91WsW5nurl5TRMX3DDWPeSjUy
         rMcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6W879Yl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id v90si178000qte.4.2017.10.14.13.12.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 13:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6W879Yl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n89so5259467pfk.11
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 13:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Uno1BOV23/nMtZm4n9mCujAfeQFz3uRT7fPyh8vbQuE=;
        b=k6W879Yl0mzhlbI/3+sogK/rYNOwqy1wh73w6+3Fi7En544YLrb1YB2v3Ky69s+I9o
         MzU2dc+98jSYzdSNC4FmaIx0In+wuY/1xSlsQurty3dkJkTvRt64Dtg22pd4d0knC8bh
         59QyJX9/OCR745GR2ffo9ft1ugOtFghYM8pJfBPq8wu4TPhc1ANh70fVoQ6oWP4k3Vik
         u1iBR1Px9PGbTLTwFhAKRPYBNvMJQAllCeW7a5h7pue9y5A746n0H5Es24BZolvutO+B
         lUO+ILMu4YPt4ByjhFuQz6Kso2SYz8RGUoNkN+0B8Ki1/E+5aij/3MizP/gMVAa1MfBE
         CbMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Uno1BOV23/nMtZm4n9mCujAfeQFz3uRT7fPyh8vbQuE=;
        b=XKCa5oW5FEzQXkU1UqdedrAvwvbRhRNmAKFqY0DZWOqyEyd7Mt+2Y8PoekuKkUy1Q0
         dPKxZlF7lGzRuRJRHHfZv52u4QoulNOUjq1nJUoFhNciiARJUJBmv34KgsDQc2zFN4Fh
         02oafzTQ8OrzHrbUgDi420gkHSnt+oKcutRFj3u/0LXcEWMhHcOo73KAWWjWKAUkQmli
         y8F4OCMfShVx4qNqszOo/OYMEUmOFFGWx/BwargiPK3Hg8bloikRHBnq0sUwE4B+JnKl
         EKKgs8muG2I+w2BjTxZLgS9uSoeVp9XMTVeEFgNaQFt6MYz1oKpIxMHQIRPBMU5HOV81
         Lltg==
X-Gm-Message-State: AMCzsaXL3OjMXG2rdWx9qIDnrlmT2r8JaFp5HbiCwCh8j0ufDwni5jT4
	Ns+0fjXoMHGGz0li3UpUjd8=
X-Google-Smtp-Source: AOwi7QDahNpieVRWr+lsBB3I2kP9X9/EEKIUpVD7MhirgFXwvDp/nBF9mta5RMC2mwtVmlQ8kLbgLA==
X-Received: by 10.101.65.197 with SMTP id b5mr4378513pgq.91.1508011942657;
        Sat, 14 Oct 2017 13:12:22 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id i72sm8328838pfi.137.2017.10.14.13.12.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 13:12:22 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: tomi.valkeinen@ti.com,
	airlied@linux.ie
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] drm/omap: Replace list_for_each with list_for_each_entry
Date: Sun, 15 Oct 2017 01:39:42 +0530
Message-Id: <20171014200942.27388-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace use of list_for_each with list_for_each_entry to simplify the
code and remove variables that are used only in list_for_each.
Done with following coccinelle patch:

@r@
identifier fn,i,f,p;
expression e;
iterator name list_for_each, list_for_each_entry;
type T;
@@

fn(...) {
++ T *i;
  <+...
- list_for_each(p,e)
+ list_for_each_entry(i,e,f)
  {
	      ...
-   T *i = list_entry(p,T,f);
	          ...
   }
   ...+>
}

@@
identifier r.fn,r.p;
@@

fn(...) {
  ...
- struct list_head *p;
  ... when != p
}

@@
identifier r.fn,r.i,r.f;
expression r.e;
statement S;
@@

fn(...) {
  <...
  list_for_each_entry(i,e,f)
- {
  S
- }
  ...>
}

@s@
identifier i,f,p;
expression e;
type T;
@@

- list_for_each(p,e)
+ list_for_each_entry(i,e,f)
  {
    ... when != T *i;
-   i = list_entry(p,T,f);
    ...
  }

@@
identifier s.p;
@@

- struct list_head *p;
  ... when != p

@@
identifier s.i,s.f;
expression s.e;
statement S;
@@

  list_for_each_entry(i,e,f)
- {
  S
- }

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/gpu/drm/omapdrm/dss/display.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/dss/display.c b/drivers/gpu/drm/omapdrm/dss/display.c
index 42279933790e..e6f86026dd93 100644
--- a/drivers/gpu/drm/omapdrm/dss/display.c
+++ b/drivers/gpu/drm/omapdrm/dss/display.c
@@ -43,6 +43,7 @@ static int disp_num_counter;
 
 int omapdss_register_display(struct omap_dss_device *dssdev)
 {
+	struct omp_dss_device *ldev;
 	struct omap_dss_driver *drv = dssdev->driver;
 	struct list_head *cur;
 	int id;
@@ -67,13 +68,9 @@ int omapdss_register_display(struct omap_dss_device *dssdev)
 		drv->get_timings = omapdss_default_get_timings;
 
 	mutex_lock(&panel_list_mutex);
-	list_for_each(cur, &panel_list) {
-		struct omap_dss_device *ldev = list_entry(cur,
-							 struct omap_dss_device,
-							 panel_list);
+	list_for_each_entry(ldev, &panel_list, panel_list)
 		if (strcmp(ldev->alias, dssdev->alias) > 0)
 			break;
-	}
 	list_add_tail(&dssdev->panel_list, cur);
 	mutex_unlock(&panel_list_mutex);
 	return 0;
@@ -94,12 +91,11 @@ bool omapdss_component_is_display(struct device_node *node)
 	bool found = false;
 
 	mutex_lock(&panel_list_mutex);
-	list_for_each_entry(dssdev, &panel_list, panel_list) {
+	list_for_each_entry(dssdev, &panel_list, panel_list)
 		if (dssdev->dev->of_node == node) {
 			found = true;
 			goto out;
 		}
-	}
 out:
 	mutex_unlock(&panel_list_mutex);
 	return found;
@@ -152,8 +148,7 @@ struct omap_dss_device *omap_dss_get_next_device(struct omap_dss_device *from)
 
 	omap_dss_put_device(from);
 
-	list_for_each(l, &panel_list) {
-		dssdev = list_entry(l, struct omap_dss_device, panel_list);
+	list_for_each_entry(dssdev, &panel_list, panel_list)
 		if (dssdev == from) {
 			if (list_is_last(l, &panel_list)) {
 				dssdev = NULL;
@@ -165,7 +160,6 @@ struct omap_dss_device *omap_dss_get_next_device(struct omap_dss_device *from)
 			omap_dss_get_device(dssdev);
 			goto out;
 		}
-	}
 
 	WARN(1, "'from' dssdev not found\n");
 
-- 
2.11.0


