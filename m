X-GM-THRID: 6470705412124442624
X-Received: by 10.99.140.77 with SMTP id q13mr144703pgn.20.1506791409689;
        Sat, 30 Sep 2017 10:10:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.157.135 with SMTP id i129ls1391892pgd.10.gmail; Sat, 30 Sep
 2017 10:10:08 -0700 (PDT)
X-Received: by 10.159.216.130 with SMTP id s2mr99449plp.42.1506791408633;
        Sat, 30 Sep 2017 10:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506791408; cv=none;
        d=google.com; s=arc-20160816;
        b=QovQgZEG/fsOfFl0FHlD0ysWVCHqp7iy1vvZmliQqh3Zz8xq1UsAoSsK/seeCrbDN4
         wP94iuj43r9jQhJ0x9QOlUcFtlA7aMvwg4uJkPlmzy1bAVF9fenCZb7kSUtdfTqzJlW9
         31lR3fg2Grtb/90EjkwInqPBC+sq2B8DNXU03JtfnFKRVyGUbW/LVBODdFpSppX4eETH
         EiImmQns6jVP8EqUwYU7YwYEy7wUdaW3Qb2+KYY6TQ3pWXc3QoQ2STKOy8IXyVMIpZ5m
         SZoGVKYIUev1SfIV8RRK4DePj6gKxEWH69T1S4fGNuV1kbaAVP2o3S84Xdk5o24PNT1+
         r6HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Khc3AKdCBgEbzLVZsct3RD92YFLvGF82uZEB1mhncFA=;
        b=iXRg08vWJgqyHmwsq9xw4acyjDgOe7Zsz7j+mx6BmdwDF6HkhBYrvmVGy7VlPQQOQ7
         sdXA7h7PQS+GQ+ZNnXG1UcpU7ZCO7DNdo8dIIw5hZ6mbX0kVVYehod0ZteIpdDI8bL7w
         JqpFLzvVvBjzr9aSoNssVq2/3zoQ4UpnrH0+vBNNTtl9szL6HaDVENYqAOWRvwMzUhe1
         JPfmUfFv0zGEo7PZ9O9+17qi4HZ+G7ACBSCsesJRsZhpHD/O2XlI/9WQlTlD02Fj18F3
         6e7bHYkt9zbqCJjadlDh/V+GqERXDEFE9IafBVKIRRK6dzG8sIpEjupeixYExFQaBizr
         m2mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=igK8p/5D;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f13si750658pfj.11.2017.09.30.10.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 10:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=igK8p/5D;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u27so1669209pgn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 10:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Khc3AKdCBgEbzLVZsct3RD92YFLvGF82uZEB1mhncFA=;
        b=igK8p/5DP9d8bbMI6gPqyrjO0c+5qZcU4eR8j1J6kUsiCqIJB8vwzkhSfR28/GioGA
         gRk2YBpnTZW+yhUnpq6lt5w62c6PJw7YXRQGjip8YCcHHXhDs14dcwNx11VYRM06MXgZ
         0k19s+GF/7C+GXTzR1B9sMTXn+NlMDhdQ2/ZUQMBZbEBJlbnd3MCdYplJqvTufO5OcQP
         M/4xV1G8WYRlKiazyY7Z+wjoqsuGVlS/R8fn3BZRw+i+YzwoRnkCxSmq+xDWU3a1V3os
         aJgFjPzco0DuqT8xljsxZUchnLacnx37hXQcRk0wMWjQB4lV+PScbbzKqDo4SUqkKdoc
         i65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Khc3AKdCBgEbzLVZsct3RD92YFLvGF82uZEB1mhncFA=;
        b=pAaIC2ohRCmXVgX3OeDAoVO0FjucLl5TV1SRF+cx6vhg4/SQuZaIDd8jwMc4/JR/CG
         iswUzr6+oqPoy0RUpNj97fVg3Jq+IYDNq/34T0jvwfDrdeBTBeX0et5zxFA1RNAoyj8I
         nuQEfjUQ7oKvoYFIpI39eBQOwXBxjqWsUjEILKTbk+yBjIppb+eBGBpYvH81VEiifxMF
         /UXzFp6k9PQUJLvPicNsYHxCmQ91PwLjbxZ2IfVvGCciNgLdy84XduKjc0JKD01y0RW5
         BrTqBfrkOmTeptP9SoHqW6fvpvm1yQIVSzobYuOsSq5jJauBQ8hqcHl0l7n/R3UhtuzB
         acGQ==
X-Gm-Message-State: AHPjjUhqpsvgBLIqq56Xhy/ogxnSu7SCSNqj0a8y8hjj3cMmE650v0nJ
	mPOG4e1BwCxSSjvpes36mm+gs9r9
X-Google-Smtp-Source: AOwi7QBC4SjTS8v1h6HAUNNXvAFi4mlw4nHQRPCpo9S3pAYc6H8k0WGPZ0d+MKNmpkDoGKx5YxIMWQ==
X-Received: by 10.101.81.198 with SMTP id i6mr6348309pgq.228.1506791408390;
        Sat, 30 Sep 2017 10:10:08 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id v24sm12220647pfi.132.2017.09.30.10.10.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 10:10:07 -0700 (PDT)
Date: Sat, 30 Sep 2017 22:40:00 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 0/2] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <cover.1506786158.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move tinydrm_of_find_backlight to drm_of.c and rename it to
drm_of_find_backlight for better organizational structure. 

Changes in v6:
-Move function declarations to linux/backlight.h to prevent
 build errors for the dependencies issue.
-Remove docs for devm_drm_of_find_backlight_release as it is
 an internal function.

Meghana Madhyastha (2):
  drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
  drm/tinydrm: Add devres versions of drm_of_find_backlight

 drivers/gpu/drm/drm_of.c                       | 84 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 ------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 include/linux/backlight.h                      | 18 ++++++
 5 files changed, 103 insertions(+), 42 deletions(-)

-- 
2.7.4


