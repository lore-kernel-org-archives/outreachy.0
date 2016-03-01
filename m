X-GM-THRID: 6257160535052124160
X-Received: by 10.107.153.197 with SMTP id b188mr273668ioe.27.1456858714074;
        Tue, 01 Mar 2016 10:58:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls747366qga.11.gmail; Tue, 01 Mar
 2016 10:58:33 -0800 (PST)
X-Received: by 10.129.102.215 with SMTP id a206mr18983222ywc.40.1456858713609;
        Tue, 01 Mar 2016 10:58:33 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si4975818pad.2.2016.03.01.10.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 10:58:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 184so5633965pff.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 10:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pn5N/0oM1r1DEqpTS1vUbJEcW73rt1sDNN14A8Frlwg=;
        b=cTbuPqeX/LLOlc5RRj4bVCK6NvZ+T4fwUbGIm8MuM3Y87o2d2m1uVJoZkqmShklf9P
         6pxkADWKg2mLcCT8FcwuC8m2CwmWvBldH9bdZepGtP9Gqza82RczMmdtVKwCA3Ua1kgs
         8e+W4hkraTEQ/XZwpIG8jmfwryjdQdlD05uyFD+Uf6Z7N0FLwb+XHLLgbAVqgSh9Tjll
         O3F/fYAvLcXYwzPLOFTJNl2GJsxNKevlMPJ6RWQE04zKKFqJEizxYNiIkISJCvizoL4B
         CXJObLB6rZvYxI2jngLpOzJ1V4N4rthDBGnnfddo7KFJLPQA4Fzi0jBuLqOngKGH80J0
         QACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pn5N/0oM1r1DEqpTS1vUbJEcW73rt1sDNN14A8Frlwg=;
        b=KoE4PRShQcssBZunr+uZp/ag3jMMljcGKOLKH6xJqJxIqD+jbv/cMJ9HqYYhEKJf30
         RIUO7opmCF9KVJwh62KMirll1be/jkiNvAxH+48fgu+3N0U1JuG7/AsGHCFZZXUjzOiD
         tcDtCKpplRMANUEmMCGVV2aESf/HimgU/dORqbyRYqOxbTZGkjxLSeUDNKzl6TAe16kG
         ZxLE+RnYZzDOCeF0dllLnCSaKFHVtiw2WXPjRAWVpA+CmUwFhCiCZVzu5IAWbyI8cCWJ
         ZUCpjfE6w+I4UJGshJfZ5VyoeVIC1miW6KP9vGpciH/tiCwIUcLfvHIaavdjjoz7UtLs
         uCQQ==
X-Gm-Message-State: AD7BkJImwVcEn6XogX5lR/ab8KRx9EocKuByQq0ily/XEAqQtKDQf1YRDWBGfpUFEm1dWg==
X-Received: by 10.98.34.212 with SMTP id p81mr32036398pfj.23.1456858713417;
        Tue, 01 Mar 2016 10:58:33 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-235.dhcp.embarqhsd.net. [67.232.71.235])
        by smtp.gmail.com with ESMTPSA id xu1sm47323718pab.31.2016.03.01.10.58.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 10:58:32 -0800 (PST)
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
Subject: [RFC PATCH 0/2] iio: introduce iio_{claim|release}_direct_mode()
Date: Tue,  1 Mar 2016 10:58:19 -0800
Message-Id: <cover.1456794364.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4

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

Alison Schofield (2):
  iio: core: implement iio_{claim|release}_direct_mode()
  staging: iio: adc7192: use iio_{claim|release}_direct_mode()

 drivers/iio/industrialio-core.c  | 39 +++++++++++++++++++++++++++++++++++++++
 drivers/staging/iio/adc/ad7192.c | 24 +++++++++---------------
 include/linux/iio/iio.h          |  2 ++
 3 files changed, 50 insertions(+), 15 deletions(-)

-- 
2.1.4


