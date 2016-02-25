X-GM-THRID: 6255248390839336960
X-Received: by 10.66.102.8 with SMTP id fk8mr42493268pab.44.1456413509235;
        Thu, 25 Feb 2016 07:18:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.102 with SMTP id o93ls437194qgd.16.gmail; Thu, 25 Feb
 2016 07:18:27 -0800 (PST)
X-Received: by 10.31.154.65 with SMTP id c62mr41477851vke.8.1456413507505;
        Thu, 25 Feb 2016 07:18:27 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x231.google.com (mail-io0-x231.google.com. [2607:f8b0:4001:c06::231])
        by gmr-mx.google.com with ESMTPS id p10si294431igg.1.2016.02.25.07.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:18:27 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::231 as permitted sender) client-ip=2607:f8b0:4001:c06::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x231.google.com with SMTP id 9so85899261iom.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Olh3oZwqafRgqvjAjSaeCJVxy5vWxIQpM9G4zKYt88c=;
        b=WsfLz0ePTSyeuyKd+2yCnmK4CkFPM6a97o1lmmZeu61u+msuzMPspdAPGzwb3elxn2
         z6KY+Jh0v4YbTbQTfzL7veH23P4gUe/LyiQ3EGuz57VWsusv5BSUFLQSSMN80NWl1l3F
         bZ/fufwJzt8oESHPShUPcq+u4mxbg8oxZSh0hqaMxwpHM6vC+mWNGtO8x4q90aKC+mtn
         qmK5Ug5xzoIWdGu5VmFlF3G9GFn3D5p4yYUzliYKktke/IASlzhC0FpL7RpGJfy5AzqQ
         LyWLFaiGz6jWUI8CkRyXsqgO12qrP7UeOgmisGkFPwxWfNocsWu+FIUwKVVTFHtT61TJ
         WH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Olh3oZwqafRgqvjAjSaeCJVxy5vWxIQpM9G4zKYt88c=;
        b=Z+9u/geHJ1+SmSEgfTkaRkwZzXkeRMbsQE2n1RFOyJitYC3lcjxQTMRQwWoTNN7Wev
         1B92QmcJERh+LVozHbNUMkZ6J6KgOQJsl3rbqZNkqYUs13oM1YVQ6yRwxu1AhF8NhfmZ
         NK/zvI8iiapR8TplX/VWrXAkDzyCUfpT8hkQeZRw1OZUyGec9ta+LmKz0PyZ7JK/9UnP
         EhJkZ1v0THhFfvmYWoiH6w9p2++fMUzpvxhVo2QX6GOt3qshLcmAMKf1/4vF5WEDfcnT
         El30UW05XGblynBe8PeUMo7oUeolwrFUTZYvlM63fIMh3dc2juOlWc5T46Ird0eXKZWw
         JpzA==
X-Gm-Message-State: AG10YOR+aD0uMUwE53JqJ9+JJ6SW0B7TKyhvd3bm1WQ6yDlR9toszQHnVf0BgAoFC5NrnA==
X-Received: by 10.107.8.158 with SMTP id h30mr3497342ioi.93.1456413507319;
        Thu, 25 Feb 2016 07:18:27 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id a127sm3409505ioe.10.2016.02.25.07.18.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:18:26 -0800 (PST)
Date: Thu, 25 Feb 2016 15:17:38 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: nvec.c: Drop void pointer cast
Message-ID: <20160225201738.GA8306@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void *e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
|   
  ((T *)x)->f
| 
- (T *) 
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c335ae2..52d1363 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -141,7 +141,7 @@ static int nvec_status_notifier(struct notifier_block *nb,
 {
 	struct nvec_chip *nvec = container_of(nb, struct nvec_chip,
 						nvec_status_notifier);
-	unsigned char *msg = (unsigned char *)data;
+	unsigned char *msg = data;
 
 	if (event_type != NVEC_CNTL)
 		return NOTIFY_DONE;
-- 
2.5.0


