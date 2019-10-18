X-GM-THRID: 6748987739858796544
X-Received: by 2002:a2e:2943:: with SMTP id u64mr5031066lje.241.1571380096501;
        Thu, 17 Oct 2019 23:28:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls578731ljx.1.gmail; Thu, 17 Oct
 2019 23:28:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwjgXXEFlT7DNU1w3o6JCaRNLFZpnQH58LsYSNQ56YO4T4hFRKWbDdCvv2fpzMeqgtasJh
X-Received: by 2002:a2e:9d12:: with SMTP id t18mr4951828lji.236.1571380095536;
        Thu, 17 Oct 2019 23:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571380095; cv=none;
        d=google.com; s=arc-20160816;
        b=B11QroI4LdDOmRYyMZnMNDSMmYiVJLy7bAjc17yM0N1L9ITjrERksMjaDjOww1zTYK
         HvPdgU1CVSEiIcZLOyuND/v0YteqB7DhPihfYgJwYU46CJfMqgpgJkX+JqMCBAHOOuJ0
         upaOK/utyDRZsrOoI/bZ83YZFcqe4/wwH45HjTbifKFpsOQutVUgOVYc/3nLBXfYemAC
         Esaf5z1uZvkC34yR7GDFjXjebOvd8x/8Js4tmhwz4Z/d1z2JFjHuyiNwwOaF7wZhgUQN
         bHacaDOgtjnkh0a7Z+l47opZD05Iuyyeic9oyluHxZxeFXTmuNLKXs+5OHbTBEIZDpfB
         udCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4YZDdZrVd4mpQ+ITc7Ktw4hraOz3dsVMMCv0j2LekLU=;
        b=BuF1bP9G56pYEZ9lWFuWZhcDL9rEUVo1PUlEODGROQBuDovG6h5jxtT9KmJQEmkgKt
         2KGN9urLvlGxpJser3mKhqfNHkbZRxp0WTJ6FPFb9kYLPBGsA10G8YraiOZd5vI5pUWV
         guR6JbWYlAmN7xfJLonbZPrS7yq+pSA4dbhFypiYmG3enxtP/zETersu4WZWILEXEVY6
         MQxHbseSXl/keQXMQeWGLKf6dvIb/7n77N7CIHWNJrDu1XwDt2x8NcuZPjvptennCHTA
         +7e+EpesuwMYkPX2ZwZLb/9YNa7uaUs77Nqbu1YehA/ENx7Cy1nO57JAsy8S9VtGLXzc
         1zNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h6si248675lfc.3.2019.10.17.23.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 23:28:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,310,1566856800"; 
   d="scan'208";a="323116470"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 08:28:14 +0200
Date: Fri, 18 Oct 2019 08:28:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Simplify boolean
 expression
In-Reply-To: <20191018035912.GA5198@gmail.com>
Message-ID: <alpine.DEB.2.21.1910180827050.2666@hadrien>
References: <20191018035912.GA5198@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 17 Oct 2019, Javier F. Arias wrote:

> Simplify expression that it's inverting a boolean value.
> Issue found by Coccinelle.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> index c514cb735afd..38e7160e6da9 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> @@ -188,7 +188,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
>
>  		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
>
> -		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
> +		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, !(bBtDisabled));

This looks really helpful to improve readability.

At the same time, could you remove the () around bBtDisabled?

And make a series where in the other patch you address the 80 character
issue.  Then this code will look nice overall.

thanks,
julia

>
>  		ODM_DMWatchdog(&pHalData->odmpriv);
>  	}
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191018035912.GA5198%40gmail.com.
>

