X-GM-THRID: 6470705412124442624
X-Received: by 10.98.238.16 with SMTP id e16mr1016064pfi.20.1506878698152;
        Sun, 01 Oct 2017 10:24:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.4 with SMTP id r4ls2493169pgt.9.gmail; Sun, 01 Oct 2017
 10:24:57 -0700 (PDT)
X-Received: by 10.98.79.157 with SMTP id f29mr1011425pfj.13.1506878697114;
        Sun, 01 Oct 2017 10:24:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506878697; cv=none;
        d=google.com; s=arc-20160816;
        b=ahxJsYOMt7KFXH9BfVWJUE198rcfP3jT2d8mJjoFKFiow+LaFrKiwmTVxyFCGxvTp9
         4XN9J9B90RkrGFWfoLTF/lYn0Du+Uf7/53Gt3RC7laFCXV88+D8/J8NHup2vXEK5XISE
         OUkySLpK9VvTnGuP9f85ySP7VnoSiYAH430iZqb0hIDjuLSf9XHdgFgniyxsikTCOH+2
         Etm1CiKLGEDmPnx+Rwm/MFzAxDcqJukAnbfnQb5l4e24VRghiVKJHUQmkKk4VcZp76gm
         R0MDrMsGO15IB4DvpzZdN05AkGdFzmzD1OfqWiLWbzTQgtXfGHRWDAgdWueJEEUchgeg
         T6tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=+1QUccEfPk/bpiZdXITirCQTDgDvdmgaFqwh38O7lTo=;
        b=DEaosWY8mWB5Fl/HYe4ARurp7to+b0XUWoNRLT6LUPh5yKGCRWMkvpaTMNK5TrNLxB
         diH0k81JPFV1tiY78iB3/AMIg7uH1Vu3Ho7ir5Zd0nhcUbeLJLZcoYIafg1sEv8ItHKT
         abNaL94Ylvt6jj+HZKFw1C9DcFKLswkWlUoPGOfpmZDauu0+UMJZm6pxdYU8OHN2kGhK
         i5oqu/o6xVFYGzwHOYAUjAD10zIQ1tYg4GTHCR3VmbK8wrxEF6NU8dk6uAQQM70ZjUKk
         tzr+CORvTWvH7XnZ4CUetr9OddpIzHSuy7qGFwEyFc6en3UbUZ73khMiUN7DP/XxW9Ek
         kCvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YezvpfEW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 13si879220pfk.26.2017.10.01.10.24.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:24:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YezvpfEW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id d8so3607784pgt.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 10:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+1QUccEfPk/bpiZdXITirCQTDgDvdmgaFqwh38O7lTo=;
        b=YezvpfEW6M+X8dGXbbGjilifjGnIbbdoc5rLxAav+bR4qRhU0iBbMM6qbSvhSmjIjd
         RVJntfaCZ8xBoT5Q8CE9t1mOh0GWAr8F9bCK0ceFylK32ZFqWvqVMkBsARp7CZYw+iJ5
         fINWd1XiVYfeG/6M3r1wtcvjFAVTC/f/CAbPXDsc/9KV26si05q2lU/1OAodNbTPNBfH
         0DWfJ7yG0NQqmAiP/n14J5QY7Nbsus6ofZms88LvR8SNSZDhE2yBwO/s1RlY/GxBStAE
         vtxMBQSemB4VGCv6kugJcpZsl24t7Keb+vqLMr3Fb39/CPmTOnKZJtc6J24aZaUjVBcG
         vN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+1QUccEfPk/bpiZdXITirCQTDgDvdmgaFqwh38O7lTo=;
        b=uRj6hXdimcS4yEVm6rd0uYroTTknf+RvEup6GtJDIrF5M1/nJo4l9UWGXGV7A/9cFs
         WQtSJt7//dh/HFh/fFFrSo7H4bVSQZgWTzhhtF3BCD5Fea1HiC4BJcCgXjeKY/OaCNWm
         A8AM5uppeFr3Kf+nMmiLag4ZOFQXDtMW1GtUQfm8sHO6nVJzIjHFNG+/+RzRQN5hOYtL
         2R0tNBRXBo7ZiuFpybyYQQK5aN35YDDTxLpcIKhJiZhfBKCncDjYwlM9n7Czbgx8BUjD
         8Y1j/CldxeUo46f3Ci5Jir2QyX3bir5VcOEVOyyc6JM/SM/10jw/UWAMQZTPDCheYJk9
         2wNA==
X-Gm-Message-State: AHPjjUheyIFnm0/XSBWL/hZULKTeavtB4KpzUm6t/O+FKGcQnVm6ZbfC
	WGI9BjYQXvWzrfCk6AVUku+928Ho
X-Google-Smtp-Source: AOwi7QCE1MSmC+E9efZP4fekUMqtu5MWRy/uyKuuY6FmW5qo49HxXGPo+TCIZxwReuilrW7FNQAYYQ==
X-Received: by 10.84.135.34 with SMTP id 31mr12411071pli.306.1506878696833;
        Sun, 01 Oct 2017 10:24:56 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id a1sm15796440pgu.47.2017.10.01.10.24.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:24:55 -0700 (PDT)
Date: Sun, 1 Oct 2017 22:54:49 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: [PATCH v7 0/3] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <cover.1506878301.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move tinydrm_of_find_backlight to drm_of.c and rename it to
drm_of_find_backlight for better organizational structure.

Changes in v7:
-Move the function definitions/declarations back to drm_of.h
 and modify the config option for of_find_backlight_by_node
 in linux/backlight.h to resolve the build errors.

Meghana Madhyastha (3):
  backlight: Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
  drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
  drm/tinydrm: Add devres versions of drm_of_find_backlight

 drivers/gpu/drm/drm_of.c                       | 85 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 ------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           | 14 +++++
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 include/linux/backlight.h                      |  2 +-
 6 files changed, 102 insertions(+), 43 deletions(-)

-- 
2.7.4


