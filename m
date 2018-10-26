X-GM-THRID: 6616747745212366848
X-Received: by 2002:a0c:9dc9:: with SMTP id p9mr3996943qvf.47.1540581904228;
        Fri, 26 Oct 2018 12:25:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21a1:: with SMTP id 30-v6ls1135735qty.11.gmail; Fri, 26
 Oct 2018 12:25:03 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eOxByo24DhAAdgSoVD+3mfuYau/fr9Q/KRPH4ki4CzIw0DOpxNR7C0Y7XyvMkzzF8NC1da
X-Received: by 2002:ac8:50a:: with SMTP id u10-v6mr3962873qtg.31.1540581903578;
        Fri, 26 Oct 2018 12:25:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540581903; cv=none;
        d=google.com; s=arc-20160816;
        b=xZ/w5RQOnoLxkWdotuvSXCoHas3VrUpbWOj+8Kwxb6MJCQrDMo7hEH8mvpyIzWr0CL
         B11m94IFLm/UX9SYdZSSx70FXq7iSLw/oBzlJ10T6pNFXjIBsd5rO2xJW1bhs4OHBKko
         tJpzFHrjF8necKRZ/I02T7YeKTSxrguCBDSlaUBmAZbuwdWDAjqtAetf0Byi+LA18/uZ
         zKMOO6jnUMmFy9xkBC5ynQEt3mqJZ3kmYHu4HcwsbjnFu0CxIXiD0FyA+/CPEA0Gqymx
         CyxD2KKJjvQFEt14ru1JoeeZxaH9Ax4u06UEdC9+qjH/WT2oWRwVJj/dfb9fsc+0Ojk5
         HK9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oG0AzlyfGvjB8pHJ3pxUdHABNxHH12Ws4GlnVqXoYBM=;
        b=Fa2v4x+tzm9Fs6dhKp3EdciVxrI7UUmq5hJ+Z/F+oSohtPlPZQUtObZvidkmWMF/AK
         B04e9ZuKY+fBVunZF927muucw7L0yWRIOJkFg7MpubazlMS5uHW+1Z+8HHcyMKDxvtvV
         vlaP5uboNzE1kUcAWJnyKB46VRRJv4ipORbZ8JAgLg76Z30bl72/QcOcCY2t8AfSmO6Q
         /H6hygKYA2JVlXbpIkaJxFrhehnZxwGrvnTi/zpEZKfF2R1diO9lH37Lcc8OFlmBqxnu
         Py20mti89ru3/4B1YWtKtgLEtuZ8G0iXhJ9MoxzvM2zfJaYH8OixRAlrjPipR2fthzGs
         m94A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tb25eA06;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id o2-v6si633670qtc.5.2018.10.26.12.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:25:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tb25eA06;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id n12so1353138qkh.11
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oG0AzlyfGvjB8pHJ3pxUdHABNxHH12Ws4GlnVqXoYBM=;
        b=Tb25eA06iteRptHaJBAaGhr2fpOwSPNGcb3DIpKXOwxSrvOdTCVSa58rqeJtZPnlGc
         BNId+QdHc1g9q2z7yOqG0gseEQqPxqlizUObJd7TvojPodxrfZubSI6R33JZ9yLAc/Y5
         5CfXQ6pf0FesKFob4LXYdLyVVaQoFWgqGOsijKZPmCT2i6tBy0RJ51LmpbvyjtwxIqfK
         VhKAsultR3p50RnwcIq339FIHuyE+Me1TbwNtyih3htDLgfRbEEHzlpKo/GGUTZbosUm
         wS7nbyeDN+UMmN+ceOFZsslWOtK99sb27GD+Ea0ESiQ97rKkFBTQ40iCmfvuVfg1lJPu
         RS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oG0AzlyfGvjB8pHJ3pxUdHABNxHH12Ws4GlnVqXoYBM=;
        b=VpllUlsV7oy2APGQPcrZGSIpA/pd4wWuvI+IyUOGOF6ta27AycOCJtqYhcqOu8DvWc
         AcQ3PdbU95vBa/tutLXT+Q3RLHc3Y2pAZELTvl0a6s11m+pKKsJJkgElHYDoGjYAfEVm
         5brqNXq44S53TjhGIMczFx+baKlGChveDRu9bvzyRhh7ENm758ePzspSPf6LWm/En67r
         0G6tnXEjqd2UtHxjyBFCqyBRTWYUAWdQj1if2pNS0Y2yliIkLSHWpVTBLDD7UpK4J8lz
         gePo1U1TxOymnGeSz+UzvJgEWUd+sELGFjxvIXgu+NucXT72uWrN6FHsGm+aK3NrI8TP
         xd0A==
X-Gm-Message-State: AGRZ1gLHv7zrRE3N10rDy2oMEIvAiemdyX4k1X2KrEhVPK6PjNgtJ1Se
	+dKDVlyU2kxVJiI4Nxq75mc=
X-Received: by 2002:a37:5003:: with SMTP id e3-v6mr4397179qkb.102.1540581903262;
        Fri, 26 Oct 2018 12:25:03 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id c79-v6sm11289917qka.83.2018.10.26.12.25.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:25:02 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:24:58 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	David Airlie <airlied@linux.ie>
Cc: virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] drm/qxl: Use 'unsigned int' instead of 'bool'
Message-ID: <fcd9d7ea7eec1ac6a3ad9ad16e0fc9ef13c089fd.1540579956.git.shayenneluzmoura@gmail.com>
References: <cover.1540579956.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540579956.git.shayenneluzmoura@gmail.com>
User-Agent: NeoMutt/20171215

Use 'unsigned int' with bitfield instead of 'bool' to avoid alignment
issues and remove checkpatch.pl check:

CHECK: Avoid using bool structure members because of possible alignment
issues

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/gpu/drm/qxl/qxl_drv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.h b/drivers/gpu/drm/qxl/qxl_drv.h
index d78bcb95df3e..14d3fa855708 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.h
+++ b/drivers/gpu/drm/qxl/qxl_drv.h
@@ -88,10 +88,10 @@ struct qxl_bo {
 
 	/* Constant after initialization */
 	struct drm_gem_object		gem_base;
-	bool is_primary; /* is this now a primary surface */
-	bool is_dumb;
+	unsigned int is_primary:1; /* is this now a primary surface */
+	unsigned int is_dumb:1;
 	struct qxl_bo *shadow;
-	bool hw_surf_alloc;
+	unsigned int hw_surf_alloc:1;
 	struct qxl_surface surf;
 	uint32_t surface_id;
 	struct qxl_release *surf_create;
@@ -128,7 +128,7 @@ struct qxl_output {
 struct qxl_mman {
 	struct ttm_bo_global_ref        bo_global_ref;
 	struct drm_global_reference	mem_global_ref;
-	bool				mem_global_referenced;
+	unsigned int mem_global_referenced:1;
 	struct ttm_bo_device		bdev;
 };
 
@@ -229,7 +229,7 @@ struct qxl_device {
 
 	struct qxl_ram_header *ram_header;
 
-	bool primary_created;
+	unsigned int primary_created:1;
 
 	struct qxl_memslot	*mem_slots;
 	uint8_t		n_mem_slots;
-- 
2.19.1


