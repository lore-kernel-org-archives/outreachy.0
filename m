X-GM-THRID: 6671224625234444288
X-Received: by 2002:a9d:7594:: with SMTP id s20mr13942474otk.112.1553417392000;
        Sun, 24 Mar 2019 01:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls2502836otl.4.gmail; Sun, 24 Mar
 2019 01:49:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkkQWUwqsuuCW+E3WwGyNnh3lnEIIhIozJ/prYnlK2c8gM7wzcFObWbIR6c4XaMebvJRkZ
X-Received: by 2002:a9d:3ba1:: with SMTP id k30mr7928335otc.171.1553417390877;
        Sun, 24 Mar 2019 01:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553417390; cv=none;
        d=google.com; s=arc-20160816;
        b=BhFPvAJ6XN/1ZepXNB2cu5bXFEmSYPqjvqTkPeAFhvAFujalJXPsLEPy9RvlqXn0sm
         248IYlgv1EGnAgjcXiEw1kUL8y75ooqpAbftd9v9XPZOweSxQquiKXBO6Tkl4Ds7yMZS
         vV4A7S2gvx3Okme6tSlsklzmuah3PZ7YM/y2vR4nSyN8A0xMbE7ke/fR9NEvFunch5bn
         jwXlEtVldqTkipvJzUf2fdtG4XYIxUtBhfOQNCi7UajihaxqSYNPDY2o6qXes83MUUNJ
         +kYQPhLan3un1e81+d3NEkGS5bM0JDBlaw8b15whQY7UMUoppO57pVekCjDT8Gu3Fp8p
         D62w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CX1MXlSBOwB0voRTnHPuL8iX5czRgWrwXv1dMc2HX98=;
        b=Tb4aLulS5SOi7wxglFgW1vFmUoIbP4nvABSmyCG+p8XzKvxU7atbb+iYfpimLizzgO
         pFx347J26nIIYoiEU8bpn4ZwPpNeGodHPOnf3XQnntcmQfdul1o1Y+eWjvvD5l229+fG
         tuOSpmGhqaYXQdER1jPnIuiKeGc8W5hnkuT/dl6+c6x9+LXsGumqQLooe6YeLZF0pwSa
         yRjNSWN2mPJxzbVhnRhXG93xLo0Ao/F4QsuKZ3gYurrBSYCtWRk9rlHz8euixm851pvB
         gDO0GRGt7NvLgr4Oo7FRNAnRVkERdectulS6/vlRL7F0Kfs/kvtPdkpgInEaFg5JNOi0
         e93Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zu8Ocpl9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 196si461269oii.2.2019.03.24.01.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 01:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zu8Ocpl9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 87CC22147A;
	Sun, 24 Mar 2019 08:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553417390;
	bh=nsbZCqMqKuBU9fk+jDQwA+teAk4Gl89AxL8dII9I8Ug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zu8Ocpl9MAhlaesd5xD3GehbIyFWvFihlxq/XnAYSkXqkYOQY7hUtV7zaqSwPZSfT
	 FtH5TxQmXxYcc4CCdGTqDhywlUJGhEXeHpRlrYtScN2Zfyj13iQNuqTtPKKgiuCVvI
	 zzbm9s7KAUavRR0eo+qpy03EbMyS4uD+bY5rwr5Q=
Date: Sun, 24 Mar 2019 09:49:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 5/5] staging: rtl8723bs: core: Remove return variable
 in rtw_io.c
Message-ID: <20190324084946.GA17494@kroah.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
 <20190322143827.24480-6-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190322143827.24480-6-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 22, 2019 at 08:08:27PM +0530, Nishka Dasgupta wrote:
> Remove unnecessary local return variable in rtw_io.c. Issue found with
> Coccinelle using ret.cocci.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
> Changes in v2:
> - Remove trailing whitespace.
> 
>  drivers/staging/rtl8723bs/core/rtw_io.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
> index d341069097e2..985eaa49ad3c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_io.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_io.c
> @@ -45,8 +45,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
>  
>  	_read8 = pintfhdl->io_ops._read8;
>  
> -	r_val = _read8(pintfhdl, addr);
> -	return r_val;
> +	return _read8(pintfhdl, addr);

This did not give you a build warning when you applied it?  Odd, let me
check...

