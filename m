X-GM-THRID: 6396883163908407296
X-Received: by 10.99.140.4 with SMTP id m4mr14882549pgd.72.1489427810045;
        Mon, 13 Mar 2017 10:56:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.5 with SMTP id p5ls4262873iop.34.gmail; Mon, 13 Mar
 2017 10:56:48 -0700 (PDT)
X-Received: by 10.99.125.11 with SMTP id y11mr16949388pgc.10.1489427808854;
        Mon, 13 Mar 2017 10:56:48 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si3242629pfb.2.2017.03.13.10.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 77so18751941pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 10:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wfaam6IrCXo0M8MpBd2iC7Ox50UzrVFyRnCsCFjbmUY=;
        b=YufBf8JUYavydVdplB7gr6QvPO3Gv7g1YtbkXlfm2KvUDNx1xmOMgbxMAo7LESrKib
         WQuxYPIgEAwZ/6pNtz2RBOqxM1BiQ1ZtvnSF4Z5zkbDiWo5hehcYsrlgMOVGR2zoo6gz
         fucE1HNu9uGhnMgXvt3+XxB69mXingHEHXr7CWalyJU9kxuJxp6H8rDe6AfTjQM6RNkU
         El05L6q8vGjmpLvem/BDfgjFxvKiEQaZ/LVvAWgCThuqVsW5n57xuMHo4e9yL9ONqcz1
         O9dY1U3xY06sZxjdQ4JXJnUHjdvpU6I3qPItQK/qwT6nSsz+6kqlDWAqyvriOVVYQFBw
         q57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wfaam6IrCXo0M8MpBd2iC7Ox50UzrVFyRnCsCFjbmUY=;
        b=nHv4ytx2NGzvVe9IWPmIncVX/6IOn1Grh1CYM/FV4GQ4YOmI4/EHhlYgUsPJN4II+A
         kJkI7b3+Z0iiSLBnGK9n/JOpqIWqESJNPdp7lZTEVVhYt7H1NYy88KyrJg0WRvAi2kdX
         5s3QTwwDux8MMbiSpY+hHmu/QZD7mf+wxfxN8wU55aPQ1LL/Vst3BlbfMAaIMRyLGXJ2
         RnCiMLPCUuQeTPXFeoqQJs7vuU3s8IKyXFqChYiMS+rYIrG8MQ1wemmagiRiqMpedZPS
         D6OShi8joStFIFurcp+4lp/HO86cVsWQxo1dKKgDbaHIcJGdsOQhWwaA22CvLkT7+MDN
         hnHA==
X-Gm-Message-State: AMke39khmh+PFtwa5SJMmP1e1hOVpM8P5RbTPGvTnZ7qKbzZHw5S8bZvdPoCzDOI01edTg==
X-Received: by 10.84.146.140 with SMTP id g12mr48699508pla.70.1489427808613;
        Mon, 13 Mar 2017 10:56:48 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id u129sm33876154pfb.130.2017.03.13.10.56.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:56:48 -0700 (PDT)
Date: Mon, 13 Mar 2017 23:26:18 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 2/2] staging: iio: ad9834: Remove unnecessary goto
 statement
Message-ID: <0ed151986770fac23cae759d2092683cced90dc1.1489424208.git.karniksayli1995@gmail.com>
References: <cover.1489424208.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489424208.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes unnecessary use of goto statement.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v3:
Uncompressed return logic to avoid calling the function twice

 drivers/staging/iio/frequency/ad9834.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 2dffe48..af108e9 100644
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


