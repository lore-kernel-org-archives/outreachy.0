X-GM-THRID: 6758464167600979968
X-Received: by 2002:ac8:89c:: with SMTP id v28mr32490434qth.156.1573577562559;
        Tue, 12 Nov 2019 08:52:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:183a:: with SMTP id q55ls1017115qtj.15.gmail; Tue, 12
 Nov 2019 08:52:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqx8MVni5I2yqfAi0JUvjzJWMjdPN2XTtt1nc9kK2UHmokBZNshfaGAePcyEtZuY2FrFcXN/
X-Received: by 2002:ac8:3475:: with SMTP id v50mr32750429qtb.105.1573577561394;
        Tue, 12 Nov 2019 08:52:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577561; cv=none;
        d=google.com; s=arc-20160816;
        b=YcVTPulLykONLOvHywMN/MOtrmGaT8rajYKksmYk9socjJFF3BnaXXHmCRgAGpvLl9
         MKwvI1OqcRW0hg/Bm2jaSQ3h7uy9GcmiAcZ4lwkXu3Q8QLT0xcCrvSLOodhb233LtSJp
         BFmN9fzbNIQ0UT6UKy79swoP6v1kj2vMi9mDbGLka/qbuL2xCE42iri39J0WAvLejHab
         lWf8fCwjRkkKh+jgxf3jDPq3F0TxxDkiTZA77lF6PB7ZH3jCQWpX5ksKrf/lTDmHYQy3
         WieZ+Lz7QbWKmTtRXJDaLWbBumC9El3vaQq/PCqtwtV4//LKnMkBxT/BfRqtvgZGckYF
         5EYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1GTUTqPyKA7fdLFpvNIrbSjC2AnzToYwfHxXwFmZPG8=;
        b=kmf30E89HsmmQ6CHmX7jcg+unmVYwlvxIK4KPMJrtLUlZBpnkhVZ+AO1vh0JGcC2tn
         +MLVKxdtb/lEp3mUA/bY8rD+eCs9JgQOKkX+UXouGEvaRfbAQRksDqNfKCPEfknd5B9v
         vQ7S/MErU3+F7SIrSliXeo8xLljv+l8Hau2SjJVTwzbmSKUaftT4HOG/GOnldilKszKK
         jsaKMYrJZzZMpQ7Hu7sCWfrxWJSTYfSMpfWXr+7BVeph0vUCidhwb5QWPwCaZuoJd9Qj
         434K6dMov+Xgs/EzzOKx07GT5VokyFflDe0Ih0jy/jvfjkuv/T07iFqh5cpdsHvsgI4g
         Z6wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cT+cVRZg;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id x6si1250858qkl.7.2019.11.12.08.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:52:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cT+cVRZg;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o11so20428152qtr.11
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=1GTUTqPyKA7fdLFpvNIrbSjC2AnzToYwfHxXwFmZPG8=;
        b=cT+cVRZgssMPkfVuB1mxiAURimCdvQr6nSutxCZoCyLq96IJIKkl1nHQousqSqzlFE
         ZpB3pRD6QmMKkQoHJsdWoMyS+d8xVfPqfYaMwNHBZgpgxb3l4d8o/VwRahgifnLyH/BR
         uXt0uQEKV4Hs0gPF38ZYszGQqx+aixr23cuSOIV2m+5I/rtK7n4Quzgq2AYO5F4s+kJD
         hhvHHSFS/3HUBKfMDorynD20DUbGf2QX4DjPCGrw/9lDVIOB5BxO57177yL5Ciew5uSd
         l8oJYfn+LFfGqdlkJUsZSgbdxCh5SgysGc7heTXBnqfl0sYkrPknMaXlZkRoTZmcC3v8
         MhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=1GTUTqPyKA7fdLFpvNIrbSjC2AnzToYwfHxXwFmZPG8=;
        b=O9OmBgCf76MwlTLnIlg6f3H+DXghg+245O1BW7Kv3T2WtVJKHqo0vzpM1ofq52tPsq
         k06GXRKcRV0khoemxmu3FDNM+Nj4UVaX7i6QIkp62QwkVdixU/AAb8UFXl7m2BVXB7cW
         ajFBq4IMVWoz/tQXpPwxVk7z52Cp0zHHDsrYTfXgx6Ca4TjNxB3lGy9t41IQn93T5UOf
         V6EjaVR3mgMN1k/TJlG0M7kahk49LOqHxh0COiwbVOzy2VsMsGFv24mnjuMXBc0+xgXL
         KdNuUyMvdHyy5zQooX8Rq++ZeKyE7fVRR+Uu3jynAkjzEeZkxBKe3MVeonp3H98TZKxL
         Sndg==
X-Gm-Message-State: APjAAAW3q+JCRoE0QrouJtlxR25lgz/Ya8/JZOfAcDkO54xlIuac+1/v
	M9EEHSJZw97+SnDhOVkbYsI=
X-Received: by 2002:ac8:60cf:: with SMTP id i15mr32626740qtm.339.1573577561213;
        Tue, 12 Nov 2019 08:52:41 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([162.219.176.52])
        by smtp.gmail.com with ESMTPSA id q1sm10477714qti.46.2019.11.12.08.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:52:40 -0800 (PST)
Date: Tue, 12 Nov 2019 11:52:36 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/9] staging: rtl8723bs: cleanup patches
Message-ID: <cover.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset performs some specific cleanup tasks on the rtl8723bs
driver code.

Javier F. Arias (9):
  staging: rtl8723bs: Remove multiple blank lines
  staging: rtl8723bs: Remove blank lines before a close brace
  staging: rtl8723bs: Remove blank lines after an open brace
  staging: rtl8723bs: Remove unnecessary braces
  staging: rtl8723bs: Add necessary braces
  staging: rtl8723bs: Fix unbalanced braces
  staging: rtl8723bs: Fix incorrect type in argument warnings
  staging: rtl8723bs: Remove unnecessary conditional block
  staging: rtl8723bs: Rename variable

 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 186 +++++-------------
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |  19 +-
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |   4 +-
 3 files changed, 53 insertions(+), 156 deletions(-)

-- 
2.20.1


