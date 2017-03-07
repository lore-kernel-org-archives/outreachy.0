X-GM-THRID: 6394809093953945600
X-Received: by 10.25.56.6 with SMTP id f6mr265840lfa.4.1488907900700;
        Tue, 07 Mar 2017 09:31:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls134339ljb.38.gmail; Tue, 07 Mar
 2017 09:31:40 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr306846ljd.12.1488907900120;
        Tue, 07 Mar 2017 09:31:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si421821wma.0.2017.03.07.09.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:31:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,258,1486422000"; 
   d="scan'208";a="215920587"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 18:31:39 +0100
Date: Tue, 7 Mar 2017 18:31:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: Replace ternary
 operator with min macro
In-Reply-To: <1488907371-26513-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071828130.3150@hadrien>
References: <1488907371-26513-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Gargi Sharma wrote:

> Use macro min() to get the minimum of two values for
> brevity and readability.
>
> Found using Coccinelle:
> @@ type T; T x; T y; @@
> (
> - x < y ? x : y
> + min(x,y)
> |
> - x > y ? x : y
> + max(x,y)
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index ae39663..fc7682c 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
>  		return 0;
>
>  	while (1) {
> -		sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
> -							 remain;
> +		sending_len = min(MUX_TX_MAX_SIZE, remain);

Just a warning on this one.  Coccinelle has no idea what the type of
MUX_TX_MAX_SIZE is.  It just sees an identifier with all capital letters
and assumes it's an int.  In this case, it looks ok, because remain is an
int and MUX_TX_MAX_SIZE is small (2048).

julia

>  		gdm_tty_send(gdm,
>  			     (void *)(buf + sent_len),
>  			     sending_len,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488907371-26513-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

