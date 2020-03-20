X-GM-THRID: 6806226770839207936
X-Received: by 2002:a19:cb14:: with SMTP id b20mr3286734lfg.138.1584698288904;
        Fri, 20 Mar 2020 02:58:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8189:: with SMTP id e9ls963578ljg.4.gmail; Fri, 20 Mar
 2020 02:58:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYd2zAMea19x1fBYRmtxO3KT1y8ijOxouuJNLveBooZQ9KtvpCpB/OFW+Bm+m7gwwl9Y8f
X-Received: by 2002:a2e:b16c:: with SMTP id a12mr5019300ljm.83.1584698287273;
        Fri, 20 Mar 2020 02:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584698287; cv=none;
        d=google.com; s=arc-20160816;
        b=psGymaCVTH230Wflu+9Yk4AOTxn1gAbA/RU7u+VnhUK9FsxwPR5fw6QEyMhsVYg7dU
         mPHR99X6TJxzo4hiz3NEtbGG3WjOgKIEr9X+3qntUILLsesQ9as5dpoTZiPftGbhf0GN
         BcaeEwe2IkPKPOUTWNJpTC6j0kMb0Ll9md1FfVEns9byeXygnuSu8y6fhwLi60N8Uc1h
         V/kpDRu1OwzrDXMqnllbjzQIeJOUjSFB1ZT7Xqu+Su07OOxal1miEClhWdOoZnYdyBEN
         RrwQYRNvWjP74X3gRSmrWXENs8mtp9h6TkqVjzDW2WRotSrVk7EABXTXolo9KQQCpm9Y
         Mi6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=B+m7X6eqOvq2Pupe35XQ7WOcOPTmgwmNq1I7sgvOc5c=;
        b=e4Qa7gUsVj8NIprKpp0TTmiO995ilE99pVqPy0eQj/CNL/4E8MnsKm5TvwiGlU2Bzt
         zgVYMhBEaHUXYHGvv+lyhUkoHduPOG3Dxht5ie1EnTUyPI6e0g1J0+gfIotAIqrDP73n
         XkL8H8QvBRmJDHY3LIxs/gJXHfzmU53u9n09Fdoeg+yt0z4CP5nocU2vFgmcjS3c2DUA
         A1oXCLfVdIL9nOWuMb8dEP66B21aoAMNM2iV6GbU8cvmA+cU9tAs67c7+CISuOKf+yqy
         FM6XnzajQelBvjnFJc6F4zfu7QQjl8X99dsctZ77D/6yvel0DcBwSHFjeT6OSTbXVX8A
         yWtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m11si167810ljj.2.2020.03.20.02.58.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 02:58:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,284,1580770800"; 
   d="scan'208";a="441325829"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2020 10:58:06 +0100
Date: Fri, 20 Mar 2020 10:58:05 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, Tim Collier <osdevtc@gmail.com>, 
    Nikola Jelic <nikola.jelic83@gmail.com>, 
    Moritz Muehlenhoff <jmm@debian.org>, Stefano Brivio <sbrivio@redhat.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix third argument
 going over 80 characters
In-Reply-To: <20200320095459.2409384-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2003201057090.3039@hadrien>
References: <20200320095459.2409384-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 20 Mar 2020, John B. Wyatt IV wrote:

> Create a new 'status' variable to store the value of a long argument
> and make the code easier to read.
>
> Issue reported by checkpatch.
>
> Note: the status variable is assigned after a needed byte order
> conversion for usbin->rxfrm.desc.status.

I'm not sure to understand the purpose of the note.  This is to justify
why you don't put it in another place?  Since you are just naming a long
expression, the only reasonable place to put it would seem to be where
that long expression occurred.

julia

>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index f8485601aead..9016e6b32efc 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -3252,15 +3252,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
>  	struct hfa384x *hw = wlandev->priv;
>  	int hdrlen;
>  	struct p80211_rxmeta *rxmeta;
> -	u16 data_len;
> -	u16 fc;
> +	u16 data_len, fc, status;
>
>  	/* Byte order convert once up front. */
>  	le16_to_cpus(&usbin->rxfrm.desc.status);
>  	le32_to_cpus(&usbin->rxfrm.desc.time);
>
>  	/* Now handle frame based on port# */
> -	switch (HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status)) {
> +	status = HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status);
> +
> +	switch (status) {
>  	case 0:
>  		fc = le16_to_cpu(usbin->rxfrm.desc.frame_control);
>
> @@ -3319,7 +3320,7 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
>  	default:
>  		netdev_warn(hw->wlandev->netdev,
>  			    "Received frame on unsupported port=%d\n",
> -			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
> +			    status);
>  		break;
>  	}
>  }
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200320095459.2409384-1-jbwyatt4%40gmail.com.
>

