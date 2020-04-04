X-GM-THRID: 6811652718511259648
X-Received: by 2002:a5d:6187:: with SMTP id j7mr12257975wru.419.1585961486623;
        Fri, 03 Apr 2020 17:51:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7d97:: with SMTP id y145ls2638957wmc.2.gmail; Fri, 03
 Apr 2020 17:51:25 -0700 (PDT)
X-Google-Smtp-Source: APiQypLZ+zC6j+4lyxjTedL260v3uBGuM9mVaQnYdYxewlHj8v6KI3ysRe5t5/n2EZJKk4PfNlt8
X-Received: by 2002:a1c:4d13:: with SMTP id o19mr11838131wmh.82.1585961485409;
        Fri, 03 Apr 2020 17:51:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585961485; cv=none;
        d=google.com; s=arc-20160816;
        b=Yx4xscw12YRueB96Ofp/a7uhuTcxH6V+Tt4Tl/vXCDZmcuQdbOrscjS/vJy1o5BwZM
         2nIhPKr33LpNcLm4KQV604K0/PfgpHLBqejQsk7v0ObEbMnlGDGTXtQp3l/a+abWWLZC
         P9Q4+M8fbxcD8GNQouRWoucCogsMMn2oxpk8///dMzy0u07ZQZ3Qnrv1OSrnVwZnM0P6
         pWglkSGUR8uIYAwB4HthEs0OyibfaIw83dpOHCMsXGShblCqSfd2vVUPdpll/0P5oF93
         j5bK8HCntzFyb2eyJL5f7J7JOy6a01Xy//gkJjVWF+JxB9rLTTQLfxl+7zoRWvfPt5iB
         /QMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2UkeUUqTzXRGicBm2hDb54EU7gLxLBL5INbwob/egII=;
        b=c10k3gWUZkk009/psplPMgK9Ftx4dJDEQ58DUfl6xM4PX7CAGB0s/W4qt+OCStZXl0
         IMJ9a8hqm3ljts19rEqbBxgo2Ot3/xxjiFI+2a2ff6UYyZ0rHr8sd65NaaOJp086DVfE
         /rZ8NCYgDAdUf6SZ8xLwsZFCGWwVFKwQ3/2K9GTiqhkMgvTdofH3Zv5V/QFsdyaUXvni
         UXZ1eEHTI5HlLGPYUaNXHmRKtklnGTjcnlR9rzX0nWn9pbE2YQIyepfXYTL0cIPS6Cj2
         kf4geVsjWFvG0kYqLi4c3JpThN+WVfh4lcp3utm6Xl/ZKBbS3aCLvJb4w83AaR0DcoEE
         cL9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SqZdshjF;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id l16si723454wmg.1.2020.04.03.17.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 17:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SqZdshjF;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id t17so8784373ljc.12
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Apr 2020 17:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2UkeUUqTzXRGicBm2hDb54EU7gLxLBL5INbwob/egII=;
        b=SqZdshjFvIJYq/+S4UTM3GrHJ7IqHcASVbhIOAr6UXSg1sb2Pahe21AkwmmjZAdj7H
         cWJJ45AT1WMEUkORaUOoAtSCwfIdFb3FTWL5LXz2tjHcdADN/8B811R/r2c6d7WId+w5
         NXR3TzfnXQ6FJjL0BNUilUPePKhcaK3bxMpkq0hi35SWcmVil0cNCrStiN/Afm5aLe5K
         LUYdrGLKOQqLpQ7OeQjygCHf3Y7SRizk7iSHMaVZLrBIXyA805+o56YymS1kG2sfOvW1
         DIbkwD47ixngFkT+iRI8k6bn4KRBlClUvb9MpFjCjjDk3JSP0bQ3QElKXEETss1evLaP
         dAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2UkeUUqTzXRGicBm2hDb54EU7gLxLBL5INbwob/egII=;
        b=V7DW+yW21xeNzVBJequ8V3vMsE/5XxXz6YXp5cx8O4HOHNYYNkALq82RmPcAvOMlhU
         DWSsakYI9+24dr6k+eZWZXkXUjpMmUT0UcqX9rLaxCvca95ApABB0SWzRfDl0qCfY85X
         k1mHIngezwiv4fpwZKDJ9fo8Z/7X32meKPtdJ/PhcVFymD1rHG+PJHl51FjVkn5CX1VG
         gXowDvk2XJdi+XnXCeMbk8ZsuPIbY47q9doUG1NsfBmGzHE/iYxeZNw3GOgVEbmDvuLy
         qxAQvgytWjF8wP1mCbZ7A7HU6tZ1EQvzvoREpCQyMKp+0TmANTDtbtQgJHOVxf7gPp1J
         qUjw==
X-Gm-Message-State: AGi0PuajekZ4HGKzfH2YfrQO+Un5qpjhrSWjioYcFPK2j0Ij67VyVgA1
	0cRRwTwJ9S2SVVhI0EvS6jrmX2iGSJ0=
X-Received: by 2002:a05:651c:102f:: with SMTP id w15mr6057450ljm.5.1585961484841;
        Fri, 03 Apr 2020 17:51:24 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.71.230])
        by smtp.gmail.com with ESMTPSA id b28sm6680439ljp.90.2020.04.03.17.51.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Apr 2020 17:51:24 -0700 (PDT)
Date: Sat, 4 Apr 2020 03:51:22 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, elder@kernel.org, johan@kernel.org,
	mgreer@animalcreek.com, vaibhav.sr@gmail.com
Subject: [PATCH] staging: greybus: quoted string split across lines
Message-ID: <20200404005122.GA6315@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Quoted string merge to upper line.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/greybus/audio_manager_sysfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index ab882cc..d7216e9 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -18,8 +18,7 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
 	struct gb_audio_manager_module_descriptor desc = { {0} };
 
 	int num = sscanf(buf,
-			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
-			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
+			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
 			desc.name, &desc.vid, &desc.pid, &desc.intf_id,
 			&desc.ip_devices, &desc.op_devices);
 
-- 
2.7.4


