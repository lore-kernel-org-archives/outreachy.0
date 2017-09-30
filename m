X-GM-THRID: 6470705412124442624
X-Received: by 10.99.55.24 with SMTP id e24mr528174pga.113.1506762228008;
        Sat, 30 Sep 2017 02:03:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.210.203 with SMTP id a69ls50987pli.1.gmail; Sat, 30 Sep
 2017 02:03:47 -0700 (PDT)
X-Received: by 10.99.44.72 with SMTP id s69mr896259pgs.85.1506762227108;
        Sat, 30 Sep 2017 02:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506762227; cv=none;
        d=google.com; s=arc-20160816;
        b=qt6spCYetQa425Rl9KIYeOCcvKnImTDs80Iuuhs/fZrKnTZomS7MUCJ08Yvv2MMDsY
         LaLf8BvJknd+oLPAUkCDSKhKCGltBvEEdhohCMfRYXETrOXzg8/IGVJ/XjnMwzTVvIVw
         OZMTstVzNkPyKC9gPDCyzhfaXLK5P2JVAz6c6i4aQH5Op5wJXgUnyjLAAarxF2/sKbz0
         i6ZN1EVJBHOFcsqCZJXfbAfGtXZJ8FGfZZUFl1OaPvmcpe6rZ9AcpcLCRKNe70MlUtWf
         Fd2UEZEj+Vl7CtbJwZ80rQtno/6Bk+Hfa5PCK4e/Aw2/e4LcHiamX10e9xWQFcOfyTwI
         IBZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=CHa+94Tmc5LFclWtB6STqFCJ0NwJd3vwNVd9KR3BjsI=;
        b=iBKU+bbTJICnsNf2YBQcWTNaXAxmJhWDqVwrpwhDOGKoWQ62PtLHneaCnvzP7sVsOc
         no26Xr/YkuHeelXcDVPwb+5PduGelqwIfzlYOZRKMtdpvM8pDGEsq2H0YwszdzJUm3wy
         MDs5LtW/Z0i39k9LCtXEGjXnhDmG5uPmUulhD1rPZ6edwMBmRpa+IpRY6fdXECF2KLvD
         pOagAW4DstHUoOEWOXPxZ9X9/YIKKY4MjIr3Y2eJeacoEtayCMg7URKgz+YJ0yNBaRGD
         mqAc9BmrCV1w5/mtLLTKg1ZkpX3WBOiMsei+pggE63rW/gEFCJyteiOcPY3E57gCwH/2
         IaQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZl18mZs;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id w11si657261pfk.4.2017.09.30.02.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:03:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZl18mZs;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so1239141pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 02:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CHa+94Tmc5LFclWtB6STqFCJ0NwJd3vwNVd9KR3BjsI=;
        b=SZl18mZsQNgxvSSuOqDdqp3h2ALm3s+kvnom1SbWTOklwLxGvpXeD2DtmPjz6xgR7/
         ueYTPtvaTU2/FHC83OkOt2oM40Tix/dU1FMEJRnmTZfJjOLH30yjX+v6lrdAVwGXb8UR
         zioSMTJ/u8jFXQi5dtjXPKGqoxJI5o+YefUNcTRmlJXY72edqkTHVsgoffTqMyCT+zw8
         SUu/HCNc8RSeiUx4FCFs7/iEwSIM4vBWO4Hn5fICKX0XkUj/CET2S0x4t8uMIsJoDzjN
         qP6J4YziCcnD8cpT6CHrijE2TJZ5MHWIHn34XsyvrSvrocunqurZ5qzOSuO4Y3routO1
         jouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CHa+94Tmc5LFclWtB6STqFCJ0NwJd3vwNVd9KR3BjsI=;
        b=d6GJdw6YEjT394bgfuw63gUACmFrkMr2TMtVemrslSJWniIAei0Ths88l6zZN6o5lg
         ifoouxBVz2gQTT9wJSkk2Z7Iunikbc59praibeCk8PrIHc/WQefxGg85WZfUFqRWNBxH
         YQMdfjgdDN7VN2thsX25OOa3Yfl+ilVKnNDTQDO527qx/iugLMLviVa30PMatu4o3wL7
         Z3kfJn2113yuYeobj5WnZ5wRGZoqlREfwaOBmdWR8p+107twa0+dQ9mEy+Mg2zKer2EL
         Nmj0CbkIqeN7maSaRII4Sbh3VO/ae5jmqAI+qPHslO8uTItlhovy1PTLv5tRWAkAn9Ae
         QwFw==
X-Gm-Message-State: AHPjjUivUD30R8VgqOYcoX7dSmNlzGK1LuF5rUqTLjsAzavUwsIZM+iK
	ESqOkV4D3yao28fqGGshWvw=
X-Google-Smtp-Source: AOwi7QB91sut3VBOgjS/m0QYrtyZDEdeqIF9z3yvbfwRLboBuMuTIMk264OVUjFQNcWXeU4fJP+9vQ==
X-Received: by 10.159.211.76 with SMTP id g12mr9600001plp.312.1506762226899;
        Sat, 30 Sep 2017 02:03:46 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id q67sm11787674pfg.160.2017.09.30.02.03.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:03:45 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:33:39 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 0/4] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <cover.1506762028.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset introduces some changes such as move
tinydrm_of_find_backlight to drm_of.c and rename it to
drm_of_find_backlight for better organizational structure.

Changes in v5:
-Fix kbuild errors and warnings

Meghana Madhyastha (4):
  drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
  drm/tinydrm: Add devres versions of drm_of_find_backlight
  drm/tinydrm: Add the dummy versions of drm_of_find_backlight functions
  drm/tinydrm: select BACKLIGHT_LCD_SUPPORT, BACKLIGHT_CLASS_DEVICE

 drivers/gpu/drm/Kconfig                        |  2 +
 drivers/gpu/drm/drm_of.c                       | 91 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           | 15 +++++
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 6 files changed, 110 insertions(+), 42 deletions(-)

-- 
2.7.4


