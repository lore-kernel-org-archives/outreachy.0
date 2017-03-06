X-GM-THRID: 6394380881452072960
X-Received: by 10.25.202.67 with SMTP id h3mr874085lfj.30.1488808193593;
        Mon, 06 Mar 2017 05:49:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.83 with SMTP id o80ls319745lff.53.gmail; Mon, 06 Mar
 2017 05:49:53 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr1848535lfg.13.1488808193071;
        Mon, 06 Mar 2017 05:49:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si3310wmg.3.2017.03.06.05.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 05:49:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,253,1484002800"; 
   d="scan'208";a="215736489"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 14:49:40 +0100
Date: Mon, 6 Mar 2017 14:49:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: speakup: i18n: Delete
 tab to indent
In-Reply-To: <20170306134330.8965-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703061447520.3078@hadrien>
References: <20170306134330.8965-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Tamara Diaconita wrote:

> Added a space to align the code.
> Added a space after ':' in the subject of the patch.
> Deleted '.c' in the subject of the patch.

I think that these are all changes since a previous version?  The commit
log should explain the changes since the original version, in Greg's tree.
Updates since the previous version should go below the ---, so that they
will be dropped from the commit history.  They are only meaningful
to people who saw the previous version.

julia


>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 1a3e348..11f1418 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
>  			if (index >= MSG_FORMATTED_START &&
>  			    index <= MSG_FORMATTED_END &&
>  			    !fmt_validate(speakup_default_msgs[index],
> -			                  newstr)) {
> +					  newstr)) {
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306134330.8965-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

