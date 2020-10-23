X-GM-THRID: 6886883229146546176
X-Received: by 2002:a17:906:711:: with SMTP id y17mr3937330ejb.271.1603485358691;
        Fri, 23 Oct 2020 13:35:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2319:: with SMTP id l25ls1449492eja.5.gmail; Fri, 23
 Oct 2020 13:35:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4f35Fmk1lqN0qehH72lZ08mf2TlpISauUsMm60twbZ5YCpx1XBAFyhxwSvh8MIC/wrNqR
X-Received: by 2002:a17:906:48b:: with SMTP id f11mr3865022eja.293.1603485356443;
        Fri, 23 Oct 2020 13:35:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603485356; cv=none;
        d=google.com; s=arc-20160816;
        b=ckG49wEQUNatVZesfxknQ0GSeggA8kG+JsHr8Lxp+4HN4RA0OkpFhvAAwnn4hRuQbK
         bNufh9/Z/irDwr2pK5v5fbMoOL630MLhbVYQKzNHdoDdAevSj96NFEkFAdPGRXjEOvLG
         fTXbEHzqbZhHxq5QkYHv4A0LsJj9n2camLvPEofvpRwlp3Xrra5wKfr2gJEKcyT0zjps
         +HPDC6QBbm4QkRtmU97JN2zRvcbuAf4kARAX70P+YLt7ULedmUJw4eZZK7TZi8NVIuoH
         d9Imzk8TocjRnUcVITa2ePgVlPtUs2h2pSVTrwPHg+itJ0oj0HDZL/+XqSVoO15SaRK2
         A0Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cAiYQzwrYLLxUSmKVNMG2cdbrh/a3pv14hDPKqZp7rk=;
        b=YCyTh07fFpS2x/zm+fKGMzMSZrDE175G4JL0ChLR4akqXcajAVuOFI0aZ7UsymHyR1
         IGVXxyzPzyUHrYR6uAkFaZsh3NjqaEhjT7ZdQEvt8CdkhqmWrxei2x3RC1E8lYvdjKpK
         R/5zv/bFAmJRH7NCre5dvauWnvU4NrsCe0s1psUzXNRgiKhLNMPacRxd+fui3eIaDW0p
         5VTX172/YdRMIK+nzkVOtmu8vOCauBg2N9NWWndTDfN2f6kMpBG+I45uH2Rfu+1i3Op+
         1sqkXvNsE3AeNfinAjPk/4YHW8zgO3NbDLPuZ74NTAiVEiZd02vCVH8b/UbuI/qRPrNS
         uUag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ba3si87891edb.2.2020.10.23.13.35.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 13:35:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,409,1596492000"; 
   d="scan'208";a="362629634"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 22:35:38 +0200
Date: Fri, 23 Oct 2020 22:35:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging : rtl8712: correct the
 code style for comparison to NULL
In-Reply-To: <afff1ded817cb27631f87146ae198e2915ad61fe.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010232235050.2707@hadrien>
References: <afff1ded817cb27631f87146ae198e2915ad61fe.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In the subject line, there should not a space before the colon.

Thanks for improving the subjects and messages otherwise.

julia

On Fri, 23 Oct 2020, Elena Afanasova wrote:

> The coding style (!bar) is more common than (bar == NULL). Reported by checkpatch.pl.
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v2:
> 	- correct the subject line
> 	- correct the commit message
>
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
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/afff1ded817cb27631f87146ae198e2915ad61fe.camel%40gmail.com.
>

