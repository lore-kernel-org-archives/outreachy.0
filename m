X-GM-THRID: 6200050658971746304
X-Received: by 10.112.125.104 with SMTP id mp8mr21491lbb.20.1443561871287;
        Tue, 29 Sep 2015 14:24:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.137 with SMTP id k9ls4324lak.79.gmail; Tue, 29 Sep 2015
 14:24:30 -0700 (PDT)
X-Received: by 10.112.125.104 with SMTP id mp8mr21487lbb.20.1443561870827;
        Tue, 29 Sep 2015 14:24:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id fj10si805492wib.1.2015.09.29.14.24.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:24:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,609,1437429600"; 
   d="scan'208";a="149016130"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2015 23:24:30 +0200
Date: Tue, 29 Sep 2015 23:24:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Drivers: power: max8997_charger:
 Fixed coding style and irrelevant messages
In-Reply-To: <20150929212257.GA13394@ubuntu>
Message-ID: <alpine.DEB.2.02.1509292323280.2031@localhost6.localdomain6>
References: <20150929212257.GA13394@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, Shivani Bhardwaj wrote:

> Added blank line after declaration of variables
> and commented out an unnecessary error print statement.

See the comments on the other two patches.  But another issue is that this 
does two completely unrelated things.  They should be in different 
patches, so that if one of them turns out not to be a good idea, it will 
be easier to just apply the other.

julia

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/power/max8997_charger.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/power/max8997_charger.c b/drivers/power/max8997_charger.c
> index 0b2eab5..00127f3 100644
> --- a/drivers/power/max8997_charger.c
> +++ b/drivers/power/max8997_charger.c
> @@ -106,6 +106,7 @@ static int max8997_battery_probe(struct platform_device *pdev)
>  
>  	if (pdata->eoc_mA) {
>  		int val = (pdata->eoc_mA - 50) / 10;
> +
>  		if (val < 0)
>  			val = 0;
>  		if (val > 0xf)
> @@ -149,7 +150,7 @@ static int max8997_battery_probe(struct platform_device *pdev)
>  	charger = devm_kzalloc(&pdev->dev, sizeof(struct charger_data),
>  				GFP_KERNEL);
>  	if (charger == NULL) {
> -		dev_err(&pdev->dev, "Cannot allocate memory.\n");
> +		/*dev_err(&pdev->dev, "Cannot allocate memory.\n");*/
>  		return -ENOMEM;
>  	}
>  
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150929212257.GA13394%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

