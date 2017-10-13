X-GM-THRID: 6475592721521180672
X-Received: by 10.31.161.1 with SMTP id k1mr379023vke.40.1507891176041;
        Fri, 13 Oct 2017 03:39:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.36.36 with SMTP id 33ls1924253uaq.11.gmail; Fri, 13 Oct
 2017 03:39:35 -0700 (PDT)
X-Received: by 10.31.206.198 with SMTP id e189mr402520vkg.46.1507891175187;
        Fri, 13 Oct 2017 03:39:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507891175; cv=none;
        d=google.com; s=arc-20160816;
        b=WIu/5qRkEbAIZa5Xzmj/fPvgA7k6LFDJ9JGytGy6NoG8xwpf03cDfc/QTpBahpJ7AH
         7P2s+rk5HQ0x5M4vVMdWULmFfHRyh4Cgyd4eFjsK8zTL+bugFNICA5G6STeHvqfve65p
         Vt2zAX3I49YuzWztO8zeqlLpQ6yZpETP0CEKV5a/3yvD5Drzy10g9W1kXqAdgsIghjEH
         gbTHz+3ZLDbR3k8v8CB6oCcDB/AXxWaUOgFSG1jbkjbRJREfYi5pdNrRJ/pQ8gNJPg+U
         kDChxqdBL4g1L7YerbF1l99cZb1uLES5lm4hKyi/UH+lPPvTfbsA/rGhrcTITeZ9Wcfl
         6exg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=JJ8WayE7853wffCaNiN+4sH/c4gtfRNlshtptjQpRuQ=;
        b=GpBADQXFjh0u8hpbNCtYg/+VwGjwJlP2G098AWQWLYFcsGTKXuHJJay6LnINriU+fe
         /0pGuKf/xn7MgS81eWovG5qQnZkxEKiKqhSTom/TFxTZ/L7Q2hsWto83IlTK3o1um6Tw
         JBidwDhVJxlERl5lwxOeD0zt9EQWJ+Cvm29QsgNKv2xJTiJ4EBMGZDoDp1noyBiWS0Hz
         GxdgYoi1GokKoRfPm/8AHDS/VsprxlYOK5bnlN9XR+NNKOSMbAr1M+hsEhkPZu9yVU83
         iU7ALUuvFz9F3JAwukGiAvF5NJ+7gNv5WcyLTdcE/SeaKb4c9PbaAffM/u3mk6GQe7db
         8qgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QXvdmksU;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id b10si20464uak.3.2017.10.13.03.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:39:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QXvdmksU;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 17so9573353pfn.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JJ8WayE7853wffCaNiN+4sH/c4gtfRNlshtptjQpRuQ=;
        b=QXvdmksU5GhJ6F0AF/i5+l0t8XX05eUpHzU68hcF+7neMxF69dkEsDa73jMM6qfPXb
         j4V+QW5vX7G04wL3sPB4iaACmAylgCzFPN+e5Npmw74R2mVOfUs4rg5G6db8h03xxPEC
         9YfIzPrqYujtwojJQUv/zxvMkVujq9bimhJH0dq9kLbNfGu75cddV42SptR8zj55jH5l
         +ISNO1CcLlbnJ8Y6qTE14dENwG0RJBBdAlHTnHO+CaE6ho52/pEjeo6reZaB0qCJ4NXz
         t6mBGSItdKtJK1isUSGw8QvRC1C3eEq1oLrbx0jMIFeXeDAjLfwUOGfAhTD3fQeRJpsy
         dKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JJ8WayE7853wffCaNiN+4sH/c4gtfRNlshtptjQpRuQ=;
        b=SnNUEAohcd8xQ1OQU+plRXVjv/Ya/+cZd933KESuwchiM6MkbRjKTbql9SfCG5SHUU
         RDQMCkd/IAQ1+oO4QOVsRYuEWbj7jE6M5boUwV4qJE7LIqP6Tci6p2oh6GMoDlgkch5g
         lq+wPP3EYOFd8N3Xwdyb8AzGrWg6SCKlZl3MWY7E6GE95q2EVSr0dLIMAPZG8C/FSvg5
         0SmTXlr33Ze0oi7pZSU3WFO3FpPSf8PvAwd/Zzqo79hx6Yetu05Tn2qM5Yf51vofk6SD
         lV8nuTDcRNvQMAkA9jbI/krXN868X3QtHGg0rybJqqnGD57TFW3kW36U3BjLI1H0ooOY
         Kesg==
X-Gm-Message-State: AMCzsaVQD3KYtL6lOCfvKWatHG7+bUuuB32LpYgKkwXRw+zxb4rRX+oI
	J0vn6/I2KYRRdTFAAK1aWUg=
X-Google-Smtp-Source: AOwi7QCv4Ca252N4ypPODyACSsUsjMkvCu+LsADQQlcO7CRsDth+Xb0pB2staIc1ko/Mp4vWviCZeQ==
X-Received: by 10.98.29.211 with SMTP id d202mr976716pfd.49.1507891174371;
        Fri, 13 Oct 2017 03:39:34 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id 77sm2317917pfl.133.2017.10.13.03.39.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:39:33 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:09:27 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v13 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move drm helper functions from tinydrm-helpers to linux/backlight for
ease of use by callers in other drivers.

Changes in v13:
-Rebase against drm-misc
-Put devm_backlight_put back

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of backlight_get

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
 drivers/video/backlight/backlight.c            | 68 ++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  4 --
 include/linux/backlight.h                      | 55 +++++++++++++++
 6 files changed, 128 insertions(+), 102 deletions(-)

-- 
2.7.4


