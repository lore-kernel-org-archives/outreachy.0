X-GM-THRID: 6620567997579788288
X-Received: by 2002:a5d:6251:: with SMTP id m17-v6mr2458549wrv.7.1541486710834;
        Mon, 05 Nov 2018 22:45:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5287:: with SMTP id c7-v6ls5868540wrv.14.gmail; Mon, 05
 Nov 2018 22:45:10 -0800 (PST)
X-Google-Smtp-Source: AJdET5ei54Ex4obsdLiW6V1SthMGZfkqDPeolRgczft/nv2h6pnGk4v76TVkqxCvhfKWDWAuGffU
X-Received: by 2002:a5d:5287:: with SMTP id c7-v6mr2474364wrv.14.1541486710090;
        Mon, 05 Nov 2018 22:45:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541486710; cv=none;
        d=google.com; s=arc-20160816;
        b=cqLpV2iq/xH1YfkbnIc+7r9VGAGf57ikc44UoyvgWkBdAW4sFWDGl1y+dvrJrEscAW
         1eLxGN1QX2KMwLOwYL3PQ9rR5kDj1jJMsAK4vWPVLIDb6R+cYai+md1c2wUXzREQ4mjt
         iyYGXys+M6LWkBygIGC/WqZlPR6UhvQFzYfZgjiZuuy4uqUV/Z725TtAcjudVlceI77l
         sruzV541fPIxg+XuZMbK7PSyeCzqzt/bFvOuxV7QXD4/eOas2ZGreyh7Qcg+mkssieAn
         IfoIRs8bFn5BCn4U3HZvrXZJz6oN7NgMbp+BKoXMxANi2ciXIBam9gjSVDZgpTgryT5c
         BUNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MIrNukbEF1BS6ZB2Z8qdSZd58jQZBXn+eIMH0tuMRkw=;
        b=Hrwmp0nT/X4pOAVa3f/Y4jz7M2cV1IEK3HPTRohE+NTOSob7C5/QXDodPeL3YfDOr2
         ca11YCKBJqbcvKvpndEZHAvLy/hrZs3aUQPIhz7nZ63qXTsCns8eZBg4f4PLYIqFJUXl
         lYqZ12m9EpCIHlRwnMK0R6g6gEsJRAxBwGQR8d9LdEgm08O85VD+I17ywNhRkjp9CTJG
         M0ugGmPi5QRkbBORdr6TrwvKKs5Bjf/fsI2ExTj09gz5ImLMCkSS9RIXnC2+BxlFd8XC
         2BJxLdtaKorp/034zQgqC8pqMdNYuXOG09s6Xh9AUqgKP4DiLhcAeXNf0YWUwJHxOn99
         3NpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z139-v6si28249wmc.0.2018.11.05.22.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 22:45:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,470,1534802400"; 
   d="scan'208";a="284455433"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Nov 2018 07:45:09 +0100
Date: Tue, 6 Nov 2018 07:45:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: move comment up to
 reduce 80 chars limit
In-Reply-To: <20181106022504.GA12155@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811060744320.2437@hadrien>
References: <20181106022504.GA12155@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Nov 2018, Ioannis Valasakis wrote:

> Move two line comments up in order to reduce the 80 chars exceeding
> limit. Reported by checkpatch.

"in order to avoid exceeding 80 chars" would be a bit clearer.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/speakup/spk_priv_keyinfo.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/spk_priv_keyinfo.h b/drivers/staging/speakup/spk_priv_keyinfo.h
> index cc99fcd1bc6e..493f4ebb3473 100644
> --- a/drivers/staging/speakup/spk_priv_keyinfo.h
> +++ b/drivers/staging/speakup/spk_priv_keyinfo.h
> @@ -61,11 +61,13 @@
>  #define SPEAKUP_HELP		0x2d
>  #define TOGGLE_CURSORING	0x2e
>  #define READ_ALL_DOC		0x2f
> -#define SPKUP_MAX_FUNC		0x30 /* one greater than the last func handler */
> +/* one greater than the last func handler */
> +#define SPKUP_MAX_FUNC		0x30
>  #define SPK_KEY		0x80
>  #define FIRST_EDIT_BITS	0x22
>  #define FIRST_SET_VAR SPELL_DELAY
> -#define VAR_START		0x40 /* increase if adding more than 0x3f functions */
> +/* increase if adding more than 0x3f functions */
> +#define VAR_START		0x40
>
>  /* keys for setting variables, must be ordered same as the enum for var_ids */
>  /* with dec being even and inc being 1 greater */
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181106022504.GA12155%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

