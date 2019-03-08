X-GM-THRID: 6665843056733847552
X-Received: by 2002:a9d:68c9:: with SMTP id i9mr8733251oto.55.1552014632840;
        Thu, 07 Mar 2019 19:10:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls1789337oif.1.gmail; Thu, 07 Mar
 2019 19:10:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqxBvy1hGQqeErcZvy9MP3XMJNKf3KTneWomNOcAB4fiuPQ7pPXoW2n4Mx+/qRY0MmNTGIbj
X-Received: by 2002:aca:4a46:: with SMTP id x67mr22589521oia.28.1552014631925;
        Thu, 07 Mar 2019 19:10:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552014631; cv=none;
        d=google.com; s=arc-20160816;
        b=pLv8ZA9Q62hdXWSTyrJo9CABT26TgnQq5DIhba/RwqzWLP9ielObK0t5Cdlfa0xxnZ
         20OHkxM6PyiHdW8lK5Hw3kvykuXs6QiDKYHCDyj+tPGa2HSwLiENfafTBV8FegdBGagY
         +uvp8pMmoNkaLRgkQfx1xXYcghdOhFOGV5LdF59fdXXWVNWJ9bQR5/0kdQrUHJ1cnQ1p
         3xrpb8Z4VlmS8Ru84VvPOFaF+LFTAiKUAvYZrzX2ifs67dkSjui2g46T5TSNY2o4tcDn
         KbQN+1ru+wR7T0H6Kzm2JQcS4KoYLY0DXhXMwyltXUWcBFfZT/fwD0lH1zD1oY11DQ1w
         Ge3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=iBbPTDPuXuk37qBKbsWpQmVh1x7hstkFvMQXS0ihbJo=;
        b=IJPyk/CWaiAqujxoGRCums8I7aag9wLOdkIO9okKnYWqlzeDOEYShw5eZNSOmCL24D
         5yFs3ucIMTlS3SveFHgGMC6dGs8i0lIBDmAnk/LVMGPs+8eswfO8LOgVkVeVImsBkYfL
         FCZtQMxRh6nZGpuL1mMzd66GI1rgAMAEPybLK2emSJwPkPYCb/ZYgEZgrrRGE4VIrcOs
         cAi/RNrU5QoahcCVCGlC4+lH1wVlzdRnyykbz/ksXxqJISg6ZRuoI/UGK6g4ybkwhwRh
         G4ZY3/OPkmaVUiaxdTzdfnhMwFv1Lq2ZomznLhwzrdarGge8vU2BHcFb9p/zQ8gDk7qX
         BULQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g0qOzcJr;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f96si247265otb.2.2019.03.07.19.10.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 19:10:31 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g0qOzcJr;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h11so12936369pgl.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 19:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iBbPTDPuXuk37qBKbsWpQmVh1x7hstkFvMQXS0ihbJo=;
        b=g0qOzcJrnQOdwDHiu5GZKX3CEoNhZI1wxrI7BuIzlYxbxZq6Hv7RHxhxfxRIoeFg1C
         UYX5uXdzpWfKUeQq9JmIEvfokIMEZCq/UF0WvbknqG4+uC9xlfMS7zJt/yahU/g4JTQ/
         ZdV1k33Qg8vtuO2/Lxs21jA0JP3BmHDVrUz1UUVpfmMpJ3M0br8wtwP0Ut1BOPldgdmi
         TeRMJIezVQJvoIvIj6FDBIGueUMxyG0cnxrPXidQ41wbE+ZZlMclqPJr7k4jaxLEe0UU
         ZlNwG60nz5UEMm1DCQNu8/iv+eM6bzAIe1e33mzkn1EEbS2ts4ogOhHaqi6h/z+rkDP1
         Xv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iBbPTDPuXuk37qBKbsWpQmVh1x7hstkFvMQXS0ihbJo=;
        b=pl5FoREMIvohkJqECNZRLQHosq+Jfj2OdiFyuy6QUFcSgtfLHjywVO8nx01e3TYb+T
         9HtnUQAwCr8XMa7vRsAPWDP9EZaeiwkN/7vvumkWqTdgKlnG2/Zz/aa2IGSNqNsanB6h
         OeWjHgjSQ/8odcxgdFrY9CDllYZ8/d7n/aGqspRgO5at2SmgJ2ZinklGvTZbIwPs75Gh
         KAUdZpdgZmrisnzde1u3G6lsCraXkCrYWKu820+Xpc3YHeh+uGFQWgyX2g7Pq41jzXKM
         zTr2f4WVfUsStokrUtLUQYE/dp0z/NKXy6VPtZ1Sw9mbhunJfdVzgC9xqhcnAvGUW5Hp
         EGog==
X-Gm-Message-State: APjAAAUYiBhGQnFckLYTKAUkOG308j9TFVNoIA4nAj57L+NtQ1q/Lbzw
	vXec9d9xwvqWhxjyDi51Lr2SZfiXDZg5Jw==
X-Received: by 2002:aa7:91d7:: with SMTP id z23mr16371385pfa.137.1552014631280;
        Thu, 07 Mar 2019 19:10:31 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id b85sm16753491pfj.56.2019.03.07.19.10.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 19:10:30 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v3 1/4] Staging: most: dim2: Fix SPDX-License-Identifier in errors.h
Date: Thu,  7 Mar 2019 19:10:10 -0800
Message-Id: <20190308031013.7952-2-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190308031013.7952-1-etsai042@gmail.com>
References: <20190308031013.7952-1-etsai042@gmail.com>

Fix the checkpatch.pl warning in drivers/staging/most/dim2/errors.h:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/errors.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
index 3487510fbd2f..cbbdaaf5c52d 100644
--- a/drivers/staging/most/dim2/errors.h
+++ b/drivers/staging/most/dim2/errors.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * errors.h - Definitions of errors for DIM2 HAL API
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


