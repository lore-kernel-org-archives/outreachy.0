X-GM-THRID: 6201721942564667392
X-Received: by 10.180.105.98 with SMTP id gl2mr1409948wib.0.1443953361453;
        Sun, 04 Oct 2015 03:09:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls386308lfe.60.gmail; Sun, 04 Oct
 2015 03:09:20 -0700 (PDT)
X-Received: by 10.112.138.170 with SMTP id qr10mr4304754lbb.4.1443953360975;
        Sun, 04 Oct 2015 03:09:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id xl3si324594wib.1.2015.10.04.03.09.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 03:09:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,633,1437429600"; 
   d="scan'208";a="180970623"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 12:09:20 +0200
Date: Sun, 4 Oct 2015 12:09:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused function obd_export_nid2str
In-Reply-To: <1443950881-25330-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510041208410.2026@localhost6.localdomain6>
References: <1443950881-25330-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Shraddha Barke wrote:

> Remove obd_export_nid2str as it is defined but not used anymore.

I think this is on top of your previous patch.  It should be on top of 
Greg's tree, since I guess he won't take a patch that causes build 
warnings.

julia

> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/genops.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
> index fbf216b..e0b8150 100644
> --- a/drivers/staging/lustre/lustre/obdclass/genops.c
> +++ b/drivers/staging/lustre/lustre/obdclass/genops.c
> @@ -1104,14 +1104,6 @@ void class_fail_export(struct obd_export *exp)
>  }
>  EXPORT_SYMBOL(class_fail_export);
>  
> -static char *obd_export_nid2str(struct obd_export *exp)
> -{
> -	if (exp->exp_connection != NULL)
> -		return libcfs_nid2str(exp->exp_connection->c_peer.nid);
> -
> -	return "(no nid)";
> -}
> -
>  #if LUSTRE_TRACKS_LOCK_EXP_REFS
>  void (*class_export_dump_hook)(struct obd_export *) = NULL;
>  EXPORT_SYMBOL(class_export_dump_hook);
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443950881-25330-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

