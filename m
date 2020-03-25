X-GM-THRID: 6808244889450446848
X-Received: by 2002:ac2:5608:: with SMTP id v8mr3396617lfd.189.1585168736980;
        Wed, 25 Mar 2020 13:38:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls648881ljk.8.gmail; Wed, 25 Mar
 2020 13:38:55 -0700 (PDT)
X-Google-Smtp-Source: APiQypJZ3h5qsMV9kjua9h39lFCPNTnQB3CDv25Cy5asHCwUUq8DhfY6DOJokMcVe83ISfeYf5v/
X-Received: by 2002:a2e:9ed6:: with SMTP id h22mr3203532ljk.211.1585168735446;
        Wed, 25 Mar 2020 13:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585168735; cv=none;
        d=google.com; s=arc-20160816;
        b=JEl6otviMIUjI4kyewGQWogX2cbheyR6At1h2UYwcdJnF4YBq/9HcZDSwlh/QVZb6H
         4ZGLT/ISyLVtml/5/8b0JdwbHzfEgjfHuuXQw1Kb5JE6VjXrLb0WCw00GQus+cJV4qMt
         NVu36jO6Hp/Runy7yWxA0uDYJIhXnTzZfCAChXOzJCiD6qf7OT+VV0VDf36FCoGL26oe
         /RUIXYKWHA6Rj9LbpFR4Em6ZwNzP/bxsy1WLSwP3YkWIRYmTwpsCfCWi06zPrt1F3lkE
         P2CWU1gU1bTYvz7oEnuYTXaFXpDqPim+YB/X5v94TZtGwfLI3j/btmXf9ExHr8a+UgbY
         Hfvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=75wKnGFydDjbxbUvSFBfbHjSffP6pu8vlsvNU1qorhg=;
        b=0YNYIIdpYzxeQ9Y+1OJSeaVfyS6F0nk06eWqqxhbaoeNi6O22dvOhakxT85pNEoZWv
         8riUiWAwdAJ8B+KuW++lpUp1PlsZbB2JKleOFlro46eEyGr0Ptnq3TZQFN68Xzw6c3AB
         X4hi0R+Dq85Cr7THaD2R2iDGssp1Jh93/+F+C12aRgN5UJfJTW9x+OdIItyLbhTJW8HJ
         MPuYoC3lz67QK7fbbjJhQwESMf9gcq1A7PtxdoGGcgf/n4Gy4GUyh5hUWlaAcfL+Js/b
         6r4QTGmHWcEtFlAxeH3o045dO2iqCY0eS9Mykbrchg3CFofIe4nnQ2T/TviDaPSC7NuN
         3LSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s17si10467ljm.5.2020.03.25.13.38.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 13:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,305,1580770800"; 
   d="scan'208";a="442272184"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 21:38:54 +0100
Date: Wed, 25 Mar 2020 21:38:54 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon-usb: line over 80
 characters
In-Reply-To: <20200325202714.GA14306@siyah2>
Message-ID: <alpine.DEB.2.21.2003252137450.2306@hadrien>
References: <20200325202714.GA14306@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 25 Mar 2020, Gokce Kuler wrote:

> Moved from the comma character to the bottom line after
> for it exceeds 80 characters.
>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
> index a73289ba..dbafd46 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.c
> +++ b/drivers/staging/octeon-usb/octeon-hcd.c
> @@ -2641,7 +2641,8 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
>  						     hcintmsk.u32);
>  				usbc_hcchar.s.chdis = 1;
>  				cvmx_usb_write_csr32(usb,
> -						     CVMX_USBCX_HCCHARX(channel, usb->index),
> +						     CVMX_USBCX_HCCHARX(
> +						     channel, usb->index),
>  						     usbc_hcchar.u32);

This is confusing,  It is had to see which arguments go with which
function.  I don't know if it would be acceptable to add a few spaces in
front of channel.

julia

>  				return 0;
>  			} else if (usbc_hcint.s.xfercompl) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325202714.GA14306%40siyah2.
>

