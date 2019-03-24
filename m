X-GM-THRID: 6671526888381349888
X-Received: by 2002:aca:4344:: with SMTP id q65mr7290918oia.156.1553418260845;
        Sun, 24 Mar 2019 02:04:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls2275184oia.8.gmail; Sun, 24 Mar
 2019 02:04:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiBOWGYmawgs8ynQP0RNIWVxqaHHy8GaStmWlD5BL63m92MDrhLB7Ud9B0qxTES/CMSfJ3
X-Received: by 2002:aca:e64f:: with SMTP id d76mr4084832oih.105.1553418260080;
        Sun, 24 Mar 2019 02:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553418260; cv=none;
        d=google.com; s=arc-20160816;
        b=M1FY4GvP9qp2K02yTUioBRHUALUixjgMqk+d9PS115Z7z2Hmix5lGe2BgRq+MvUP7v
         Qhw8TCBQsE61mPDEf3YdEViJOwfFBTobEUWceYe0NFNcR5fS0zWfSq/MDuMjbZa66kH4
         csfj5X1s+Obn+63ZiPrtTm25wxlujzh2JB9h/jkhc3T9kmegGzpgmM+aZmjlgQbE9ugo
         /tuNwE5o/D+XAYsXRalj51iGGysyOg2FdzqWTuEMlskUpAGr8uP7ugCRSTM9Zp5o2Dx3
         UPH/0wJNexRslGkX0QhDJLP1Bksh0ZVpZF7+lQUZzef63pJd0pKSAjnCsKwXhEuyY0WT
         XNFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Qagvn7CK8t2JLnUEDC4tF66tftg+H5O4FPZAsLrsGDk=;
        b=CDoYYfEZtmEU35w8PXDC3ZxeCk9TWpstPeNU+wl7gOWLCHL0ttejtKmI+dKegBjiPR
         1i1wy2T4ic0+BsgETz1aWxTeP16L+AspuyRbP6tku1beivpr1d3i4Pst9ssJSZmiTFyY
         uOcfTYlZ2Ztlkr1/QW852HzGgShrA1cbt2he2oZTUJygJ2ClIJi92WIv7wlh53Sxp5Z9
         k77kzR9+I0TGs3VRk2amB7NLD/2mFrTGc+y3+EHyYODFRzg0jAsqmoYnEN34er3Qhr2C
         4RZh2J2ncxiy82VgkEINATKTRfzEOfRerhwkhDRWyFZJcFuxzU8WSKlwxt0U6FKLZz+b
         942w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gE/JN8BU";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 196si462512oii.2.2019.03.24.02.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gE/JN8BU";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BCF2A2171F;
	Sun, 24 Mar 2019 09:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553418259;
	bh=pH9efN9W0l9BRXw5ttdZimjyN+i1ZCYepENMoAuhY8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gE/JN8BUkGjNcjdfTc9hfMiJpi3OZvmXrEZoG3aYtbkA4vQAjd9ea/R/7R9cVnQjU
	 LU+vFgHHb8TTwSB1EtS/f/F0iwpI8VNK2gx+ArmmwrFfeuYwL8uWAgweVbnXcNoq5P
	 q2kVwOFXipYrMkx/53pAr0dita3hzK9b0KH/mUGk=
Date: Sun, 24 Mar 2019 10:04:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: anushkacharu9@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: hal_init.c: fix
 line over 80 characters
Message-ID: <20190324090417.GA12615@kroah.com>
References: <anushkacharu9@gmail.com>
 <20190323101128.3795-1-anushkacharu9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190323101128.3795-1-anushkacharu9@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 23, 2019 at 03:41:28PM +0530, anushkacharu9@gmail.com wrote:
> From: Anushka Shukla <anushkacharu9@gmail.com>
> 
> -Fix line over 80 characters
> -Change the position of comment according to Linux kernel coding style
> 
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 4c6519ccab30..382cdeeee272 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -100,7 +100,8 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
>  		pfwpriv->rf_config = RTL8712_RFC_1T2R;
>  	}
>  	pfwpriv->mp_mode = (pregpriv->mp_mode == 1) ? 1 : 0;
> -	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; /* 0:off 1:on 2:auto */
> +	/* 0:off 1:on 2:auto */
> +	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; 

You added trailing whitespace :(

ALWAYS check your patches with scripts/checkpatch.pl, that is what it is
there for.

thanks,

greg k-h

