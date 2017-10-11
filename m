X-GM-THRID: 6475500386308325376
X-Received: by 10.99.110.3 with SMTP id j3mr1837892pgc.121.1507694922859;
        Tue, 10 Oct 2017 21:08:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.13.143 with SMTP id 15ls80531pfn.14.gmail; Tue, 10 Oct 2017
 21:08:41 -0700 (PDT)
X-Received: by 10.98.147.207 with SMTP id r76mr1224860pfk.56.1507694921606;
        Tue, 10 Oct 2017 21:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507694921; cv=none;
        d=google.com; s=arc-20160816;
        b=jbHuMM3Xj16duS6KNS3THAeIN7XyC7MjTZBP4vIrr1BhZ5RcSNpZRjrbNCPgiCgQIG
         1RaMXfmOlMeT3bcKs2pz3ciu2rgJWD7fiD4DeIUFJ7AZ4dpoiXvEnGzv8iLbAu8Pm3zb
         0mRGtc6/xJcVZWHcd5F3PhZPit/bPuyGz836IVai+D+kqw95k/Rz4q9+KN5LkcFHUhRb
         JoKXE4LjorfGGf+dQ4KBbzDK+ohlHAvUolbvOa13yn43EfV+12S+iZHGPAf4coGnGxsc
         ftmLTu7DtKvDB4WGioX+jBGrFdHQ9AR5sT89on78+ZB986MhSx2wKngTiWv2No8k6rtk
         dwgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=Q355fGMUiJ4skjSyKITkjOxk65syW2YxEFstiYUcol4=;
        b=XdVUpZvnIqwIwcWr4tG/u0yIldEymS/6nGH1nnRD8vYW71FcHgIvENhnNNgWK6JPFV
         DQHZJQiOvgrr9XWWwQwolxnWSEFu8aplnAsbnSDMnH7g8HbQe8Wpz+MU/x3I0GNm1mSc
         Dd6dCyuuJL6YF93MpLiTxb/S/5RId36TeoKx7alf7yAr+cpjkRsUp3qHH0S0rcUOZO0j
         rOhYeZoBclB77dykL/pSKlhrbWzitSgP7nYqgozsVqSVSuNoPhFuWaerbynGpxCUYd3u
         PHJcBO0lIP2onZF4PxN2FnxuQkYZMJHxIF/sbbYaqw1V8fUfQWnViUVuDbi73x9DwG0u
         Y6FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X/9mIEXK;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id w124si1339672pfd.18.2017.10.10.21.08.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 21:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X/9mIEXK;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u144so731960pgb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Oct 2017 21:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q355fGMUiJ4skjSyKITkjOxk65syW2YxEFstiYUcol4=;
        b=X/9mIEXKXBCD/PDBokJ2KbrLGV5zrFDD4NuJEnC8pUZsvAGUgSFCR365zYWVla/xL+
         fkKbfwpSr+MsCMTk+pmEPcFXHhZH1+vjdMyJusJYK5KmGRGWSxIKIKYWFTq9UkQX7TrT
         wZ8E1UWulYecQgRKow2yrNAiaZafji4D4jrnYs+Ud3Yn8YZfu2axXZsA7vZIb6PTpQFh
         laRCse4ZPrNAA/XulDdWXhHzCiPnV3YmKLRYl4G6uPNMfAntoxCaDHN8uu9KYMZVWQsn
         asB6qKjEpwtsqIXLTB4EKMTAhuoKzJFpUqMSt06f0VjbMxX6lPFgNGRj/hOeHFyfhUln
         HjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q355fGMUiJ4skjSyKITkjOxk65syW2YxEFstiYUcol4=;
        b=eWH502TdZBujfCJ5pFYBWk1Ji6B17kvSQ+XYVP80NLX4b0j+GS7uHO1f2EGvliHhTn
         ZUHSEaEo7CIy1z7YugB9enMYzE4W7h8Ybh5Sows3jTcsTPd2d70gLSLpSTozWXObyTzw
         w8fe164pGDvoyLpSYlXr7Kyv6M+AiEGczNOXybLLhGQgwqj+/qboxgZS3ZnhiMgi4kJy
         51bEjVoHo0cdK0gOyxc/kdTz3K13Ndf7AwLr2wMsIYvgiy8B4NSTzE9baU//f8ueoYPZ
         UK85qOOI+vqR28HJ6tkH84Nd5jDyLnvTNDoC0ZAWkdUXaURMQZrjk1AbZX6wFJ8eGHwF
         9lzA==
X-Gm-Message-State: AMCzsaVMExMByXV5AtUN+P7oSWhXKrqpDQWBgqQR14ZCBq0Mn9aH+oiF
	aGbFjTdVON69BTUHycoCNrk=
X-Google-Smtp-Source: AOwi7QCvAyGQxhfXmG34SPbNVOQfjWJWii9yecZbrr/WXGfxTW/TpSvZ9iC5SykR0rrC2B+CVpUUkA==
X-Received: by 10.98.217.2 with SMTP id s2mr15547276pfg.298.1507694921354;
        Tue, 10 Oct 2017 21:08:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id c2sm20664563pgq.61.2017.10.10.21.08.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 21:08:40 -0700 (PDT)
Date: Tue, 10 Oct 2017 22:08:37 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>, gregkh@linuxfoundation.org
Subject: [PATCH 0/2] drm: Move debug macros out of drmP.h
Message-ID: <20171011040837.GA30618@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset move debug macros from drmP.h into drm_debug.h and move
printting related functions from drm_drv.[hc] to drm_debug.[hc].
In addition, it fixes old comment style.

Haneen Mohammed (2):
  drm: Extract drm_debug.[hc]
  drm: Update old comment style

 Documentation/gpu/drm-uapi.rst |   9 ++
 drivers/gpu/drm/Makefile       |   2 +-
 drivers/gpu/drm/drm_debug.c    |  75 +++++++++++++++++
 drivers/gpu/drm/drm_drv.c      |  47 -----------
 include/drm/drmP.h             | 149 +--------------------------------
 include/drm/drm_debug.h        | 185 +++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_drv.h          |   7 --
 7 files changed, 271 insertions(+), 203 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_debug.c
 create mode 100644 include/drm/drm_debug.h

-- 
2.7.4


