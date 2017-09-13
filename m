X-GM-THRID: 6465236897552662528
X-Received: by 10.28.212.14 with SMTP id l14mr277114wmg.11.1505305671761;
        Wed, 13 Sep 2017 05:27:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.29.15 with SMTP id d15ls77515lfd.25.gmail; Wed, 13 Sep 2017
 05:27:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBFYY9kj3qcLrs6Jy7uOsKQlfZVJ0QyZ49/OOw7ZG6J1q8P2EYU7QPwZhojK+V+GURLXL7o
X-Received: by 10.25.92.197 with SMTP id u66mr1016673lfi.10.1505305670039;
        Wed, 13 Sep 2017 05:27:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505305669; cv=none;
        d=google.com; s=arc-20160816;
        b=Pk3H4GJUiabIb1tfAmsUIlrIXg1h0bWBcDo6Uk0g0QrVBOGiB7GkiWQpRA5vSiI554
         ieH44+EjJHnLAb/e/qh6lhUT46R3/1hBdgggIxSymCmzIOHjZ3RBOHrPx2DC603zI3ti
         tp5NADJAVkNvKPOBRLiN+xDVq9SjofRYOK1QKMsUELnB0Fayg3wbicY9UPM1EjNVj9XD
         INbaGWLvNf2ZtIAG9xvvnDwww5vlKe5Nm3twNRDCwTObIXbCReXIe6JEkb25I27hI+de
         UdkhQXDeT5B26fYqJLYMNexmSOs9f+GQE13P3zHH0TJRrc4IpUTzv4FW5l2wJUvQ6YzM
         +4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=2d3TsRN2Jfx4YQMMUAHAQ49pt7vw+5xKdXBk/shO2aM=;
        b=hZYt+G6XfcAiNFR8wXPC7ZphYxAOa3e/qF5/nRFWTIQAMnRuHIOT0cJPPh8aU6qiYc
         eG4GjUyHi0uBXbji7NGHRUfmKEAA+Gq80uNyCwtnA20gfUua+62T4NCC0hUQ8YrYVpCP
         IKpIb8fiYeM7kvJXJGRo5YkUVJ/5UrUzGWjSJY6TQ0svNrQgFNzcUdqBznR+vL/Ntq56
         qbg0pnZlJKfT9xkzkUb9MWjpxq4AECItQsmrVGk4UslpWkLqHwgzNwuDU6U1K/vx7k+E
         jZTXpR/98WPrn0BHmUeVQXJ079MvnrUpR+dbupqcQs9LwLQBvr5sjJzne+DRzf9w36xL
         gmdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si95624wma.1.2017.09.13.05.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 05:27:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="290878188"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 14:27:49 +0200
Date: Wed, 13 Sep 2017 14:27:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dax: change sprintf to
 snprintf
In-Reply-To: <20170913122100.GA5821@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709131424160.26484@hadrien>
References: <20170913122100.GA5821@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Keerthi Reddy wrote:

> To avoid buffer overflow bugs like (CVE-120), we need to use
> snprintf function by also explicitly mentioning the size of
> the buffer.
>
> found using flawfinder
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/dax/device.c | 16 ++++++++--------
>  drivers/dax/super.c  |  6 +++---

These don't look like staging drivers, nor drivers associated with any of
the projects offered in this round.  You can feel free to submit the patch
to the maintainers of the driver, but it would have to go to some other
people.  There are instructions about how to get their names in the
tutorial.

Please stick to staging drivers for the application period.  We don't have
any control over how quickly your patches are merged for other parts of
the kernel.

julia

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
>  }
>  static DEVICE_ATTR_RO(id);
>
>  static ssize_t region_size_show(struct device *dev,
> -		struct device_attribute *attr, char *buf)
> +		struct device_attribute *attr, char *buf, size_t size)
>  {
>  	struct dax_region *dax_region = dev_get_drvdata(dev);
>
> -	return sprintf(buf, "%llu\n", (unsigned long long)
> +	return snprintf(buf, size, "%llu\n", (unsigned long long)
>  			resource_size(&dax_region->res));
>  }
>  static struct device_attribute dev_attr_region_size = __ATTR(size, 0444,
>  		region_size_show, NULL);
>
>  static ssize_t align_show(struct device *dev,
> -		struct device_attribute *attr, char *buf)
> +		struct device_attribute *attr, char *buf, size_t size)
>  {
>  	struct dax_region *dax_region = dev_get_drvdata(dev);
>
> -	return sprintf(buf, "%u\n", dax_region->align);
> +	return snprintf(buf, size, "%u\n", dax_region->align);
>  }
>  static DEVICE_ATTR_RO(align);
>
> @@ -149,7 +149,7 @@ static struct dev_dax *to_dev_dax(struct device *dev)
>  }
>
>  static ssize_t size_show(struct device *dev,
> -		struct device_attribute *attr, char *buf)
> +		struct device_attribute *attr, char *buf, size_t buf_size)
>  {
>  	struct dev_dax *dev_dax = to_dev_dax(dev);
>  	unsigned long long size = 0;
> @@ -158,7 +158,7 @@ static ssize_t size_show(struct device *dev,
>  	for (i = 0; i < dev_dax->num_resources; i++)
>  		size += resource_size(&dev_dax->res[i]);
>
> -	return sprintf(buf, "%llu\n", size);
> +	return snprintf(buf, buf_size, "%llu\n", size);
>  }
>  static DEVICE_ATTR_RO(size);
>
> diff --git a/drivers/dax/super.c b/drivers/dax/super.c
> index 938eb48..10bc198 100644
> --- a/drivers/dax/super.c
> +++ b/drivers/dax/super.c
> @@ -142,7 +142,7 @@ struct dax_device {
>  };
>
>  static ssize_t write_cache_show(struct device *dev,
> -		struct device_attribute *attr, char *buf)
> +		struct device_attribute *attr, char *buf, size_t size)
>  {
>  	struct dax_device *dax_dev = dax_get_by_host(dev_name(dev));
>  	ssize_t rc;
> @@ -151,8 +151,8 @@ static ssize_t write_cache_show(struct device *dev,
>  	if (!dax_dev)
>  		return -ENXIO;
>
> -	rc = sprintf(buf, "%d\n", !!test_bit(DAXDEV_WRITE_CACHE,
> -				&dax_dev->flags));
> +	rc = snprintf(buf, size, "%d\n",
> +		      !!test_bit(DAXDEV_WRITE_CACHE, &dax_dev->flags));
>  	put_dax(dax_dev);
>  	return rc;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913122100.GA5821%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

