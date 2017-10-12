X-GM-THRID: 6475592721521180672
X-Received: by 10.98.147.207 with SMTP id r76mr335962pfk.56.1507788515771;
        Wed, 11 Oct 2017 23:08:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.0.12 with SMTP id 12ls816179pga.29.gmail; Wed, 11 Oct 2017
 23:08:34 -0700 (PDT)
X-Received: by 10.99.171.67 with SMTP id k3mr327648pgp.169.1507788514758;
        Wed, 11 Oct 2017 23:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507788514; cv=none;
        d=google.com; s=arc-20160816;
        b=RYXtOytxILz3xWwmn+gSlPIIm3CLYmGt7WVNZSxIVuQkXuCGPUcypP07+c3zVXDUSm
         wG6zee+fCRf+HDBJcn0CejdUVTu4Bxn3ApX9GgmrOFgoYN3oD5IaKxXtPBQF06amw5Fn
         2wSL5qEsfDUjfchSBAEfsQeZazF/gV/HKtrlxb2sSWjAAsnY7ogCzARSHFSq4Rx89snS
         b9D9Nd7Wg9aAkMaF03BkO+c9kdvpRdHhJz9qIPeir5Q/sY53fUEndSqFh/7fZnJ3xbB5
         FQ++H784REBFYewxbTpcj7nMyvsqrGtyvTllTk0f1dl8/8r2Oy/THYaJbcPxIvqZ56Q4
         hwhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=LFog1bEkv5303bDVUq4ysPNswuFJLtP/78u1Ti4/+Sc=;
        b=LnGdzL+vh+pakOoDKZpnUspNXhtLfTAz6BYEz8erZI2/uLSrjRwZIBW6cMmadCGc20
         dk7jgDPNMzzTPKIEVZ5sETSOO8ZNGbEO2UnTZvsERYg6sNVILmD4lyGru242tMgsYRXO
         Oe/VJSYneCBRYDlvHvpeWM5e0k1RdnnlBh4BUFaVmSiXuc4V9RTBIY+9eTBiLty4h6Ws
         kw6OroJe86XSNlaEZIZp/e0JmqYn0RywjhIQlYydWbqwHnCqdpp2FIdSjYwJTm+P/c76
         bS2lKMZ0h6edU997j12tq5SJH8HVrdrzR2DRyRK77Am0zin/6QFe2GKWGaD075y8TiOf
         ezzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fDpvLPnV;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g193si1692802pfc.9.2017.10.11.23.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fDpvLPnV;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x7so3546984pfa.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 23:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LFog1bEkv5303bDVUq4ysPNswuFJLtP/78u1Ti4/+Sc=;
        b=fDpvLPnVQakjHZsNeg18BpkUIef/wNlLCs9eQ3X/xCULQugdV8YjCw97P0qm5pEJoO
         isCjNQdaRYulV6QlDwWE6FOq0HDJAesAkiy/H/DxGH7+035MbcbR6IksRwrdCxhOvdK4
         zCN1CiE8E+JZaxgM0FSs/6jGBw2Xcw04Nm87yBQNLMIdV2hSYMBFi2FwyPE+Hs5etL9K
         vQRp1F0FZDyecL51TmXoRIynQyektOQemOvpOAr2gCYn8j1YIZQ5GE05P5QTfXSITT9c
         9KdQHpX4O/AN369MO3wJO8F6I1tNIdYllMiJ2xeXuqWF+JnbAqchMYswCmo9IcLyE61j
         wNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LFog1bEkv5303bDVUq4ysPNswuFJLtP/78u1Ti4/+Sc=;
        b=cdu39tw7vCePjrxT3C9qTMzUDeFUrZsOVrfY312zQK9ULhfRHohBrEMPqNN966QJnK
         1dG93vZHf9hxCcRg/97h6hI92sqN6U2NSIaK6xzhhSzBKZydgVn/nRnSiMgMqKz/5OCM
         l5rJGv/hWpvi6cZg/LoOEz6expw9uScUtHixweswZYP0dYg8qSif6GFZyWLMFdpA/b5i
         EGjNH+V/o8RsUTUmknmMzozgfZWrSIk2OHYD5WUhY+C5CZk+WBfWP/fDcQmguB1DUGTZ
         PQvwcc7YrOYZUHXT3XpPtEudMMfatMCJQ0vUTbTG0qiumaYEUKvxwkFcS+0J2lJZne73
         vBng==
X-Gm-Message-State: AMCzsaVMwUYemjGHJ/Nv4CH3AhiwUOMbV2rK4ksn7KEzuzRoZ+tQOrZ8
	OUSW1XkQTpjtQa5RzPOjF8w=
X-Google-Smtp-Source: AOwi7QBfRi2oN1jWEdevOc0kRDj6Khocx1a4wbPX3j5z9qwNA0V6cRE0HXnVbv+XfkJ83EamvVqPXg==
X-Received: by 10.98.93.148 with SMTP id n20mr1244253pfj.247.1507788514494;
        Wed, 11 Oct 2017 23:08:34 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([111.93.157.115])
        by smtp.gmail.com with ESMTPSA id u197sm1842366pgb.33.2017.10.11.23.08.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:08:33 -0700 (PDT)
Date: Thu, 12 Oct 2017 11:38:21 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v9 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1507788241.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move drm helper functions from tinydrm-helpers to linux/backlight for
ease of use by callers in other drivers.

Changes in v9:
-Change function name from devm_backlight_get_release to
devm_backlight_put because it is more apt name.

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of backlight_get

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
 drivers/video/backlight/backlight.c            | 71 +++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  5 --
 include/linux/backlight.h                      | 55 +++++++++++++++
 6 files changed, 130 insertions(+), 102 deletions(-)

-- 
2.7.4


