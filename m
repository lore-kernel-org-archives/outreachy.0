X-GM-THRID: 6257160535052124160
X-Received: by 10.140.42.43 with SMTP id b40mr4820114qga.9.1457551549490;
        Wed, 09 Mar 2016 11:25:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.98 with SMTP id a89ls47254qga.11.gmail; Wed, 09 Mar
 2016 11:25:48 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr4770018vke.6.1457551548010;
        Wed, 09 Mar 2016 11:25:48 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si19901pab.0.2016.03.09.11.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 11:25:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 129so1649380pfw.0
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 11:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DIG7qvNsLw70UP44yrAa8uIZm6iRar0Nz3GUOUx27ec=;
        b=DCHwXsAAKchzzyMWA/x0sXRgGug2x4cMUefkt3zTfOJBlUcbiU2mfPHXluxUDf0rb5
         xZfSfcAH7QO3nqvZsrGlL+yvVN/9KPqUCBmkt/ttvua3XXvIsBbgjHSv5R1XH6qb3qji
         BBkG20HsFoB/ySGnIvR6no2DpSPXA+vDusrNVBjqKHsKO4JaQV9KB0S3GpMdM0B/zcWb
         5tU1DdjWtf4IHRBSLMrdve1Yscj4Du3nvx62IWMSjgYkvLmEVSl/u/GbuDAFaBxcOknc
         4U9eD+9o/Q9tc0QeIBvJOHToNnNRD5kp2Jransb/HG/Xi4GXF95Cr/Q8gw19/ch2Ro2n
         jY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=DIG7qvNsLw70UP44yrAa8uIZm6iRar0Nz3GUOUx27ec=;
        b=SJWzW0cSVR28ceDN+yrgHIDc8xy5SpN18ST5hCZVBBn+YWesvBF1IOlPREvrRdALTZ
         8DOKrSlHA6VV9r6AXYMj7b4IHrupcAN7VBGadGYaRiYmnRbaCZbwLkGQ1NnPdr2Pd1JX
         ww5RT1XQEOxWHc0AdwtYtb5qnAOGdK/2BmPzBq7b2XOK8S0X3wChhoVG0SXT+HwuJt0p
         BXDz0/JhwZXg1SM81RqQHqaHloVFhuWJYEhDQBpUIfve3gf9TBPNZKNYQdAIJ6m9O18G
         JKP+0j5qB+3RthLsrcEtwD3YcmHyqs+qaTO+4ONaKjIjjD/ySQWQJRXK05g8FSgz+2TI
         46Rw==
X-Gm-Message-State: AD7BkJJ00n+UOx1jjo5AI677OX/R2JGugYzJ626eswO20JuL0+6j3uXjzjmoYuzf9XWN3Q==
X-Received: by 10.98.74.209 with SMTP id c78mr32012829pfj.90.1457551547808;
        Wed, 09 Mar 2016 11:25:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id f66sm83475pff.8.2016.03.09.11.25.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 11:25:47 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael.Hennerich@analog.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [RFC PATCH v2 0/2] iio: introduce iio_device_{claim|release}_direct_mode()
Date: Wed,  9 Mar 2016 11:25:23 -0800
Message-Id: <cover.1457549841.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456794364.git.amsfield22@gmail.com>
References: <cover.1456794364.git.amsfield22@gmail.com>

This patchset introduces two helper functions to simplify driver code
requiring the device to be locked in direct mode during execution of a
code path. The staging driver ad7192 is updated to demonstrate usage.

This could be applied to approximately 18 known cases where the driver
is holding the lock in direct mode.  Unknown cases might be those that
should, but don't, hold the lock.

Alternate implementation: Generalize to support a claim on any mode.
Do iio_claim_mode(device,mode) where if the device is in *mode*, it
is guaranteed to stay that way until release is called. I considered
and rejected this option because a) not sure other modes would ever
need to be locked, and b) the semantic improvement is less when it
is generalized.
 
This patchset was inspired by a discussion on linux-iio:
http://www.spinics.net/lists/linux-iio/msg18540.html

Changes in v2:
o use iio_device prefix for new functions
o replace EINVAL with EBUSY on failure to claim direct mode
o update commit msg & changelog to reflect new prefix

Alison Schofield (2):
  iio: core: implement iio_device_{claim|release}_direct_mode()
  staging: iio: ad7192: use iio_device_{claim|release}_direct_mode()

 drivers/iio/industrialio-core.c  | 39 +++++++++++++++++++++++++++++++++++++++
 drivers/staging/iio/adc/ad7192.c | 24 +++++++++---------------
 include/linux/iio/iio.h          |  2 ++
 3 files changed, 50 insertions(+), 15 deletions(-)

-- 
2.1.4


