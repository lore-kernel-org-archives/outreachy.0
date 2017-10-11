X-GM-THRID: 6475592721521180672
X-Received: by 10.99.179.77 with SMTP id x13mr1306238pgt.162.1507716421826;
        Wed, 11 Oct 2017 03:07:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.71.200 with SMTP id f8ls275129pgs.7.gmail; Wed, 11 Oct
 2017 03:07:00 -0700 (PDT)
X-Received: by 10.101.88.77 with SMTP id s13mr1440589pgr.173.1507716420697;
        Wed, 11 Oct 2017 03:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507716420; cv=none;
        d=google.com; s=arc-20160816;
        b=k5BRYR4TswsI3n2HQtqN5QbfYh6nuDrUV+iDPeQDRmlcwDnsvLd3Vb0WQJlZ3a0Vp4
         uPbEKEsM58YfAAyR34051bJHC6zxOvTWJ/VzGZPvmbQa7nikCTFOg+J7PfKi7QiLmerQ
         MuFLZcVXA7ScmHk7I4rwr9Q4MHpJpOiteMYbXJ4nILx4ueovuWP14phFicIxmDhWPbFC
         uCUdQ4bj1AXjK+KmYhu2raDMihtRvZ4zPBpMi53w5A5YNNcBu5ZPRTNhYqAXbqDLDtQE
         +Oj5P1zUAEbd/56j5mmoNq6rbmRmg9emHO9d74tpZq6TOIwOXKaBnspzI13dfKlYnQ1a
         00Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=se4fLuX8XDKxuJtbMo5cusszBPmNKt6VvAaBI6AWSgs=;
        b=P0h2pOyq06VBtTNHPqepy+gvj+EtFltKvhX4aNgv8m/zaJXdQy6ikHtGDCL7gkan8l
         KTTcgeq9/wfZNOGlY9e71MH1SvCuvcssrxq6PkMmGKfHoTD3mETcF1g6DLhCnfdjcfB6
         HASbreMYn9I6ZUZWB0AINdpx/rnsmVsOIkEatpKy1T0G+MAqFN7FIdxwBWdL7fEuxt7d
         MTeG52U98KR7k0gWxnr7vtdAKYJh0oHbShAA+um4lW7t40IivfxDrJBqch4Yp5HNqcmm
         xOrBscvqqal/hnt9ieGRBujaYRntSgTn+12Vrrqyk/oQ5rzjo3CLfGvelQ7/5FslMiGo
         BsRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uynseGUx;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r24si962346pfg.16.2017.10.11.03.07.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uynseGUx;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o1so1695204pga.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 03:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=se4fLuX8XDKxuJtbMo5cusszBPmNKt6VvAaBI6AWSgs=;
        b=uynseGUxZMOnv8eH/u+S0EEmyyrnyA+9Vu6g4jPn6aZIYIWcAlX8u90hENtn6yHhr8
         7gielf6fx26xJNMTXGRqDwtkjVlYSzFG0J0eJOUwY5IX3dL7SxIOrglzJ6jN08mGHBSH
         +u9PGd+L0x3SHs1KSl5aeB0LM2sZDDH8bu/ND0/oIJbs1oDJVaP+2Bft1tgbmrefQ3wD
         LI+It9mUUaXgbe5EkWPryofXCn8ncn5uVeVvQBAuZ/9gBxXTxNDWWjHX3drqkgl4JV9M
         JhEa7jCkGIGajp/8R7rfsXoinnArV6B16wFz3i40Sw27yskTAftqmWryKmIsOFcYR14L
         Gf4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=se4fLuX8XDKxuJtbMo5cusszBPmNKt6VvAaBI6AWSgs=;
        b=XwekVKq5PuPXCurXIN+hiUo2VS5BFxfuGmouMIGp8h0dQwLABC7AFN3PoPn3qFyhwQ
         LCE7h4NkNdS+3d+++nDsFYLEfS8oMHkyobahyrr1TXHVUqel/aOa1YN5elT8IR81E6yM
         Czv88eLvK6g5g21i/PTJSzw0ldEc0IEdV4Mr42gFtKN1A6SxZrFyw9RvGWHh6sJhBffi
         bWxQov+PwPUKMGzgsp3m9H4PvCUCRUWL13VXa+/tXpEDUEMk49RNFahjbeDoUh+99xSp
         FvB9h6evIau+Xo1qke6+x78F2xGcQMcR61q4SL7Q3SgbN5lea9kLT6lLekaNYaIebFWY
         bcRQ==
X-Gm-Message-State: AMCzsaX0BI2Xb79nnGbzcbwf39YFetgLCmpPUPPvv5x7LSbGkjzL78uQ
	p8tz9H+GDRTQC+SVAchZjgM=
X-Google-Smtp-Source: AOwi7QD2tTwef5CfxmPHJYwdGR4Oe5dlsizAi0eRNtrUy31G2n7O2vfikDZ1wj087JJWFeDXgalK8A==
X-Received: by 10.98.13.154 with SMTP id 26mr16333197pfn.312.1507716420419;
        Wed, 11 Oct 2017 03:07:00 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id w27sm25154093pfi.18.2017.10.11.03.06.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:06:59 -0700 (PDT)
Date: Wed, 11 Oct 2017 15:36:23 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v8 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1507714297.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move drm helper functions from tinydrm-helpers to linux/backlight for
ease of use by callers in other drivers.

Changes in v8:
-Move backlight_enable and backlight_disable to linux/backlight.h 
 as static inline functions.
-Move drm_of_find_backlight to backlight.c and rename it to
backlight_get.

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of backlight_get

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
 drivers/video/backlight/backlight.c            | 71 +++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  5 --
 include/linux/backlight.h                      | 55 +++++++++++++++
 6 files changed, 130 insertions(+), 102 deletions(-)

-- 
2.7.4


