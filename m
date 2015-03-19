X-GM-THRID: 9130553114624
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,694247d93496d508
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr12359211lah.8.1426792083547;
        Thu, 19 Mar 2015 12:08:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.97 with SMTP id it1ls343639lac.1.gmail; Thu, 19 Mar
 2015 12:08:03 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr10322982lbb.19.1426792083098;
        Thu, 19 Mar 2015 12:08:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id c8si195121wiw.1.2015.03.19.12.08.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:08:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id k59so65105141wet.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SlFXftu1EpSxjp2fMblE4HSyWJX2GK32EeyvA+5yoKg=;
        b=fbIdqgZJmrKD+rEOBZ5rBRgjQh01R3/ul0LdDjAvOgb05o4BcAMlXVTZElOR+brrVL
         kiLuD8s0h3I6xKDk2PEsDpuMJ0DlC7Eg29kyh9da4RaFDgauxw16hCqaQy9wyjAiTj5Z
         6KO3m/fe4gaCHOOYlO0QEvHdpmtcN+Twm/n0ezBTwTgov8FxIYrJmF7UDt1rBn1YrwPY
         yXQWaUheq9KKD0sZ6Nxxv9mxzLrLYQJPicht/I3CrkbGM+L+lYoLmw6PBhaux2VAQpI2
         A2Zzsx4WNt3HzKsBVUvKyL39Cdwf5uB+XIkRVk8ehL7Zxa1L+Bh/Zp7uimgDwEufMlhi
         9G+A==
X-Received: by 10.180.85.103 with SMTP id g7mr18479354wiz.19.1426792083017;
        Thu, 19 Mar 2015 12:08:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id s5sm3555571wia.1.2015.03.19.12.08.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:08:02 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:07:18 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] Staging: iio: Remove multiple blank lines
Message-ID: <e232bae803a6f32b0f077dda2ef288bfa6c0728d.1426790662.git.cristina.opriceana@gmail.com>
References: <cover.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790662.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes blank uneeded lines in order to remove the folowing
checkpatch.pl warning:
"Please don't use multiple blank lines".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843.h      | 1 -
 drivers/staging/iio/magnetometer/hmc5843_core.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843.h b/drivers/staging/iio/magnetometer/hmc5843.h
index 879d43b..332a75c 100644
--- a/drivers/staging/iio/magnetometer/hmc5843.h
+++ b/drivers/staging/iio/magnetometer/hmc5843.h
@@ -10,7 +10,6 @@
  *
  * */
 
-
 #ifndef HMC5843_CORE_H
 #define HMC5843_CORE_H
 
diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 9c4ac0a..cdbf369 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -562,7 +562,6 @@ static const struct iio_info hmc5843_info = {
 
 static const unsigned long hmc5843_scan_masks[] = {0x7, 0};
 
-
 int hmc5843_common_suspend(struct device *dev)
 {
 	return hmc5843_set_mode(iio_priv(dev_get_drvdata(dev)),
-- 
1.9.1


