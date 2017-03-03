X-GM-THRID: 6393394520206082048
X-Received: by 10.25.204.21 with SMTP id c21mr787896lfg.19.1488578543064;
        Fri, 03 Mar 2017 14:02:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls1072031ljf.34.gmail; Fri, 03 Mar 2017
 14:02:22 -0800 (PST)
X-Received: by 10.25.193.213 with SMTP id r204mr796454lff.24.1488578542531;
        Fri, 03 Mar 2017 14:02:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si181106wma.0.2017.03.03.14.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 14:02:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="263060464"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 23:02:21 +0100
Date: Fri, 3 Mar 2017 23:02:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Delete tab to indent
In-Reply-To: <20170303215557.10077-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703032301210.2133@hadrien>
References: <20170303215557.10077-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 3 Mar 2017, Tamara Diaconita wrote:

> Deleted a tab to fix the checkpath.pl issue:
> CHECK: indent should use tabs where possible.
>
> Deleted an extra tab to indent the code.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 1a3e348..3e5f012 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
>  			if (index >= MSG_FORMATTED_START &&
>  			    index <= MSG_FORMATTED_END &&
>  			    !fmt_validate(speakup_default_msgs[index],
> -			                  newstr)) {
> +				    newstr)) {

Actually, checkpatch was complaining about the number of spaces in front
of newstr, and not the number of tabs.  newstr is in the right position in
the original code.  It just needs to be put into that position using tabs
as much as possible.

julia

>  				kfree(newstr);
>  				return -EINVAL;
>  			}
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303215557.10077-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

