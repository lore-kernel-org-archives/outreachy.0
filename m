X-GM-THRID: 6669707520918945792
X-Received: by 2002:a2e:447:: with SMTP id 68mr976934lje.0.1552912437388;
        Mon, 18 Mar 2019 05:33:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43af:: with SMTP id t15ls1482424lfl.8.gmail; Mon, 18 Mar
 2019 05:33:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3aa8NDx+YFj73LNyWlKR4yWFrYgSLymFJHQW6kGXzxnXY0zWSTc7eL9lWldzOKoKHqzsW
X-Received: by 2002:a19:3809:: with SMTP id f9mr843815lfa.1.1552912436684;
        Mon, 18 Mar 2019 05:33:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552912436; cv=none;
        d=google.com; s=arc-20160816;
        b=nUFFfJHeaUlpWUwe1hZxb5i8MqgLIomED3n4ka2f6x/tyz1f7OJbBrzpx0JQHlZRaU
         MFEXA/xypmzgaOCoWZtFWw+VJLSuD4LUQJ5LItnKNciiXHtCeAA1nJR4zJJ7WzQQwacy
         mautgC7lWV5OYPrytyorwjcoeBy/lIs80/XUh3FJijgKnko1uYjg1rNe0hdjtC97NOip
         dM1aglo9tEDxuexBI12NrNgNPZVRjT2fpSBk4224epcbaXGYrMCb3+QMSiLH58oMHiAO
         sAPC5K7s+RKUSuvO8PsQh9eQ2d78nPIfZS5EwEYttWL9GnvVH7mXc0bhgf4limlo02jE
         W2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-data;
        bh=fzbrx0h6nxQBfdgfv7Ir/OKDGpIM2J3It8wbm4K5fsY=;
        b=aLR5c8i8q3P2OQX6YOy9GzYh6cb6RWjHMiY4mfq9QdnlcbLyytkZ7FFor8kPrBqqiE
         l03QqoUEDky4ETqTiwPERsF0xesJZfywEgjMsz0tRqFM+hqRX5TgoyZ+x6sQmWNtwLnP
         92AzgMnO7v3a2rjB9k2cO5Vj4saa3i/W1828zU3WEQCX9EaOwnCectrSeTKT8g61N0J6
         7g5N/WlhCSvXeYlQNknC+3Puw1DG9yn0oy6McuMuUyYoytK2owt12k1hOjWGGGsvBHt7
         zyWL5RLjBLSTRYBcH7fZt0luQoyGWE6LiW1eUJe6T2BFB+ro1tPPwNncq+ENsLqL0vha
         fs3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y13si331878lfg.4.2019.03.18.05.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:33:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
IronPort-Data: A9a23:MELrpq+/pQiKbEkuI5eeDrVtTnXEEYPSOkUsrfhEo5Op9PawnwHjus
 zJJmGyUCKz0BmmbTDph5vgo2XAZT2YX0zpwscWetT8ZqE25j5Url/9Evs4kk6AQXheTrfne9
 1rRAkSd5Bn03dx6h+RDXm9q4eYSL5Euk0S/Asqon/5aOu+TQ7DQhm+/DVTe3vhQTuPZkbS2R
 pNEj+MNPXZKgAoNyk7PiRKoP7Ew5Q/vRIU9vpO7COYB0ploFWCOffhx4jWb0ihnKtgLI9w+j
 pycWHUSgaknwqBOZnhgtmPHy0bzr4dWDwn6dkkBlUu/DZuqYz04Y61ulAx3vz78CYCruepGP
 /DIc9ltquArs+qOoIxzHvRmotIMJauY/yc3tBdvV/xWVTmFUHwlDLRgFgk63r4cceZ3kgaSY
 VnyN189kqfOlE/NSQZekHo17y1IGoRlX3AGu9TYGJKchdrGarOz94rWCokicS4P7OqWzPaBB
 V2+jaXSlO4meHdPA7iXg3WQkZUdZFMyxlpMhdNmWM7qOUCnWuU6mz6fCFLYPmZ2WVaU3l7D0
 aXOqB4qnGElzIHUNS84F9LBFtSt8bR8Uop4qw/5gTXRbibWe3P4IACGzKpVEyHyu6XoDeodf
 4NXqK7ttxleu4W1qXJq0Ycf5OlNIjsmapjHOhK20AooBukPFK+Wch95JG10qguEs6BhVayUk
 MsI1H7HUSeArnY3s1/5CgCQzAHcB8HJfQwULDU9y8BJ0g+Cyckr8eM7qBWWcndmbWf0SuEG1
 vixA==
X-IronPort-AV: E=Sophos;i="5.58,493,1544482800"; 
   d="scan'208";a="374513913"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 13:33:55 +0100
Date: Mon, 18 Mar 2019 13:33:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: rtw_pwrctrl.c:
 Fix a comparision warning.
In-Reply-To: <20190318123121.11548-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.20.1903181332560.3832@hadrien>
References: <20190318123121.11548-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Mar 2019, Sanjana Sanikommu wrote:

> Replace the constant at the right side of comparision.

Replace suggests that there was one cnstant, and now you want to use a
different one.  What you did would be better described as "move the
constant to the right side...".

julia

> Issue found by checkpatch.pl semantic patch results for rtw_ap.c
>
> WARNING:Comparision should place the constant on the right side of the
> test.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> index 6a846d08d449..7b16632048b7 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> @@ -374,7 +374,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
>  	}
>
>  	if (pwrpriv->pwr_mode == ps_mode) {
> -		if (PS_MODE_ACTIVE == ps_mode)
> +		if (ps_mode == PS_MODE_ACTIVE)
>  			return;
>
>  		if ((pwrpriv->smart_ps == smart_ps) &&
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190318123121.11548-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

