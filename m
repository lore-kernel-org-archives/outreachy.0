X-GM-THRID: 6802954785072873472
X-Received: by 2002:a2e:a401:: with SMTP id p1mr2316292ljn.106.1583936608651;
        Wed, 11 Mar 2020 07:23:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls405371ljh.2.gmail; Wed, 11 Mar
 2020 07:23:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsQ/qNZ5X5lI3UeNxVG0CFSSXBUZzO1lQ36RLPSJCTqkQ5pKZxRuCRxNmVGhmyedPy7aptS
X-Received: by 2002:a2e:240e:: with SMTP id k14mr2435467ljk.178.1583936606661;
        Wed, 11 Mar 2020 07:23:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583936606; cv=none;
        d=google.com; s=arc-20160816;
        b=OGE+RbjDSL2rXxtl+6446xItAhU0v0vFBWTJmqNbkB/GQvrbb63haJQI+0MGaIFDje
         tF3GVSUefPhgM16GGhyN8rf4lUGbF9yzaBHSITMZ2W0d8L5lpsr4U05I1rbRFK+HZdGd
         OmqhWHHL+U/0gFHBVz8sKsENIsTwYP+lQiTd0PDElyVuHB8CjKcyzheCo++1xkAM2nmU
         27vtoOM6BtvYXylzq3lKAmigZfJuvDgDXQ5hEeISTmEVKEEi6nd4lTHr9mn/3CIhaVcp
         o7QLaLKdWPs/mYs3VfVYNYj0Y2NBr9cD1C8DO57110NsBh+ulIdegMVG3/V0OfKFOLze
         UPYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=e4Sq5Je+O7AGcF0aUHH0Ptxc6q0vs9muP71r0pwGb2o=;
        b=mow77b48iTKuy4wygIX+AbO1qRBg9M1uyUefCOgxWAUkzMN7kcMIMbDlxgZ9jZKeUz
         b4XezdkUD5YRxsXVedQT8bLO9IE0thJCG5hb6g6PCG4v4a7VeI3nNla4PiOKJzOEZnFK
         9gNpbNb2mDyLFYOnSQfxo4v4IvfLeMHeEtM3AJfkOnDwFIygwe+fUM3KpEoEb8lpJQje
         PiZl0GSRG/acPJ8dUDDgi4r9x4Ty75XHGSF2gAYks7Z+b4G2upiUJ/7dOq6PIabTm7ch
         r1wpGiVK0YLNf3l8BYnZ+wxw9tGevkbVvXGeVdeBJzUmcJuqUnuAFHRRkxq1FJa1/pw1
         d4fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o24si128353lji.4.2020.03.11.07.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:23:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,541,1574118000"; 
   d="scan'208";a="439855386"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 15:23:22 +0100
Date: Wed, 11 Mar 2020 15:23:22 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Enrique Vargas <jevargas@seas.upenn.edu>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: include newline after
 declarations
In-Reply-To: <20200311141857.GA16781@evX1>
Message-ID: <alpine.DEB.2.21.2003111522060.6155@hadrien>
References: <20200311141857.GA16781@evX1>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Mar 2020, Enrique Vargas wrote:

> add newline following coding conventions

The patch seems conceptually fine.  But it would be nice to make a proper
sentence, ie start with a capital letter and end with a period.  Also, if
checkpatch helped you find the problem, it could be good to acknowledge
that.

julia

>
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 670361873d1d..52704c67e110 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -1332,6 +1332,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
>  {
>  	int i;
>  	u32 value;
> +
>  	for (i = 0; i < qdev->intr_count; i++) {
>  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
>  		value = ql_read32(qdev, INTR_EN);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311141857.GA16781%40evX1.
>

