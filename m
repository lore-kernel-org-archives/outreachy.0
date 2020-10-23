X-GM-THRID: 6886767027078299648
X-Received: by 2002:a5d:66d2:: with SMTP id k18mr2160693wrw.229.1603450673764;
        Fri, 23 Oct 2020 03:57:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9acb:: with SMTP id c194ls41947wme.0.experimental-gmail;
 Fri, 23 Oct 2020 03:57:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy7XSy980aJlMzp3hoiZm82Si8z/P6gSB9Blixfz0m61lgwafCXf7VeLcC3H/RZUe42Wh/7
X-Received: by 2002:a1c:7707:: with SMTP id t7mr1839695wmi.54.1603450670893;
        Fri, 23 Oct 2020 03:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603450670; cv=none;
        d=google.com; s=arc-20160816;
        b=RULy/itmPUEZF7yUks1cmTeMwIO2gxO/k5TP1JRlRp/1nD13NHsa6/T/CEJh3u9XxG
         FCF8RjnV16ZgkNc2S7YvydpUPSYG5jDM6GaCbNmMfaa199D94TmQslybvzWt4ldZ2MiE
         fEUflRl/1ZE5XJoigL3RD9IApvfd+xHOppYu3OZLVYqtjdVpacFpCPTc+esIgV+7s5o7
         7XvKio697Iyt+arPogjHGOmZlfnRh1/yT9ilTiEUWE4LwaS9F2mmf40KfQdZzJ5TicXu
         CjieFDQxDRt9sGYX9NptNUhdwsytSIcQy0X6A8QKdRjJ2Vd4xJfB8cd3NYQspBGU9LoF
         A1zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tFPKT0W1J+FZqHQSI+yDzTHEajMWQxoymuwOM4ZyXUg=;
        b=wP6qwZEcQKZzQ8e50D0Na7ADFyZyrpH/OD0XMfZb1VA8yigBsL0p8xK27Jhpor99Ws
         lW+OB0+ZwASDk6y2b6hQsNkq3LIIDcP/714mKCCs/HLd1ED1K6GJQh4TVU5fehT1S2bn
         PfLxyKPJSQnVP2a3pPxtEe1ITNDqTtUjQrsFSfbeu/8fRveXG/o/TpFp6rcTsK+iVyht
         PH7q5HR/1jHx4OO6WuBHykoI12jEl5lh5oMaun71ip4mQFZ9UGqJXK6wpDFAQcoCJHHz
         +2iMOnRqlBqZAjzcuLwGGleGXylO2D0vZ2wDa2/7ETCgbnzDoWSeiIUmCStvTAdHs5XT
         n0+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 63si34189wrc.0.2020.10.23.03.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 03:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,408,1596492000"; 
   d="scan'208";a="474021391"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 12:57:50 +0200
Date: Fri, 23 Oct 2020 12:57:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8712: replace (precvframe
 == NULL) with (!precvframe)
In-Reply-To: <20201023105109.5905-1-eafanasova@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010231255220.2707@hadrien>
References: <20201023105109.5905-1-eafanasova@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 23 Oct 2020, Elena Afanasova wrote:

> Correct the code style for comparison to NULL. Reported by checkpatch.pl.

I have the impression that the subject line is too detailed, and the log
message is not detailed enough.  The subject line should just orient the
reader, so they can decide whether they want to look at the patch in more
detail.  The log message should say what you want to do and why.  In both
cases, mentioning the variable names doesn't really seem necessary.

Again, the part of the subject line to the left of the : is not correct.
Use git log --oneline on this file to see what others have done.

julia

>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
> index e83c256e1474..ea1aad4a5561 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.h
> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -136,7 +136,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
>  static inline u8 *get_rxmem(union recv_frame *precvframe)
>  {
>  	/* always return rx_head... */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	return precvframe->u.hdr.rx_head;
>  }
> @@ -144,7 +144,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
>  static inline u8 *get_recvframe_data(union recv_frame *precvframe)
>  {
>  	/* always return rx_data */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	return precvframe->u.hdr.rx_data;
>  }
> @@ -154,7 +154,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
>  	/* used for extract sz bytes from rx_data, update rx_data and return
>  	 * the updated rx_data to the caller
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_data += sz;
>  	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
> @@ -171,7 +171,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
>  	 * return the updated rx_tail to the caller
>  	 * after putting, rx_tail must be still larger than rx_end.
>  	 */
> -	if (precvframe == NULL)
> +	if (!precvframe)
>  		return NULL;
>  	precvframe->u.hdr.rx_tail += sz;
>  	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
> @@ -189,7 +189,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201023105109.5905-1-eafanasova%40gmail.com.
>

