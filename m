X-GM-THRID: 6474221644274466816
X-Received: by 10.28.8.12 with SMTP id 12mr238203wmi.31.1507399353314;
        Sat, 07 Oct 2017 11:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls291498wrc.11.gmail; Sat, 07 Oct
 2017 11:02:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBmS51Ojm9LUMTk3jUp5Lal7uTGOHFDwna67lsUDTTphNpPd2r0zgYMzp1soH4wyhFYCGWb
X-Received: by 10.28.196.79 with SMTP id u76mr600108wmf.5.1507399352266;
        Sat, 07 Oct 2017 11:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507399352; cv=none;
        d=google.com; s=arc-20160816;
        b=PUnmwuElZmVSs3cQG9/kilOFUtw+obEOK8f3+iUxiw0gMSBiiuYmdSJA8bOnxM/25/
         Mc2HyOPqGn9eCON6HoRV6uUmgpKvqyYr+GWI4jsOSERLPOJMUe9Ek1wMDHVzRbOD+LDj
         8qBTnMspP94xQPsjnaEV0lbbZ1TJ5Ojc/6XYARxoiZ+eYmDO3BYV3MmRULi1M/pNYqOF
         AAyjo4ato2xBR76HMQRqUTP7ObZboP7PypfDTih4kGRzNZU99X1vNmQKDaJ8F/RqRH9S
         uDEGFK6ruxBItX3tMV2wB33be8avKgz9laefzd0ohQNdyATpZxgNW8kd9pf2GuLktOBz
         5iyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=md/fmFPxUxVHWJq/Q8fkL2Be87EFBRgiO25I4rSyIuA=;
        b=EN55mmLX8q1f6Cyp9xlXw8qlM+nn/ewiikaJCwgZtle3hLFr2Kc0gWYCcLE5EBnxBK
         jzpoBUKD8bd5Dibmfo1zFahxR0+6Pyhj1odtKiUUSEwSg85I0wwipTvItHIQw6roMWi3
         QzfD5VzzSatKDo8uI1Tuo9qmIVnY3fHEwuK0JTIQU27YdUhmYxckuflniwP7EaC32g/h
         SNwuvWHBUeIUNkW7QJere5xQgj2HBavWhQLrHFs2k4z8IVBLn2uW+QQu7r4mIDQIfhLF
         SSF6/YTvGZZUNw4j1xuugQAQBLZkwE9Kcc8dMSSo6KrRf7ID4dogmHvqofxGAnfIGabf
         qd8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m19si608390wmd.2.2017.10.07.11.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:02:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="240114294"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 20:02:25 +0200
Date: Sat, 7 Oct 2017 20:02:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: phydm: Use
 setup_timer
In-Reply-To: <1507397185-6139-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072002130.2134@hadrien>
References: <1507397185-6139-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2017, Srishti Sharma wrote:

> Use setup_timer to combine initialization of a timer with the
> initialization of the timer's function and data fields. Done
> using the following semantic patch by coccinelle.
>
> @r@
> struct timer_list *l;
> expression f, d;
> @@
>
> -init_timer(l);
> +setup_timer(l,f,d);
> ...
>
> (
> - l->function = f;
> ...
> - l->data = d;
> |
> - l->data = d;
> ...
> - l->function = f;
> )
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtlwifi/phydm/phydm_interface.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_interface.c b/drivers/staging/rtlwifi/phydm/phydm_interface.c
> index 102576a..aa1fb75 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_interface.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_interface.c
> @@ -189,9 +189,7 @@ void odm_initialize_timer(struct phy_dm_struct *dm, struct timer_list *timer,
>  			  void *call_back_func, void *context,
>  			  const char *sz_id)
>  {
> -	init_timer(timer);
> -	timer->function = call_back_func;
> -	timer->data = (unsigned long)dm;
> +	setup_timer(timer, call_back_func, (unsigned long)dm);
>  	/*mod_timer(timer, jiffies+RTL_MILISECONDS_TO_JIFFIES(10));	*/
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507397185-6139-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

