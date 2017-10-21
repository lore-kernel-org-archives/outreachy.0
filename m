X-GM-THRID: 6475592721521180672
X-Received: by 10.31.58.209 with SMTP id h200mr3715107vka.92.1508586929582;
        Sat, 21 Oct 2017 04:55:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.182.133 with SMTP id g127ls2849853vkf.4.gmail; Sat, 21 Oct
 2017 04:55:28 -0700 (PDT)
X-Received: by 10.176.74.25 with SMTP id q25mr833637uae.6.1508586928664;
        Sat, 21 Oct 2017 04:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508586928; cv=none;
        d=google.com; s=arc-20160816;
        b=YBuo7wYrZ/oqvqc3FVpt4acKLVRgHSCo9f9yRgU8GPTABPsJBLkqxo/hsekEyGtfo2
         k34TtZSP6Idc2cMKPBLQ8XKvJX0Fh0IGxtmdDv1HFA0WvfGpqjz6DDWOzuw0JrgRnCYW
         hy7xxWYeXyzvVuNsV7+qX1lay3LzOkNVMIG+MQjJq5l7PFZ064pL6nQ5T3HpiZW+8Skk
         on7GeXT7VewfdmCISHy3zuxpS4Cx4CwssepF2u9fqHIxKCJvn5kWt8CVktAY0loJautg
         SxzEH7VNhvx7tuYAIsiqOLvsxFV3+ucdhPxxfqMjfz4rdptdLQMIrJWt0a3pouXUpM5v
         yyBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=JAaZNR6cSQLlNgpgybpNHp+tm/h9vllepd1cLvZy0Z8=;
        b=QzAEK9/IYezMfuz0a5r6yTyQmjxpAOTjg+JkNX8ZPYwswAml2zoOcjXhQb00HjpJYb
         CsHlgYIFZgxtlu58bbVJsGqvwbTJACx7gYtz6dTCjadWFmNSnKo1IDP5+dyEZZ+9bC6y
         8eqY1lZEOqLlQSrrLJ03HPs2MckAodpon8Gl6b20eTHBsLjFlmcmyQvt07bftvCgTYs7
         R9eB57jlEroulFu7q43A97SFmpH9MMJMphuEpU22BwuCFaWC1DDPxGXy/BOYFd5tPL8q
         GVRxkrex2dVusYMqN7+fFfwcnhKbqDoxfkYW0FJbHDbGlagjb7uPckglG0T9kcvdKzH+
         ULZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RumDEjvM;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h54si210215uaa.4.2017.10.21.04.55.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RumDEjvM;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id m18so8501784pgd.13
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 04:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JAaZNR6cSQLlNgpgybpNHp+tm/h9vllepd1cLvZy0Z8=;
        b=RumDEjvMfgRVZQjMVfxKBkXSAa+Cb1bA6g6+7L+UY8mxp63qqeLMAe+dyOKlJuaIno
         irtpyy3pGCMlxGfOy7A98XJPACGliIEx7V5XPNpSLEfEHvvxSYnZMEXg+itxHGCvn+gN
         /bG9c+GuCIQ1UZborRMoO118K9qraOG4EXhdTFeXoOvpybUeLFcDzDe9m8nKz9RnrcBW
         idKBwLj/aGVouEwhRfbokB8LLHulILFBUCfFT2mZ7qq0BGqBChb44u1m+9H1MfCH5FQy
         HXvXpKp4O/xoYHmXRYi+nY0ad2JbsYNcY/4KQ6V1fGLmJVwOOK9yOEO54yaBXv400eQG
         AgyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JAaZNR6cSQLlNgpgybpNHp+tm/h9vllepd1cLvZy0Z8=;
        b=PTUIfvdG9YMzDDYAhgfUpTqaWaQygqh+DVe9ZRRWAGyuWIl6RgBjvWNC5WBdMhu77/
         6J3cIU0Tvb3esXglPYGW/GNo2wHLYZuyOiGk/GxL2T4lXG9MLK86KCnqe/Ye6U084lM0
         fPjh87Vq1fILMTNOXmTY6pee1CyQwhqM+80Mqwc0876tqgLakeDTVcHNibGvT5HanCAZ
         2ni0+qujh0fUJmyE2eudD9FiZ669uyqUJRXxcQGQ6NknilAq8ooRZAAQgIQf1YYPJ2oF
         Sp/vg/CdC8A4kpFUr39sdQBHdgEQqPRiXwzCtXkz80Q6t7QeE0WiLef6C37CingN1F8q
         rnMg==
X-Gm-Message-State: AMCzsaW3ogLM6RRGAkyXQ01liuTRw5nt5xjj2lrs8ALZSngLfJ9E1ASp
	gh27wupKrKSktEGm3Kuvt9NnbcJX
X-Google-Smtp-Source: ABhQp+RYl9RgcQ1osBEKO9t5xlW3Av0vZfnx6ucsv85HaPq0hxWAiOQlZRrQK9S49R1cteJHC+A8ow==
X-Received: by 10.98.58.199 with SMTP id v68mr7732144pfj.44.1508586927886;
        Sat, 21 Oct 2017 04:55:27 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.166.123])
        by smtp.gmail.com with ESMTPSA id z1sm4701771pge.45.2017.10.21.04.55.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:55:27 -0700 (PDT)
Date: Sat, 21 Oct 2017 17:25:20 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v14 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1508586429.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Changes in v14:
- s/backlight_get/of_find_backlight/ in patch 2/3
- Change commit message in patch 3/3 from requiring to acquiring

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of of_find_backlight

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
 drivers/video/backlight/backlight.c            | 68 ++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  4 --
 include/linux/backlight.h                      | 56 +++++++++++++++
 6 files changed, 129 insertions(+), 102 deletions(-)

-- 
2.7.4


