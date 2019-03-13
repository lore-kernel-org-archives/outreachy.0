X-GM-THRID: 6667995620579475456
X-Received: by 2002:a1c:cfc8:: with SMTP id f191mr19679wmg.17.1552514988711;
        Wed, 13 Mar 2019 15:09:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:63d6:: with SMTP id x205ls433096wmb.11.gmail; Wed, 13
 Mar 2019 15:09:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaDqqgjNQRp1fLomD9IaFG9O2N3atBaI93SCw0i8ATt3Cou+lzpjtwf8/jO6o5CZ1Q3arh
X-Received: by 2002:a1c:f414:: with SMTP id z20mr23394wma.18.1552514987813;
        Wed, 13 Mar 2019 15:09:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552514987; cv=none;
        d=google.com; s=arc-20160816;
        b=NOtfXE1IvKmyDb1CTKsCZnJ7YxYw7ebkPXDypmtQS7WQbJqn1VYnJTdPorDL+QR+dQ
         voMWrMG+8mI89+1Fi6NRpRqy+thL1dU9hpYXFf8hkcuEdHxKxRt9f719f3GItNTwMYw0
         /OE6WEupOQR5eofPe1hmVQDFb8iK865Kx3cPXIm/RrbIjfQkL4HnRhulPLX4moPoMIKx
         g+g33tcPMNGshNOMtVybFOo94WWShn2kQmn0XYzZfXLr33lBCqJVAQ2IVvzQj7dcQk3D
         MiEob7G0NLZgD6IPlwWGNvwj7IX3sW4NsFVTGfdfEb28eQthlZ4shWVKjIaNIj3gdQKM
         1TUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CfQZAt8tAIgdMC55geMLdDfMfO21gTxhnb5+kj1b0dM=;
        b=X9svQOUwpqeEUgTYFpfM/CdTU8ShnfHYblnOtvpFKBvT6QTPIoyc3SOlZhC99yaFln
         JZCCRtV/AY6516UyBzDxpVr++mwxxYaeXH6/om/tyz1aenvZlO24aBMQgxBrA9ZApK5y
         aXBll3OsdNKmqetwdmLH8UhhoKmaEdEL77B0XTD8uZ34+duuMwTAPqi4aQ5gE0xfWNj3
         m7zVpcHeVW9aPuXozXQvPj/Q5EqLefvTWZIH+5AqEkq2d560O/miTva65RuXihR93Qs6
         xMW7x6qRaROvkWnOh9yPcriHo1Z9/sRxUjFQPEamKKx/ltiajXW4c1IpSR5J/UDBqS24
         yLSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v189si5506wma.2.2019.03.13.15.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 15:09:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,475,1544482800"; 
   d="scan'208";a="299169655"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 23:09:46 +0100
Date: Wed, 13 Mar 2019 23:09:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: line over 80
 character limit
In-Reply-To: <20190313214825.7089-1-brandonbonaby94@gmail.com>
Message-ID: <alpine.DEB.2.21.1903132308150.2515@hadrien>
References: <20190313214825.7089-1-brandonbonaby94@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Branden Bonaby wrote:

> Align Macro and function to prevent them from going over
> the 80 character a line limit for readability.
> WARNING: line over 80 characters

I'm not sure why the word macro is capitalized.

It looks like the #define still goes over 80 characters.  I think that a
lot of whitespace could be dropped.  Usually #define and the macro name
are right next to each other, for example.

julia

>
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 992ebaa1071f..7a36e82bef57 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -517,7 +517,7 @@ struct hfa384x_tx_frame {
>  	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
>  	HFA384x_TXSTATUS_RETRYERR))
>
> -#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
> +#define	HFA384x_TX_SET(v, m, s)        ((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
>
>  #define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
>  #define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
> @@ -1369,8 +1369,8 @@ struct hfa384x {
>  void hfa384x_create(struct hfa384x *hw, struct usb_device *usb);
>  void hfa384x_destroy(struct hfa384x *hw);
>
> -int
> -hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime, int genesis);
> +int hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime,
> +		       int genesis);
>  int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
>  int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
>  int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313214825.7089-1-brandonbonaby94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

