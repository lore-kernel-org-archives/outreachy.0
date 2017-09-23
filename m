X-GM-THRID: 6469025072932716544
X-Received: by 10.46.91.143 with SMTP id m15mr121240lje.2.1506187718058;
        Sat, 23 Sep 2017 10:28:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.87 with SMTP id y23ls1798108ljd.11.gmail; Sat, 23 Sep
 2017 10:28:36 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCT3DSdlJV0NwBc0OiBjn8b5EIWqMMQEwdkYk+cC2NIf8r+FPB9CqoBFcT9sR7Ypxv0x+rE
X-Received: by 10.46.25.146 with SMTP id 18mr132209ljz.9.1506187716780;
        Sat, 23 Sep 2017 10:28:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506187716; cv=none;
        d=google.com; s=arc-20160816;
        b=gfpl55QkzY+k6hnDnU/rEuUDXewl0OBHSzZgqjg3Lui5PKKYitk4SAQbyl/+SQrzCM
         /w3wmA9QfQwweclGGkrIiQFec0b50bZBZtH6zDeEhvkTGY9MT8i9NctHP433/y4NNFkl
         3CtgEpzyomlzUDuTx7sYM22zrLGdeTCNobXHUpdAqRLT9atMtx7w9HxLzdbYX0ZDj44i
         WGTtdVoLSYdnSo+hvxHvcCS64oeWCJPB/xCMrEvx8Q7ZGBvo62wKSsbnT/+rL1MXAl05
         vwZ7uki0mHZ613S2f/7jfoLqqpI3FEBkpKhY+9uzsNu2/XDH4LE9+6ddFLleIlQE9mxU
         bM5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bbjgBw1yKzWH0wavmvUZoXKc+672XUMtvV2J/CAKLZM=;
        b=wvlDVmP5dpspncrqo2wXcL8NTBNE20II7lJDzMXpuJCxRb/0G+kgR48ohmqILAtT5O
         8Nx+MhwqILICW9Oax/pF+O687aejYauhK8A5NudFrvF5wEdkeMnf7myXd85uay6Hhfgb
         dVRA2G4Bk1c24bHESg2FUSgQnvn9pJbN1s81hgvB7Ee92YurgeSd2SrR4U45rBx7mjp0
         SO3noC19U48QAkSnMtbwGUamxwps4PmZNv4xlHV9X0ulG0Rvoe/5Uy8bFkHcC4RIStEE
         1G1ES998ux3O+c5pj7aI9nMczvkrzt7P8sfrEd9ONbFCsCFqTeCRdwQCLE8c6tZUOwrT
         b1JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b130si169429wme.0.2017.09.23.10.28.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:28:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,430,1500933600"; 
   d="scan'208";a="292418848"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 19:28:36 +0200
Date: Sat, 23 Sep 2017 19:28:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Blank lines aren't
 necessary before a close brace '}'
In-Reply-To: <20170923172108.GA8880@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709231928150.5987@hadrien>
References: <20170923172108.GA8880@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Sep 2017, Keerthi Reddy wrote:

> Before closing the brace, the blank line is not needed. That blank
> line has not meaning here. so remove it.

This is on the same file as your previous patch, so they have to be put in
a series.

julia

>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 36dc2a0..e7882b2 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1111,7 +1111,6 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
>  		g_key_gtk_params.key = NULL;
>  		kfree(g_key_gtk_params.seq);
>  		g_key_gtk_params.seq = NULL;
> -
>  	}
>
>  	if (key_index >= 0 && key_index <= 3) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923172108.GA8880%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

