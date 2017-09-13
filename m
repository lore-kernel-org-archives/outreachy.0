X-GM-THRID: 6465297103156412416
X-Received: by 10.55.102.75 with SMTP id a72mr9685928qkc.36.1505319285615;
        Wed, 13 Sep 2017 09:14:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.201 with SMTP id n70ls3591287ioo.53.gmail; Wed, 13 Sep
 2017 09:12:49 -0700 (PDT)
X-Received: by 10.98.58.25 with SMTP id h25mr10143773pfa.23.1505319169393;
        Wed, 13 Sep 2017 09:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505319169; cv=none;
        d=google.com; s=arc-20160816;
        b=mgGKNDM4/1GuKyMMrEVgoB5Dv0xSIN+0JWUnfP8hm14hLc8WOFarB9cqybdjjEyLHh
         Rj1QeXy3Y2b5a1vm/8tRRbsGV6agkTOFT9THtOGMNBLjrjVxbBght8X6bTVh7zkdYnVK
         a332MOm+feBOk8555adNf5o8vsSGVMiAvVi/QKy3Z1epa/RrHNT/ayvl4aaFTaU/FlfA
         c0yCWTeP1vJJGBrz5BL1Zo0MvOYMgkEwm6CZGjXrQfugy4oNv3bVqUIf1QkWRNMVir8g
         CbgbuR3FyAGI4DZ2BGmx5qI5lkdu+uMIAYpbY83tZe5WfnDYLajErxDaGUL32AewK+Ua
         rI6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=5b6siWlDhjq0SJiOssyU0dcEHiB6tk5geyFgA+qVsxs=;
        b=LjzxKNNvmATOIHYmnB+Y9dp+ZmOegOUr26XZts85WSJ1ueExZTM0/6MuMZVHN8dZLm
         ZYZRddmIYq8iNQjPVHerRvGzsabOUFt5hIe7XQAOJPP4jA7J0a/zufYGtC3zpG0zicjJ
         4SvIYV68skl2VR3cHnR5CdBZUS/W1Zs/rAIdLTxNby4cGz+m/BHadTAY8iJkFTvFdxqq
         +96Q+eyfDVnTcrIHW/rE32F/E241NQFRhYf/Ld4f7nMQCCINss/Ad1FNJSHVGDIvnyS0
         SjiuwRjM7DbhQ85wBa4p6yDDJusIBKZLXa9KwOiNwJv8mGuCxlKMB9Kl+SACw+VpM1fX
         U3rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oDk8Gukj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id v25si1408133pfg.11.2017.09.13.09.12.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oDk8Gukj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so272977pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 09:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5b6siWlDhjq0SJiOssyU0dcEHiB6tk5geyFgA+qVsxs=;
        b=oDk8GukjQRN/b9AI9FjheJ37DRsAOuWVLQKjSrv35hhZXLJKHeLNGd+TA96XwIQ12D
         3Z0U0r1oZIbwXq0ZHwDMSKYdwbUU1A7uJUotD2jtURvqjp1pqbsLuOj9kCv2n0LvD0hP
         9xYnZ7HiWmEeRLqxauwrOoA38EZGglsbFmobCOgc/BTTYvyq/LQc9ZyFhXco/SZmdgUq
         aQ2l9I87AC6aPUBIvwaiOFkG7av6+HGQ9XxaRVqsQKLgBhycUEgAyxlHqTbWqBojrrmd
         lzPvfQDmAjmLBjg0kr1I0OoM4fKg3SBwy/b9Wjp+rlyon0yLMEEftBXbf8pFwxRe6AdN
         0Fiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5b6siWlDhjq0SJiOssyU0dcEHiB6tk5geyFgA+qVsxs=;
        b=sLr5GgpcyB9QFahS4V3YZu/dMEKuudsFJiyllDjVUQ+mRnrxwPEq9jIRmwJ1ZBiZSO
         9+6eXJnCUto/YiXkMEKlQyYwk0tun8Z1O48iR3DDlsOqy1y2ppTBDjilLK0s7GnFZGQ7
         pjf1YznwQlqpKGkVz4Ga/31qqvedQOEZ+5/ejfRmaxC5txvdNg4caZq0vO6j3wCNLXZ+
         i6vFuaeXbddl5x/+OLNPkjnLaPJvwagg9tpuHdM9+YSuCDsaZ89uyG6ACMXvpXR2Z0/y
         wLevpzlXTx8HDhtLwe1ySOav0UqmPksSOSt0wI5GAZJMEvXQeu2X6I+OnTFUGF+5er7T
         CuoQ==
X-Gm-Message-State: AHPjjUg7BsNSEb2oveKQ0voCKohnTPx7aB9rln6J0wh1SR9OxVfhK5bA
	5KqzuBtqreQzVw6obmM=
X-Google-Smtp-Source: ADKCNb7JslZkKoAH7VPJ27GL/KJRprDHlGTthyEzGa/PNeW3lNNcZncxDFo0Kl2LG3ORmYi6MoS8cw==
X-Received: by 10.99.105.130 with SMTP id e124mr18480464pgc.420.1505319168822;
        Wed, 13 Sep 2017 09:12:48 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id g68sm3527157pfb.120.2017.09.13.09.12.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:12:47 -0700 (PDT)
Date: Wed, 13 Sep 2017 21:42:41 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm: Code cleanup
Message-ID: <20170913161235.GA3155@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

These patches fix the checkpath warnings and errors
in drm_agpsupport.c 

changes in v2:
 -Changed the commit subject prefix to follow the style used in drm.
 -Combine multiple redundant if conditions to a single condition in 
  patch 3.

Meghana Madhyastha (3):
  drm: Move EXPORT_SYMBOL so that it immediately follows its function
  drm: Replace "foo * bar" with "foo *bar"
  drm: Remove assignment in if condition

 drivers/gpu/drm/drm_agpsupport.c | 45 ++++++++++++++++++++--------------------
 1 file changed, 23 insertions(+), 22 deletions(-)

-- 
2.7.4


