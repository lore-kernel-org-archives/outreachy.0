X-GM-THRID: 6947408169247178752
X-Received: by 2002:a05:600c:4d95:: with SMTP id v21mr22481580wmp.184.1617569515397;
        Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls5683818wrb.1.gmail; Sun,
 04 Apr 2021 13:51:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSFq55ShYVGGAiJahaR768wsAWvzp91NX2hOV9XdLaUFM+sXtK+JdCMkcl1G+3mM9kpDc7
X-Received: by 2002:adf:90f0:: with SMTP id i103mr25412559wri.318.1617569514138;
        Sun, 04 Apr 2021 13:51:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617569514; cv=none;
        d=google.com; s=arc-20160816;
        b=QZOASHwcGnhoophwW4eaDKfJMwbKN8d5YWNVtoT24CxP7czzdLQOLwrBCGZW31AHc7
         LaBBbtvezG77AurBL0Ejyzdg0uZsGiyXOr6E3qJjmjatDSBTJlKzrLcTFbnd9vh6aHz2
         Y+zJp+BhhI2l4vEYxcF7HrmN5uzjlavsTd1QJi9B9BMjJmHvldHw5uKHTEj8p8Vpw4ji
         uj5h4bsjf6WaCXvIVXxLiUPZ7/Oct/6GTXM/Pn+ial7jfzzogcpH/MurZWcWbTyBYQ5+
         UyzPRC0RgAjCqDARS1sJqzK+cl90F9aUrPWdqaDZ2xP5ZbUoujNK+BdtRtlM1RBJJluD
         etog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=nd2uOMxAh5X4a/nY+KPVcgXpJ+Zppj7YeUaSujV7w+E=;
        b=iO8FVa+jCUVX9p15aCATCYuO7YXNbvgd+mmpmwfrLkNS9pdGT4x3Vi6ZS5wkbiMDH8
         MRQU4Q40/g1L4dFkaWLgXOYm34TFIutcjqB/NyUI7MxtadSKzGx03r3xQcV9OwP6bcDz
         rWi6l7hCb8I2lLVpq5stAkfQBbekuVqoW1JbRdUgX9EiJe7Iq/wMskKLIs16UJ4wt3o1
         xE8TdmnFbXuJ4AV/+pgUdTy3nAe2OTzjYiaF8oP2AyJ0ttJBPef841rKwc/W6uWZ2vN8
         E+ellNRzJCDvDhqH8EK/FMMVGlrshLoTSc1pM6Mi9ATgR0Lm4lUgU3YqnFBJxuf7DSzn
         j7Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q42M4a3k;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id i16si770243wmq.2.2021.04.04.13.51.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:51:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q42M4a3k;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22b.google.com with SMTP id 184so10828439ljf.9
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 13:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=nd2uOMxAh5X4a/nY+KPVcgXpJ+Zppj7YeUaSujV7w+E=;
        b=q42M4a3ki91Ecw3m+TFxNzm+HK46z6MYd8UeYQSI8qzPU0LKX8smzmYn+VS8qNXyBf
         MUJEV8WEXLgE/nz+QAotTlNh8ZeuqGtZWZ/hH9H0FX7ymD7ObTmxEJfgUVq8zdx/2mkG
         4BJjcWOIp5zch/A0CMVOHZOBw2YA6z0G/fmZd5mNSHOOUqlqHvGdr4ugNmDveee19SbY
         EueX+XYsk131jzy6+ZGMmsNPBxLky2kHeh0K3iKO6qJzt/7g1nVm7pEseSRleYCrTmou
         MGBGJm6d/tYCv77DuQt2KxIA9cacZb5DRHBVNYiqw55OJaFH8bbztOayhAMgxv4NflP7
         tviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=nd2uOMxAh5X4a/nY+KPVcgXpJ+Zppj7YeUaSujV7w+E=;
        b=T7fd5hYoHGU9cgU/EpNV7cYrNS7ag2yKv6itUCpwXs7YQ3874lEbaSzK2+5DrVF4tJ
         1UFKmPwPjZU/MkhcgC6lPDka/KB2fH7Zyij12qOLp5cGuD0Ep/tTRa0K4HQbKoyxDiea
         fQApjwDXO/xpt9Y/B/tKO2dVyTe4Q4Q9eIdO8YMuLFdyUx9+tO1F4AHy8CLMzRoQ6e/r
         wzBWXoQcsJCjFkIYkCAhF/B00xNF9WWP9weno1qad5s/E6I9Ef1kmzeyb20NA/IDdK06
         jJalmnq5Fu6vXjqBocEFYkMPDXNtOQdye6dmUilCS0maPl/pjoHCprGekOJwN0SBRp5K
         lDHg==
X-Gm-Message-State: AOAM532umB1s9XKFCw4rFioziLu3hOpceTdqt/1sDigG3ujMQnR1e1yR
	fzCbZVnCKm5xfGGWP54r2gKtNzn5Wu84/7Ik
X-Received: by 2002:a2e:b178:: with SMTP id a24mr14114441ljm.329.1617569513722;
        Sun, 04 Apr 2021 13:51:53 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id x17sm1546124lfg.164.2021.04.04.13.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 13:51:53 -0700 (PDT)
Date: Mon, 5 Apr 2021 02:51:51 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtl8712: add blank lines after declarations and
 remove extra blank lines
Message-ID: <cover.1617568354.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset adds blank lines after function/struct/union/enum declarations and removes extra blank lines.
Reported by checkpatch.

Zhansaya Bagdauletkyzy (2):
  staging: rtl8712: add blank lines after declarations
  staging: rtl8712: remove extra blank lines

 drivers/staging/rtl8712/rtl8712_recv.h     |  2 +-
 drivers/staging/rtl8712/rtl871x_cmd.h      | 10 ++++++++++
 drivers/staging/rtl8712/rtl871x_event.h    |  1 +
 drivers/staging/rtl8712/rtl871x_mlme.c     |  3 ---
 drivers/staging/rtl8712/rtl871x_mp.c       |  1 +
 drivers/staging/rtl8712/rtl871x_mp.h       |  1 +
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c |  3 +++
 drivers/staging/rtl8712/rtl871x_pwrctrl.h  |  3 ---
 drivers/staging/rtl8712/rtl871x_recv.c     |  1 +
 drivers/staging/rtl8712/rtl871x_recv.h     |  1 -
 10 files changed, 18 insertions(+), 8 deletions(-)

-- 
2.25.1


