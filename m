X-GM-THRID: 6388469372118106112
X-Received: by 10.28.51.80 with SMTP id z77mr480997wmz.0.1487431851742;
        Sat, 18 Feb 2017 07:30:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls365653ljb.12.gmail; Sat, 18 Feb
 2017 07:30:50 -0800 (PST)
X-Received: by 10.46.77.88 with SMTP id a85mr1363586ljb.16.1487431850844;
        Sat, 18 Feb 2017 07:30:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si319825wmd.0.2017.02.18.07.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 07:30:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261091632"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 16:30:50 +0100
Date: Sat, 18 Feb 2017 16:30:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192e: Fix block
 comments warning
In-Reply-To: <20170218152351.GA28908@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702181628130.3112@hadrien>
References: <20170218152351.GA28908@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, simran singhal wrote:

> Align * on a line, to conform to the kernal coding
> style for block comments.

It is not clear what is means to align * on a line.  What line?

What has been done is to add a space at the beginning of the line.  But
then the line goes over 80 characters and doesn't line up any more on the
right side.  I would guess that you should have gotten a new warning by
having gone over 80 characters. Fixing one warning should not introduce a
new one, especially for something purely decorative, like this.

julia

>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_HT.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
> index 6eb018f..48d101a 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HT.h
> +++ b/drivers/staging/rtl8192e/rtl819x_HT.h
> @@ -11,7 +11,7 @@
>   *
>   * Contact Information:
>   * wlanfae <wlanfae@realtek.com>
> -******************************************************************************/
> + ******************************************************************************/
>  #ifndef _RTL819XU_HTTYPE_H_
>  #define _RTL819XU_HTTYPE_H_
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218152351.GA28908%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

