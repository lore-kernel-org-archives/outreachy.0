X-GM-THRID: 6470409000186806272
X-Received: by 10.99.116.93 with SMTP id e29mr309795pgn.153.1506509492506;
        Wed, 27 Sep 2017 03:51:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.236.65 with SMTP id h1ls434178pln.13.gmail; Wed, 27 Sep
 2017 03:51:31 -0700 (PDT)
X-Received: by 10.99.7.132 with SMTP id 126mr303080pgh.163.1506509491509;
        Wed, 27 Sep 2017 03:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506509491; cv=none;
        d=google.com; s=arc-20160816;
        b=pXrDoJSWLGvVqvmlyCRd5x+T8EJLC0Ng7mrhcpcv7szqoepq6hjU2lUiJzu/p8abe9
         UlaGxnokfACeasVSonhNpaBbFss2moRu1C0eLmL/qtNawIhChppXp+MQX4kbpxLWVKT/
         AH1CFkcK4aNgx2/oimvURPQPTY3nO2fNp2b/gUHby79B1sR6SBE8Y9xzDUWbToEVYg3Z
         2ymbmXflRg0Bfrv2YFU5bnQuatDSC8Ww9tvFHEv+InAqlZrkyUKQ2z9ErK3WzEo2we8d
         ppOBw5wUJZHx39nqIXe3GjnuXTGlg6+Qp4WaWN7Fygk+tmcGpTgHwyWOfQm87pId665/
         PhKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=rC669jHUFPJD3klLt864E6bpD+dwnXE/DGotVw5xqrY=;
        b=PwtOcdmnO8NxOFiuHs4mg8ij6Suq6iLtI+AIIjJmQ0HFsEHkDmqSDo3ZPIkBMVo3PI
         ZNGa5yKYfz4Q0JMsMN4rjt9gR2uHgV//V+SLbfRR8N4wTNkjdXjThWMoPuloNFIrIwPd
         WWxd52Qm+6Zp5s+9aZeppivnhqIghlb53uB2eiYGHVZYu7moqy+CQxHIgUTGKOOSeAbp
         aGrePJ6PZ8jPwVoOgSDZXGUPp8RbDhOn1ZiZxGQNFPfVKcMkEBhMTqR/B3/jlVcfnVw1
         Zy4Qp7jtGrxk93JoFsirqbrfN5eddiEwZH6m7n4kynOQJ1IrBd/S/dTW1OXnNiVaPowK
         0wnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzKL0Ylz;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f189si848364pfa.1.2017.09.27.03.51.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 03:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzKL0Ylz;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so8831122pgt.3
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 03:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rC669jHUFPJD3klLt864E6bpD+dwnXE/DGotVw5xqrY=;
        b=DzKL0Ylz/J0LhUmLbeXVcL81so2Z32gWlIrl2Y2KdogYTdreeXSBe+NYPNvwAPuWJ4
         5llshWYs57/aHDSG5uPC5lVZfU/vz2D3HnDeU1xedMKvyCQI5fuoKriXDy833HIzdSID
         LjOyQDOtLB9s9h4bvm/9e65MPfqQ5ZDmRBaSWb8KcwPRQayoYSuhcaMTQSaIM4N44sLb
         b2UKJTcmSxmWSwP94fJQD/2KILlv1A3xbXXe0Ku6uXklwFB0eed7N878ef+dO4Nha0/j
         w62jAnRwkqqyC9C8D0lEPe+DsZYMyq4y+p+Wt/0mmOUJ17PlQp3RinyrtuXxtn9fCmTA
         aAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rC669jHUFPJD3klLt864E6bpD+dwnXE/DGotVw5xqrY=;
        b=UaOAbj4uMA4M+BqWRNso7yY9119mLEp9y5zyXokBOdWglR8LnT+2N9tglNorkaCWCO
         kdU4jm96XeHz2OpT+1rAr+BLJij8GjvYG8/e3jkAchL3Ms07cWZGo3MRBZpaInHdmhPA
         oqJiGnds72g6nUHjkkG+tvNPt/QXs7z0EXZ0eBNPXYRWQu9uTf98q6TVoz48GhdzsvDv
         n9Cifi5buNfkJqSTId8y5i4rXH02NhjpmCxD7SPEj7kBy2uCvqdrfD5afUeJUwbOZj1b
         YwwJMxx9n+YMCTtmXMvHu8WLpVQakHMXPjleBanmO19Zr22V+oMXYny9ut4rUvrEihOT
         NL6w==
X-Gm-Message-State: AHPjjUhO7BG04uy9eAiNm/IbFDJZFbJQ2ktM3A//TzHt7mjTI09sUKUd
	QYDONh3DQfxWvwYp7s6EULQyM3mm
X-Google-Smtp-Source: AOwi7QAjz6dUSDUVcdX5zTPX587u32c1p4PUmX7+chenK1dCRgfR+4YJWQIbsWoxViE4w4jUky5Nkw==
X-Received: by 10.101.71.135 with SMTP id e7mr981057pgs.112.1506509491257;
        Wed, 27 Sep 2017 03:51:31 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id r22sm19869152pfe.78.2017.09.27.03.51.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 03:51:29 -0700 (PDT)
Date: Wed, 27 Sep 2017 16:21:23 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: dri-devel@lists.freedesktop.org, daniel@ffwll.ch, seanpaul@chromium.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/Documentation: Refine TODO for backlight helpers in
 tinydrm
Message-ID: <20170927105116.GA30391@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add a summary which resulted from discussions on what should
be done to refactor backlight helpers in tinydrm so that
they can be used in other drivers as well.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 Documentation/gpu/todo.rst | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 22af55d..1acf84fe 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -353,7 +353,16 @@ those drivers as simple as possible, so lots of room for refactoring:
 - backlight helpers, probably best to put them into a new drm_backlight.c.
   This is because drivers/video is de-facto unmaintained. We could also
   move drivers/video/backlight to drivers/gpu/backlight and take it all
-  over within drm-misc, but that's more work.
+  over within drm-misc, but that's more work. Backlight helpers require a fair
+  bit of reworking and refactoring. A simple example is the enabling of a backlight.
+  Tinydrm has helpers for this. It would be good if other drivers can also use the
+  helper. However, there are various cases we need to consider i.e different
+  drivers seem to have different ways of enabling/disabling a backlight.
+  We also need to consider the backlight drivers (like gpio_backlight). The situation
+  is further complicated by the fact that the backlight is tied to fbdev
+  via fb_notifier_callback() which has complicated logic. For further details, refer
+  to the following discussion thread:
+  https://groups.google.com/forum/#!topic/outreachy-kernel/8rBe30lwtdA
 
 - spi helpers, probably best put into spi core/helper code. Thierry said
   the spi maintainer is fast&reactive, so shouldn't be a big issue.
-- 
2.7.4


