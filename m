X-GM-THRID: 6663332445434150912
X-Received: by 2002:aca:62c3:: with SMTP id w186mr2245850oib.33.1551428347468;
        Fri, 01 Mar 2019 00:19:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d685:: with SMTP id n127ls3534270oig.2.gmail; Fri, 01
 Mar 2019 00:19:06 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibnq8bzetiyRo4VSD4G5sGFIGQE0QAwK/o0bJxX2cXPxVFvnAaW8OrAGR1sesYR/i4L4y3E
X-Received: by 2002:aca:3b83:: with SMTP id i125mr2172419oia.49.1551428346888;
        Fri, 01 Mar 2019 00:19:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551428346; cv=none;
        d=google.com; s=arc-20160816;
        b=YsODk+oegPDGCdZX6gC3DHLoB8nrkRYhin4LTNoADK5lJgQwQ5mMZk2pDsbV6eRD9O
         dsKbUl4ZWTVe/tagjiPdrr63/jjlkTgZRBciYFU8ze/8+8Cz3Uv6IXnsaH182zp2IL+D
         24WX47TZIbb7E1ajpPkXOmPTbhqlI6J//1Dw7RgFRrFD2WKCUBX8Xyy9nENhNyhY8tcB
         u7u33gMRx5do0Kh32VnzY6B3BKL9aO36RtYeXj432DA+/grA2vPmbIDqqqlLij9I51co
         tnaMtSgrtIpCXbkcnnqAI7Ru/UtZHGMXZNiX5C5lydFcFdX0ek9xu8Y+N5VytLLubSG/
         EQGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rWwqXCizKX46jwhGoplDPh2pL2IXlG04fkomHcLPr0Y=;
        b=hRGUsQyB2E0YtgK2ZkM59UXaHS1B62bYlzn8B/IMpX8oFSN7As8Lt0UlV3PRNYyJoF
         HXcf/rRqlABox1KFUhxIVZJT0mMgkkJw2TEpw2F4vyQN7vjMfzvJrwd0G+cCj5eiRHcm
         ZxGU23jDvW1g3q5w7eXGzHNVzQDTKLmLdv0RSrpLDzI9KbGo0ku4XYkYmEiHJYYF8Q3J
         oQ4aePuuzTthEPA61mc3btwgQsQv7yXpcDduKcDzol5rw853oUSTGWAOXbFeunyZyfQP
         kDRWJx3alvyc+iDjSo5EHS4VUnp4DkYYXH6UA73mxSvDkoT9duxz0NRSnU9m3ej+F9uB
         LC8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2uV7PXbA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d128si522596oia.3.2019.03.01.00.19.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:19:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2uV7PXbA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 751C82186A;
	Fri,  1 Mar 2019 08:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551428346;
	bh=Tv+BzXMoEV2oQ4inDMfG1XVtbtOICAzreQ/zokQ3O0s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2uV7PXbAlkFyjjg5XFs4TgWTOuVxLQDXJVBcqlIWgqyIIc0uNrBGcqwVs26v3eCwf
	 MVgvA0Q03SzF6tvwLr9tP+9FKFIO2gBfdA6WuWWmtzZQkogvIDYS2E8dSNfz7Gzd7F
	 36m290FqktBA3vSVgDDNEvM/9urOp4egTc+tuVzw=
Date: Fri, 1 Mar 2019 09:19:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: gasket: Replace symbolic permissions with octal
 permissions
Message-ID: <20190301081903.GA7969@kroah.com>
References: <20190301081238.6440-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301081238.6440-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 04:12:38PM +0800, Wentao Cai wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index 151e8edd28ea..708ee43175ba 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -40,7 +40,7 @@
>   */
>  #define GASKET_END_OF_ATTR_ARRAY                                               \
>  	{                                                                      \
> -		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> +		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),      \

This is fun, it keeps coming up and no one looks in the archives to see
why I keep rejecting it :)

This should be __ATTR_NULL(), but really, the whole macro can be deleted.

>  		.data.attr_type = 0,                                           \
>  	}
>  
> @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),             \

__ATTR_RO() please.

thanks,

greg k-h

