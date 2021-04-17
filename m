X-GM-THRID: 6952150809139216384
X-Received: by 2002:a7b:c44d:: with SMTP id l13mr12940509wmi.160.1618676157999;
        Sat, 17 Apr 2021 09:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4a04:: with SMTP id c4ls5793542wmp.1.gmail; Sat, 17
 Apr 2021 09:15:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx5xz8clgV5yb+KSFK/EJPcgW0+vt32OaLBJ/yiF5rfJ41mt8KBOsv1jcp3uMIqcrtGDmrx
X-Received: by 2002:a1c:b743:: with SMTP id h64mr12411319wmf.35.1618676156751;
        Sat, 17 Apr 2021 09:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618676156; cv=none;
        d=google.com; s=arc-20160816;
        b=qICFpOQVZmKLAwfRDWlBZd3p1f+NSK2SrysricwcNTpzASTVTJhpNhev1+K1cp2exM
         ZrulGzEBbKrQ6xH4q0lUDfYE24DOFFKWT4mb8rM3jJaYuWt5+O3OAKvGbI4TCP9D6nz0
         +yy+M/HhjMxwaiPie5EsEufHB4JibP6DMTxzdBBy3W95f4+TjhsYnWuALZRkR5CARHyZ
         G1BWpp9oMzLHbv0ZP0D3MvdlojX62Fb1Lsznq1DmOJOhhNtLJOuFjSa2Ij+vd0c5sP3K
         oYQMSBrUDnaNIuTT3qVDv8tG5RAhhYWufj2ylxT+uc747s/jGlHwqJvtjvQlYBw1z1KK
         QLhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rII0d846oZPnYt8lUpSHq80aP9OZVYxwXuXqYd7H9dI=;
        b=lMz/Qcti4Jp5HofdGlGymNcVYt3kfstqFZb0FlgBba1+g+wa94cUlOF+1SE5aQu2G4
         6WLFcWls1FjAZqrPOaG4wOLX2zvpC3fS6+RNSwSgUCsixN84xWVXCH3eXHkzcJSut8Xq
         4EKPbcvHOtXLGu4LccOP67ODBjpv/7H9iZx/4McEQH142AoZVWX7zeGT4KmC9nfFx3HW
         fmBA4Ec+lr6VcHZtf2HaHwLSVwfVPmOf03nw+fstIN7ZQAt34ppXv+P3gL1GN041Y4H1
         +09Vayd+9tvaTBtwdamg7ZOFjGGCO70umZC2i7AaBwZaPPsPGLdxkLZhRWyljkPVSfOv
         lARQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ugh/YuLI";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id s141si749681wme.2.2021.04.17.09.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 09:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ugh/YuLI";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62d.google.com with SMTP id u17so46526850ejk.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Apr 2021 09:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rII0d846oZPnYt8lUpSHq80aP9OZVYxwXuXqYd7H9dI=;
        b=ugh/YuLIlRa4QkJYH1V9ULc2IeHhw5yslHslaraYRnjH8NziKGNZBUL2ypAUG3sDoI
         gHtcVi2WEs2tCJ3EabLZaQP9kjSQnFTe9pArK44Q+HqBnSeHEOdyLP/orS4UCPietmdh
         OARzMD9CSbUwAgCqtLlkO79BqqE6wdYzRHbUizH1pWzgfesr1uGYrZZjpqcYBIT3OrgU
         iZcYvKHB0CKZbkXgw/xStIGfMEO3TUK5wbeDKa21Z7m1YrIU2Y5ABiEgwUvkzqkKF8Am
         f1dl+lUos439De7XkuP1r2wZiEocXQdFyBE1NzyMrzjp54h/cT7P6qa3nwjV1TzZNLWH
         RI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rII0d846oZPnYt8lUpSHq80aP9OZVYxwXuXqYd7H9dI=;
        b=L2EqAYKQWczjxj6AwO0c+8D0xYY1tLWuk/vFtRtdj09xZaGRgblKaQXCFeopp8bFcn
         HyAvsgiTD45VgvrYVaXvjb6SoCWNAPVJaaGaI1+gbwUiD0LVGgq34bqYllA7tjk9Al9x
         UvOeUuenAOoSTLzRKolp+Jz0efHtBW2FHpGxZNEg3L8M+91IqD1IA8UkU+DhfH8Rd6U5
         OV5Q0XaKZREQMeDVndo0pvP6ux1Y72gf8Qa/kzoPcilexxQ8WvlDrEcdG1Uf/hsoQTGd
         VXgdTDnqHO6pU/bnWLtvkQcM5WVP9mP7SbW28uXs923vQLCcZp5KOauZiax+cWSpIKJr
         pdWg==
X-Gm-Message-State: AOAM533Ah00c+dZBTEDjw7mgG5m71bNIYOndkzcHNGuOe1Nd6xoX+dcu
	/tQ7vWfQNHi0HYp0CMFnbGepF/1WdOGEntDc
X-Received: by 2002:a17:906:944c:: with SMTP id z12mr13377636ejx.398.1618676156296;
        Sat, 17 Apr 2021 09:15:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id bs10sm8514830edb.8.2021.04.17.09.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 09:15:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2] drm/drm_bufs.c: In switch, add break in default case
Date: Sat, 17 Apr 2021 18:15:52 +0200
Message-Id: <20210417161552.6571-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added a "break" in the default case of a switch select statement.
GCC complains, although this "break" is not strictly necessary 
for the code to work as expected.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: Added the reason why of this change in the log.

 drivers/gpu/drm/drm_bufs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
index e3d77dfefb0a..fc40aa0adf73 100644
--- a/drivers/gpu/drm/drm_bufs.c
+++ b/drivers/gpu/drm/drm_bufs.c
@@ -79,7 +79,7 @@ static struct drm_map_list *drm_find_matching_map(struct drm_device *dev,
 				return entry;
 			break;
 		default: /* Make gcc happy */
-			;
+			break;
 		}
 		if (entry->map->offset == map->offset)
 			return entry;
-- 
2.31.1


