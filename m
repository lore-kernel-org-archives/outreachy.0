X-GM-THRID: 6808244889450446848
X-Received: by 2002:ac8:1c17:: with SMTP id a23mr6992279qtk.239.1585208169157;
        Thu, 26 Mar 2020 00:36:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:1021:: with SMTP id k1ls1133053qvr.4.gmail; Thu, 26
 Mar 2020 00:36:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsMmkIzyOB0iADArKhbkK53nXjKL7+XekbmiDR5otE4cerKiOBMzv8xWLuxyqC3RWp9ghf/
X-Received: by 2002:ad4:5648:: with SMTP id bl8mr6698839qvb.189.1585208167861;
        Thu, 26 Mar 2020 00:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585208167; cv=none;
        d=google.com; s=arc-20160816;
        b=0o6p3f1wVKnqRoRpUlLQlwzdOXJ8DK7HRrO3oDOVXJh0h9J2SRFos/b/YpeP4v8Tdq
         hT5tkCvTypFd43rcvjVq1xhgA/gYw3NaeueLmwY5zmLh0LJ1322H4SjjlXl14OCG0ROs
         NZILGt4AGkwe132a7KJKFYwLq+Jm9hVV7YwhnTq8+0diK0y7wuSFhd1fmZVIjC07WOka
         j/+nvLi/kCS+46Z+1EkMjSscwYLN0wa9fNS5ITEBg7plu6Mqnzmh8Xb0bSl2+kWTkrHP
         cbXSGqaMeNT7dn4IVVP/hswUtDj7RCaTbbcS8d4d5SyYvHib9heByk51f0olTNXi9nVj
         WypQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fUbZrpKzQyw580OoWDnAJRE6qVG0ConyPXT4EypGJLo=;
        b=nZdgDkjDl2PbVb4oMKi0dKPo5XTRckFmNE/P8NIbnqmmzCubTWjt8TxXeTJjQTlJBM
         yaDQsXyyApkQCxJnke3QjQw7Zq263VRpIbABhyx7BX+yqnzaDkh8BECL/M0U/kT6S6+X
         Csm4k8UDRM3lhGLgDt6JLYzXFDVOT0lWfwsTabQfvX/5b5Ji+kkWzDHPkxKYEPjQJ4Ip
         V/YyhqvrgBvJQa0HaQ+rFOi9Qxgth6HgkImOHIMwKOODsjVEC1OZWRoO6EwtpiHbtwQs
         fmeikwjZMFh0uZ8bNIcxKdnzBV0KndwZO/9fvt06XR3/PRXkTlDMP17SMkVlbCS56VLj
         vgKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZR0vLV6Z;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d34si126987qte.4.2020.03.26.00.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:36:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZR0vLV6Z;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2027E206F8;
	Thu, 26 Mar 2020 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585208166;
	bh=oT6x9cY/UWcgp0a7uWV3ukSJe8lz/goBe8oXGy1qFm4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZR0vLV6ZSpWJDWC/esQjoZt/0LWk3c5t8lVLemcWIcheeeG37igSigtzSZTmQYGSx
	 PqTfMr9AJ9KIae3l+SKNg6pyeB7i9SvcLodh/n1Zx3+PvFcYkd2qQ6dSOQ0mM8YvyC
	 y/1GgJ9sNWHGf2DtycVWrvN3X7vMcdSWyrQTJYcg=
Date: Thu, 26 Mar 2020 08:36:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: octeon-usb: line over 80 characters
Message-ID: <20200326073603.GA936188@kroah.com>
References: <20200325223155.GA6515@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325223155.GA6515@siyah2>

On Thu, Mar 26, 2020 at 01:31:55AM +0300, Gokce Kuler wrote:
> Code readability increased for 80 character limit.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

What changed from v1?  Always put that below the --- line

> 
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
> index dbafd46..de3b082 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.c
> +++ b/drivers/staging/octeon-usb/octeon-hcd.c
> @@ -2641,9 +2641,9 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
>  						     hcintmsk.u32);
>  				usbc_hcchar.s.chdis = 1;
>  				cvmx_usb_write_csr32(usb,
> -						     CVMX_USBCX_HCCHARX(
> -						     channel, usb->index),
> -						     usbc_hcchar.u32);
> +						CVMX_USBCX_HCCHARX(channel,
> +						       	usb->index),
> +						usbc_hcchar.u32);

No, that is harder to read now, you can try to get closer, but I would
just leave this alone for now as many people keep messing with it :)

thanks,

greg k-h

