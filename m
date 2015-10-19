X-GM-THRID: 6206972446110646272
X-Received: by 10.180.35.132 with SMTP id h4mr3780275wij.5.1445232369531;
        Sun, 18 Oct 2015 22:26:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.68 with SMTP id gk4ls546876wib.25.canary; Sun, 18 Oct
 2015 22:26:09 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr3792296wib.0.1445232369163;
        Sun, 18 Oct 2015 22:26:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si406086wif.2.2015.10.18.22.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 22:26:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,700,1437429600"; 
   d="scan'208";a="150966875"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Oct 2015 07:26:08 +0200
Date: Mon, 19 Oct 2015 07:26:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace sscanf
 with kstrtoint
In-Reply-To: <1445204493-9563-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1510190725300.2080@localhost6.localdomain6>
References: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com> <1445204493-9563-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Oct 2015, Cristina Moraru wrote:

> Replace single variable sscanf with specialized function
> kstrtoint at the suggestion of checkpatch.pl, to fix
> 'WARNING: Prefer kstrto<type> to single variable sscanf'
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> 
> Changes in v2:
>   - Change error code handling.
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
> index c3be0b5..55b8a91 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> @@ -914,12 +914,12 @@ int lov_process_config_base(struct obd_device *obd, struct lustre_cfg *lcfg,
>  
>  		obd_str2uuid(&obd_uuid,  lustre_cfg_buf(lcfg, 1));
>  
> -		if (sscanf(lustre_cfg_buf(lcfg, 2), "%d", indexp) != 1) {
> -			rc = -EINVAL;
> +		rc = kstrtoint(lustre_cfg_buf(lcfg, 2), 10, indexp);
> +		if (rc < 0) {
>  			goto out;
>  		}

An if branch with only one statement shouldn't have braces.  Checkpatch 
should have complained.

julia

> -		if (sscanf(lustre_cfg_buf(lcfg, 3), "%d", genp) != 1) {
> -			rc = -EINVAL;
> +		rc = kstrtoint(lustre_cfg_buf(lcfg, 3), 10, genp);
> +		if (rc < 0) {
>  			goto out;
>  		}
>  		index = *indexp;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445204493-9563-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

