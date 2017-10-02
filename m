X-GM-THRID: 6470359344407904256
X-Received: by 10.28.0.7 with SMTP id 7mr1540945wma.26.1506930036463;
        Mon, 02 Oct 2017 00:40:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls1879544wmy.9.gmail; Mon, 02 Oct
 2017 00:40:35 -0700 (PDT)
X-Received: by 10.28.135.132 with SMTP id j126mr1756136wmd.0.1506930035541;
        Mon, 02 Oct 2017 00:40:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506930035; cv=none;
        d=google.com; s=arc-20160816;
        b=jVMRBqf6DEpsQqM9Jf7Yr8h9oFpyqmnCHDXGU3XXaKjW31u24X+ZAubvAbgPZAtxGr
         Fk7QIR0sNz8ZQykdA15YeUAXlnkrjn0UhQJkXLZTnlWIrYwBU4/+kncusbt07Uansa1F
         4Yi7yXCdeimn+lkVLyHbUE0j+9Wd/VKBwzgsORYgLklMeYAL9KkfzdZEq+irguM6GVpw
         QjGBI0bpZY/mORZPN7DIq9+rAoHJnlncBwIlyV+jhgvE94JIr5Ls8doOtWHLMqA/rjPE
         bO11rp9lhjJk5TGxyVq17VlUVnk8I7Gt1aIsBZLRTZBH5ZBZIi6QozcTZG3WNxGqtGUT
         BAHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=YdJAEnWQApmsMs65I2DUTFVmsVv5Vl6bf4AlHJ3lcN4=;
        b=fYvEEViTZk/HWUgL5tzf6rSrJscPsndn0ao9/MOSsEA/m7mZvIPjDhSV0BoZGE4utQ
         J4Ke9VjBDGy+8uSe09TBjAPukUz3vuh/mpBLD0Num0USZbgzuZqON389f/1umx/xyTWM
         ZrLyU+Yjh+837f4ei8aNtQluzyUTkFr92khIrcsELPiwR3BJ6Vnt+efgaFCVhPA0yiOc
         ttjga6W5IxSih1rxGl5iqJZ6DrnjU5W3s0+qLJuuK0dhgvvf21Mo4iiASD8qIZgKbOsy
         ywJujm+B4iZ3fvINAG8PxVfRYtM0YOssxNmVjll6QE91rk6MFpAr5IRkKvUcvtVZfvbg
         9wQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=O3wGqcnI;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 200si1422603wmj.0.2017.10.02.00.40.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:40:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=O3wGqcnI;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id 63so1774865wmn.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=YdJAEnWQApmsMs65I2DUTFVmsVv5Vl6bf4AlHJ3lcN4=;
        b=O3wGqcnISdK8194bqUT7s/g28Pbf7VgUs9PZLRNuJZVI9hdQ87Pwea9d+QWceuwcR8
         T8trWzO1ZIHKLQrfbIVDRc/VKjJSGjZHPJbvzzMlM7PKq/vlrXio3wqQKXKk+sTjiWmu
         k8rmVUxths6tLNGwrasL9jS1jofELcMI4h5hI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=YdJAEnWQApmsMs65I2DUTFVmsVv5Vl6bf4AlHJ3lcN4=;
        b=kP0mi+0sDlhF6KD0rpQQ3edZK8ATXAqOSgPaVlZjL509DvS3IN4zAJQ6Z5bTNG3jWD
         79SaokY8NMtM6cAL/xuDlN+LolSau2x0QFFQFkzKjwXxUnB8OimQfWbN2RB0+dyZs89x
         TJfIt6PH/vqvBP9eZLXw8gDpUo6d8/+IQC9+u1tWMd/byyrQtPxvAFPBuB/y000U1EF6
         WLLwDSqTW+copjuZp7Jfk15s39R579hj9g6XFYyTNNdaqy7bY7Ook86BiuAOOVOX+Lb0
         U0MZj8VPgDoOe9Y1Nw8Wskvb4FGMm1CjikAQkMDcLoGwC/hQLTJ8HX7hC3rgo8texbKu
         js7g==
X-Gm-Message-State: AHPjjUgWEbSORfwlMgSE+lje/pxNDYxcn+xSn9GJ47Vn/GF1u4rkHXGL
	4/kS3FlCPpbrsx0k9JPOJmvkFP+E
X-Google-Smtp-Source: AOwi7QCFXW+z5s0PF9VrwpHzn9KBtbO+ggt/cRqa5KGqIFsjJRYpzkdDSw1nzsmyI2xaqGlkdahbOg==
X-Received: by 10.80.153.27 with SMTP id k27mr19113757edb.208.1506930034594;
        Mon, 02 Oct 2017 00:40:34 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id 60sm6565878edf.31.2017.10.02.00.40.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Oct 2017 00:40:33 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Oct 2017 09:32:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] drm/armada: Remove unused #include <drmP.h>
Message-ID: <20171002073223.vgzhdbbmqxjwx6jx@phenom.ffwll.local>
References: <20170927073846.GA14352@Haneen>
 <20170929072528.bwfgitxajy3hlo3b@phenom.ffwll.local>
 <d35426c9-d286-25b7-88be-94520e5f109f@tronnes.org>
 <20170930183440.GA2589@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170930183440.GA2589@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Sat, Sep 30, 2017 at 12:34:40PM -0600, Haneen Mohammed wrote:
> On Fri, Sep 29, 2017 at 02:29:31PM +0200, Noralf Tr�nnes wrote:
> > 
> > Den 29.09.2017 09.25, skrev Daniel Vetter:
> > >On Wed, Sep 27, 2017 at 01:38:46AM -0600, Haneen Mohammed wrote:
> > >>Remove drmP.h as it is not needed anymore since nothing it
> > >>defines is used in these files.
> > >>
> > >>Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > >Applied, thanks.
> > 
> > drivers/gpu/drm/armada/armada_fb.c uses DRM_ERROR() which is defined in
> > include/drm/drmP.h. Doesn't that warrant an inclusion?
> > 
> > Noralf.
> > 
> > >-Daniel
> 
> Actually most of them do use DRM_ERROR. It's my mistake, I did not check every function,
> and just relied on not getting an error when compiled. 
> 
> But this would mean almost all the files would need to include the
> drmP.h then, since they are encouraged to use DRM_DEV_*, right?

We still need to split out the last few bits of drmP.h, then there'd
just be a drm_debug.h or similar helper for this stuff.
-Daniel

> 
> > >>---
> > >>  drivers/gpu/drm/armada/armada_510.c   | 1 -
> > >>  drivers/gpu/drm/armada/armada_drv.c   | 1 -
> > >>  drivers/gpu/drm/armada/armada_fb.c    | 1 -
> > >>  drivers/gpu/drm/armada/armada_fbdev.c | 1 -
> > >>  drivers/gpu/drm/armada/armada_gem.c   | 1 -
> > >>  5 files changed, 5 deletions(-)
> > >>
> > >>diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
> > >>index ad3d2eb..41a784f 100644
> > >>--- a/drivers/gpu/drm/armada/armada_510.c
> > >>+++ b/drivers/gpu/drm/armada/armada_510.c
> > >>@@ -9,7 +9,6 @@
> > >>   */
> > >>  #include <linux/clk.h>
> > >>  #include <linux/io.h>
> > >>-#include <drm/drmP.h>
> > >>  #include <drm/drm_crtc_helper.h>
> > >>  #include "armada_crtc.h"
> > >>  #include "armada_drm.h"
> > >>diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
> > >>index c993bcc..17bb675 100644
> > >>--- a/drivers/gpu/drm/armada/armada_drv.c
> > >>+++ b/drivers/gpu/drm/armada/armada_drv.c
> > >>@@ -9,7 +9,6 @@
> > >>  #include <linux/component.h>
> > >>  #include <linux/module.h>
> > >>  #include <linux/of_graph.h>
> > >>-#include <drm/drmP.h>
> > >>  #include <drm/drm_crtc_helper.h>
> > >>  #include <drm/drm_of.h>
> > >>  #include "armada_crtc.h"
> > >>diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
> > >>index 51839c1..a38d5a0 100644
> > >>--- a/drivers/gpu/drm/armada/armada_fb.c
> > >>+++ b/drivers/gpu/drm/armada/armada_fb.c
> > >>@@ -5,7 +5,6 @@
> > >>   * it under the terms of the GNU General Public License version 2 as
> > >>   * published by the Free Software Foundation.
> > >>   */
> > >>-#include <drm/drmP.h>
> > >>  #include <drm/drm_crtc_helper.h>
> > >>  #include <drm/drm_fb_helper.h>
> > >>  #include "armada_drm.h"
> > >>diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
> > >>index cf6bad1..a2ce83f 100644
> > >>--- a/drivers/gpu/drm/armada/armada_fbdev.c
> > >>+++ b/drivers/gpu/drm/armada/armada_fbdev.c
> > >>@@ -10,7 +10,6 @@
> > >>  #include <linux/kernel.h>
> > >>  #include <linux/module.h>
> > >>-#include <drm/drmP.h>
> > >>  #include <drm/drm_fb_helper.h>
> > >>  #include "armada_crtc.h"
> > >>  #include "armada_drm.h"
> > >>diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
> > >>index 49d40aa..190280e 100644
> > >>--- a/drivers/gpu/drm/armada/armada_gem.c
> > >>+++ b/drivers/gpu/drm/armada/armada_gem.c
> > >>@@ -8,7 +8,6 @@
> > >>  #include <linux/dma-buf.h>
> > >>  #include <linux/dma-mapping.h>
> > >>  #include <linux/shmem_fs.h>
> > >>-#include <drm/drmP.h>
> > >>  #include "armada_drm.h"
> > >>  #include "armada_gem.h"
> > >>  #include <drm/armada_drm.h>
> > >>-- 
> > >>2.7.4
> > >>
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

