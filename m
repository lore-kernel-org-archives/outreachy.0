X-GM-THRID: 6618532112309944320
X-Received: by 2002:a0c:8a7c:: with SMTP id 57mr2739015qvu.45.1541007870579;
        Wed, 31 Oct 2018 10:44:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aee3:: with SMTP id n35-v6ls6672977qvd.11.gmail; Wed, 31
 Oct 2018 10:44:30 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cPESyMCB4bqJx/hAAuzCiY6QZ6/LWYc+R7hb52jw5ETIUjL6mkERWxjphfyczpKk62G0mb
X-Received: by 2002:a0c:879a:: with SMTP id 26mr2778822qvj.62.1541007870010;
        Wed, 31 Oct 2018 10:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541007869; cv=none;
        d=google.com; s=arc-20160816;
        b=Rwab//e+yx0/yxr53R6Mq1ohuv6vvj7CJki3Nr00N3BDhvX8t7XvKlLyFFDYub4a7w
         6AShhKiI7+mPDrjL8nwgdy7sxKLN+Zspt30R9u3T9MiJeJr20g/J4JVIAaB2XI+1ImPH
         I/y1WmM8HxcLR/GMaQYQ1lnI6oylkCJCG5zat3PI7Ned8srDzvOBk+AZO/bhxyw2sh3W
         KAx0AXzF4pVfLzq9sZXn2hGdSueUzxRkB6ozC/rbDFbFvqtbxbWac0uAb2s65Hsa9T3Y
         97Pq6tzdX0+s66OVNgV6s/q/D7R4BVffhyQ+OEhlkQgrnnnwn42ysGLZgzURpUx3ERT+
         NHAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5h9H/t/58iT5wJlL5hclCitkHk3Y96u4UemtKet/OsI=;
        b=KVPacd9UrvEKfhwcNxS4HdsHm4Gq6d58GOZf352KieV8iYFxGbZ72UiReElMjKNXVl
         B/YODlETm83rKEk2Apexn9yiDYt1kHYkEFXT9e8hp6YDYaqJZMTxBXZSm4Cee/AMTHjA
         c5l1E+2D2U0i7MSHuP7otFchx6JmIsbi/3v9OiYybMktMfW0aDcGzoWlv54OO/xr/Fvs
         N2Z23HHMLIiBOrboXlHex634i5dQrLWPeGkz4cxQIppK4uzU/1bIgoKdwI0KnlzdRJjL
         ctMqYiYo525+U844S709fxev+4yBoAhd9MOEczdejQ9oRSyKXuVrlxwopNDfMk2K0fuA
         NQvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FTajQg8/";
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id k8-v6si1447238qkg.3.2018.10.31.10.44.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 10:44:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FTajQg8/";
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id l41-v6so18064975qtl.8
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 10:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5h9H/t/58iT5wJlL5hclCitkHk3Y96u4UemtKet/OsI=;
        b=FTajQg8/qHkirymCjQyRFhKri7SKuVSwg/+2L9okOxvQHNS/uHTVhWocZf3o51lF+y
         ua9QtAmDP9eWFu3xHG+4onqFQGdr5Vf5rSh3lBNroDG1HAB+iq4EOme33k6DAnfiN/yt
         rFNxxspnvZ0uW1sEHQdu22ADQMjYnAonZlcF0LEMeN6iE1pLbEIhpa10WEjG1Mb8SNne
         u9P7IjpO+cUYCelgZb61CKKEwPxxw4wZdyuEwonWA+C4y5S9xP/OcsF2zeUORZ7KTkrJ
         ke20Ojsl3DsMvu89NP1cqQ/X1yhoYfFB5ykI/cIS4qETLi5dUuCjlt6biVTWw1/wg15i
         jfDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5h9H/t/58iT5wJlL5hclCitkHk3Y96u4UemtKet/OsI=;
        b=dVoOrOtnhPoQJYdxH3BEHv/VCYVbHoBXGntMbhlwl65dcooHnCJcVXYTqI5xkhQ48m
         GwsviL37NyYk2GP8w6An9QvrTPGUQSbNllOpikV9jdPIKGxxQ9BHmfGYFqxC+T8qxLAh
         uf9hJ65ItD4HwL7jui1mtvERb+ixjxmAQLHQGQYlmo1ckGGZL9GytFJ+a27Qss3TFP2E
         HZLhkpH2SW3xXhIMuj1QaCgrxKuj7p5ekwnadS7avr2f5xJBgc8yVChUMZPpSYY/AgWh
         zV2/W7hTBO5BY9Rjj4YjvmNFjWN8tUeGjxoKufLgVVT3b+HeAZy27fg0GueZuL2hGn+o
         ft7g==
X-Gm-Message-State: AGRZ1gLEgzwXtZFzfzAugLBU287G+jpfFg2pCU5QIGmyV+eEG8GQNmAN
	Cq8Q5QSxWAEvVIpE42v227I=
X-Received: by 2002:a0c:b0c3:: with SMTP id p3mr3642744qvc.174.1541007869688;
        Wed, 31 Oct 2018 10:44:29 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id e4sm1357430qka.31.2018.10.31.10.44.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 10:44:29 -0700 (PDT)
Date: Wed, 31 Oct 2018 14:44:24 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] drm: Remove 80-column line in drm_mode_object.c
Message-ID: <20181031174424.odljb6obj25wm47d@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

Break line after NULL to decrease the line size.

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>

---
Changes in v2:
  - Remove aditional variable added in v1 and add a line break

 drivers/gpu/drm/drm_mode_object.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
index be8b754eaf60..cd9bc0ce9be0 100644
--- a/drivers/gpu/drm/drm_mode_object.c
+++ b/drivers/gpu/drm/drm_mode_object.c
@@ -38,7 +38,8 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
 	int ret;
 
 	mutex_lock(&dev->mode_config.idr_mutex);
-	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL, 1, 0, GFP_KERNEL);
+	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL,
+			1, 0, GFP_KERNEL);
 	if (ret >= 0) {
 		/*
 		 * Set up the object linking under the protection of the idr
-- 
2.19.1


