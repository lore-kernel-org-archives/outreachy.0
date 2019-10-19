X-GM-THRID: 6749323707377778688
X-Received: by 2002:adf:bd8f:: with SMTP id l15mr10521540wrh.362.1571466848286;
        Fri, 18 Oct 2019 23:34:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a517:: with SMTP id i23ls3691032wrb.9.gmail; Fri, 18 Oct
 2019 23:34:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqytsF54+OXCgSiAlIQcsOVkiyB5aZBBUB1yw9w5SOAn9REhNdHBNnWN1zW3faRxm2jXb9IU
X-Received: by 2002:adf:e805:: with SMTP id o5mr1096920wrm.223.1571466847110;
        Fri, 18 Oct 2019 23:34:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571466847; cv=none;
        d=google.com; s=arc-20160816;
        b=pLoNkB8a/1bZAD7xkAVp0aDA/Xni6dBdobQe0AKyjHeeKtPpgEDZRJsMXiLI0PJ5qV
         UcpgB4mUsxKaKzxPD3jUHptGeAbgW3SloiskM4oI4bR1OHfRqKPAKWrq95c9CbFiaNQ5
         nDQqaVJqB7E+5JD/A5fTcsjUO7ogxcFEbO3nI2tIEllfn+jJ9oghjD3ScrdtGW5zrOL/
         Rl98ulCHGDs9/It/ALcbdv6nALY2OlHi8zaKUu3CwyPMXivFoFp9okZtVYfZtl112BbC
         CawN4tpSIKh0SI+Dy72Q2u2HwPPO5+hTVtczCnxkbpxC54z5zY5aaX2vQxsWiquUzqDk
         WR3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1hazCKqi3So8hGzNc7iI9WuRMs+RAnDHahSYVN71qUI=;
        b=BJPGcQqxWmbuMnpc3+ZW4ypubc3DZmEO6BSwcpQk1RSfIC9jWXmCQkn6+wBQ/ycuE3
         q/cGhswUX3guKdIMZFs+PE++I7QsokhQFXYsrNHCEayFvTPrnPibLhH6LeHcANzHfaEU
         u3ycd5WBj4N/OLms/GSLVJOdjL7bIZeu5dG3CuUWx1fd77+VYXAPxCltxW5MpuA72GGk
         UPdp+t45QkzmvBm8oAjgzIaZ83RBq5CAyo9dXNHijSpqapMZuiIIh49P8NkvX29xOgln
         MpJr28ceO7oOFlWmdob8edYIpGDEVKu3aRz7d49dTnmya8OoFd7Xlw6wTSG911CNFZFz
         ZfJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z8si267839wmi.1.2019.10.18.23.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 23:34:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,314,1566856800"; 
   d="scan'208";a="323261682"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2019 08:33:44 +0200
Date: Sat, 19 Oct 2019 08:33:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: Fix line over
 80 characters
In-Reply-To: <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux@gmail.com>
Message-ID: <alpine.DEB.2.21.1910190832180.2701@hadrien>
References: <cover.1571448899.git.jarias.linux@gmail.com> <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 18 Oct 2019, Javier F. Arias wrote:

> Fix line over 80 characters by wrapping arguments in function call.
> Fix suggested by Julia Lawall <julia.lawall@lip6.fr>.

There is a Suggested-by: tag that would be better to use than the second
line.  That would limit the log message to what you are doing and why.

julia

>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> index c514cb735afd..0c2f3b2d4326 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> @@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
>
>  		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
>
> -		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
> +		ODM_CmnInfoUpdate(&pHalData->odmpriv,
> +				  ODM_CMNINFO_BT_ENABLED,
> +				  ((bBtDisabled == true)?false:true));
>
>  		ODM_DMWatchdog(&pHalData->odmpriv);
>  	}
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux%40gmail.com.
>

