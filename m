X-GM-THRID: 6666450306579038208
X-Received: by 2002:a1f:aa03:: with SMTP id t3mr22246556vke.21.1552344877551;
        Mon, 11 Mar 2019 15:54:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e3d1:: with SMTP id k17ls3993543vsm.0.gmail; Mon, 11 Mar
 2019 15:54:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzR5DbGygMUz2EdOjEHEo8on/pbNC2Q2yLP9YWRBzjTHjfKRO43gA0JWlLAf10n1Apn3cK
X-Received: by 2002:a67:dc89:: with SMTP id g9mr23310488vsk.27.1552344876853;
        Mon, 11 Mar 2019 15:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552344876; cv=none;
        d=google.com; s=arc-20160816;
        b=PAxdA4IGbMMFfqS4Jx5vyX+nHWzx+cmYBO5zBnkQu87dv7SDHswl9YAB7HLNMWVJNP
         wYf/bF1V+D8/6nIpXgkERGPMXRZwOc5y6ehVTr2M7z+K7MSnl5iDS0CYeTc+3BBDX8Ok
         By3YpVRMl6Sf1YzDL9Gf2dwuXC/9LIILRx8q55snjRNqAx6Hrr8Wu0SrmDEruGarvgw5
         fJk4uuanvfxbUpCUCQJQBmS3zfpgKffV4JDwiDdq1QB8RojBQgajJwKXHUBlgw3N0jIi
         IKrcrwKVT2bGbxLjzjq7qwh0ErlIZO1rNVsS34lcTn4N98qTsVvF9C65cS8Bwsnnli5c
         05hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Y93aY8IWEo7aEoUwYftkOS+iB/NZXtbB3KHxvln8rCQ=;
        b=HDTSApw2FRo34dv9YlFMS5ksG+J9VmotT1F21gdzvQUGRbOje+a9L/05NhTQVBgpqS
         Peo/nDQussWblXqOcDCxQeXxKPFyjlMUO19CT5tAxUetbzWpvaIIO4D15w2uKLLqGnkp
         HGzg4D9c14QrkuZslnxu+iVezv4qrQVkIphLyMi4aNuRSsq7w16kL7Y9utNFCX+Pb66o
         J8c37zlWqNqhuQDhg3ySfdENAlOA9X2F7jx7oBNQDWpVCCpT8NXOr4ViLChtl0+NfY7X
         2vDsZFeLe/DzSqfBKqbPFGltpNF/wXMzt67LU0zVry5t2FsON9b2GgRVj0pEeMhZOTG/
         F+VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EjgmScZz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b19si303326vkf.3.2019.03.11.15.54.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EjgmScZz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B93222148D;
	Mon, 11 Mar 2019 22:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552344875;
	bh=ba5jEeWSHHJHmbqH5Yl3CDt8Pcgb5Xly74/Q3zjtxeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EjgmScZzU+GHFUIwYPhn0P39VAMcNQniW0F0UVwHc7Lvhvy7Y1eXUL60ICTIEVXRv
	 kJpBajKuRpXwYB6F6JkI5+TCrSV6wuc4tp/6j3UsJHNyGJNjjCkh1mDhglNU21f67k
	 Wy7F3hDfVRJ18yUOUM8+7Oq755OWzoQRKvmM3gFs=
Date: Mon, 11 Mar 2019 15:54:35 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: rtl8712: Comparison to NULL.
Message-ID: <20190311225435.GC569@kroah.com>
References: <20190309175145.GA17784@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309175145.GA17784@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 11:21:46PM +0530, Bhagyashri Dighole wrote:
> --- a/drivers/staging/rtl8712/rtl871x_security.c
> +++ b/drivers/staging/rtl8712/rtl871x_security.c
> @@ -160,7 +160,7 @@ void r8712_wep_encrypt(struct _adapter *padapter, u8 *pxmitframe)
>  	struct	security_priv *psecuritypriv = &padapter->securitypriv;
>  	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
>  
> -	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
> +	if (((struct xmit_frame *)pxmitframe)->!buf_addr)
>  		return;
>  	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;
>  	/*start to encrypt each fragment*/

Does this change even build?

That's crazy, and shouldn't be valid C :(

You do this in a few places.  Shouldn't this be an coccinelle patch, so
you don't have to do it by hand and we trust the changes were done
properly?

thanks,

greg k-h

