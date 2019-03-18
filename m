X-GM-THRID: 6669700273225596928
X-Received: by 2002:a81:6184:: with SMTP id v126mr9704041ywb.17.1552931533814;
        Mon, 18 Mar 2019 10:52:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls4206104ybb.4.gmail; Mon, 18 Mar
 2019 10:52:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzrxqGgjxNGiQ2ZTyN/3LkF2Yqva1bh1j6JK1dBigDVbD0hJMLKAcIwFmWIGHetxADOSGbq
X-Received: by 2002:a25:d904:: with SMTP id q4mr8728408ybg.57.1552931531212;
        Mon, 18 Mar 2019 10:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552931531; cv=none;
        d=google.com; s=arc-20160816;
        b=E74u+C4EmVejIIHbhJnBOXolB9mpuUE+tE5WkGcUZaUSilvebga22Lt2/GJsBIizTy
         +VawlWNTUFzZS12WRFjHnL9vlQOWWeLU4P7Vv1rhUvNg0gPkmAt2lIVk+Envno8OeZmj
         wtTR6uA39hVRFeYlStDchWwNUW4/Uhe3MSwNuZtVokGzh/whUzLSKeAcBDIEcsPHhqst
         as8Y2EMKx5UDjpcxJ3wC9abcWkot20+dzDpN4+mFITRZn5nPTDbQ2etA5dxGytjKw1OA
         RYcF7VYL+rSYDRxi30pu0U/FN9wu18IwaFqVHzDIzpaur2KoepSe1V2s6RWEVAq/ajYi
         GTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MpYM2tNjWWVzztxwetZGOQAqlB6vYfLVT0xGkQJ98nQ=;
        b=zwCxf2oPenUQV2iwjuPnfl3fyT8UuQC4M6wurBjFQILB1Nid5MYr1DaR0xjwWNRcHw
         cuzHqZJ/2ITLjHqSBDydVYhef4otlQNbLvejaS+MBm25tkGOvAPmZ2voowSTCSDZGVuK
         LxgSkR4wl6gZc85q5Mi1J5J7/Yq5zhBFHlqp+xUEz4um/yAnPdgaC59LGwNaamGNMnS5
         Pr1mE/Wm0gk80TTYbREKJynsP4TwRwlxYBooeBrkuOLfE1hTDvexNs2KFF3jCSuIi7CR
         e3I4glU4C0yZ6Hsmuvo+qja2io8WjecL0a1uShSt7OAvE/IUoPzGgMyhh0sUp5tk0raM
         h1zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GwjaxGnv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s11si475146ywg.3.2019.03.18.10.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GwjaxGnv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AAEDC2064A;
	Mon, 18 Mar 2019 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552931530;
	bh=4ePdk7ZNCHktTefDbxMwdLJvoiTzfK/cXR5JpySCk/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GwjaxGnvi8nPLR9XtAMuRIJCDWdjSucJZZJ5mQgDmkACzP/CIydI5IYLoH48S8VIa
	 hGYct1DpzbC+X1A3pUqOOCAY8z4kMC/BWBgbq3yczx8QrE46i2Cz2UWmnDfSD6rDmH
	 XpxGUeat0mvPW8C+STIli22PXYVEObluSFzmiHoA=
Date: Mon, 18 Mar 2019 18:52:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: mt7621-mmc: remove blank line
Message-ID: <20190318175207.GA23903@kroah.com>
References: <1552910582-2749-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552910582-2749-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 05:33:02PM +0530, Payal Kshirsagar wrote:
> To avoid style issues, remove multiple blank lines.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/mt7621-mmc/dbg.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-mmc/dbg.c b/drivers/staging/mt7621-mmc/dbg.c
> index c7c091f..6b59ac8 100644
> --- a/drivers/staging/mt7621-mmc/dbg.c
> +++ b/drivers/staging/mt7621-mmc/dbg.c
> @@ -50,7 +50,6 @@
>  #include "mt6575_sd.h"
>  #include <linux/seq_file.h>
>  
> -
>  /* for debug zone */
>  unsigned int sd_debug_zone[4] = {
>  	0,

Someone else already did this before you, sorry :(

greg k-h

