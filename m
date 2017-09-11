X-GM-THRID: 6464507171401891840
X-Received: by 10.46.29.11 with SMTP id d11mr647271ljd.8.1505135714183;
        Mon, 11 Sep 2017 06:15:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls288040lja.28.gmail; Mon, 11 Sep 2017
 06:15:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCwP7te5CAJvqP2qKUYZX/deN73SiaepGqxli2eIPcIpHu5mDaVjFewAXUwomSxxONjUcSh
X-Received: by 10.25.190.75 with SMTP id o72mr591526lff.18.1505135712202;
        Mon, 11 Sep 2017 06:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505135712; cv=none;
        d=google.com; s=arc-20160816;
        b=iCkVWmClIyh653G6M7VrBIV6jJ4nHjyOuy7CtCOD0YgTf+U43FdQOhNZS7zmQ9rG0h
         xvahEbi/oUe30OUtSB/ba5NDR/cUPnEjTD1Iv2QY1+XUY7n3zPYonWTHPNfk3N67y6fe
         DbylWeVkNMbI83pgTsurEb3ayFsG6aCook/xocIKtQeMVH3IdbrH+5032GEbWpj9A/Lt
         MtuMTe9I+vVZrtB/A09HEamXPD+mL6AGnw6yqdveiyL2hzfbDMyz9lQD1Wp0W6zD7iWf
         BjVGsfMiPso2UVQEXxY6H3/fMTYZ7LGECq3/3rwre5/tatVFWTCoDsZGwfPGS2eAiF1v
         MBPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=YbaEiv4yIEfKxmMMS7rV+Q5mqe3REqLrp9luAK8P90A=;
        b=B/1VYAe8dSYx58Oiv3n+NPH5+mWcEbSIK1MnNVu6eLt20cv7kDA9ifFlKLAvGl7oyD
         57a+OZSp8sEMhxltsx+QS++ASctXGnCo9lirkYWDbmp63WTm+OwD0PBDHqzThXV7go41
         hZ9gozgWoaeAWL5KLt9A+oa2pT35R00P3Xn5n384djTyDUOK7/pERbD9MxHtxJD0mgZ8
         HRiNIgoFcNvKvdPcL2zdYyddR9K00SZD5k4yTfAxlBL9/zdkF+rU/mJlNwaoSfb37muT
         M61g68339U+5Vft2F4F3Fb8HQVgN7t4HbqL1DIcdI0yEMysnWMjQISn3pn+nbPiNzHrO
         weYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si548573wmb.3.2017.09.11.06.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 06:15:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,377,1500933600"; 
   d="scan'208";a="237053036"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 15:15:11 +0200
Date: Mon, 11 Sep 2017 15:14:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, florian.c.schilhabel@googlemail.com, 
    Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove multiple
 blank lines
In-Reply-To: <1505135358-4408-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709111514200.28604@hadrien>
References: <1505135358-4408-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Sep 2017, Srishti Sharma wrote:

> Remove extra blank line.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8712/rtl8712_event.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_event.h b/drivers/staging/rtl8712/rtl8712_event.h
> index b383740..cad7085 100644
> --- a/drivers/staging/rtl8712/rtl8712_event.h
> +++ b/drivers/staging/rtl8712/rtl8712_event.h
> @@ -60,7 +60,6 @@ enum rtl8712_c2h_event {
>  	MAX_C2HEVT
>  };
>
> -
>  #ifdef _RTL8712_CMD_C_
>
>  static struct fwevent wlanevents[] = {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505135358-4408-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

