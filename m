X-GM-THRID: 6947995427572547584
X-Received: by 2002:a1c:a985:: with SMTP id s127mr3565345wme.164.1617706741290;
        Tue, 06 Apr 2021 03:59:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1986:: with SMTP id t6ls1109537wmq.1.gmail; Tue, 06
 Apr 2021 03:58:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxm9YZ9yQnPwzxl6kZFFuukoE3wXVHf96chomEgPWGLqBMi8Qx643HBbH4FJtaj4MM86IvS
X-Received: by 2002:a1c:1d4c:: with SMTP id d73mr3462122wmd.70.1617706739645;
        Tue, 06 Apr 2021 03:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617706739; cv=none;
        d=google.com; s=arc-20160816;
        b=n3w6frBPRyPD+q7Xvswk3lwpsED5ts//iXoRdPFEQ2OpN43tPcIfAhJ7W7t4691/C4
         zeuS4iLbD3nqUdSZq0FnNaC/CPq3NjP24fdtGBeE4cyowBcZgI1bXDo/7ZDWJLulcjgR
         T8YHbz34nzA8YFFbF/OicShqeNHWpJlPYoqPCNvNI8ppdx0ytmkOXpaeC2Lu9nCAH8i0
         SQw2ApIPR/VdYBc3aQa+MV9xZEGCJWvXAo0LBIvBVepyYFDMUGpPr1J9SSSQ7A+JIPX8
         1Thtc1IMpz5ZG9KvPd/ZZI/L32AUXbUIhPip8G4Xu9BrYb/c8DC4Rh5uivS0XHh+Uz/s
         p35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=a+UoZBmo4lhhLQVcJnPteJf3of4MnB7yfX2sYKNZ1uc=;
        b=pxGUxqMRVMwyfvaPeI8Tr51xO71nvzVAZu2JnbfQfBWJTIUSB/3p6uoJnhdJwDrxBA
         CbNsN2ZbyYJHGZoPw2aybEFNFWYUkv6W5WAuyTKm8bFu5bJKYKBTZTJN0nsrdtVSHXcc
         vG0ONxD5sKexGItwT6RFYg7aruTaNTm4YOWni6ZkhGYGY4JtZbKTycVeWoDbiTU70JEQ
         FZGaTE9DymiY+VBK4nj5nn7qocjRRspWa9eyq+CxCHb7IHvDRlAM6VnIuYpC8BXcnE8N
         0MxOWnHsiT2egJsZt9PKbLScT6eljMAejQmHcxVs8TnuO1hKPPZ7dd9H2g0d8ORqXlJJ
         wFvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y12si2523955wrw.3.2021.04.06.03.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 03:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Al9gs6qguLlDkq2Ib8TFDVPJlV3BQXgQji2hD?=
 =?us-ascii?q?6mlwRA09T+WzkceykPMHkSLlkTp5YgBCpfmsGomlBUnd+5l8/JULMd6ZNzXOlW?=
 =?us-ascii?q?O0IOhZgrfK7CbnH0TFmNJ18YdFX+xABMbrDV585Pyb3CCdH8w7yNeKtICE7N2+?=
 =?us-ascii?q?815XQQtna75t4m5CY27wLmRNWAJECZAlfaDx2uN7oVObFEgqUg=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.81,309,1610406000"; 
   d="scan'208";a="377853947"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 12:58:58 +0200
Date: Tue, 6 Apr 2021 12:58:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8712: Rewrite NULL
 comparisons
In-Reply-To: <5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104061258040.2882@hadrien>
References: <cover.1617705825.git.zhansayabagdaulet@gmail.com> <5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Apr 2021, Zhansaya Bagdauletkyzy wrote:

> Replace NULL comparisons with boolean negation.

This summarizes concisely what you did, which is helpful, but you could
also say why.  For example, to make the code more concise or to improve
readability or for consistency with the rest of the code base.

julia

> Reported by checkpatch.
>
> Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
> index 7c9995060a6f..4aa39f4f3b84 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.h
> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -135,7 +135,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
>  static inline u8 *get_rxmem(union recv_frame *precvframe)
>  {
>  	/* always return rx_head... */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	return precvframe->u.hdr.rx_head;
>  }
> @@ -143,7 +143,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
>  static inline u8 *get_recvframe_data(union recv_frame *precvframe)
>  {
>  	/* always return rx_data */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	return precvframe->u.hdr.rx_data;
>  }
> @@ -153,7 +153,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
>  	/* used for extract sz bytes from rx_data, update rx_data and return
>  	 * the updated rx_data to the caller
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_data += sz;
>  	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
> @@ -170,7 +170,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
>  	 * return the updated rx_tail to the caller
>  	 * after putting, rx_tail must be still larger than rx_end.
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_tail += sz;
>  	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
> @@ -188,7 +188,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
>  	 * updated rx_end to the caller
>  	 * after pulling, rx_end must be still larger than rx_data.
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_tail -= sz;
>  	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet%40gmail.com.
>

