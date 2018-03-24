X-GM-THRID: 6536479698699943936
X-Received: by 10.28.126.148 with SMTP id z142mr1572494wmc.30.1521903168062;
        Sat, 24 Mar 2018 07:52:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.156.193 with SMTP id h1ls465016wre.3.gmail; Sat, 24 Mar
 2018 07:52:47 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs2ZUr/WmUS8tH7Z1KE99X5GuX/w/mMswhnm1XmoK75VeLvSE9rO6X0ymCoLBHbPIC5fVTO
X-Received: by 10.223.156.138 with SMTP id d10mr618837wre.17.1521903167302;
        Sat, 24 Mar 2018 07:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521903167; cv=none;
        d=google.com; s=arc-20160816;
        b=TJepvLSync6UtylHPkSz8okM+D5ttorIy/anWHmt4LIY4xY96KipIxoyC8efIkuIyL
         jBP7ptqCe5DWhEni6GHUHRDJ7yXl010XvHbNmYz+K0zyTd2zVTlW4Oi7/sbenvwkuD39
         lLe0cxQXexaydarRcs+JGRcLcCNZKb9YrKLgSDQALpfLycx8VSimibLDhzGHbBBaxeDZ
         irL95Y9kRJgOIfIbLyOemUd1dmDf3TT99nbmO5doWgDKOlwfNkw5NsqhdBa7Aqlljbk3
         sMR2SR7/PagAGrL+LRCcL76Ak3EE0ZqHYc0IyPIyQmCxk8CSRKRlCdpjJCfgFzApWn5L
         92hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=WU9wFww5QBWWqpHSqktMP+UT7GafHEaQPDfHhlMhpUM=;
        b=GMhKq7Vanp+YexeeAvw3fe7KSsEb3CH6iGqGiLJcjQR0EYq4wsrr5tsmiyTXQMRMhc
         2rSCJqB+0LNyF5kZwqCduh36ZJe/+u7LJO7G1EF4cK5nd90ZzfsLDfkXhQzdXQsh6LY8
         JvQTvKHjC2bZ8deihOgh4t89qi7jfO/L1LelE2kSfmFuYPOwSuis2q+tGSLBph18sqax
         7wTzakBPqogb4vnQ6ArQRuhPnljLjR9OhWiaBIGqeRKG5c/Qa+GKAhUhUn5A06KLvJd/
         XrLf585vjJw2Rf3FZhKGZM0JS8c2licDvzUUKiljzLG7maqhbrgnFaVbJP8jcumwVZTU
         +ApA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d12si237982wre.4.2018.03.24.07.52.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 07:52:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="259667164"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 15:52:46 +0100
Date: Sat, 24 Mar 2018 10:52:43 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/5] staging: vt6655: Delete unused
 typedef enum _CARD_STATUS_TYPE
In-Reply-To: <1521892758-27981-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803241052271.6044@hadrien>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <1521892758-27981-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Delete unused typedef enum _CARD_STATUS_TYPE.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v3:
>  - delete the typedef.
>
>  drivers/staging/vt6655/card.h | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> index 07d9fa0..5884fd5 100644
> --- a/drivers/staging/vt6655/card.h
> +++ b/drivers/staging/vt6655/card.h
> @@ -39,12 +39,6 @@
>  #define CB_MAX_CHANNEL_5G       42
>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
>
> -typedef enum _CARD_STATUS_TYPE {
> -	CARD_STATUS_MEDIA_CONNECT,
> -	CARD_STATUS_MEDIA_DISCONNECT,
> -	CARD_STATUS_PMKID
> -} CARD_STATUS_TYPE, *PCARD_STATUS_TYPE;
> -
>  struct vnt_private;
>
>  void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521892758-27981-2-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

