X-GM-THRID: 6886434353715347456
X-Received: by 2002:a2e:3a08:: with SMTP id h8mr1112350lja.125.1603374612393;
        Thu, 22 Oct 2020 06:50:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9bc1:: with SMTP id w1ls356247ljj.4.gmail; Thu, 22 Oct
 2020 06:50:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuTnXApJjTLMR3OmtoibGPXrcYyFizyuI1ZthUKiKZKDNEWxTTMpRLYctmaaNqqVoilas+
X-Received: by 2002:a2e:9114:: with SMTP id m20mr997340ljg.203.1603374608982;
        Thu, 22 Oct 2020 06:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374608; cv=none;
        d=google.com; s=arc-20160816;
        b=QsA8za2oCw2lsFQGj/ri2PHCI8R9hADxIYjcjKIYCoaThWNln7Wt5TXKAFu9wth4L2
         gIqaiiCrTUXbptmknGZJnpgmbQ4OC4HAbqjVLiobGb33CgGUUAH3PYzw4y8DlFDNd06q
         P0ly7fB68LGGL4y4xOCv9VNc3K+k84cJkfcqk+ZHaVYUXJ98HYYh4wmhhVA/463fefla
         J2dGpb+WB2thooxipsPUbZVHG0TgfKWiSPJSPFU+IuWHV/2Vtmjw+SBLNb1n4Aird77b
         l1crq2Giw2OfvACf0TploEO/oIWCVwUS6oCe0zvTzH2u7duWlklQviVQg/SjObql3eYT
         4LMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/chwWVnsW9jlKAeB+weKqXEhdzUZl5g00NF3jXf8bIg=;
        b=GIAt2F8gEjktPxMF8xw4WpiJUONldv0bGyqBLue5MAcLXuKUbjJ+eK/ERX0opHpg6+
         iR1bf49pa0Df0YJWpoVg4LJHnaKdkUpClYItyPKJ7yjQGS1tC2dRkGRML6p2vO3upjVx
         c8iC2eWh7Ab4RZnNEWp2hbftZ2p2yirhwoE8KRn+UXQeIWpdFbdZKlVAvKejhRkrZcxO
         9GNfBuwOO1MOMnmpcDApSJE85trJ8WeyNesigrrxMujvECGVwvA6I7BmMmBkkvbQ1uv2
         Wf+EQqPPF0AOF1W4zSED2QWAPN2pMFAOvO2k9Vis0NetrI6njI+aWw7YUmDkYf5EzzOp
         uB+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d18si40825lfb.9.2020.10.22.06.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,404,1596492000"; 
   d="scan'208";a="473874968"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2020 15:50:08 +0200
Date: Thu, 22 Oct 2020 15:50:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Izabela Bakollari <izabela.bakollari@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/wlan-ng: Fix line alignment
In-Reply-To: <20201022132218.235744-1-izabela.bakollari@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010221547500.5113@hadrien>
References: <20201022132218.235744-1-izabela.bakollari@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 22 Oct 2020, izabela.bakollari@gmail.com wrote:

> From: Izabela Bakollari <izabela.bakollari@gmail.com>
>
> Fix code alignment. Issue reported by checkpatch.pl

Try to find something other than "Fix" to describe what you have done.
What kind of change have you made and why is it a good idea?
>
> Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> index a908ff301707..1bd36dc2b7ff 100644
> --- a/drivers/staging/wlan-ng/prism2mgmt.c
> +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> @@ -1198,8 +1198,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  			if (wlandev->netdev->type == ARPHRD_ETHER) {
>  				/* Save macport 0 state */
>  				result = hfa384x_drvr_getconfig16(hw,
> -						  HFA384x_RID_CNFPORTTYPE,
> -						  &hw->presniff_port_type);
> +								  HFA384x_RID_CNFPORTTYPE,
> +								  &hw->presniff_port_type);

I think that the code was nicer before.  Staying inside 80 characters is
worth something, and having the arguments lined up with the ( seems lees
important in this case.  It could be a concern if the arguments eg ended
up right under the function name, because that would be easy to misread,
but that is not the case here.

julia

>  				if (result) {
>  					netdev_dbg
>  					(wlandev->netdev,
> --
> 2.18.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201022132218.235744-1-izabela.bakollari%40gmail.com.
>

