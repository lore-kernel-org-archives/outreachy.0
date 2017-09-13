X-GM-THRID: 6465168256299696128
X-Received: by 10.31.170.201 with SMTP id t192mr10454772vke.11.1505292138911;
        Wed, 13 Sep 2017 01:42:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.196 with SMTP id p187ls2896510itp.9.gmail; Wed, 13 Sep
 2017 01:42:18 -0700 (PDT)
X-Received: by 10.176.89.177 with SMTP id g46mr10387158uad.87.1505292138065;
        Wed, 13 Sep 2017 01:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505292138; cv=none;
        d=google.com; s=arc-20160816;
        b=W5RGZJp/OJlTCfnJ91c3xi//HOfovpRnrUdMPbXTb9V5gRXTihIFLY4f+3Pr3Ou4Bg
         HkPqJCkRjYUo1DrOpC5lAP8BdIv6z1lxQ67Jcqd/pnsjdOGusKmDSnTL2BDIvGtFq5hY
         d+irraWNypm5x6wLlATl9lEx8nRha/Wl2PLqLlOp/522BObN+oNg/9H97yvbLcTSDpGr
         bHR6jfstiTxX2TH7YgoxJ8qWytQC9efuyHy8Yo5Dh/be2ppe3dMjCgMM5ynpm/NCzT3r
         J2L0ZmRCRnmMpp9LE6pIv0DSEOAR7jWrGhyDAYNeLiIgThcw6AEsiKiDxcj9ABRVfYZj
         g/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=38l21leaUFJaorHphSyWrK7P8cuwIwpv9/wEfRujUDg=;
        b=RkajTdzCtRNGbeurpbaH2sD3A/WFt50Iwe/aY9Cd03vbvupk3Vuqi6KoK7ufL0QO40
         KBEh6cyf2V9xhUiTcNDvWdmwuJaqxuZoP6q6hCJG2NpQ+3gVScHly56LEYVweebRC22f
         a1YIYYIlmQUk4YQbGDHs4Y/T6urEc8+I9Vs6twwg8LLi/rJWlwYQlxd+5xLTBr7WjweV
         1yaY2o/DULC1682S0oZ3xYPck21B90NOeJpB9uhnRsJ8QIdg2vjV8kiq6zbP3/TeXXNr
         RBWsjjJ+nfWpXzUpV3jldLIiIqUIZlHjpXCL5fQM/9/Ec7eveYyBC66uoo4E3eM0fEbj
         1jlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CoNMCRSg;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id o190si953379ywo.11.2017.09.13.01.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 01:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CoNMCRSg;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id j141so42998ioj.5
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 01:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=38l21leaUFJaorHphSyWrK7P8cuwIwpv9/wEfRujUDg=;
        b=CoNMCRSgxTtLZYmh1cte0Cl4w5P95yYwKic64d0QRAm/sMPt4RiCnRrU14dC6uX7Kf
         /Nefo0p0sr74/xqX0AEWZZFBVflWmtzWJqob9HOK88H81WJF4VyhgOzJjEinai/gNipY
         sBLFQnFfNDdqcW5MpBWzjelrRXQ76hwR+IXUdKwaOsW+wO9w6+iMwkxktIZEKEo6mB71
         g5gxj0duKXAhQUtr7BNjrJTyHGea9/8hqRNQpsk4rUq+7vsqfZbnrpIIRoH39mgWsygP
         oRg6faJtvlRbWQ+XBGIe9YTSzU+UGPACvbqR9aVNo7MT7GHiSo3TZYZP9xplogtOxr74
         FWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=38l21leaUFJaorHphSyWrK7P8cuwIwpv9/wEfRujUDg=;
        b=PeEVQhuJpHJwfTw1kFdEedlnfdHtzMeud4BBs1kQWDVUtHwhk7wbESZC3YL/f2BXYe
         /MY6qrwT56x+Jz7nAw0AiRdxwtcjz5tADGgqvfPYMmezb0DLaWUj7AFlBerJWnyAaFEI
         BAxmOjZ8kYZBwJ/jEKnd3jQP1veDhvOe+JWN3+bhDI8EjxtYRgB3zU0HUhfy7Bq9Z+/a
         igiWNuMHcpDu4HUppDMGfcgMa4U4+yWr5x1f8SAItZNp6e5Oo6U3qVswUPrQ8HfhDHWt
         L8tjyFrzfuoDf9rBhJ6j1+ODpKIrz79wqZJvpsrQGJe7qStOxevWZfUKiMO/67qr+Cg8
         uspA==
X-Gm-Message-State: AHPjjUg++5DK64JJKMOizoy464D457kY3rQN4TQtfTUmCksCfJw9EM0b
	63zurr7fZN9t9AYi7RA=
X-Google-Smtp-Source: AOwi7QATZtmA5+zXnc91qJXimgQ+sYUkuGgVLzwaTtWletdN7Sq1UyNn0k6cBHc+15Jteot9KTrRqw==
X-Received: by 10.107.10.9 with SMTP id u9mr27980051ioi.107.1505292137464;
        Wed, 13 Sep 2017 01:42:17 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id c199sm7271858ioe.53.2017.09.13.01.42.16
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 01:42:17 -0700 (PDT)
Date: Wed, 13 Sep 2017 14:12:13 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: [PATCH v2 0/2] Rewrite the IIO_DEVICE_ATTR_NAMED API to pass name as
 string.
Message-ID: <cover.1505291907.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset is to rewrite the IIO_DEVICE_ATTR_NAMED API to pass name
as string.

Himanshi Jain (2):
  include: linux: sysfs: Add __ATTR_NAMED macro
  iio: Change to __ATTR_NAMED()

 drivers/iio/adc/ad7793.c          | 2 +-
 drivers/staging/iio/adc/ad7192.c  | 2 +-
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 include/linux/iio/sysfs.h         | 6 +++++-
 include/linux/sysfs.h             | 7 +++++++
 5 files changed, 16 insertions(+), 5 deletions(-)

-- 
1.9.1


