X-GM-THRID: 6470761478432489472
X-Received: by 10.28.221.138 with SMTP id u132mr102334wmg.8.1506598508484;
        Thu, 28 Sep 2017 04:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.8 with SMTP id 8ls31459wmf.11.canary-gmail; Thu, 28 Sep
 2017 04:35:07 -0700 (PDT)
X-Received: by 10.28.157.82 with SMTP id g79mr125356wme.20.1506598507619;
        Thu, 28 Sep 2017 04:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506598507; cv=none;
        d=google.com; s=arc-20160816;
        b=S5/Aom+qhQz1OtSu/9wvzTtWSutEfqsxqUhiO1HcMhOmYu4VKSn1QqhAkOrz6BDhBQ
         syhGQnnBko/IKGv+lUWXiSLCjFT1+m5El3mQbyKxidvhNnVUjBL8hmCFw3sikoi2JNW2
         1W81tVD7p4NviM0W2Q4k3ojRDFx+qoWUKKY7QQc979ellVFSZRP+Ik6td+gwMo1dEeH2
         e7HYwFrRJ7nknq0nfRZsIbhITUMweHC7WSw/7uJPYETDtuKg03ycI0kliEikzQH/0Bfo
         VFqFpCPKiATZCV8zr/+sq0W28WUhUX5WxEKszTFZ3EccV91EI/ZvPgFUEIQchNIqkgyC
         PxTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=KHOjUQc3omiEoAKrEhqzDLNvCDTiNZ0/0yvlKY4lzSg=;
        b=ozLNndjReOJk/FM/tNAWAS/s2udX0Il2a8fW6xSBJNdsBhgDrkKBnroPbMr1FQY3ox
         rJsSVgqyD+CTtaIjsiH9ND+nriwgmI5I3wpRPYvvLeR3EkRf8Bjpy3QdqtqyW1OGG54g
         /DyA0cgEkmlN/rfvGqvYAltnxadicxV74cp6i8HiCAkS+HdZ7hysyzoZo5ErocJd7CA5
         BIl964kcxBmDLQ0NMWzhd9J7brlFrtRu14gMv8NAPjyz8v/w+8Zt9jR+/N4uxhIZW2+w
         RlspI2CLgyPKjGrCGmb9wIw3D+85nlUuXUmlYXYxNtM4f97jOwlz3OE+KFYfMQQcy016
         hTbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRz8uCuF;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id h17si99162wmd.0.2017.09.28.04.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 04:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRz8uCuF;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k10so1763543wrk.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 04:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KHOjUQc3omiEoAKrEhqzDLNvCDTiNZ0/0yvlKY4lzSg=;
        b=eRz8uCuFEw8HYR7h59ZzOJtIIKcmxSb3+Y9NHJkzbkhmm/8OsTp+EbHYlcbpfcZvhB
         zfMqAerIm1n1qZTmyTvr0+oGwnMvqvQCfSIk4ULrml7npf7w2dFiZ0nPfsNREp81nCru
         z7yEdbejRMGxS0Z37ZNKqpPXCCWA21ovfB+z4HkV4S86DS/pP3yHCf1steicYyX6Y6Hw
         WIgAfj8KJxnwEmf90Ons/VknqE/8n/WnpdqLdrrFi8PDBgzNKVzNF7v20HR4h5Bp8u6i
         Cfu1k9YLfEoay9TLjk7Ydt50YmvIAJiVW9i52E807Tsr2bg9STg7bDuvekeDVrwN1sQt
         qisw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KHOjUQc3omiEoAKrEhqzDLNvCDTiNZ0/0yvlKY4lzSg=;
        b=UKw+VA1LS4dijDuxGn34mB2Ml2UlssZw5Xv9z97RL4xNmGISDnYnWw0jhENSj3jyNq
         ITPGjb/Ss8jS6cvpcXBduvYcm4omH06K6bFyypX097rQ0wG6pgeORgTCzrvoQ4VFtdRA
         w9ApYZI0hQBOqdHbEdH9V0lYnRuW6jRCOysvwP2xrKrv1aTO+WHzMpMKs5NFEhG3lXmF
         oCpQvLDDeSBXqBw/BzAL1MKIzntqkyPg3XN3ME0K32gku+PnJLm2YTJp+NH3s/3tCLsg
         i0Tp3+MuWFALY1mpCa6RRD/xXLVfwqRQLNllVWCYCpqWu1q+nnhjfLg/qUFELW1MBcx1
         WDqQ==
X-Gm-Message-State: AHPjjUhIc5JJvGVmmE0vki4geTAAQafBW8OSQj5NDQGJwGtnwWYWoUko
	FnYwcNZm4J4KsiDcyA54fyhF4g==
X-Google-Smtp-Source: AOwi7QDw/f6vudI8G3rpfVhqlOsgtVxTJOgAIf3iAycmeF/uZVNoFksIRL+TpxR0smBSO0yw9s9rVQ==
X-Received: by 10.46.66.197 with SMTP id h66mr2033209ljf.108.1506598507393;
        Thu, 28 Sep 2017 04:35:07 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id e31sm254781lji.76.2017.09.28.04.35.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 04:35:06 -0700 (PDT)
Date: Thu, 28 Sep 2017 04:35:05 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: Remove duplicate extern variable
Message-ID: <20170928113505.GA12271@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes the extern vchiq_arm_log_level variable from
vchiq_2835_arm.c.The variable is also declared in vchiq_arm.h header.

Issue found by checkpatch.pl

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- remove unnecessary blank line
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index ee00f51..a96bae0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -84,7 +84,6 @@ static char *g_free_fragments;
 static struct semaphore g_free_fragments_sema;
 static struct device *g_dev;
 
-
 static DEFINE_SEMAPHORE(g_free_fragments_mutex);
 
 static irqreturn_t
-- 
2.7.4


