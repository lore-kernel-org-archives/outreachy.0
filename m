X-GM-THRID: 6947963118205009920
X-Received: by 2002:a17:906:e2d4:: with SMTP id gr20mr33235266ejb.432.1617698724973;
        Tue, 06 Apr 2021 01:45:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls11166992edc.0.gmail; Tue,
 06 Apr 2021 01:45:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjXFbyykMoMhPIzVbplah6Ikaw4WB0RN772UDEtGswwAsCfQecswxh4GHO6vSs1rbhMtBo
X-Received: by 2002:a05:6402:74b:: with SMTP id p11mr7699433edy.40.1617698723808;
        Tue, 06 Apr 2021 01:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698723; cv=none;
        d=google.com; s=arc-20160816;
        b=WKeWAJfzji5vCnoFH02ZDP/hNh4et+YLrjPYCO22TrfXx4OTCogYCUTpOH0FnkZwJF
         JsNCohVkxmhvN9G4iMK6tSnwG7WE9GucLEhOi9hUqwGhGGNVonALxAsvV3Klwjf4Y2OG
         wwbdVfs0rJ5SOAflTTJByTzJXKWL/aB7C/iqe0o5o9SliX+ZRbqmcNX4ctXfig6lRfAs
         /I/1jsTo6x44aUuGGW6VyW4KnLecOpDASndzYFWGGm5Xmcp5Xtf0Baar6YdJG6B4k7ca
         Iu3iJXZQJ4UpgTgFbybCVa9iXCod9vWhRAi/Nd77V1JA50s9kpN3vhjeIRdQXAa7Xlr1
         i3Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=YLqQGd/T46D5zGOlykZcGAUvnOsHHqPoJRmoNN6xMvY=;
        b=SGVfx3rWlEoQ+3FdbhMgxjtkZ8M8TAISonxNsVmvRfxJnu6ZkMP9cuSqSWCVW02r6f
         Lzm6fhJpfszPuHUXBnvgF+HZWwuoPKkGUQa43g5iQbmNbDqM1dqRSA0QHR+FmTDN1SIf
         huri6KU/eOEHhXrOXQXZoe7h2BG9X6LS43VSm+uqtNa+ZKZxrJLmgIsf5+9rFmXNVzC+
         2fv0hURN4jZuXySDntJLrJ+SjCBjJmDF136Cvu3qEi7NQxEHu3mrdl/6DKMlpD/c3OXw
         ZECYdqH1pQGxLLG/0B43isaz4W0kjJque5/GftQYUz63JHnVufYtK6jizZWjCrpEKjyo
         Y/IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ulSxid11;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id b26si392272edy.4.2021.04.06.01.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ulSxid11;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x231.google.com with SMTP id u9so15526628ljd.11
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 01:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=YLqQGd/T46D5zGOlykZcGAUvnOsHHqPoJRmoNN6xMvY=;
        b=ulSxid11kzmFSepZFCYx9snxXUw8kuxz7TyIiG3q/zhkOYukdIEERyp7D0yTCdby3O
         P9Wif3THUTcJJyYyG3Vc47vwYOUBD4nfce540PDzkY3pxGvi4pQ3SV2uvEGPUyygip9D
         5xTmjV+s8dx7zNZ7aMy8VmvL1WuY7+/bsFj7ZeH7lp1H1cfjZfZ2njkpHz750Jzs8zHc
         5uVMeQg9Khmx6C4gEHDCF8PAVCU5TISoErOe+ZvTLg7DOShkKjdeZZ9TxgpcZB9KNcBq
         8E78duyPdw5l6qyVqE6pPB+sxrd8RjAbQGHJbKPT5r+xmZBSMEmE38SgB11aQmwtyGbw
         zayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=YLqQGd/T46D5zGOlykZcGAUvnOsHHqPoJRmoNN6xMvY=;
        b=hrx2UGC4aYNBckFhoN3KkkWt1yiHiEWOxd+RilODc/iiY3r27LJtDEpjqxDNTM3n9K
         6k87Phv81hA9DothudKIWlqkDfL/AQ+BoA30D5bcP+x7qw6EOymcScEjLAjsar9Q1XQy
         Z6IiqSeY8HMzw6AZu8mY8Ll6DJD1Q6vDOfMsKvP0+U2kcrZQWY+0vpvjMod+v2AhORXc
         vkoThIyJ8DKaaazlMHI0M7RH6i69i/RGom00uD+a2E3cBX4w2yeDOd72EGhrwkQT6Fih
         Ovp66LIDDni40ILd1dX9fAZYB1hmgnEZFrb/yTL/HQCbo6j/ftTNh+VX2Se1qsKq6IZQ
         hWxQ==
X-Gm-Message-State: AOAM532VOYOkJ5QegqNUFmXx7LjMCa3bDic9ilv2iD5wqauS1eGlTyUx
	vOz6M8fVzf6JMm6E72zMWDkXMCmfxJx9SA==
X-Received: by 2002:a2e:9f08:: with SMTP id u8mr19268358ljk.50.1617698723125;
        Tue, 06 Apr 2021 01:45:23 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id n7sm2077713lft.65.2021.04.06.01.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:45:22 -0700 (PDT)
Date: Tue, 6 Apr 2021 14:45:21 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtl8712: clean up coding style issues
Message-ID: <cover.1617697237.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

To fix style issues, this patchset removes blank lines, adds and removes
spaces, and matches paretheses alignment.

Zhansaya Bagdauletkyzy (4):
  staging: rtl8712: add spaces around operators
  staging: rtl8712: match parentheses alignment
  staging: rtl8712: remove extra blank lines
  staging: rtl8712: remove spaces after a cast

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  6 ++---
 drivers/staging/rtl8712/rtl871x_recv.c        | 22 +++++++++----------
 drivers/staging/rtl8712/rtl871x_security.c    | 10 ++++-----
 drivers/staging/rtl8712/rtl871x_security.h    |  4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.h        | 12 +++++-----
 drivers/staging/rtl8712/wifi.h                |  2 +-
 drivers/staging/rtl8712/xmit_osdep.h          |  8 +++----
 7 files changed, 31 insertions(+), 33 deletions(-)

-- 
2.25.1


