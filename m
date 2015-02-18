X-GM-THRID: 398755627008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,20f43f113c0d991f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.168.104 with SMTP id zv8mr147910lbb.10.1424289891923;
        Wed, 18 Feb 2015 12:04:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.137 with SMTP id lc9ls66888lab.28.gmail; Wed, 18 Feb
 2015 12:04:51 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr143689lbb.13.1424289891449;
        Wed, 18 Feb 2015 12:04:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si726787wib.2.2015.02.18.12.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 12:04:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,603,1418079600"; 
   d="scan'208";a="122347873"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 21:04:50 +0100
Date: Wed, 18 Feb 2015 21:04:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Remove assignment in
 if condition
In-Reply-To: <20150218190158.GA17577@gmail.com>
Message-ID: <alpine.DEB.2.02.1502182102470.2248@localhost6.localdomain6>
References: <20150218190158.GA17577@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 19 Feb 2015, Vatika Harlalka wrote:

> This patch removes the assignment in an if condition to do away with
> the checkpatch warning :'do not use assignment in if condition'.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/i2o/bus-osm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/i2o/bus-osm.c b/drivers/staging/i2o/bus-osm.c
> index 7aa0339..70b15b2 100644
> --- a/drivers/staging/i2o/bus-osm.c
> +++ b/drivers/staging/i2o/bus-osm.c
> @@ -67,9 +67,9 @@ static ssize_t i2o_bus_store_scan(struct device *d,
>  				  const char *buf, size_t count)
>  {
>  	struct i2o_device *i2o_dev = to_i2o_device(d);
> -	int rc;
> +	int rc = i2o_bus_scan(i2o_dev);

Unlike to_i2o_device, which is just an accessor function (a macro 
actually), i2o_bus_scan does real work.  I think it would be better as a 
top-level statement, right before its error checking code.

julia

>  
> -	if ((rc = i2o_bus_scan(i2o_dev)))
> +	if (rc)
>  		osm_warn("bus scan failed %d\n", rc);
>  
>  	return count;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218190158.GA17577%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

