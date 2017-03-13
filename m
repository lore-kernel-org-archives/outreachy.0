X-GM-THRID: 6396883163908407296
X-Received: by 10.129.152.151 with SMTP id p145mr15819339ywg.119.1489390957453;
        Mon, 13 Mar 2017 00:42:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.131 with SMTP id 3ls3918195iot.36.gmail; Mon, 13 Mar
 2017 00:42:36 -0700 (PDT)
X-Received: by 10.107.27.9 with SMTP id b9mr8683504iob.44.1489390956439;
        Mon, 13 Mar 2017 00:42:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si3015491pfb.2.2017.03.13.00.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so18178991pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 00:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VV/GflZWSqEln9V/yxMjpACcquGheAumqdglCtKWWSQ=;
        b=JKHIph5ReDhCejvhvD35b4EKdvhxkOX3Wle7cwoKLWmrb2EKau0Bknjq0SlPTQ7v9T
         FBq91VmRqc+XO31tnLBUb7g28dlOyR9tOMne61SAK3sVwWL94isJtYxN5/mBquZVSlfB
         XjBQm7ATRB6a7q0cJTon7RFLml/2aVqRxPfLiELJyU6pvDRPahKGRTEwBRFaCWWLvTRS
         t2UJxXH3kfqO2P4/BvxRTAdocmo+dbw3XIjL73xRt1HvPuNR/QW8oyVB5Ntz4h8m14Ol
         /EVOz6mQWMeBDS/ZLa3YaFXCeo5e7G9RDtg4h5fqiifIuggZ/IY9LAHJpbEZF0qD72x3
         Mzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VV/GflZWSqEln9V/yxMjpACcquGheAumqdglCtKWWSQ=;
        b=gROuHQDgg2p+AQhtG/JjHtipLkZb8k7k6dTmDGc+5gbA6MSnofIZ7CEwNYkPVx6eom
         KYdp5PDHz2Lv3DxRlTyd0e7Vm9CTx6fEIZ9NnNBfNbu+QnumTqFcf6DvspTn3b+56qGZ
         uomkDAbwWwH0iaxxpFCCFhBOMFfofz8WVq09CmkzpaiRwETy1wPWf1Cr9oVKXDBg6EOV
         kf3xYvgiKBqDlB4IWxKvIRUD+nv+Mo6s8uZ/XidNhskn2iYm0OGTP6szQ0cOms3LTVkz
         JYL4iyDTmlw1i5bl5uexRZQrlrbUfEetilI4TSFzioY0ULEIGPDhAiCKY5d+v0e9PLGg
         MSZg==
X-Gm-Message-State: AMke39lh15P3IMf/sTzuNWCri7vv8neAaZjkFtaYgcfcV1PtrkICoy3GWOg0FCMbhQUxQg==
X-Received: by 10.99.238.5 with SMTP id e5mr34748172pgi.49.1489390956219;
        Mon, 13 Mar 2017 00:42:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id e2sm31699279pga.61.2017.03.13.00.42.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:42:35 -0700 (PDT)
Date: Mon, 13 Mar 2017 13:12:10 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 2/2] staging: iio: ad9834: Remove unnecessary goto
 statement
Message-ID: <50b408330bbebaf55bcbf5ad163e24452475764f.1489389770.git.karniksayli1995@gmail.com>
References: <cover.1489389769.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489389769.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes unnecessary use of goto statement.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v3:
Uncompressed return logic to avoid calling the function twice

 drivers/staging/iio/frequency/ad9834.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 60461a6..e18e0f2 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -149,7 +149,7 @@ static ssize_t ad9834_write(struct device *dev,
 
 	ret = kstrtoul(buf, 10, &val);
 	if (ret)
-		goto error_ret;
+		return ret;
 
 	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
@@ -211,7 +211,6 @@ static ssize_t ad9834_write(struct device *dev,
 	}
 	mutex_unlock(&st->lock);
 
-error_ret:
 	return ret ? ret : len;
 }
 
-- 
2.7.4


