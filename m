X-GM-THRID: 6671548221790093312
X-Received: by 2002:a17:906:4408:: with SMTP id x8mr3764933ejo.93.1553348271304;
        Sat, 23 Mar 2019 06:37:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls589628edf.1.gmail; Sat, 23 Mar
 2019 06:37:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZNl0BUFjivooVYjqZ/fAAqN0BMBxe9RoLzm5i84W0FNmdkNYtJOeFRnF/gtCD2P+ePK6j
X-Received: by 2002:a50:948a:: with SMTP id s10mr10199534eda.51.1553348270487;
        Sat, 23 Mar 2019 06:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553348270; cv=none;
        d=google.com; s=arc-20160816;
        b=mq5/syRfhVhdLNqwsNDu0bCAHK/RLKEldTRzjV1DvEy6g/1rF836fBPyRVa9deAdvz
         RXqbiBnh0RAbw64JxUb5jk+gTXvqYICtuYREl3PBT0LGhRyYVU/jncVdsb565o8Y5SJ0
         S0zLkvCxQa5xYNaCtTeG3jmbtbcftu1ZYVind0rWLL76pKmehkwhBP6GIgAPgxrYijHI
         t83eEExtV9Ar5sFh/4rp647UB+mSNM2fdYrWwomj/Yq/W7DslXpKKL5K7KYBKblchw5I
         nu33KUpaSS2GiZsf3/RJWsmKadQ8GVtQCQxYjYIvUJv+/aiyJOOhY1H7PrSQRO4t9d2z
         LuUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5noxcI8dae3nR0XKAo8lCBQ8mDSKTHSiEhKzh6IGklc=;
        b=qs0RD3QZAPDRNCMyQnvDz6YVrMni8QBDZivO/Gzdm3ahTwQFuCv2vufFzCOBBGAbyz
         msZhl0lWJ05EjmsgYi5MXoATS+V20mtK5795bg/z+uBGEE3QFHXXndPj8bJeWESKhR5N
         XViUY7Vh92itD+bRHqnoj0tft8N5TsJBAaeHQbeePhgr3sS0AtMCPEuhqtA76lymkTZT
         4I6UsoS+n4+Xv66waFD7dwy3tMnJTt2J7PGmTbKZ74mjSKx1LZ0gkcT2SNEQ+5ZTU82C
         MATrI2NfI9r+Xu7bAhcG6aXpILt7oZ1pJigECjwvLgJrlvhL8D6+kP3IFcaMGvpGlZXe
         jdAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p25si579713eju.1.2019.03.23.06.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 06:37:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375419093"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 14:37:50 +0100
Date: Sat, 23 Mar 2019 14:37:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anushka Shukla <anushkacharu9@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd.c: fix line over
 80 characters
In-Reply-To: <20190323113413.8040-1-anushkacharu9@gmail.com>
Message-ID: <alpine.DEB.2.21.1903231436220.2566@hadrien>
References: <anushkacharu9@gmail.com> <20190323113413.8040-1-anushkacharu9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, anushkacharu9@gmail.com wrote:

> From: Anushka Shukla <anushkacharu9@gmail.com>
>
> Rearrange code to fix line over 80 characters
>
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/rts5208/sd.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> index c256a2398651..7853ef9ca372 100644
> --- a/drivers/staging/rts5208/sd.c
> +++ b/drivers/staging/rts5208/sd.c
> @@ -4513,7 +4513,8 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  		if (sd_lock_state ^ (sd_card->sd_lock_status & SD_LOCKED)) {
>  			sd_card->sd_lock_notify = 1;
>  			if (sd_lock_state) {
> -				if (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE) {
> +				if (sd_card->sd_lock_status &
> +				    SD_LOCK_1BIT_MODE) {
>  					sd_card->sd_lock_status |= (
>  						SD_UNLOCK_POW_ON | SD_SDR_RST);

The change is ok, but there is another improvement opportunity here on the
next line.  The open paren should be move to the next line, or the
parentheses around the expression should just be dropped.

julia

>  					if (CHK_SD(sd_card)) {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323113413.8040-1-anushkacharu9%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

