X-GM-THRID: 6475592721521180672
X-Received: by 10.101.85.195 with SMTP id k3mr380265pgs.85.1507801075042;
        Thu, 12 Oct 2017 02:37:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.0.12 with SMTP id 12ls926206pga.29.gmail; Thu, 12 Oct 2017
 02:37:53 -0700 (PDT)
X-Received: by 10.99.39.65 with SMTP id n62mr337870pgn.121.1507801073595;
        Thu, 12 Oct 2017 02:37:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507801073; cv=none;
        d=google.com; s=arc-20160816;
        b=ro9FIjqlao5Egh3NChACIzb6gEK6euDTlJ1ZBTnT7c4MoLZvXx65DsbHZg0jUS9Y18
         AawdRAwHr71f9yJQNSUcP7xWJZ/AQs0WNls+I/KAOc8Bqlxa46w0PKDJu9NMbKOQeDSU
         Hewewf94W1lvwtp8YiHHnRA8sNCmuJ+HsVdyLmcImv1lXyu4cHkUMq1m5XlrI8Qrrc+x
         5aIaYCx0YxjyBTVEaXmnGzUHl3HlzadmXrg9IRME2vqY3qen71Z6R6myxC+S20l0xzou
         lqJexBqEqztAvfn6EiexFYIrT3DPfTHhm0TjUkFo6HNBPZRDL5dSg0tiTOoabNV8yXEJ
         aMUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=s3AH5aC5xWdfp0fqXv60tH1l5LOz6p1hXOfESoMHB24=;
        b=wSnWJmobkqlt7X34yBSas69Z5JkUAEx5mOkdjJU82z0D6AFmjkaVebiHmBgkPXltnI
         TDb4k13XGrS4+snRW6g44HxlmzpF1ekJfu4ayFK4UD81f+JufgsqzJ/UqXnT+pqSHBqf
         ZyV1EwB4OMaYBIC/2I5hnGUjXax3hrlGMUzpRxvFV8rFTeRM9e3Ok5M2FddEkolUrkhM
         K/hbebvibIlWxuh37Gp9UI2LXKQP4QtbCiEfNeJk/NoIukIdL9OIH/n4quNnmzjQYRig
         KqLhV7JVBikVnuWpBPwpzJJDNcMC7GFrdw6muK6QPRkTPKDh6viAxN856D1Fqi5ry+zE
         Gayg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6IoXnNh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id l80si1294876pfk.26.2017.10.12.02.37.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:37:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6IoXnNh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e64so4059443pfk.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s3AH5aC5xWdfp0fqXv60tH1l5LOz6p1hXOfESoMHB24=;
        b=k6IoXnNhQyAQm5T6gYTJrVrZxZPu68juaa1qIjan5Vncvk1n687ZYSaYsOyFO4iAMJ
         HI8RlvUjbFS+FPX5egaYFP26HILecBx3DLsp4VKbuihHT3xV+RRAhMtXpLQea5eawCma
         pORyKZNRjBKQEkS5SMRz3UwLv4ORu4vV4xYh3NbC/XPrUelGil6ji3tpQVSbIBmqXHqL
         kc+EjGwK/RkeqMcDxtERl2+aS64Ug7Qa7/KXVxWGhfMO7Zg+xlt6F7ylMolg5G4WKXU0
         Rgsj9x8MXnZRlS5s7D8q+xZTh94sPIFLeQU4z3q6bkrGZmsPGfW3yEXNt+L8sAdsbucB
         o1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s3AH5aC5xWdfp0fqXv60tH1l5LOz6p1hXOfESoMHB24=;
        b=jClACGU97lGZ3WfA34q/U4xU0WZGetgXLMirlLQbnhEAVPzfV9kkOUAqvxse3qqmCu
         XIuhIqwLd4ta0ShFtlGzCm7LZEj79B4PlHQJKJb9vA84LGxIE3QEr2E1FaJl9P5FOwMN
         GC11nYiUdnHPvsq71EjzoFEaPMXcuJuGLrS3HnseYEpFU5E5TfLLywBfNtPMlpVefzVo
         2hqZsuyHlNVuJ94LI72/vGMY8h1IimaOKYxAcngTajhhhGU2OQNWtXOyl1Ry77IGuGQ9
         40pzeFeP0+/L3Et6DQvloQE/H8K+kBmwqw9kUtVBaqAraVuJkxXC0/tSUX8pcUdM1l5p
         BMEQ==
X-Gm-Message-State: AMCzsaX6D2BBk6Y4XWeLUk0NYJQ1ctnTs4NmcRJmT9+nucKiLh/spKMQ
	S64oZ16lw0mRZaCMybkbGJI=
X-Google-Smtp-Source: AOwi7QDLJncdZihAaNDhap555DeUP5//GRibi6RoXCzFLxueZRkz9FT+jVp1CooVBik0NDmlbJTMTg==
X-Received: by 10.98.70.147 with SMTP id o19mr1709417pfi.61.1507801073347;
        Thu, 12 Oct 2017 02:37:53 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id b10sm22049599pfk.20.2017.10.12.02.37.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:37:52 -0700 (PDT)
Date: Thu, 12 Oct 2017 15:07:44 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v11 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1507800970.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move drm helper functions from tinydrm-helpers to linux/backlight for
ease of use by callers in other drivers.

Changes in v11:
-Move over tinydrm_disable_backlight to backlight_disable in the caller
in mipi-dbi.c

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of backlight_get

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
 drivers/video/backlight/backlight.c            | 71 +++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  5 --
 include/linux/backlight.h                      | 55 +++++++++++++++
 6 files changed, 131 insertions(+), 103 deletions(-)

-- 
2.7.4


