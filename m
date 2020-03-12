X-GM-THRID: 6803231056018276352
X-Received: by 2002:a17:90a:f0d2:: with SMTP id fa18mr3811448pjb.55.1584014053464;
        Thu, 12 Mar 2020 04:54:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls2291658pfd.4.gmail; Thu, 12
 Mar 2020 04:54:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvxei/U0EoT10FuE9HN+8O92giqVKbHyXSZptaMqcWsg9y/d0PlKFOXRz7RO+90xbkzBy/W
X-Received: by 2002:a63:ad46:: with SMTP id y6mr7418890pgo.11.1584014051777;
        Thu, 12 Mar 2020 04:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584014051; cv=none;
        d=google.com; s=arc-20160816;
        b=KHb1ayjaze9n7xxmy893H9Oby144WAzQ4ZTFVCwdbJJtAWxGYD0DyH5eKQN8cd+yfV
         Q034RDo4IiaMsqJjmTcMVYaLyxTxzgRf/flXXvM6J0AMhqXiznsOyWcL6F8ZXau1tsPO
         p8NVSm5I85OWwEOFaB5oTQFppPNYhD53N/M/klC79gl6it8m611FLYu/jdrxutoYk+zs
         iLntFzrxWHGS24GcME/EJCS3mXk6YG/xwN/ok8J96kZIV0K1iBkaPJ9h/cC8CCTmK16T
         elqmEzB05NqkgyCqkxkrtbQwie/rPG15xCGOvS7p5YckcTN6mLiUjlk9HBr4/j+aPSlE
         C1Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EqhXrzNEc592B32elBUVxnbpgjVBIZmeCrc+6NXf9IY=;
        b=Q5Y9tR1ysbomPAMpmpjexsEUhNoMMjijhv51K4iHgvtm+naPOYXiZo5IS7D1x0Inhb
         d4En64Fj4nbDgQevpapXrpx3UHcPQgfB9KcLrELm9DF10pifPAXtQX454ZwEPLfGy2Vj
         FYK9WuYugu1tZWH+ebskT4J82YmB+CO8btaPhdAZygB1hadUO1vsFM8SjfhQYiYTbYPb
         jSx0SALsKIgAq3QMv2P3nuJosFQ373+TRNPbd7J8DvVqSbMmqa0Y8ef+qBUQ/TWmAN3a
         WYlpMn32oteYmu+vA6mp/pXVNRrCx3KP6os4Lb0yJh99lD3kEtt9AkAdBOXImICZ73Pq
         4SgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YnZ/w9Zo";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l12si205211plt.5.2020.03.12.04.54.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 04:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YnZ/w9Zo";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC5C020674;
	Thu, 12 Mar 2020 11:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584014051;
	bh=aUXPw1Ak5kq96K3auACzfs5ONcrNFjpI/FnIvPh/UMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YnZ/w9Zorwgd++EE1BTYSj+qp/SAcQsz9bsWYTPOvezJ8H5agYxG/XqoZD+Zk57vs
	 bBqK6rK+aCPtVkFAjRXxMkYoJ9GA+l6ZcPi07KfPD8tsqI332aj3KRsDUiHeFLbqFL
	 +KuChsB2ueCfxiqx719+FUjI3XlYOxxQQs38MjSQ=
Date: Thu, 12 Mar 2020 12:54:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: rtl8712: Fix for long lines in Kconfig help
Message-ID: <20200312115409.GA224615@kroah.com>
References: <20200312081044.GA3742@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081044.GA3742@tulip.local>

On Thu, Mar 12, 2020 at 01:40:55PM +0530, R Veera Kumar wrote:
> Fixes two long line in Kconfig help.
> Found using checkpatch.pl
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rtl8712/Kconfig | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
> index b6dcda77db1f..678bbeace823 100644
> --- a/drivers/staging/rtl8712/Kconfig
> +++ b/drivers/staging/rtl8712/Kconfig
> @@ -6,13 +6,16 @@ config R8712U
>  	select WEXT_PRIV
>  	select FW_LOADER
>  	help
> -	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> +	    This option adds the Realtek RTL8712 USB device such as the
> +	    D-Link DWA-130.
> +
>  	    If built as a module, it will be called r8712u.
>  
>  config R8712_TX_AGGR
>  	bool "Realtek RTL8712U Transmit Aggregation code"
>  	depends on R8712U && BROKEN
>  	help
> -	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
> +	    This option provides transmit aggregation for the
> +	    Realtek RTL8712 USB device.
>  

Why did you pick two different line lengths to wrap at for these two
options?

Please be consistent.

greg k-h

