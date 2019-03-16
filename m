X-GM-THRID: 6669000631583244288
X-Received: by 2002:a19:d04c:: with SMTP id h73mr96542lfg.4.1552748289238;
        Sat, 16 Mar 2019 07:58:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4788:: with SMTP id u130ls309207lja.14.gmail; Sat, 16
 Mar 2019 07:58:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIC+QcsUeJ2SSzNqwcEPb3CVaTapShvrz8zTu+WfxbxLWMccJvd2CNLoOcSK498Dw9XtGf
X-Received: by 2002:a2e:9194:: with SMTP id f20mr527445ljg.21.1552748288456;
        Sat, 16 Mar 2019 07:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552748288; cv=none;
        d=google.com; s=arc-20160816;
        b=b7+VsICDw2nvXDIGxs/fBvZvdRpq1GV/uL3xph0d3bi5L4ILPdyiI/a7gqgjWZRozM
         lHPTJ2/GFieicg9ZZj8Trvah08Ny0O/MRjS0QCgryUuzXddFzSX6kyioXrnMKkCDOLum
         po982vWjILhAqHMdWPROMOHisue0RQJcH8K1Ic4A7qwYw7kGdL59IH80EOZamFFmR7My
         qnzutBadwK30Kd+WcGPz9b9Cbfv7rbQ5eqwQJaPelKXl83ahvq5iq9S/Ot6nwQba1mgT
         lKSL7YWYl6ECzE3urPuBdmuy66ET/I/bE2jYwMt+tdyAEOjnpEMJk2tF89mFPz1vd7pw
         xfvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ReXmQs2CBQ+64mMhnqQ8XI4o8UJyoWkOzplcbOym5KU=;
        b=o4rpBJ2qvhUNDkLCaPcENqHuEM8Ukn+YWvWFRuT9+u51//oVH74joJyWZqDWYgos+o
         LQGXV3B9rPOYxlLsneYdkfLKmfnkQ6Ase1Eja05ym3RoBZyrqdcOMt6hcIzhldVx5z5O
         5ThF52gJE7bNpX4sYE84vpoM/gR0Vo82yc+j7eP3JWJIjFn+zuK7unX865bWbghE8naS
         +fSo40bJXUgvSyWNvAZzkOWgUkfeYOWJ+1sSbIaKSnC+OJZSG8bWcmm15vTevXVaUkHC
         64ILcqol3p0sgmq1x98wZLAcr6x0Xl2kV+h9mFgDOYjlRikBGyyxBoiQwsrRlNrVL7Vf
         VeCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u21si136600lja.1.2019.03.16.07.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:58:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299578266"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 15:57:53 +0100
Date: Sat, 16 Mar 2019 15:57:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: mt7621-mmc: Fix ret.cooci
 warnings
In-Reply-To: <20190316144812.7427-2-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161556580.2487@hadrien>
References: <20190316144812.7427-1-bhanusreemahesh@gmail.com> <20190316144812.7427-2-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Bhanusree Pola wrote:

> Return the value directly instead of storing it in local variable err.
> The semantic patch that fixes this problem is as follows

You can drop the now unused variable in this patch too.  This patch
introduced the problem, so it would be better for all patches to leave the
kernel in a reasonable state.

julia

>
> // <smpl>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
> // </smpl>
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-mmc/sd.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
> index 4b26ec896a96..5943e95ed1c3 100644
> --- a/drivers/staging/mt7621-mmc/sd.c
> +++ b/drivers/staging/mt7621-mmc/sd.c
> @@ -763,8 +763,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
>  	mrq.cmd = &cmd; cmd.mrq = &mrq;
>  	cmd.data = NULL;
>
> -	err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> -	return err;
> +	return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
>  }
>
>  static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316144812.7427-2-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

