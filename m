X-GM-THRID: 6465236897552662528
X-Received: by 10.223.152.207 with SMTP id w73mr1099127wrb.13.1505308997492;
        Wed, 13 Sep 2017 06:23:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.68.4 with SMTP id r4ls4946lja.19.gmail; Wed, 13 Sep 2017
 06:23:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAmJpqImUyFKayh/AjTE98iWjLEIcxmt6NM8qYEnf3XaRxYome1AS0SsJVpf5WkrWtdn0FL
X-Received: by 10.25.115.131 with SMTP id h3mr1542820lfk.44.1505308995903;
        Wed, 13 Sep 2017 06:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505308995; cv=none;
        d=google.com; s=arc-20160816;
        b=K7/8mMJ+itf9g/UV4kZv/i54xFf0cce/g45urkMTYd8Uhw75QydkMPmfopEfmC05U4
         PlrbZYEBQ2ExTgWJxMsxCe78BkRTCOzTmTIO+Uyrdy0l+ypBz5A+TAP+nwjEwyEnpwvA
         hFDIlH8peyY76UrKPQbZTcDIxnt42+wmhDOhkRHtpH1JXZlT20HWk/dE3GiKOQ2qrpBi
         KMdYkpteorjgTbn+sje48d2P/TjnyW2I0+YsZ4eoCGILU08YJK1pWQGgw/4VdrAO+zMF
         9DPyLIUKL+vKBiyH5jXidOnI9ifGJyO/IOYdpc+8LOJ2l+QIgkIOJwWkkYqavS8R2RPY
         18Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=HhSyECbl957M1GYpgHbfKkr0TYkOx+yfpbmrpJYdun0=;
        b=NuseSNCjHwvTiwx6ueza0BCHMbgD27sR1VPILxlHjLGQEa7RCH7nBWsB29SFWKpIsC
         SGigOlelwksxwnGkS/1S41/6ioz9qaB2dfhRkoHdVQFmYdZ/mLBaAOIb8GLwiNwoUs7G
         rnsgWMgxMxcEU/wa6dspjrfm9a5C3IywBOrGfBxM+D5KLJIcV4dLZke+cjDezkGa6aOW
         qIuo11f4b6OoIYdEAUjaahTENxpwXbhrsUvUGMbFPRkrooAdHvnEz2cuET0xELRLbPlL
         j4jBLj1AacaS31YmAEmqixDN1sMGsh3uvKAcQbOdghlMfuEOU9YWCZGVR9MDUF8SGi4V
         6vqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si103108wma.1.2017.09.13.06.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 06:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (h30.122.139.40.ip.windstream.net [40.139.122.30])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 62872A81;
	Wed, 13 Sep 2017 13:23:14 +0000 (UTC)
Date: Wed, 13 Sep 2017 06:23:13 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: dax: change sprintf to snprintf
Message-ID: <20170913132313.GA16524@kroah.com>
References: <20170913122100.GA5821@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170913122100.GA5821@manoharreddy>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Wed, Sep 13, 2017 at 05:51:00PM +0530, Keerthi Reddy wrote:
> To avoid buffer overflow bugs like (CVE-120), we need to use
> snprintf function by also explicitly mentioning the size of
> the buffer.

No yo don't :)

> found using flawfinder

Bad tool, don't use it, it is wrong here.

> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/dax/device.c | 16 ++++++++--------
>  drivers/dax/super.c  |  6 +++---
>  2 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/dax/device.c b/drivers/dax/device.c
> index e9f3b3e..f34e543 100644
> --- a/drivers/dax/device.c
> +++ b/drivers/dax/device.c
> @@ -30,31 +30,31 @@ static struct class *dax_class;
>   * is cleared to assume that drvdata is always valid.
>   */
>  static ssize_t id_show(struct device *dev,
> -		struct device_attribute *attr, char *buf)
> +		struct device_attribute *attr, char *buf, size_t size)
>  {
>  	struct dax_region *dax_region = dev_get_drvdata(dev);
>  
> -	return sprintf(buf, "%d\n", dax_region->id);
> +	return snprintf(buf, size, "%d\n", dax_region->id);

It's impossible to overflow here, sorry.  Please read the sysfs
documentation for why.

Also, as Julia said, don't do outreachy patches for code that is not in
drivers/staging/, as we can not accept it here.

good luck!

greg k-h

