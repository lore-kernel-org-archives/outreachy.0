X-GM-THRID: 6470359344407904256
X-Received: by 10.101.78.202 with SMTP id w10mr598916pgq.105.1506796485191;
        Sat, 30 Sep 2017 11:34:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.241.72 with SMTP id u8ls2947487plm.6.gmail; Sat, 30 Sep
 2017 11:34:44 -0700 (PDT)
X-Received: by 10.101.80.140 with SMTP id r12mr1087865pgp.32.1506796484130;
        Sat, 30 Sep 2017 11:34:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506796484; cv=none;
        d=google.com; s=arc-20160816;
        b=qOJHufTtg4hzIdB7IM0BCjFIXB3CxPkcibtKZ5j/Mn5zVboVjM2mFSf+ZGuzh6QOSv
         ZK5XIGfHCWT6+oPk7Eih/RB+U7goCl1E4yVnzYCOZ8gdd8dzdRtk9daHmAkzfOsT7hCK
         BFpT7t+MRCXB//TA1ZCUzBYDw7hflmOA3ZLaSDYt/eq78xTeW5sbpI3FFZp7kL0BZ62k
         mmDMVj/gQXr1O1Av6+FtMy++xwSokJQBDTkt9TNRMeZpqEqyQ+2dxpyFyiuVw7Hdj/Lu
         1+YXscrrqOMMFuud/1nWQXhe3HkDTc7YsAcZnRsPPRhm9ia0o0CfvSZHDD76R4HwHwnP
         I9UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=7ZogXiwK4MfpM4pgYxs8fVDVGuD+wJ1EzanCyGlNkvw=;
        b=aVedmwovQhKx6Jh0UQr6kB3TcAc5eQDWXj9oDL0E83t455i6CwOJQ/Ufd6aoTNYMVq
         BO2bd1yaR+X/GWWaGbmZQTISEaGVmjJQr+lKDjaczVGiMa6awNVDDNXieacQGwCYa5qq
         ymCLZp1HuoQcC4WCrlLF/bXWnGlTV19meBdec8OU2CQ91MPVr0Nl0AhcOXOYl4jyMQtJ
         SD3JTlffqXZFnQSyy6JYoGaiNTBWG6iafRtmntWscEAsWOlgppBvmjZVtd+kJiiQndoC
         s/OEm5nMde8Gz+cI/bYd62oZ+ov3AEH4IZyduXBLG3dBjtx0cY/IvJYapMxhuSmOI22E
         UzWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTHIUWGS;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z74si737401pfj.21.2017.09.30.11.34.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 11:34:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTHIUWGS;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so1816034pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 11:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=7ZogXiwK4MfpM4pgYxs8fVDVGuD+wJ1EzanCyGlNkvw=;
        b=BTHIUWGSWo/0xtTmbCBLFMI01YzvBGccGYC9qQeQkM4V92umcOJ15Zh3J+jaoXbIag
         3T4nmWIXKJ4Hp10MhV8hXCljE1/beuEx8f/7fPiD6Pqh7XJ1EXmCPR5ShNYe9P5U1rxf
         VfaJBWP4FxrbkyhN/ejC2iqjUresZxheCUTVGybU3ksVCeuoOX8o+Kc2xkEAbue0dR6S
         ykI0kjzX/DoddKFazFr9WwZmhKWNRrDR9SiQ1Vp3iRFHAcKj2jDU0zSXXVwRF43IlAEY
         rKV5z2Pccz/fZwpCcADypRZnL0Hgedua8V/JOSeQfO74tjEHY930VOmx52hGoltMdoQo
         Sezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=7ZogXiwK4MfpM4pgYxs8fVDVGuD+wJ1EzanCyGlNkvw=;
        b=leYJKd+2S5JOLxtX4gya9i97jSG5X8z+8fwjh64eWVhE605/Xp5tB8erIc4bpyePcF
         43hlOEIykjf9hdZqiBzWN0Wdm/1f+2lzEugxexRYUH7taaAF8V1v5LNGGI2WFNnlB1bF
         RQrShvUkAyxgkD4vTsWeumeDImqZT1oW9bEytaGDlUTAC2fegfAns8uZJLdMmnjUnS94
         5qGwo7sYPrN3m4jLAds9Z591+IbRLDhDOAxb/ABd7Oj22Dimyf8A6rbYEZfP5h9vTnpC
         tgOHrb/Gf4+CUguvhLhLRsygitC78CK0EL7INjQEW2XQeE3REhnqn7dfEG13kqc2JKnH
         iqEQ==
X-Gm-Message-State: AHPjjUgjrsE1xXgt2A9FHsF7Wkae0vkScrK713kRhidlcTT/AXhoZYV3
	jpa6I8Cr3oBHjEOxlEWAmcU=
X-Google-Smtp-Source: AOwi7QBqGbQZ+fu/iC+Wf5sqv0AMoAbJ3+GQ44732lEwIB8ZRszn8ZEMXnIxzSDmEOQlR/7xe/UIqQ==
X-Received: by 10.98.61.156 with SMTP id x28mr10879513pfj.295.1506796483911;
        Sat, 30 Sep 2017 11:34:43 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([65.157.19.136])
        by smtp.gmail.com with ESMTPSA id e66sm10226903pfb.48.2017.09.30.11.34.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 11:34:43 -0700 (PDT)
Date: Sat, 30 Sep 2017 12:34:40 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] drm/armada: Remove unused #include <drmP.h>
Message-ID: <20170930183440.GA2589@Haneen>
References: <20170927073846.GA14352@Haneen>
 <20170929072528.bwfgitxajy3hlo3b@phenom.ffwll.local>
 <d35426c9-d286-25b7-88be-94520e5f109f@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d35426c9-d286-25b7-88be-94520e5f109f@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 29, 2017 at 02:29:31PM +0200, Noralf Tr�nnes wrote:
> 
> Den 29.09.2017 09.25, skrev Daniel Vetter:
> >On Wed, Sep 27, 2017 at 01:38:46AM -0600, Haneen Mohammed wrote:
> >>Remove drmP.h as it is not needed anymore since nothing it
> >>defines is used in these files.
> >>
> >>Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> >Applied, thanks.
> 
> drivers/gpu/drm/armada/armada_fb.c uses DRM_ERROR() which is defined in
> include/drm/drmP.h. Doesn't that warrant an inclusion?
> 
> Noralf.
> 
> >-Daniel

Actually most of them do use DRM_ERROR. It's my mistake, I did not check every function,
and just relied on not getting an error when compiled. 

But this would mean almost all the files would need to include the
drmP.h then, since they are encouraged to use DRM_DEV_*, right?

> >>---
> >>  drivers/gpu/drm/armada/armada_510.c   | 1 -
> >>  drivers/gpu/drm/armada/armada_drv.c   | 1 -
> >>  drivers/gpu/drm/armada/armada_fb.c    | 1 -
> >>  drivers/gpu/drm/armada/armada_fbdev.c | 1 -
> >>  drivers/gpu/drm/armada/armada_gem.c   | 1 -
> >>  5 files changed, 5 deletions(-)
> >>
> >>diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
> >>index ad3d2eb..41a784f 100644
> >>--- a/drivers/gpu/drm/armada/armada_510.c
> >>+++ b/drivers/gpu/drm/armada/armada_510.c
> >>@@ -9,7 +9,6 @@
> >>   */
> >>  #include <linux/clk.h>
> >>  #include <linux/io.h>
> >>-#include <drm/drmP.h>
> >>  #include <drm/drm_crtc_helper.h>
> >>  #include "armada_crtc.h"
> >>  #include "armada_drm.h"
> >>diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
> >>index c993bcc..17bb675 100644
> >>--- a/drivers/gpu/drm/armada/armada_drv.c
> >>+++ b/drivers/gpu/drm/armada/armada_drv.c
> >>@@ -9,7 +9,6 @@
> >>  #include <linux/component.h>
> >>  #include <linux/module.h>
> >>  #include <linux/of_graph.h>
> >>-#include <drm/drmP.h>
> >>  #include <drm/drm_crtc_helper.h>
> >>  #include <drm/drm_of.h>
> >>  #include "armada_crtc.h"
> >>diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
> >>index 51839c1..a38d5a0 100644
> >>--- a/drivers/gpu/drm/armada/armada_fb.c
> >>+++ b/drivers/gpu/drm/armada/armada_fb.c
> >>@@ -5,7 +5,6 @@
> >>   * it under the terms of the GNU General Public License version 2 as
> >>   * published by the Free Software Foundation.
> >>   */
> >>-#include <drm/drmP.h>
> >>  #include <drm/drm_crtc_helper.h>
> >>  #include <drm/drm_fb_helper.h>
> >>  #include "armada_drm.h"
> >>diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
> >>index cf6bad1..a2ce83f 100644
> >>--- a/drivers/gpu/drm/armada/armada_fbdev.c
> >>+++ b/drivers/gpu/drm/armada/armada_fbdev.c
> >>@@ -10,7 +10,6 @@
> >>  #include <linux/kernel.h>
> >>  #include <linux/module.h>
> >>-#include <drm/drmP.h>
> >>  #include <drm/drm_fb_helper.h>
> >>  #include "armada_crtc.h"
> >>  #include "armada_drm.h"
> >>diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
> >>index 49d40aa..190280e 100644
> >>--- a/drivers/gpu/drm/armada/armada_gem.c
> >>+++ b/drivers/gpu/drm/armada/armada_gem.c
> >>@@ -8,7 +8,6 @@
> >>  #include <linux/dma-buf.h>
> >>  #include <linux/dma-mapping.h>
> >>  #include <linux/shmem_fs.h>
> >>-#include <drm/drmP.h>
> >>  #include "armada_drm.h"
> >>  #include "armada_gem.h"
> >>  #include <drm/armada_drm.h>
> >>-- 
> >>2.7.4
> >>
> 

