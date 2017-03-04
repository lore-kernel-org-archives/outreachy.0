X-GM-THRID: 6393400648864366592
X-Received: by 10.46.80.1 with SMTP id e1mr1036682ljb.10.1488608848559;
        Fri, 03 Mar 2017 22:27:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.67 with SMTP id 3ls1096904ljw.43.gmail; Fri, 03 Mar 2017
 22:27:27 -0800 (PST)
X-Received: by 10.25.195.206 with SMTP id t197mr972451lff.11.1488608847407;
        Fri, 03 Mar 2017 22:27:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b186si512155wme.1.2017.03.03.22.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 22:27:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,239,1484002800"; 
   d="scan'208";a="215532137"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 07:27:20 +0100
Date: Sat, 4 Mar 2017 07:27:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging:speakup:i18n.c: Delete tab
 to indent
In-Reply-To: <20170303221944.10488-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703040726010.2062@hadrien>
References: <20170303221944.10488-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Tamara Diaconita wrote:

> Fixed the issue by using tabs over spaces to indent the code.

This looks like the same change as you proposed before.  The newstr needs
one more tab in front of it.

Also, the v2 needs to be in the message itself.  If you forget it, just
send another version of the patch with the v2 in it.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303221944.10488-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

