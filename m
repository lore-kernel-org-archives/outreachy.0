X-GM-THRID: 6803716874412490752
X-Received: by 2002:a67:f648:: with SMTP id u8mr9561929vso.50.1584113779510;
        Fri, 13 Mar 2020 08:36:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:a989:: with SMTP id s131ls554576vke.4.gmail; Fri, 13 Mar
 2020 08:36:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGo1mtMkwKcoWH2qv8EsPCDtmakfrq3XAXQ2fl7lNx4gSgACvbWBWbAyqUV/x8OSzjCICr
X-Received: by 2002:a1f:6182:: with SMTP id v124mr9111504vkb.48.1584113777842;
        Fri, 13 Mar 2020 08:36:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584113777; cv=none;
        d=google.com; s=arc-20160816;
        b=kkIgWgaO8laBfy7arkqKb+WlfczYNPmscSRU3Xlk4YNs8PDeKFobJsljzcjolF2qLq
         1DQ/pqE7HOEKKzWOjKxcba02YMm8tZkmKdrBD6PfBrNeuuThKS/c72mmQiCfKF4TeKbG
         rCE2IB+nYEQ5rQhf8AyVLveuoweTNs/S4Bc/DDVkZcYimX38NJ0qblT/imirxRQkmof1
         BgHSh6+CLI23pNKSJKQtmubc7W7/VJhnNN0d3fY5L7Xw+Z8U4Hzo2bZ4F/JsM8y4Ts0R
         SWrU/YkmtKa0ENmJJszjTAxA1g4/o6zX5Z7dl6MRw1D8Hnf0JDNk+N3qHdZW7mGmjzQE
         gEig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=g9BhPHoKB3v8z77jy/UurkswKK+hUcQTaASWVDGt+8M=;
        b=IhgzBaqq76BH5JJ4jhPdYLqy4GcuuDnC+fuT4y8USoQ1GU+LVW4nbZ4WHcJhSvkcw/
         pcJ2dMk/349eI6T90pqq5NOGC0Hlc1O95DIKvDCCc6W8O7v2w3WBiNo+zx4p+UWA9/rH
         5v7cLUhk8wJaGFy1wl2P4/hsSHu3DOaeZUllvVBf56Z21AEeo8E9FHCHKvdo7tO6EaAf
         IEZrFMw0MQOtlhPvlbop/f5ROzBbqnsqIiNUfLKOGXaoYi55V4AcoMjvmvkC6sB/hC55
         jDw7iG7NZE7sIlHZc7Ni+a8WQRwA99Igf7xkHUPsQ0vsZ1NqEkMHZsuhQ6rMbJNwJ6K9
         +Vow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nghXUgTj;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 205si428451vkw.2.2020.03.13.08.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nghXUgTj;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id mj6so4168771pjb.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 08:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=g9BhPHoKB3v8z77jy/UurkswKK+hUcQTaASWVDGt+8M=;
        b=nghXUgTj64Yqj/zkxj4afDau5IXS3ENmNbEHIpaWgA2ZYNYnhbAX+swXeMlTtGWhOZ
         JPv3TyzZMLW+7D1CFNNKYnC6D091YyZl887XJCDF6TNxD9e1Sh64YkJ/1SIniWjdFxqj
         H/x9XvIyq/6fpOR8jd19zAv7vn5PtZ7erOgVz37Z8jnFef9MhQHvraBRIbxU6ReoH2my
         vi3Ji9/mlMrGub6MCuoAOA4jS1/y9kq2gkP7nwcBQ1MTPAWfXrlb+iy2kQ70R3F0u+aP
         ExYfAk0YFiygfmGTNcHClUgJRYo3og63SzcBWBJe+5cXeaWpBfAbRPvDtejR9DCjxHa7
         lvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=g9BhPHoKB3v8z77jy/UurkswKK+hUcQTaASWVDGt+8M=;
        b=hSbPOLH8BLPh18I1iUYLwWXYRodxmeXAteSRPWqfYDGZHMSn+pZ+VGbCVHp0TpQvH/
         cJP0AYw6wdrs415wRAV8uBRyfos5WpJr+CqZBPRL+AW/i/vllB37pKxsZlgtspn+dev5
         goAlmZiplEisYpyYaZl2VTAmEjOGC5RAr975Gg+oCsf4qz61TomPcm+7CcwZhVSmbfDG
         VKuYW4oDgCjkGDJjmWesE1M+AMgHkfZHiu0eWZUUUSfoNa4ytsV9N/1GVA6T5ys6CaDR
         jGxk/90/PeFBZm/j98oBnT1C3WBiEeHOOfCqOcZjIagtD7uLz1F2oKySdiz6/RQ3vRtZ
         MirA==
X-Gm-Message-State: ANhLgQ3fJneW5Ppq+odWDvypnMHYEhlMpo/DQrN0OM/WL8I5D3tbaGuq
	6TSuwnLgbHiS1yKAEfLjoTg=
X-Received: by 2002:a17:90b:14c2:: with SMTP id jz2mr10214062pjb.152.1584113776613;
        Fri, 13 Mar 2020 08:36:16 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.225.150])
        by smtp.gmail.com with ESMTPSA id x21sm7800356pfa.212.2020.03.13.08.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 08:36:15 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 0/3] staging: rtl8723bs: remove unneeded local variables
Date: Fri, 13 Mar 2020 21:06:07 +0530
Message-Id: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unneeded variables and their declarations from the files of
staging/rtl8723bs directory.

Payal Kshirsagar (3):
  staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
  staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
  staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded variable

 drivers/staging/rtl8723bs/core/rtw_io.c      | 9 ++-------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
 drivers/staging/rtl8723bs/hal/hal_com.c      | 5 +----
 3 files changed, 4 insertions(+), 17 deletions(-)

-- 
2.17.1


