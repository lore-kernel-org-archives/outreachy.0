X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr7692429laa.2.1426297153264;
        Fri, 13 Mar 2015 18:39:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls261548wib.31.gmail; Fri, 13 Mar
 2015 18:39:12 -0700 (PDT)
X-Received: by 10.180.109.34 with SMTP id hp2mr6470073wib.4.1426297152978;
        Fri, 13 Mar 2015 18:39:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id l8si37489wia.0.2015.03.13.18.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wixw10 with SMTP id w10so446972wix.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2OaLbLDOnL4PyOxNXAW4ytrL53BEK1/FSAAr9XtY5XY=;
        b=r6nDH93RXN442vyevdnGsabBPfrLyxb/sSMolmguJdeQ8BrfTbmJhZMQ3zZIrHpJH5
         WPXpGXK0SRG6G7PumyC8XpRoj+jSSvJ0LtDjDWJ2em1mx0R9M5P/BmI+S5Dm1zFSKsJe
         M1AEN++ePVlR++E0+5771xc5H6rm7c36BA9vHi+1gXID9V7FiOAsNDHrm7WP9J3b1zbg
         PCTR/pJYKGn8zi/hINBJQ7rHEkU2kLNqxKGBwi5ok1ojKZ87cqJUukExyPsYX1IlyzKv
         jczPTTvgI2bOR7ZpLkutXWNB99Z/EnjmiYWpytU9/QBIj1ApZG0Q0fBxyXgukGvtPFuH
         8KSw==
X-Received: by 10.180.77.19 with SMTP id o19mr79746579wiw.90.1426297152908;
        Fri, 13 Mar 2015 18:39:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id lu13sm5024381wic.10.2015.03.13.18.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:39:12 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:38:32 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] Staging: iio: Do not use multiple blank lines
Message-ID: <87c7709b8cce63f50abceac8ec925501baaa816d.1426296329.git.cristina.opriceana@gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary blank lines between functions.
Found by checkpatch.pl:
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 1 -
 drivers/staging/iio/frequency/ad9834.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 342c713..f06b14d 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -218,7 +218,6 @@ static ssize_t ad9834_show_out0_wavetype_available(struct device *dev,
 	return sprintf(buf, "%s\n", str);
 }
 
-
 static IIO_DEVICE_ATTR(out_altvoltage0_out0_wavetype_available, S_IRUGO,
 		       ad9834_show_out0_wavetype_available, NULL, 0);
 
diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
index b54fb33..c24dd90 100644
--- a/drivers/staging/iio/frequency/ad9834.h
+++ b/drivers/staging/iio/frequency/ad9834.h
@@ -69,7 +69,6 @@ struct ad9834_state {
 	__be16				freq_data[2];
 };
 
-
 /*
  * TODO: struct ad7887_platform_data needs to go into include/linux/iio
  */
-- 
1.9.1


