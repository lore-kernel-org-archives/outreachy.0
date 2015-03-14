X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr952564wix.0.1426314882675;
        Fri, 13 Mar 2015 23:34:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.135 with SMTP id jo7ls542005lab.101.gmail; Fri, 13 Mar
 2015 23:34:41 -0700 (PDT)
X-Received: by 10.112.242.7 with SMTP id wm7mr4967950lbc.1.1426314881889;
        Fri, 13 Mar 2015 23:34:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si268511wif.1.2015.03.13.23.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 23:34:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,399,1422918000"; 
   d="scan'208";a="125888132"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 07:34:41 +0100
Date: Sat, 14 Mar 2015 07:34:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/6] Staging: iio: Alignment should
 match open parenthesis
In-Reply-To: <62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503140733520.2075@localhost6.localdomain6>
References: <cover.1426296329.git.cristina.opriceana@gmail.com> <62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 14 Mar 2015, Cristina Opriceana wrote:

> This patch arranges multiple-line parameters in accordance with
> the left side parenthesis to improve coding style.
> Found by checkpatch.pl.

Why the left side of the (?  The right side, ie lined up with the 
parameter above, would look nicer.

julia

> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/iio/frequency/ad9834.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index f06b14d..cc465d5 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -53,7 +53,7 @@ static int ad9834_write_frequency(struct ad9834_state *st,
>  }
>  
>  static int ad9834_write_phase(struct ad9834_state *st,
> -				  unsigned long addr, unsigned long phase)
> +			      unsigned long addr, unsigned long phase)
>  {
>  	if (phase > BIT(AD9834_PHASE_BITS))
>  		return -EINVAL;
> @@ -63,9 +63,9 @@ static int ad9834_write_phase(struct ad9834_state *st,
>  }
>  
>  static ssize_t ad9834_write(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +			    struct device_attribute *attr,
> +			    const char *buf,
> +			    size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad9834_state *st = iio_priv(indio_dev);
> @@ -142,9 +142,9 @@ error_ret:
>  }
>  
>  static ssize_t ad9834_store_wavetype(struct device *dev,
> -				 struct device_attribute *attr,
> -				 const char *buf,
> -				 size_t len)
> +				     struct device_attribute *attr,
> +				     const char *buf,
> +				     size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad9834_state *st = iio_priv(indio_dev);
> @@ -179,7 +179,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>  		break;
>  	case 1:
>  		if (sysfs_streq(buf, "square") &&
> -			!(st->control & AD9834_MODE)) {
> +		    !(st->control & AD9834_MODE)) {
>  			st->control &= ~AD9834_MODE;
>  			st->control |= AD9834_OPBITEN;
>  		} else {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

