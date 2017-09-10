X-GM-THRID: 6464001620790214656
X-Received: by 10.28.207.5 with SMTP id f5mr570399wmg.32.1505022165212;
        Sat, 09 Sep 2017 22:42:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.65 with SMTP id b1ls126225lje.25.gmail; Sat, 09 Sep 2017
 22:42:44 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAWdO2wVIEkyg1oxMC/qq37/7nh4WUi+y4coN6s4YPRBNx0Q53iOYkBHN+VJg/m9mF8tybg
X-Received: by 10.46.32.39 with SMTP id g39mr552920ljg.17.1505022164261;
        Sat, 09 Sep 2017 22:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505022164; cv=none;
        d=google.com; s=arc-20160816;
        b=LCK+aK3dXlj/qzdSrGerzoUri6NqGG2ZtoBUvC1ghmqXS7XxHrgDWQS/Zk+EEDvKu5
         +y6sdByya7IeYZcBYzK77mgouy2P6TM1LBQUkHJDefUQSHQVEvARNbQql+fto3+OrLez
         RkISYXUiLo8BA5F5jQKmFrhkKmF7uQTU4b3rHvrc0WRz24E7FD9YQAXVjTIojbuksEP/
         waJBBYN0q/Woq3z91C6Zgen5io2+KXVFAtLEtC5TuyuJa08hdf3+CwZD0aDDRlr3CLoP
         fUvJ0dfn+xaGmNygvliYT8+ryH/cZxxBhXK++XRHfZpl3iH96+1vRV397eZz+1lOe0cJ
         lNKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=HdL8eq24fJwoexC9Sd3iFN+9cpnjA+1BQ+J+ugjS6WU=;
        b=Pje6vMjHx7SehLjZ6BtT54xMGsJ/WQhnX0MMfR4k11Zg6Hib7ecMch8IFfg6fCSpwq
         vYP9TYKdgJa8lMV9HTwVSu8dMHG7a+CgHA9CqymnV17qDlG333hl41QT1VxxIwUHtf5R
         xJuXSVjMWOWFzzdkmNkXQp2UbCIKf6u+rdkXD34PXLiqQoNbb5f+7CQVu7uxkVzqTC8G
         BtVBHL5r9l2zVGGyj9y9xbL+NzKiPD6Yc0/5tDPRZ3EtX0lklPmtBUzrlv8Z662FEyeW
         io+kT9QO7fYUs2vwC9JzH5Zpw5r2qLHUdwD1GjlM72/o4i7POQxnFA/U6Gkhl2LVw5Vq
         gTxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si275304wmg.4.2017.09.09.22.42.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 22:42:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,371,1500933600"; 
   d="scan'208";a="290331942"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 07:42:43 +0200
Date: Sun, 10 Sep 2017 07:42:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vc04_services: bcm2835-camera:
 Fix spelling mistake
In-Reply-To: <20170910042732.GA27064@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709100742300.2063@hadrien>
References: <20170910042732.GA27064@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Meghana Madhyastha wrote:

> Fixes a spelling mistake in the comments.
> Problem found using checkpatch.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
> index 63db053..db39900 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
> @@ -130,7 +130,7 @@ int vchiq_mmal_component_disable(
>  /* enable a mmal port
>   *
>   * enables a port and if a buffer callback provided enque buffer
> - * headers as apropriate for the port.
> + * headers as appropriate for the port.
>   */
>  int vchiq_mmal_port_enable(
>  		struct vchiq_mmal_instance *instance,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170910042732.GA27064%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

