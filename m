X-GM-THRID: 6393358325939961856
X-Received: by 10.28.139.211 with SMTP id n202mr114083wmd.5.1488569982793;
        Fri, 03 Mar 2017 11:39:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.83 with SMTP id o80ls185659lff.53.gmail; Fri, 03 Mar
 2017 11:39:41 -0800 (PST)
X-Received: by 10.25.215.37 with SMTP id o37mr660600lfg.20.1488569981750;
        Fri, 03 Mar 2017 11:39:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h198si331313wmg.1.2017.03.03.11.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:39:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="263052930"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 20:39:35 +0100
Date: Fri, 3 Mar 2017 20:39:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/9] staging: media: atomisp: Fixed
 typo.
In-Reply-To: <58b9c585.1bd1620a.230a1.2d3e@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703032039081.2133@hadrien>
References: <cover.1488567772.git.varshar186@gmail.com> <58b9c585.1bd1620a.230a1.2d3e@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Varsha Rao wrote:

> Corrected the spelling of initialize. This patch fixes the checkpatch
> issue.

Remember to use the imperative.  Fix typo, Correct the spelling...

julia

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  .../atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
> index 6184019..6d12e03 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
> @@ -64,7 +64,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
>  		assert(lut_thr[i] <= lut_thr[i+1]);
>  	}
>
> -	/* Intialize */
> +	/* Initialize */
>  	for (i = 0; i < total_blocks * block_size; i++) {
>  		lut->thr[0][i] = 0;
>  		lut->val[0][i] = 0;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b9c585.1bd1620a.230a1.2d3e%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

