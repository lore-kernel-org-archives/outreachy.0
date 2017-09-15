X-GM-THRID: 6466022113438334976
X-Received: by 10.46.101.8 with SMTP id z8mr1871421ljb.0.1505503697046;
        Fri, 15 Sep 2017 12:28:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.133 with SMTP id l127ls336527lfg.35.gmail; Fri, 15 Sep
 2017 12:28:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBLSstl3PgvdKqgLKSmBSVAjEaAoYZf/yXLNVmoX4MDjAyCKNa3PVnWsb3EnuTiWK0Ghqcp
X-Received: by 10.25.228.134 with SMTP id x6mr287688lfi.33.1505503695516;
        Fri, 15 Sep 2017 12:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505503695; cv=none;
        d=google.com; s=arc-20160816;
        b=e07ty54HwE1c5ZeO5DzkoS+mDaMOg2qzZb+EyJQwQVuWQ3ejtkGjYKYl0Ppj/MJwvR
         P5NhXg4a73Ddtx3xx8A9IwylD3+d8BvMtFuLb/LHXdo3KpGp5pmHvfgKWfAIkzNskSp7
         pdodPJjn09EOdr67qQ4DT03rofarIUSuObxRA4Ll60UaxhkXugm6Zd424k0SVz6Cf+co
         AgLgorUW9sXXD4IBqULDoagXDBcnMr6JCG2ljdXeC38by8lV5cOV/tSo3v1z3W65Sn45
         tu1TYj9juEyBAjwOmYo1AtGd7ClNrL/5HBauMBQYVqGFJDtZzIADenXtXN1ZA2GE1FQg
         C4gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fQHXgwaYv65bqKgyqQegvJ7LpSprs7ColXEaM2hfR5s=;
        b=yYHOzDd/Y7gEMehjfRLTBN6qobYG08d7CyqdweEt5UqP+xOFci/+VryEZMvp+DYAlI
         XDC5y1tzlqTWH33XlnZfUVlwHja8mNmRXk7plrBJmHhfvbGWC398LCgaCC33weHK5FAr
         Wl7GEhQB8Y2ToOn0QKJczv77BLu6oWvTP2tbDZlTW7tr5S+BlKCCcEU8V1aN+2qzNk0v
         am2BfB2tebi21BncHx8nH1+2wgzKE7Xdq1DtGb8y9ge2dqh9mBTASTgBj7gMxJuZsO2c
         t/dQWJ3Qdsb8LqMUsfp+cUyF/xx0ewG+/+X9Qgv9/kYWDCmd9LFMnnH4ZNh/EOMNyRIB
         JvEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c142si21313wmh.3.2017.09.15.12.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:28:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,398,1500933600"; 
   d="scan'208";a="237680522"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 21:28:14 +0200
Date: Fri, 15 Sep 2017 21:28:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
    Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: remove unnecessary
 comments
In-Reply-To: <1505488080-7145-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709152126530.2533@hadrien>
References: <1505488080-7145-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch removes unnecessary comments. These comments are already
> there before the structure definitions.

These seem to have been added on purpose, in e14047e4e3b54 that otherwise
cleans up the comments.  Perhaps if you remove them, then checkpatch will
complain about the locks not being commented?

julia

>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 764d6fe..1d1fa83 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -162,10 +162,8 @@ struct dgnc_board {
>  	unsigned char	vpd[128];
>  	unsigned char	serial_num[20];
>
> -	/* used to protect the board */
>  	spinlock_t	bd_lock;
>
> -	/*  Protect poller tasklet and interrupt routine from each other. */
>  	spinlock_t	bd_intr_lock;
>
>  	uint		state;
> @@ -330,7 +328,7 @@ struct channel_t {
>  	struct un_t	ch_tun;
>  	struct un_t	ch_pun;
>
> -	spinlock_t	ch_lock; /* provide for serialization */
> +	spinlock_t	ch_lock;
>  	wait_queue_head_t ch_flags_wait;
>
>  	uint		ch_portnum;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505488080-7145-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

