X-GM-THRID: 6525083396428791808
X-Received: by 10.36.23.129 with SMTP id 123mr49841ith.5.1519323323494;
        Thu, 22 Feb 2018 10:15:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.48.202 with SMTP id w193ls984480iow.2.gmail; Thu, 22 Feb
 2018 10:15:22 -0800 (PST)
X-Google-Smtp-Source: AG47ELuOiSQXCsbrBqZsRBj6oluie5ZVhpCm+ZUKj/jwngf4v51MDzrLvJ2Yfit1YmN+JQDn12At
X-Received: by 10.107.128.80 with SMTP id b77mr5247614iod.33.1519323322569;
        Thu, 22 Feb 2018 10:15:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519323322; cv=none;
        d=google.com; s=arc-20160816;
        b=HHzpptcQiJ43x9Tk6fyaD/OZkhcp80ObOiwolG0qqAYwLGrA4gNce1R8GsN+b8eCPh
         QSz7+ffomPY5IqJ0lqydujY9OZ5ZuHcgas+Lk/uS9JOUCihlxmKjkc1Wse8c08b33mfQ
         2lPZ/kjsX8wBbaCsy+3a1ZFHNvkrm1shxRxQhQAYisVcjj+zYDKCI6Ze3RYSFRwy2LPr
         2mixaMl9NiJ9niNK6uj1lh6ZiKtg3+DiRKMWhNuMg8Ye1onIZcwWMM1wIF9earE3lEHq
         iCXwPMzSFYXWNtYNu4QoefHZTUrlyLfk7VTVFpITeEo22CY4YC5H9cJSs03Up14Hxfom
         FGiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=zMeacexSIrt+MmzNJOps5UesYyopEHz6wLJIPasKf9s=;
        b=SgrPoLfw2kxaFKS0lT7/BB5OewnwPUTchyPqSbS/XFpg0H+dDjP0JkS6WPLi19EoED
         0ueE630hPmbScnNl+L8s8J+pAy6WWj0p9lfu3TxTtupcmqDBWHfkzUusbHpPGG3hnYVc
         IB1GvYgl9LPFdgarODNv4dnqfBQc4piZd/mJxt5H9/4TPjGl557LSohgMSqUsoSFgqxY
         WInsDM1+KoA9FX/2zLdmnXIqZMBkTMusUyjLal1mg3NOV7noGnMfNu08szAo3XS5Blhx
         SjFhViX9jztPmlbG3Sba+EeJuYtF1DmQFoC3uygUkzGQBUZP3cEht7f+qfkNdAMHZpkf
         qFpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vb9crMDG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id l8si63962iog.3.2018.02.22.10.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 10:15:22 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vb9crMDG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q13so2404452pff.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 10:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zMeacexSIrt+MmzNJOps5UesYyopEHz6wLJIPasKf9s=;
        b=vb9crMDGmV3UanpL+LqcRPwuxJVNIEAb/RtgeQErqVuv11+4+tt+fDEN4jiEBrtT4O
         vl9P3uQQjegO4AnEhAHOtQKSwbsuI+NKZRrdoapqe3xYCms2FsIFn0hohJ31chIVEGF2
         Cq4hs/oz2Uh+IHjojtNwmCOdMTkvvZIdfPUV4J5XKdx44AyS4b3eO1b2R30lGQ8Y0rh0
         TcIg19OFl97uda7XfYnZeHayEvbNsvh0AlDLlkJPEgUPrYF8vZ3ZIHn5S3T/+mCgmBmF
         +VjbpGXFaNpT8m0LAIAl0bFVTxQTcViAAFzBpbgHg+jMO/+NouAJnsdJ4wsBSWuBs5MZ
         PseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zMeacexSIrt+MmzNJOps5UesYyopEHz6wLJIPasKf9s=;
        b=JhueHTt1orxEBU5XYkSdHYZIMRNv5VeUPCgo5GE995nWBLsvhfmxloDuA4p2i4FnaY
         +vRx4r2hPtfruGWCQ4zthv2Wxej08Ub+0LR67tVFg2xaPlKQDQtboqViPRqkKmWJOc1y
         OXiocVnsaNY1vFOyFcl4qZbsr4vx9bAttmgT91DNswdARxvkw9cPpXWfMq9abH8W/mhs
         KEuzQGf38iprP2PphRw8nEVmvF11sWl5CdJtvPqDzX4NR5AnxON8+QF1iGISYTMe3f+H
         DHnHjSacYYkdnAANx1Yp1jZz6p+Ep8wN3FSit1NDdBopHwODn9AuWagsdtwxkuZTrG31
         smbg==
X-Gm-Message-State: APf1xPCcH/0WXzwCTNKYvfK+HM4PE44enJPtXXyzyTytroA+YxkQxLUN
	wgsiy2VVYxiwEZTT+qSLWBI=
X-Received: by 10.99.186.88 with SMTP id l24mr6268468pgu.369.1519323321960;
        Thu, 22 Feb 2018 10:15:21 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id i1sm1506314pfi.116.2018.02.22.10.15.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Feb 2018 10:15:21 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v4 3/3] staging: speakup: remove space after a cast
Date: Thu, 22 Feb 2018 10:15:11 -0800
Message-Id: <1519323311-24338-4-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>
References: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>

Remove blank space after a cast to conform to Linux kernel coding style.
Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Changes:
 - Make the change description more clear since v3.
 - No code modification since v1.

 drivers/staging/speakup/speakup_dtlk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index f109b51..dbebed0 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -266,7 +266,7 @@ static char synth_read_tts(void)
 	outb_p(ch, speakup_info.port_tts);
 	while (synth_readable())
 		cpu_relax();
-	return (char) ch;
+	return (char)ch;
 }
 
 /* interrogate the DoubleTalk PC and return its settings */
-- 
2.7.4


