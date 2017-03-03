X-GM-THRID: 6393291379359875072
X-Received: by 10.25.150.212 with SMTP id y203mr479932lfd.30.1488554467873;
        Fri, 03 Mar 2017 07:21:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.141 with SMTP id 135ls65141lfa.3.gmail; Fri, 03 Mar 2017
 07:21:05 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr544464ljb.28.1488554465824;
        Fri, 03 Mar 2017 07:21:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si93024wma.0.2017.03.03.07.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:21:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,237,1484002800"; 
   d="scan'208";a="263020606"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 16:21:05 +0100
Date: Fri, 3 Mar 2017 16:20:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, david.kershner@unisys.com, 
    sparmaintainer@unisys.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wlan-ng: Replace "the
 the " with "the"
In-Reply-To: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703031620400.3490@hadrien>
References: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You should have a cover letter for the series.

julia

On Fri, 3 Mar 2017, simran singhal wrote:

> This patch replace "the the " with "the". The replacement couldn't be
> automated because sometimes the first "the" was meant to be another
> word.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 82d3a70..3ef85ac 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -1310,7 +1310,7 @@ void prism2sta_processing_defer(struct work_struct *data)
>  		/* This one indicates that the MAC has decided to and
>  		 * successfully completed a change to another AP.  We
>  		 * should probably implement a reassociation indication
> -		 * in response to this one.  I'm thinking that the the
> +		 * in response to this one.  I'm thinking that the
>  		 * p80211 layer needs to be notified in case of
>  		 * buffering/queueing issues.  User mode also needs to be
>  		 * notified so that any BSS dependent elements can be
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488554140-28805-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

