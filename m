X-GM-THRID: 6670748157895245824
X-Received: by 2002:a5e:8212:: with SMTP id l18mr4033974iom.67.1553194783660;
        Thu, 21 Mar 2019 11:59:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ad6:: with SMTP id x22ls2740892ion.4.gmail; Thu, 21 Mar
 2019 11:59:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAikPktImabMgfg1CE6okCyFxDy7n8wuDWJO7XwbTgwqtB+t55dbF5AXme9Shu68cl2o5n
X-Received: by 2002:a6b:4e09:: with SMTP id c9mr4051747iob.251.1553194782780;
        Thu, 21 Mar 2019 11:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194782; cv=none;
        d=google.com; s=arc-20160816;
        b=f2os3EUfTDA52wdOESY63TBrK8BIEZ7tBUcFEdWb+veVXX3nY+jhr2sOP4HurVx1b8
         yme4u5GUhp1PJvbnvW+qUKUiAYttR7eGZ62Rq8DXfNUo9LkEcbcSuhm5Bs6x8QcS/oJB
         QIoMwq0JNG0vUHDwqML9+sRnxzsMvnomNoPKCkao57B6CKl8C4V4OGSEnpsQ0NTiONns
         Vmlb6t0pxL7MF1MQGdqIwgS92Pr76BwrusnAP9+vOAi1On0WC/0lVKkBlBsIY3KC88wi
         0Xn94rP5b4sb0s5FFSSJLzMdTvUtEIURxZk/ZJpy+17BmmpJLtxkgA29zdlT8/og+Lou
         554A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=K6lm1f3uCEq4bmtF1Njtdh8ZtZgiuo7GH6+vcR5flwY=;
        b=AO00LBkk9YLeHaTrKEoiDjRSIMesUEq7T0uFTk+dpvS5dJLy5D8uD3qu8jtj6/7XEE
         I9vdYWtyTPKd/laFgCkqhFhn7NsiFdSYEiE27sjk19fH7OOYh8XjWZUhCaGBKwwxm38V
         EtyK820CF6ddvM/b6Z+VsbvaYIGRDAW4iggUavyHVBrK7WI2l2YaD5EWu0GJ6cWAQUlT
         lzZ8rjTZt8txxm+dD+S1VcmAbRBhRIyuTAiwi3fDqmr7cnbCOwtpkD4G2CDY4bNNri5l
         5dYXKYvoeI5B7EYKyWYa2f01NibrOY7pcjzUzGG7RAVu8fK4bjdIxceFvtXBFV6qXx3R
         5FdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y4QbRXuQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n194si770832itb.2.2019.03.21.11.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y4QbRXuQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8C61121873;
	Thu, 21 Mar 2019 18:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553194782;
	bh=kGths2zT1WHYw5BDJY7WwtJu4sv82DK8N7puFjXLXj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y4QbRXuQQZTDNE3DrlOhZgupbsUFl2A1PAtj3x05uUIJEEsKr1kLSgx8vtZufMDq6
	 XyjVkfxYQpYtrH9xADVJVo2Zr/Szb6GFLwMYfGVHD5ZnnXmBMB4G7k5VU7kfb9hEtL
	 NQN3j3XRaUPP2jFAnVq66D+DSXyqS+of6upmeWEM=
Date: Thu, 21 Mar 2019 19:59:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com, ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Subject: Re: [PATCH v2 1/3] staging: wilc1000: Remove return variables in
 host_interface.c
Message-ID: <20190321185939.GA28776@kroah.com>
References: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
 <20190321074927.2865-2-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321074927.2865-2-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 01:19:25PM +0530, Nishka Dasgupta wrote:
> Remove return variables in host_interface.c. Issue suggested with
> Coccinelle using ret.cocci.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)

Patch 1 and 2 almost have identical subject lines, that is not ok.

Also, did you test build this series?  It adds new build warnings to the
kernel build process, which is not acceptable and will cause a patch to
be rejected :(

Please fix this series up and resend.

thanks,

greg k-h

