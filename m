X-GM-THRID: 6466935626239311872
X-Received: by 10.202.80.74 with SMTP id e71mr2974589oib.113.1505933496121;
        Wed, 20 Sep 2017 11:51:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.132.194 with SMTP id x2ls236775ybm.4.gmail; Wed, 20 Sep
 2017 11:51:35 -0700 (PDT)
X-Received: by 10.129.96.132 with SMTP id u126mr3340945ywb.70.1505933495369;
        Wed, 20 Sep 2017 11:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505933495; cv=none;
        d=google.com; s=arc-20160816;
        b=DyNbM8tAAaBOxdyXXPS5z4n9uKv6MPl8wHLbS0TWj3oqwOY2Qmpco3KG8lrrT5Y/6w
         2KablPTXRNKkov31NApIxJlHnPTeg0gyH0VEyehwbZT2q0NH5loG4jENcj+8w+c4A7yP
         h3TGW2AP8ZIN5Np6tb84i5qFtzE3cnM1efX8jOKNTZ4SNYm2cLi6SY/hrYYUC8a9Jfv5
         is+p2Ed6iy74tZd2fROHceWGD+icV8tGKok9XG8BWDX51puIS5Xx7PpsRF+UCFZzFR4H
         LYqbzxW1IdAlcQ6ttuRjgKg5go2GTX6VNlPO7K7J9wDAF+anm9jpKEKPuz2Texhwc1jU
         hTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=iVta+51m2lo+RqQlctzwk6soG8ZaxmqnTO/dTraS/3I=;
        b=dJpTUYOfdoWkwF1yHwyWACyg0vF9Y4nuwgVBoZ3Q/Mvz5/UeduY6NUBy5Zp1ZdhA3I
         ePnLl32U7ZfKxYkyRvP6RgdlHHBFQElh2iFYmMBRRhXvGNNG+bIg4+cF6TIpWOqgy87/
         kJh0ueT6jqeOXFnyFm/61FIWpHsdvjBV3OjBiQcIXdNnua1dpiI56nn0DyIj6EEhEUmf
         1SbEhTtp0FyVIsc//hB1xrVOWPnpm+0XIsmVwjKGnSoJYAWTWbQ/emoyJxOlXOB+vzmd
         CLDBzoLdi6VBhg2/wzROKW4EWADBwSC8Ff/DwYRJUsfFwR0P4i9gSZ4hs8KsCKnkHVvp
         7hkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3EQJoLN;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f189si616325pfa.1.2017.09.20.11.51.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3EQJoLN;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so1517385pfg.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 11:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iVta+51m2lo+RqQlctzwk6soG8ZaxmqnTO/dTraS/3I=;
        b=I3EQJoLN2MQDzcGAUMJW914TttUCLwJSCaDMi/1DBBF/E7b35SVzmSAdhCJeRPlV1u
         3a9EljsrLBKIo+RjXPspsOmSeUaIHqzhuGipVYB3KK459c+QXL0vcNlTayb1PNp8d3ZU
         jDMhqj8EkIqwI2uuW6rvtADiDLuPqmUeY2r97O/zcGItRQOb+BV7P6wMFiako4Jz1t+k
         diiTQLX24AtbkwhllQo0UbAT2JXBh3HAS5VoX5UYIvo5jWvMzMqnGdu0m7DRWDFucNHy
         kKwtiKQXKyhGWB0BoRjylvIu9se2oYMxzSrhD/eNSxJks0TJOa28apemZLlsJExpnGFC
         vS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iVta+51m2lo+RqQlctzwk6soG8ZaxmqnTO/dTraS/3I=;
        b=jKUqVpWyxY1l6Ft8LYURX4EaO1nKmq3XozmyQS6JFreXUYczBBo7hGgHwBcLB02dQz
         9lFzQS7jQzah8gIK7BlvRpcbgt6Ehk0vLuoT6yJCytKBY6pUIx8GTlT6qUBax9Bm00r4
         QZxTewKy6pKMuc4pz8vdACjarlWdTN8omlwv2NELzIc8kwb9kVb0nEkJT5UHSpB5Gesu
         RBbDOGfDQJwbL0lD+/nNxf3WcAQ32PtVUW2R/parSm/Tf7s1kTvmXlVv4QPtddfzH5fA
         J8Q60oUVDO45zfVO3AsONev2qOsEtq65gUFPap5kSsrSgLM9CwtZ3KBq5KoYvubDLuav
         1hbg==
X-Gm-Message-State: AHPjjUh21fl8Nx9NohgPrsMJeietEnzOwwQfV8AtnBnTJCwZdFYd+jIE
	WswSlwvbYqnfsg+Vo7ICjpu7PzpQ
X-Google-Smtp-Source: AOwi7QA008thNYdnoEfDbQl6f1axj8kZnvFPqKbbGR9ilwmenei3xXsQ0+xcmafFRX9zpuyL0NMR/A==
X-Received: by 10.84.224.136 with SMTP id s8mr3041137plj.324.1505933494866;
        Wed, 20 Sep 2017 11:51:34 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id d80sm10352392pfj.170.2017.09.20.11.51.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:51:33 -0700 (PDT)
Date: Wed, 20 Sep 2017 12:51:31 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: hamohammed.sa@gmail.com, Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>, gregkh@linuxfoundation.org,
	dri-devel@lists.freedesktop.org
Subject: [RESEND PATCH 0/2] drm/armada: Replace _reference/unreference() with
 _get/put()
Message-ID: <cover.1505932812.git.hamohammed.sa@gmail.com>
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


