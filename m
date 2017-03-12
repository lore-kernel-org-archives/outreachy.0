X-GM-THRID: 6396739450609598464
X-Received: by 10.157.18.241 with SMTP id g104mr13894395otg.9.1489357179269;
        Sun, 12 Mar 2017 15:19:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls12479006otx.21.gmail; Sun, 12 Mar
 2017 15:19:39 -0700 (PDT)
X-Received: by 10.13.244.67 with SMTP id d64mr14531457ywf.16.1489357179014;
        Sun, 12 Mar 2017 15:19:39 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si2422576pfb.0.2017.03.12.15.19.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so17023934pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 15:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Hdz/NGlK7WNv8IUKty9jotGrZ9GNL4+dVS+gfjF6oig=;
        b=BhV6vT2UuoWz9mEfkXQLutkiDrNGagfNrkZNrAxS6YUlJEejc+gVIznnKXjV4pm7Pe
         bpslZzmAG1kjANiuq28VoJfRzajXPZblZXJUYKDjd5MM+5u4y+kxFgzz/cPbJLnoVWuV
         gXcTHd5IhqxeP7A5RH/8kV7QYizcP1l/+jzmj/0kTWvw2kBEH+rA2NHUfJvbw4SPhnVk
         oUP+UxZkHebD7IlQmiSsWp4NV9JwmtBHKL/KMsz+ixvjiwDOHwxFIKSjDuUxUEyrutdj
         CF27nMcIBGNrRbS+SkmOeim1fBCZcipvZPGrLgr5WEfT3uJfMMVZOK9kiRfqTRTfdzB1
         8wpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Hdz/NGlK7WNv8IUKty9jotGrZ9GNL4+dVS+gfjF6oig=;
        b=nl4mLqpI8Y4lAOKEZ3xetm9S2/oXxbkEToFP5D7z0i5UnnMhtIalxpRWTHtcBo6wXW
         GPzrWx5mE7rz+DV7+lg48i2WPxCnuayXsTNx178U8vM0QaQMW8tpRu/URkLKZUEyjzAx
         sMRFLYY2i9GmmVFUqqwxLVzaLn8k2GHsVs7guLwnD2jfCmD9Wx9doOLicTnFkRjgkz2n
         jXaPSLv2T4B5Z5RfGDXRtxgW6hKzO2qXm59nkz10uEJA+FCDrmeVqisIMVc/cIjBX9i/
         DNisAUG9ZuhlUi5+7j6JN6AV05ZUy/uOcYqzCL30hIVfmOtEWt4ZnFDc/b65I+NwU+eN
         oe0g==
X-Gm-Message-State: AMke39kgQ80FvxxUizZ+jWlyF9eAZ+rUPEs9qJ523VpeIcGiyzp06F+X7LIsR/MkEDU7GA==
X-Received: by 10.84.135.34 with SMTP id 31mr42236553pli.50.1489357178784;
        Sun, 12 Mar 2017 15:19:38 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.138])
        by smtp.gmail.com with ESMTPSA id h71sm29826544pfj.65.2017.03.12.15.19.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:19:38 -0700 (PDT)
Date: Mon, 13 Mar 2017 03:49:13 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 2/2] staging: iio: ad9834: Remove unnecessary goto label
 and compress return logic
Message-ID: <59ddccc600cfd1594dcb4dadb44b80328fc06008.1489356140.git.karniksayli1995@gmail.com>
References: <cover.1489356140.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489356140.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes excessive goto label and compresses return logic.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 60461a6..18f3e8f 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -147,9 +147,8 @@ static ssize_t ad9834_write(struct device *dev,
 	int ret;
 	unsigned long val;
 
-	ret = kstrtoul(buf, 10, &val);
-	if (ret)
-		goto error_ret;
+	if (kstrtoul(buf, 10, &val))
+		return kstrtoul(buf, 10, &val);
 
 	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
@@ -211,7 +210,6 @@ static ssize_t ad9834_write(struct device *dev,
 	}
 	mutex_unlock(&st->lock);
 
-error_ret:
 	return ret ? ret : len;
 }
 
-- 
2.7.4


