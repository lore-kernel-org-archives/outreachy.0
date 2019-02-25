X-GM-THRID: 6661984277243101184
X-Received: by 2002:aa7:c6c9:: with SMTP id b9mr2329668eds.7.1551129763663;
        Mon, 25 Feb 2019 13:22:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3e46:: with SMTP id t6ls2822144eji.8.gmail; Mon, 25
 Feb 2019 13:22:43 -0800 (PST)
X-Google-Smtp-Source: AHgI3IavkaDrHcPDFHe5q0DGmRayDN09VoaASjDg+105GoLYtsz031ktK+svNL6Jox5i4g4MiIGD
X-Received: by 2002:a17:906:c9d2:: with SMTP id hk18mr123241ejb.5.1551129763107;
        Mon, 25 Feb 2019 13:22:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551129763; cv=none;
        d=google.com; s=arc-20160816;
        b=mcnmcRDPPtp0gmOxf/BQFfnSsdjdrnSCE3kRaaTuLkvl7avX1gfKVxUwnwSyb+YFzO
         T50nLCfOBveFcQ8jlHfuDPOb89UBv8B3Oz29eTFXKwHb0Gow21mBq4vNYXgUr5xE3Sv2
         UJb+5sFVjFs9zGb+f0cet4TeCO6sqfw3bdPFOJ6iVKi56stgVtatsyt4i0lsbN6/UwN5
         uqvDKMo0/R3Rl1trfYsXr27hY5K9tiw2ssucGcnOKoZhRQA1qGbuS9WSwCgKz8UKvYNX
         Ui64Fuh0XBkJUulRTsOrkddLJUkRWzrGXWc73XKa1sLYRAUzHLVcw8V12XoKhyN/zq0h
         WR5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pmApwow6sertY4XIrbKWJD1bXoRzms3lLEIm3fUMBo8=;
        b=n1BZxxnBo532PwNuSumTXPUeQhJ7uEaZ3aoxnv8Cc4WvBLQ43b6IEQbvOzsjUtu0X4
         FJ6bCwYlnf6AfB5gxK0/EUZ+a8l13YulrBlQ6wjy9wNTqeHjOfv+EgXP2luddG5H/nDQ
         rkxGa0QdTOrV3Up5nsGUxkDW/PRBjvY0YF1h5niFtfF8KNTPyabTLY8cgiXBFIY2s0Rh
         t8Nsuhil9i8VOYZ4TVFgiiitfHDp8nnWHkvnIWE9zhAc8BPLFnUdr+kvcQ+ZseRBFrcB
         KxGfXxNAFavQRWr+XUw1bnePgZnHttFqjFW2O2oJBLN+dwzLg6orMGGyJ62chCUpsdah
         NtTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z19si446213edd.3.2019.02.25.13.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 13:22:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,412,1544482800"; 
   d="scan'208";a="297299201"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 22:22:42 +0100
Date: Mon, 25 Feb 2019 22:22:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Outreachy kernel] [PATCH] Staging: phydm: Align block comments
 in each line
In-Reply-To: <20190225170110.12694-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1902252222280.2481@hadrien>
References: <20190225170110.12694-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Feb 2019, Bhanusree Pola wrote:

> Align * in block comments to avoid checkpatch.pl warning:
> WARNING: Block comments should align the * on each line
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_rainfo.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.h b/drivers/staging/rtlwifi/phydm/phydm_rainfo.h
> index 6c1f30e758bc..841fbc42447e 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.h
> +++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.h
> @@ -21,12 +21,12 @@
>  /*#define RAINFO_VERSION	"3.3"*/ /*2015.07.29 YuChen*/
>  /*#define RAINFO_VERSION	"3.4"*/ /*2015.12.15 Stanley*/
>  /*#define RAINFO_VERSION	"4.0"*/ /*2016.03.24 Dino, Add more RA mask
> -					  *state and Phydm-lize partial ra mask
> -					  *function
> -					  */
> +					 *state and Phydm-lize partial ra mask
> +					 *function
> +					 */
>  /*#define RAINFO_VERSION	"4.1"*/ /*2016.04.20 Dino, Add new function to
> -					  *adjust PCR RA threshold
> -					  */
> +					 *adjust PCR RA threshold
> +					 */
>  /*#define RAINFO_VERSION	"4.2"*/ /*2016.05.17 Dino, Add H2C debug cmd */
>  #define RAINFO_VERSION "4.3" /*2016.07.11 Dino, Fix RA hang in CCK 1M problem*/

Normally, there is a space after the *.

julia

>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225170110.12694-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

