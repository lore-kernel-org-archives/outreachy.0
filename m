X-GM-THRID: 6394684558131855360
X-Received: by 10.46.19.1 with SMTP id 1mr228958ljt.4.1488902931280;
        Tue, 07 Mar 2017 08:08:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls105788ljf.34.gmail; Tue, 07 Mar 2017
 08:08:50 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr230610ljb.24.1488902930697;
        Tue, 07 Mar 2017 08:08:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si1452469wme.1.2017.03.07.08.08.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:08:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,258,1484002800"; 
   d="scan'208";a="263551973"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 17:08:50 +0100
Date: Tue, 7 Mar 2017 17:08:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: kobjects: Delete
 comparison
In-Reply-To: <20170307092155.14802-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071708230.3150@hadrien>
References: <20170307092155.14802-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Tamara Diaconita wrote:

> Delete comparison in 'if' structure to fix the checkpath.pl issue:
> CHECK: Comparison to NULL could be written 'synth'.
>
> Comparison to NULL is not necessary because 'if' structure tests if
> 'synth' is NULL anyway.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index ac6ed8b..0cd5384 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		len--;
>  	new_synth_name[len] = '\0';
>  	spk_strlwr(new_synth_name);
> -	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
> +	if ((synth) && (!strcmp(new_synth_name, synth->name))) {

The parentheses around synth are also not needed.

julia

>  		pr_warn("%s already in use\n", new_synth_name);
>  	} else if (synth_init(new_synth_name) != 0) {
>  		pr_warn("failed to init synth %s\n", new_synth_name);
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307092155.14802-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

