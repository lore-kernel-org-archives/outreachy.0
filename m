X-GM-THRID: 6341446809847595008
X-Received: by 10.200.51.227 with SMTP id d32mr4520565qtb.41.1476530938871;
        Sat, 15 Oct 2016 04:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls9507526otf.43.gmail; Sat, 15 Oct
 2016 04:28:58 -0700 (PDT)
X-Received: by 10.13.228.4 with SMTP id n4mr4635440ywe.147.1476530938525;
        Sat, 15 Oct 2016 04:28:58 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z76si3527462pff.1.2016.10.15.04.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 04:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C03C29D;
	Sat, 15 Oct 2016 11:28:57 +0000 (UTC)
Date: Sat, 15 Oct 2016 13:29:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keila Novo <laurana5@gmail.com>
Cc: Marc Dietrich <marvin24@gmx.de>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Checkpatch.pl error fixed:"Tabstop remove".
Message-ID: <20161015112905.GC11674@kroah.com>
References: <20161008055753.GA24115@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008055753.GA24115@kheixx-VB>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Sat, Oct 08, 2016 at 07:57:53AM +0200, Keila Novo wrote:
> Checkpatch.pl error fixed:"No tabstop at the init
> of the line"
> 
> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/nvec/nvec_power.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
> index b16c871..88e6c0e 100644
> --- a/drivers/staging/nvec/nvec_power.c
> +++ b/drivers/staging/nvec/nvec_power.c
> @@ -441,7 +441,11 @@ static struct platform_driver nvec_power_driver = {
>  	.probe = nvec_power_probe,
>  	.remove = nvec_power_remove,
>  	.driver = {
> +<<<<<<< HEAD
>  		 .name = "nvec-power",
> +=======
> +		 .name = nvec_power,
> +>>>>>>> 3dedeb1... Checkpatch.pl error fixed:"Tabstop

I don't think you build the code with this patch applied :(

