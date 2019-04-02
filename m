X-GM-THRID: 6675276130832875520
X-Received: by 2002:a1f:1b82:: with SMTP id b124mr9078333vkb.11.1554208838581;
        Tue, 02 Apr 2019 05:40:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:8a42:: with SMTP id m63ls30707vkd.13.gmail; Tue, 02 Apr
 2019 05:40:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTLne+BuFZpxw5WwxX3MkWVLS9tcK/xhkx1InUVkOQXq2kKEM7RCtNeUrGC6KPja6FBoEj
X-Received: by 2002:a1f:b749:: with SMTP id h70mr478121vkf.8.1554208838003;
        Tue, 02 Apr 2019 05:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554208837; cv=none;
        d=google.com; s=arc-20160816;
        b=UOCxsm+ZQf/2KH45YnUroWGsHRO2W3WrA9y9yEDxjz0xHiFBpC0T8i9FQIbbQOVF0m
         9uhdzQ01LYaVnmG70acL8rfn03kqvraFH5/dlx9gprLIar9Tto8NQWr/2OILlATFOBiO
         f56fslCjut5bnLcIq80mePkG+vD0QlNkcUdUJFT9l8Q6OQNMjfHbP1G0P2RPzOL04lhd
         RZDTs/MJaRFkLt6fu4ZGq0nQ31wx0xv8JxgF3xawxBWSK4SnafHJfef6NFyrIxIWDl3G
         8gx6zD2oEIGnmKW8eU+kSiZkp7tNqsIM8rkB3qULd+GCFWZo7IqlmQTJgR8wxyyz5qQ7
         Hwfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ADUF21sBHO41Pw2u+MZk0LePs2H8/E9PQC24AKUd/14=;
        b=WDZ8JXuQ/ntpGJb91SoPHk684ITCCeuVXo0nEpRz/HHBFfGC9ZBawg5KPXFr3mz+MS
         6HWKUZnym+UsHU5VkSZjJmB7nPEjO1KkrLTYz1M0JRbPdzjc8ZPM97FyKHKOKYJDhzpj
         ciEuWLdacMD3cd3SZned+q9e0sMs7BbMzo3gpoe32ZqaflxgyBAUqB0Vq0WhPQND733N
         j0j14tktdHPUsGEk2WO1uClMbgAEEjIupdFNA3CPEyqsVjbe1uswko14zlR3/0GG7S2n
         PgHZeyU3THA2k3EVlBEqCZtkkDay9c7Pi1ioaTvtbjO5HT0q3f+iA5L+rs98QYke+ycq
         OS3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yuxa29J4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id q191si718915vkh.0.2019.04.02.05.40.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 05:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yuxa29J4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id c8so6320371pfd.10
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 05:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ADUF21sBHO41Pw2u+MZk0LePs2H8/E9PQC24AKUd/14=;
        b=Yuxa29J4mDvnve6X7rPfnnfFjOTREPBYFK2UUWQQwJdK3esUjtokcLvgdJMLG6bVIs
         cHKT9zdIr7y5sjURC6KYC6QiCGcRXuK3y5lHf9teSDAP/CwClQ3u9zBaIG7Vx33Eq8va
         yKlUGxZNH+9XPp1KRXWCBSf25iEbAzIDdZg3/G6D+8xKcqwVvYQrSTkEgZQsFNhYTzvY
         DL1bdUUT3zPVmhAQq4nNA0y1tQm6OSqERJIQh9Ih3LMt10pbVJqZWIwWQ4onzu6QmyO8
         oOG1DyVm85MA0v7cgajYD1Itc/G3Tl4djPSPXCSqySjIL+c842KpO/T1HvCkqzh0EyeK
         /iAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ADUF21sBHO41Pw2u+MZk0LePs2H8/E9PQC24AKUd/14=;
        b=PFpgui3AI68i0HCBWCMMGXLJnVyV1Etrk5s4KGdthymWB4Y0w9Wx5Vse9TE2vzPcyW
         EPumkzcFwWGfbHQK+Yu5bPlWO3Cri2SorlPqvThqwX/eq7IizVJpFgsrEhbYFzn0oZ0P
         1LNlg5uRDthGBEB94s07iYLFMMBWNrjBYzLoi/1ihx1NU6W/cQpNuOEKXolvlvbMj7Lm
         fUXNxKBAleIXTV7Kd8b3edQNt8z2SOeXepRQerW3GEQvfqnkAHO08HwIXhY4hwtDwkRI
         cGLPeyXv6DMvVO9DSi03t2xvg9KC0LbqwsxUm5Jp/4s8lpT2zKIO2S72mM7FM6xD6ZGH
         /RSg==
X-Gm-Message-State: APjAAAWJQoleliM8mzXjVY4nvY891FFkRbV1lHrTOsOMsRYQavavflis
	41O2YIpMdl/BtTEyP9A6Hdy1oYT2
X-Received: by 2002:a62:bd09:: with SMTP id a9mr67832545pff.61.1554208837320;
        Tue, 02 Apr 2019 05:40:37 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id t190sm22650949pfb.33.2019.04.02.05.40.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 05:40:36 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/2] staging: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:10:21 +0530
Message-Id: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Payal Kshirsagar (2):
  staging: rtl8723bs: core: Replace bit shifting with BIT macro
  staging: rtlwifi: base.c: Replace bit shifting with BIT macro

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtlwifi/base.c                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.7.4


