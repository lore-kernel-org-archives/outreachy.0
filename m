X-GM-THRID: 6463416293324226560
X-Received: by 10.25.195.195 with SMTP id t186mr245859lff.10.1504881819527;
        Fri, 08 Sep 2017 07:43:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.29.15 with SMTP id d15ls26718lfd.25.gmail; Fri, 08 Sep 2017
 07:43:38 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDF7s+XSlWg27kdsmQuZlzPHRfNQl6JkNniL2UWD/z2b+TFGwJv4U6ygNH13kfMKU+uF96h
X-Received: by 10.25.207.83 with SMTP id f80mr271683lfg.0.1504881818144;
        Fri, 08 Sep 2017 07:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504881818; cv=none;
        d=google.com; s=arc-20160816;
        b=VeE0KhJRBFjtGXqqu5/Q9BQm/Dl5QmlZItBV7ZB+S8JQ1KOc1OqRqbMjSN3Ti/SQtF
         r8UPEoz1L/wZ37qlNwS9adYvFD9U3o16Ymtx9F5GOElIg5AL8cQhb+VJ0ZYFtyI1UVE2
         Kcyc3tib0V/tS16xkkKAi9K5ZyyWQCB0zL8b0FF125BSk5Zv3IdnX/X5eOwUt4Jmnngz
         kiusDyQrqai6LVvM8Z14igKQcwqHITFT6305TIrmADlKAtVX3ly3nfpCUdxDpd+Pebuj
         7TIl4zFjYnLmuFeC9joH2VQiiEm92zkKmB2D4teLqKu8mWPhN34KnqwnblCouLsQ2CX9
         30SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=gjV7swcv/ug0oa5UZnKPCkh6aOSxYW1fVYtXP4EOyDY=;
        b=gC4MUnu3/HJvya6+QP+t/XU/doOuL+2PckjvpUKzhqUlTfLxTi4Mc/9GqvWUCQkr5m
         7AOr9HD1XIo5+cXWh5oUYLvAl9tuxJ+Gl9s1aCAsDESDedp/fyFahtxw+ib48WsvPmAw
         TGWClZr9+PMb+L7xrknjAeYyK7vLFQdqN5UNSJ0HOM9FyvDnz6WMwO11kceSGvpkPvdg
         O1JT6JtxAtJXN3tyb/10rvQIdWYYjQLHUVhfaphGgbiIDaBaWFaaUcxpguIVmugbS/Z5
         JBPrzksjDi7LKy3sE5eFy1G4HiR58jKSWooHDzZOdFywGNDYdgKrLEPAWG4ybS9YW3Dp
         F5mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si117025wmg.6.2017.09.08.07.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:43:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,361,1500933600"; 
   d="scan'208";a="290198065"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 16:43:37 +0200
Date: Fri, 8 Sep 2017 16:43:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: typec: tcpm: Comparison to
 NULL changed as "!port->partner_altmode[pmdata->altmodes]"
In-Reply-To: <1504881248-26515-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709081639140.3165@hadrien>
References: <1504881248-26515-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Harsha Sharma wrote:

> Fixes coding style issue

Good job on getting the From issue sorted out.

The subject line change description is a bit verbose.  One doesn't want
to see the whole code, but rather the concept of what has changed.  If you
were going to tell someone about your patch, maybe someone ho knows about
C but not about the Linux kernel, what is the first thing you would say?

Afterwards, there is perhaps not so much to say about such a change, but
try to come up with something less generic for the log message, preferably
something that doesn't use "fix".  What is the purpose of doing the
change.  Just because a tool said to do it is not the best answer.  How
does it make the code better?

julia

>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/typec/tcpm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/typec/tcpm.c b/drivers/staging/typec/tcpm.c
> index 630fe75..9f4a5a5 100644
> --- a/drivers/staging/typec/tcpm.c
> +++ b/drivers/staging/typec/tcpm.c
> @@ -982,7 +982,7 @@ static void svdm_consume_modes(struct tcpm_port *port, const __le32 *payload,
>  	}
>  	port->partner_altmode[pmdata->altmodes] =
>  		typec_partner_register_altmode(port->partner, paltmode);
> -	if (port->partner_altmode[pmdata->altmodes] == NULL) {
> +	if (!port->partner_altmode[pmdata->altmodes]) {
>  		tcpm_log(port,
>  			 "Failed to register alternate modes for SVID 0x%04x",
>  			 paltmode->svid);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504881248-26515-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

