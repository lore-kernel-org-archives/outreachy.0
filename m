X-GM-THRID: 6466935626239311872
X-Received: by 10.129.85.197 with SMTP id j188mr20445544ywb.46.1505700784977;
        Sun, 17 Sep 2017 19:13:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.193 with SMTP id l184ls10126943ioe.15.gmail; Sun, 17
 Sep 2017 19:13:04 -0700 (PDT)
X-Received: by 10.129.125.131 with SMTP id y125mr20316649ywc.58.1505700784310;
        Sun, 17 Sep 2017 19:13:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505700784; cv=none;
        d=google.com; s=arc-20160816;
        b=VjszmScS+K9jFI+k9y/Ue9bNh0WUMzG3Xs2IKaZEfbUG8OfWh78rN20ZmTfWHYmP7R
         X4cqokV7pPFu38CUHu7Y+wODatPd96vsMekKrKNk0LjQ5EAV7ScPa8I27hGJaw0cvWAG
         hN1O8aQWUt7e8M30MlYT60EJcpMVp6k/4/vpwW3I3Oot9XgxEyRrU4D6LUIUcRquBQNx
         uVqW+k85WK2ubeKedN0ePZ3KmTJBFpCA4F9+GBI+o1rx6QAgfV5vl7ZwcULax4e3FcLd
         cr2iyCbXSxyrjhW20/HYJFORZdqx3zmJJQEixHhIhci17jyhp0hgfeD1+3IsAPqKbnvP
         xCGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=iVta+51m2lo+RqQlctzwk6soG8ZaxmqnTO/dTraS/3I=;
        b=Ssv/1d5Bx4g4pIq5AdoXkkcyOsmxFSIxMKVoWrN0fdQUIVTV3ZQS7JAqKrt7zMBcJd
         89utCUZpZkDUCQBPJDsjwKGWgnKR+uIo5R3JNl1fKyebNnLSWqRGPV/Mfl2dbSnQjm3E
         w4IdbFxqWI205JC5zrxYjyaw+RVlYhuRZX31Aa75Kzup9P+82W06WIm2NFsf/wNgwuZs
         Wi0EmuglkmDoW3QifWrIjjOpN5Nw/PDCOjnEns52uGh7FXCNMtpj4P3qWPJCa1FCVy6M
         WkFdjvcL5bdsamlRBN8h7auAu9Jh4+gwUNtnA2Fek/XcyqYWunsO1VgumIZyy3Xh/V/v
         ZiFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T9dQbDUo;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id k76si541169pfa.10.2017.09.17.19.13.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 19:13:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T9dQbDUo;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so3984826pfe.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 19:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iVta+51m2lo+RqQlctzwk6soG8ZaxmqnTO/dTraS/3I=;
        b=T9dQbDUoqE23UIhyRJa7CYeHGGitsLdYRUROgQUt6p/81X0I/jRGgNthZ4RAmUqpi3
         eQTdRL9VI+38F67nFw3jr3EfAEpAvRoFJVkRF9dHcFL9WmoVzquf8iIa4tyDo3LMJQNb
         kJB84MjDWcYPcvwDKGxB9xmHp/fSmhwJ9CapoRMxZk8L5Bpchbkp6O3WNEuHkyJPwan1
         FhdqNhzxdzDZQ6Q9htBTI+4k+syGIYD9TaTKmbf/DXung9ObLhn1e6Ssqcxh95EeYSTO
         NvFwFiIRJ047/lXlV/7AcYapqzPiLoSWuZYRycs3NRFDVGmEZ4ilRFiKR5ueJo75kCis
         eYrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iVta+51m2lo+RqQlctzwk6soG8ZaxmqnTO/dTraS/3I=;
        b=Q7xG+xNGiYWAS5bETkMzvrwE3w9gec9AQYmsXPwmahpK40GOmrSiB7T4hWr68qqaYn
         p7LMTs7650tFO4DT/cPauuPZlKHb4j5PnhP+Dpi63KmWsYBqzMXsQ+wLLGaqpV5iq2yF
         +FIBMoifvf+FaVIPOqwIwypk6rmQ4mQaLIyr34fCfkr67jZkfoXWqYxpkes8tZLq5OGt
         dpgXVyz5cBBkC07+ekzilc2ueNKMFsF/g+1UO5qHkQR4bjVxTPz4DFfGXw5QTOq+KX3O
         j7mSCIy/bsZjTkQQ9+SbuokrV0PtDMiIZFYf6TNmDchZPiZHH/A7nT6+5ipiwClLQcCp
         jlpQ==
X-Gm-Message-State: AHPjjUg4jrHt4ipmhSVI/J8COnl0yfHsuKlnUdyHNeJAVa+brk8TMDMP
	Ya1wX5LXRhB1RKJVA3U=
X-Google-Smtp-Source: ADKCNb7BBzHb+wW/ZLdbFLYWG1iGNWP0BcfZoMrAMeZKCh8E0zwjOPV97amaAdtZDww78pEJYkXH1Q==
X-Received: by 10.99.9.65 with SMTP id 62mr26974321pgj.395.1505700783864;
        Sun, 17 Sep 2017 19:13:03 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id d126sm12347858pgc.85.2017.09.17.19.13.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 19:13:03 -0700 (PDT)
Date: Sun, 17 Sep 2017 20:13:00 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: hamohammed.sa@gmail.com, Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>, gregkh@linuxfoundation.org,
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH 0/2] drm/armada: Replace _reference/unreference() with
 _get/put()
Message-ID: <cover.1505699582.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset replace instances of *_reference/unreference() with *_get/put(),
because get/put is shorter and consistent with the kernel use of *_get/put suffixes.

Haneen Mohammed (2):
  drm/armada: Replace drm_gem_object_reference/unreference() with
    _get/put()
  drm/armada: Replace drm_framebuffer_reference/unreference() with
    _get/put()

 drivers/gpu/drm/armada/armada_crtc.c    | 22 +++++++++++-----------
 drivers/gpu/drm/armada/armada_drv.c     |  2 +-
 drivers/gpu/drm/armada/armada_fb.c      |  8 ++++----
 drivers/gpu/drm/armada/armada_fbdev.c   |  6 +++---
 drivers/gpu/drm/armada/armada_gem.c     | 14 +++++++-------
 drivers/gpu/drm/armada/armada_overlay.c |  4 ++--
 6 files changed, 28 insertions(+), 28 deletions(-)

-- 
2.7.4


