X-GM-THRID: 6202672545102036992
X-Received: by 10.66.146.131 with SMTP id tc3mr4384654pab.20.1444280167741;
        Wed, 07 Oct 2015 21:56:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls801681qgq.14.gmail; Wed, 07 Oct
 2015 21:56:07 -0700 (PDT)
X-Received: by 10.140.232.212 with SMTP id d203mr4294057qhc.8.1444280166999;
        Wed, 07 Oct 2015 21:56:06 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id uv4si5731907pac.0.2015.10.07.21.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 21:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ex6so42711361pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 21:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/6kGq06STj23XYshMgNma6gFvOk5CKYtKJj9bdBuHvE=;
        b=KhzMeNTEgi5qp671k/ZIckXCsLF6PSgZbe+DmQ26JtWVv2c2FRTJY4NwVd0OtBj6hk
         Ljc5oaLXSvlX87K7VdhNFsrjYbao4a3/US2j+6hodecT9GaMekjuxcAOQTsPDAihWIrd
         B/G/6PfkHUk+mt5483/qh9B2XPnwjIg1cZ1Ig+7mwYp5O/dyskT2o7TWvhe/F1l4Ut+u
         e8VjnJ4B+XuE+dmWybUt90aR38lWnxqWGYv5tav6JmUJ88+B3aoO+H+C2iZsq+w/JohF
         4FL8OoDHHpbAuoQ0pTwYaxJEhJpH0dmFktCZWjJNnpeCE67Uv89DDgmT85RV4rxiZMtP
         il0Q==
X-Received: by 10.68.180.131 with SMTP id do3mr5642204pbc.133.1444280166810;
        Wed, 07 Oct 2015 21:56:06 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id rp5sm42775840pab.0.2015.10.07.21.56.05
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 07 Oct 2015 21:56:06 -0700 (PDT)
Date: Thu, 8 Oct 2015 10:25:56 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/9] staging: iio: adc: properly
 indent to match open paranthesis
Message-ID: <20151008045556.GA3294@sudip-pc>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
 <5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 09:13:40PM +0300, Ioana Ciornei wrote:
> Indent parameters ansd arguments passed to function calls to match
> open paranthesis
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
This patch will introduce new warning of "line over 80 characters" while
fixing the warning about "Alignment should match open parenthesis".
I am not sure if it is ok to introduce new warnings to fix some other
warnings.

In one of your change in this patch you can do something like:

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index fe56fb6..c30e1b3 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -359,8 +359,9 @@ static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
 		ad7192_read_frequency,
 		ad7192_write_frequency);
 
-static ssize_t ad7192_show_scale_available(struct device *dev,
-			struct device_attribute *attr, char *buf)
+static ssize_t
+ad7192_show_scale_available(struct device *dev,
+			    struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);


---
regards
sudip	

