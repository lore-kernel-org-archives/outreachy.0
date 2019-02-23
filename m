X-GM-THRID: 6661087571721846784
X-Received: by 2002:a62:121d:: with SMTP id a29mr2927908pfj.103.1550905306729;
        Fri, 22 Feb 2019 23:01:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4393:: with SMTP id l19ls3601290pfi.6.gmail; Fri, 22 Feb
 2019 23:01:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZTMKBqtGE0KUXckIAU6kNbHpSsOjy8nPunxGEPzT+Htr7htQfYb59wVlyFP85GG7S2pyer
X-Received: by 2002:a63:b70d:: with SMTP id t13mr2944379pgf.49.1550905306056;
        Fri, 22 Feb 2019 23:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550905306; cv=none;
        d=google.com; s=arc-20160816;
        b=wxuExEpnx8s/zxVHo+5GPg3CYtM2Hi3QXYKpp9SQLpP8Fdg2wExoD43wt7cueXZwn5
         a/pd+vRnQQxoa9UaigGtD0TIO32H4ZTQVemh/Bi5vsaRZ2dTKNtbfWA7aM/imsouNHiL
         +4znltEEALzxGPdMUpS049lGMhpxyU1xqhI7GyeOOnbluIbn3UdvCCVlN4EOwiZrx56U
         hmcA7IfVl4i1V0vP55cegrWSX5vUl14ymxOLvEsagkT7bq2yyA7JJRBki3r8oJCrWhm7
         mZ4NNUEwMc0xiTfPQmCXv+FX4UaZvKAuXuYoG5IAwMeK3xKM5BVDZlJPZoxkdibJCZiK
         YPKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VWFbYQ9EaLsCseA+WX6M88cK8KmhbCwZ3kgTJD9QDcQ=;
        b=zQZz/Vu5sjrnXaBDB7VBYYkukeHsxtOckqSgEtcNkPZm2diZ33EAplhaiPRPFO+1Qx
         3HE31P0+eGx64fJeHXpWqHnwD/hXKqdY86tQ/txuCZIlKa+7eeVWIJcHG8JWL/rlDEnO
         wY775sLEbWu/+nZ7QyqeN+SkZ2bUcgH0BBFv99iSsWfZ5VVlnfgmzdm6rqg3zekU2gwe
         kDYPZk2EL3RAZY4qxQlj4gfMehER7d+kN+S/Te5epFDOqkPRDxIIBRUSfedN0mpSBhnS
         GeIM3yPpHkNHgNWM2uoy5iEadURsO1b98KitPEy7UelVHWvG2U4fxMaE4G2Eqy79ngZP
         V6jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pJdPX2Ja;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f79si205888pff.4.2019.02.22.23.01.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pJdPX2Ja;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h1so2107442pfo.7
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VWFbYQ9EaLsCseA+WX6M88cK8KmhbCwZ3kgTJD9QDcQ=;
        b=pJdPX2JalHtplpPxjKVT0TkLeVdtNjV/0Vf5kH23IqIQbLgAZd2ovSNZ7LU2GtObDx
         /hpAM6l+mcqaohB9APwkko4u1yyqGyidXB61tUnKZFLA1TOlgefckDHcqMLv2CFoFOA/
         hm1A2gsXwvWsgvVJK9hU2avm8aYD4bcnZP5Sk2T/oueylp9JfqxfmD0qj/4XID2egd6F
         tkWConhN+0rocVb9YbZVbPg85qEOF+Z4RwdUa+vgEMzZJZaseHNcSTkGc4CqJ7cbObtR
         ecLEPUIV/XAx2rSOeqNUSgRygp7vaT17YxsVj1XJhfPujjK8NgCL+7YrNKAyqgk0Hn5w
         0e6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VWFbYQ9EaLsCseA+WX6M88cK8KmhbCwZ3kgTJD9QDcQ=;
        b=QGa6/BKIiryKziznG4p4xUAvX3MDW4uYVgH7OpmaRAaSG+OX+mQsCP91A723iJQyeO
         XjLMxma/wz2G6wvd3FpW6jRjrDBM+6EiFd4XpRcjSqJlxe/EmfJFGeoHRTLBjWqainqM
         /f2UrHs/ex6pwK7M4spuMhjL8oF/BpXHA7BbDbDplNRv5kd7L7Vi04+zP6AdRIPZu0FI
         Vp2M0azvZHFsnqdMmWF/Eac+d/+rd2gUz1zRy5zSpifZJp619GgZoLGsjh8PrU79sV9h
         vXqT+C7EkoyBGfoePgVqHmJ4OvCb0aCWUKlDbIiNMuRm+FS3Sw/ADhZf5cV1HXAanasb
         1V2A==
X-Gm-Message-State: AHQUAub+4b2qdQWcmWouuGt+wp7/DObndYQuFMvHGIrQ/ZH2alLP7Pkh
	5Xzke6mCwm1aF803sAZ7/1bHUov29BA=
X-Received: by 2002:a63:c503:: with SMTP id f3mr7489883pgd.431.1550905305488;
        Fri, 22 Feb 2019 23:01:45 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.247.83])
        by smtp.gmail.com with ESMTPSA id g185sm5324093pfc.174.2019.02.22.23.01.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Feb 2019 23:01:44 -0800 (PST)
Date: Sat, 23 Feb 2019 12:31:39 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: netlogic: Add SPDX-License-Identifier in
 platform_net.h
Message-ID: <20190223070139.GA13015@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds the SPDX GPL-2.0 or BSD-2-CLAUSE license identifier, which solves
the checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1".
Adds GNU term: "Redistributions of source code must retain the above
copyright".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/netlogic/platform_net.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
index e1b27f6..2265927 100644
--- a/drivers/staging/netlogic/platform_net.h
+++ b/drivers/staging/netlogic/platform_net.h
@@ -1,9 +1,10 @@
-/*
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-CLAUSE)
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
  *
  * This software is available to you under a choice of one of two
  * licenses.  You may choose to be licensed under the terms of the GNU
+ * 1. Redistributions of source code must retain the above copyright
  * General Public License (GPL) Version 2, available from the file
  * COPYING in the main directory of this source tree, or the Broadcom
  * license below:
-- 
2.7.4


