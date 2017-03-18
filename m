X-GM-THRID: 6398955300096835584
X-Received: by 10.157.50.136 with SMTP id u8mr9883624otb.87.1489872881309;
        Sat, 18 Mar 2017 14:34:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.120 with SMTP id p53ls5579458otd.7.gmail; Sat, 18 Mar
 2017 14:34:40 -0700 (PDT)
X-Received: by 10.129.182.11 with SMTP id u11mr10664729ywh.149.1489872880949;
        Sat, 18 Mar 2017 14:34:40 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si1939617pfb.5.2017.03.18.14.34.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 14:34:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so5735378pgf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 14:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZrK12RKJ+fIHQeYnLDC5mWafeuzTl95tc8QgHKb1Q68=;
        b=VRUH6rsyuP4Y0kP4xY0LejOfNFeXi93wBP8KbHN0OYdUVFy+UDh6fyo6IYWaZXWAON
         7ZarGZovkh6zNdrNE8F7kkSaps2QqiK3Rg8qnKEXsftceS/GaBGRi8QbrXMK8/kamLlw
         x+qeKdVkXiakzYZlXkV8J6mitkn2m5/PmHuLbr1k8lZA+kqJw2MgxQF69mCj5QMxfh2q
         xJdSfHFD5ZgN+5h5q5JH0cLq+8ZtyMqw4ETgSPqgNpXBleXMVym4juaaRHznqQP6dKib
         wWYD2iMQyCpe2Eo1LtNoCYBGDv2/Nyz3n7P1oWjvrh1UbxIkI7H6R+8A/kbhqYpnj7dK
         x1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZrK12RKJ+fIHQeYnLDC5mWafeuzTl95tc8QgHKb1Q68=;
        b=RFARYBOvkQQ0e1fiCF61iZOwsgdiNVZMM8Hik2wHHTR5uiIaDVmHXMUe+IRdw4l8pv
         CQW1O15jUu0oVuXLVddylZj/xGQhpAMvT7EKqP0v7HzWwvhfOk9jUsvWd8GD7x1NcLLB
         cz+N+sD+DXCZxFekosxwyFZBN/G9X64N4v34NsOqCPF1cOgYt3R66JP9wHrfdLA+eKQ0
         vskyHSdmF3xuuUiQMt7lwM+z/0qJlE/OgIPcOII09x4WfFGEdwB0ClIXX7dwiCE3wJRV
         vLFntkOt84HvQdvymxkrNUA1NrPoyTU3+y6rr6KMpQzE9xVH6eLe1tZiEDWqdqWcjcUB
         wS8Q==
X-Gm-Message-State: AFeK/H1ixrsWqzh19QY027CpxAYDs7zYzPti5koiG2MreGBs7GOEKXRpOjkuI/x8vFurEA==
X-Received: by 10.84.206.37 with SMTP id f34mr29648780ple.175.1489872880691;
        Sat, 18 Mar 2017 14:34:40 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.176.141])
        by smtp.gmail.com with ESMTPSA id i15sm24401010pfj.0.2017.03.18.14.34.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 14:34:39 -0700 (PDT)
Date: Sun, 19 Mar 2017 03:04:24 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Alasdair Kergon <agk@redhat.com>, Mike Snitzer <snitzer@redhat.com>,
	dm-devel@redhat.com, Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH] Documentation: device-mapper: cache.txt: Fix typos
Message-ID: <20170318213424.GA21394@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch fixes a spelling error (hexidecimal->hexadecimal).

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 Documentation/device-mapper/cache.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/device-mapper/cache.txt b/Documentation/device-mapper/cache.txt
index f228604..cdfd0fe 100644
--- a/Documentation/device-mapper/cache.txt
+++ b/Documentation/device-mapper/cache.txt
@@ -290,7 +290,7 @@ message, which takes an arbitrary number of cblock ranges.  Each cblock
 range's end value is "one past the end", meaning 5-10 expresses a range
 of values from 5 to 9.  Each cblock must be expressed as a decimal
 value, in the future a variant message that takes cblock ranges
-expressed in hexidecimal may be needed to better support efficient
+expressed in hexadecimal may be needed to better support efficient
 invalidation of larger caches.  The cache must be in passthrough mode
 when invalidate_cblocks is used.
 
-- 
2.7.4


