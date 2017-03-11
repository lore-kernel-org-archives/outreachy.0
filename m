X-GM-THRID: 6396343645329424384
X-Received: by 10.129.82.133 with SMTP id g127mr10618576ywb.161.1489269770783;
        Sat, 11 Mar 2017 14:02:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls6117838otd.20.gmail; Sat, 11 Mar
 2017 14:02:50 -0800 (PST)
X-Received: by 10.157.36.99 with SMTP id p90mr10738407ota.7.1489269770422;
        Sat, 11 Mar 2017 14:02:50 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si2442413pfb.2.2017.03.11.14.02.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 14:02:50 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so14099250pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 14:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Io2C6/XTQBChxNh9JblwzviZTRi08Zdu3HyOJzopgXs=;
        b=FJ1DmSF6YzDnO2wejLHDGCzIYlUfUbRHAp4pINlOOqMBHG/1FHSCtz1lUcAFk+njIe
         K8Dvjr7LuH407kM3tgux0uxH0MfEpaCxiQNbCd6WTlYGEKp4+wY4vKExa/Jofeq/f+j8
         g9IeaDhMIG3aku59eWAthn8GMU9yvT3ZGL19BbaVK7Upq31gGB0CJ/ToKzhA8Wz0vtB7
         EQ3df+JfuEQPAK9C9ma/aWX+NpHMyIi2uldydUH6Wk8PxRkS+59FaJonLXth/V1AQcaV
         Jr9xiklUmtx+DMoQ4ck/LptDkqKK4+VbgpRxuvbSI5VgXUn90ryZfzxO3RglqVWFSZ9u
         997w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Io2C6/XTQBChxNh9JblwzviZTRi08Zdu3HyOJzopgXs=;
        b=UtkJFt4b2xWxWbHUSgcJPpwXJ4N2sGl+bAkNYXUrAkAKSQYdOXrNtctJW4L6zBk9VB
         j25pULTSg/8XdjO2C+/WHkP/z4jHJFpQ+E39E9oUvk1eg6DV0aFtaSRvLDmpM15lV33e
         SAspllCEnEcqPy0TpoiNTJ/NUO9iQLfONQ6AHa5K1hHjwbypjrQ2ZZ48W7l9OqOHL8SN
         yTmhowMM+uRjEM/sjt6H43QQ6L9NVTiukRrTcKXGlyWoxYhCiLNzfTlNNkUYidEuIx4g
         EMadRGWDfTTdQkS8CRpa+wmVOM7dfwPAsX7ZgffhmKUDiNO45bJcAJJZFBtSpIaU+T9a
         /CVw==
X-Gm-Message-State: AMke39miyrHH1/VcfB+9fvhTnLDNkpP/7v1FhW2cyz1fulLJW0FS+7WZ6d+8EKy2FuScZA==
X-Received: by 10.84.202.194 with SMTP id q2mr35941202plh.108.1489269769901;
        Sat, 11 Mar 2017 14:02:49 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v4sm25774012pfb.36.2017.03.11.14.02.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 14:02:49 -0800 (PST)
Date: Sun, 12 Mar 2017 03:32:44 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: android: Replace strcpy with strlcpy
Message-ID: <20170311220244.GA21700@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace strcpy with strlcpy as strcpy does not check for buffer
overflow.
This is found using Flawfinder.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v3:
   -Correcting the place of the parenthesis and sign

 drivers/staging/android/ashmem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 7cbad0d..4d9bf48 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
 	if (unlikely(asma->file))
 		ret = -EINVAL;
 	else
-		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
+		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
+			sizeof(asma->name) - ASHMEM_NAME_PREFIX_LEN);
 
 	mutex_unlock(&ashmem_mutex);
 	return ret;
-- 
2.7.4


