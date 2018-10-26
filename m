X-GM-THRID: 6616747745212366848
X-Received: by 2002:a1f:acc9:: with SMTP id v192-v6mr4448928vke.18.1540581864242;
        Fri, 26 Oct 2018 12:24:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:9eb:: with SMTP id e43ls522802uah.2.gmail; Fri, 26 Oct
 2018 12:24:23 -0700 (PDT)
X-Google-Smtp-Source: AJdET5elVYWJo5l3+ssby4DbgGYR08H8xXSM1aaIedVlwtk1+g1Pyj/PzgLeCYhTMk6/K+3vfQgZ
X-Received: by 2002:a9f:2e10:: with SMTP id t16mr353670uaj.24.1540581863643;
        Fri, 26 Oct 2018 12:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540581863; cv=none;
        d=google.com; s=arc-20160816;
        b=GSEoxgd5tgAoQs477GDj/nJk5RmehC+fHQSPMhFYyuViN0+HA9Y6RwAsoZTIUjsdPW
         9Jbv/zf5bwgQ5mQPZl+RGGiFyRz4+WXmzqRbDte+2FR+4cVkYguvMk1mcLIQ0FKmihHx
         nWIb8P1qhj+tMBllDL6I8WY+BQXmN1Hqhpy0u2hGKP1RtqOgSSZWdKbqMqM3pcu1XLAu
         scl2TfGmaPGMyLgSe/nZD0NFOVLghbwjgg7weNNlAMuBVziva5s8jYf+5ndyxOqMv0za
         IMwefKeGyvx4k+8F1o3yzKochih9NZO+JGzJZ2ZquDdSggpBmrfjYN1SC0g3NOFrAAYo
         BF8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hCzofeQ0bxOb9JH+yn6Hps680QgMg5RDZ0Eg84Xgy8k=;
        b=ufS7CdcWEcDjgNFhCaereT/eOU6JP2kAVPvmJya/ZsKaDaztzZ1W5Z3U68aMPgp0SS
         +sH8XCkJbPyj+bflWWqsle5GpJvhxfKmCrijv7ia/Q/i2XWVnpIEEtTnFavvVh9i4HXz
         snM9bOz82HoN80uuiCpyJIHdun4rJ6e566IKBpt7BwK8FSuPncCBaJib7JhFzUzpyt1D
         SysJBDdJO5SuWibgjAXRTlHTWVsoC+arnk4tGGOHy6fkJtavHgaKHknHPWuuJSxVeAM6
         VrK4M6BBjWofq4jnLuO6YQN8qpBH6bkrZa9FKIjHsnvAYhhCf/uK3I02NNVoqUUvqi1m
         pc2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XamnmrYG;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id w9si799928uac.0.2018.10.26.12.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:24:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XamnmrYG;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82d.google.com with SMTP id u34-v6so2532089qth.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hCzofeQ0bxOb9JH+yn6Hps680QgMg5RDZ0Eg84Xgy8k=;
        b=XamnmrYGwDIsjzdsvUjKhUltvKqjRdvbLCnw93m0v+KYMJAD786RzrU5c+zJ2fPHz5
         b/lLC7uuTjh8Xjqd70Q+A4UO+hdyWZRhA/djRZ0qLe/vyAwup0Ou0tqCVi675ViSIGed
         upPGQEfZBJTewOxhXjXsFdEb5p4IwSYWdQGjSl72dQ6l4dfYECQUEQjCs0H5ooJ9lzkh
         TxF36w6S/e6k5RKOGIpxSx6gxlNUsJEJEX21eZ1LgwrzlkkLkTnHD3xsDarXqQDSPaYH
         9F6dRwcCfAvViddG7b/5oE1OTCeKmz7afe8eF6H4weKpEb/irVIYW5NO3ZxZshAKMjfU
         t1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hCzofeQ0bxOb9JH+yn6Hps680QgMg5RDZ0Eg84Xgy8k=;
        b=lq7ZjTlEXGIqM9jBGQcbd37weMlPSGOUaJE9HQzB7u6qSkds2XTxq3eMZCxT6i2uQF
         ziUZCM2FQqyIEET/BLgWP3UTC9OfQo/PbeF0L6xdbr/MCsMwb0y3UtjgpzPC9O8E/d05
         XEGC6Tyt+6pxe+A1pHysCbMoNYjImzshbIeoR9sApW70gXyHslPWp2G4S8QchesH/HMs
         h2yn6VdOVejOf6BhG4x/DI6GZynWA92gtSKmtXo2eqmlett5ehMtjb4+VGt9QJXgEmV8
         3zW9G5Y4onT5YqedvnJjg5xJrgXiZjx8JE4hBQ84tKqpnZXdY8GdASsjU26Un20Rf7Va
         JrLA==
X-Gm-Message-State: AGRZ1gJEQMZGG7sGx2CKe4Zmkn84ov9NkgwvyoAJfBOkNYj/wtqwX+Cd
	9GQ8qC9PbYI7AATUc8IOulc=
X-Received: by 2002:a0c:948e:: with SMTP id j14mr4501328qvj.155.1540581863311;
        Fri, 26 Oct 2018 12:24:23 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id y144-v6sm4080661qka.7.2018.10.26.12.24.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:24:22 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:24:18 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	David Airlie <airlied@linux.ie>
Cc: virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] drm/qxl: Add space before open parentheses
Message-ID: <1ab3ba05c140aae01bde66f73ff1f3b78bf7dfb3.1540579956.git.shayenneluzmoura@gmail.com>
References: <cover.1540579956.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540579956.git.shayenneluzmoura@gmail.com>
User-Agent: NeoMutt/20171215

Add space to remove checkpath.pl error:

ERROR: space required before the open parenthesis '('

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/gpu/drm/qxl/qxl_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 5b00e0f26de1..2ce9a8dcec84 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -940,8 +940,8 @@ static enum drm_mode_status qxl_conn_mode_valid(struct drm_connector *connector,
 	/* TODO: is this called for user defined modes? (xrandr --add-mode)
 	 * TODO: check that the mode fits in the framebuffer */
 
-	if(qdev->monitors_config_width == mode->hdisplay &&
-	   qdev->monitors_config_height == mode->vdisplay)
+	if (qdev->monitors_config_width == mode->hdisplay &&
+	    qdev->monitors_config_height == mode->vdisplay)
 		return MODE_OK;
 
 	for (i = 0; i < ARRAY_SIZE(common_modes); i++) {
-- 
2.19.1


