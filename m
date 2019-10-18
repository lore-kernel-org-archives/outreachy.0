X-GM-THRID: 6748957441042415616
X-Received: by 2002:a2e:9890:: with SMTP id b16mr5079153ljj.4.1571380203786;
        Thu, 17 Oct 2019 23:30:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:42d1:: with SMTP id n17ls447973lfl.5.gmail; Thu, 17 Oct
 2019 23:30:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqylKrMzwqhB+wwe0vdpWj678CuFnPUYO6UZY0Km+m0V6tCLxVnoTKf243SB/x+SP1BWeiCT
X-Received: by 2002:a19:7d06:: with SMTP id y6mr5028651lfc.120.1571380202937;
        Thu, 17 Oct 2019 23:30:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571380202; cv=none;
        d=google.com; s=arc-20160816;
        b=sVzG2Q43/R+wehX6zT2LlM31hhkwHgAg10KvY5fGrTIRu7dlwS6bpeYZpaXvtnUZqQ
         lkj/MQNKAazUco9j8Qj+k4L8Lrg8yPNM4ko1KMcjeHjut9Ea3jMhVvp3MliRt1nQAKZn
         QwziHyOMUwcnD1WuCSgVN6TaTF+5SWCH0oNoMjPbISPm6ZHTAmo4mp1KheNfR/vfl6Gi
         4ps/nKdUJwKKw8JN36K+D+A3SdK2B1JcJEQ24aq1tKplTI+esb78AHnOgBaqtdUsH/K3
         Uo1gbGMhRAwgrDPg8V2Z24y7T6LXlmx2yGA44R9uNhLZBXSnUthX65DX59VE6Ex3qGhS
         T+aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rKfKhISL9kQyMiTcHWifMLHQ2EBp0BmGjmd6coESaes=;
        b=wYDm5ppoPZ2pYmW/Mxso4x4zR2lzMLULISQ4Mf+z/9+oAT+RPxwpZLI4pkmRR5oo5/
         T+7hGESXOZdnUG+2XMnAvKe7HPjypY2lCcBo8T5I923YggcCRd+cLuvGeo8/wktAp13B
         euAhbPMoDUvTGOT+P80chNP4ba4S2aernoROhgOHx6KL0sPHA6IvPMKO86oQW+x/6y/R
         zyIfaN1OrzbszAjzRx0RiPY6g5MfGyhYZuGvoAoul/DLuvlZYlS1s7zKf88T0IA3RXxH
         0awTKasbtLyi7YYzzXZ0C4/IODEGS9hGYxn8SzN8liZPPr3uef4Na9ZS/Gp0cI6gxcs8
         wXoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a9si182976lfk.5.2019.10.17.23.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 23:30:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,310,1566856800"; 
   d="scan'208";a="323116644"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 08:30:01 +0200
Date: Fri, 18 Oct 2019 08:30:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Edit CamelCase in
 ddk750_power.h
In-Reply-To: <20191018020112.22226-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910180828500.2666@hadrien>
References: <20191018020112.22226-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You don't need to put the name of the file in the subject line.  One can
see that easily from the diffstat information.

On Thu, 17 Oct 2019, Jamal Shareef wrote:

> Removes instances of CamelCase. Issue found by checkpatch.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_power.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index 7002567a47d2..cd892f2b717f 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -3,10 +3,10 @@
>  #define DDK750_POWER_H__
>
>  enum dpms {
> -	crtDPMS_ON = 0x0,
> -	crtDPMS_STANDBY = 0x1,
> -	crtDPMS_SUSPEND = 0x2,
> -	crtDPMS_OFF = 0x3,
> +	crt_DPMS_ON = 0x0,
> +	crt_DPMS_STANDBY = 0x1,
> +	crt_DPMS_SUSPEND = 0x2,
> +	crt_DPMS_OFF = 0x3,
>  };
>
>  #define set_DAC(off) {							\
> @@ -15,7 +15,7 @@ enum dpms {
>  }
>
>  void ddk750_set_dpms(enum dpms state);
> -void sm750_set_power_mode(unsigned int powerMode);
> +void sm750_set_power_mode(unsigned int power_mode);

This looks suspicious.  You shouldn't be updating only the prototype
without updating the definition as well.

julia

>  void sm750_set_current_gate(unsigned int gate);
>
>  /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191018020112.22226-1-jamal.k.shareef%40gmail.com.
>

