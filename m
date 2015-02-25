X-GM-THRID: 3468768051200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,26dddd85f4bffbd9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.168.233 with SMTP id zz9mr4932049pab.6.1424902748113;
        Wed, 25 Feb 2015 14:19:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.170.225 with SMTP id ap1ls1686855igc.11.canary; Wed, 25 Feb
 2015 14:19:07 -0800 (PST)
X-Received: by 10.42.82.79 with SMTP id c15mr5333241icl.13.1424902747781;
        Wed, 25 Feb 2015 14:19:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e11si399286igq.0.2015.02.25.14.19.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:19:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,647,1418079600"; 
   d="scan'208";a="123412978"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 23:19:05 +0100
Date: Wed, 25 Feb 2015 23:19:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: i2o: Corrected code
 indentation
In-Reply-To: <1424902222-10105-3-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1502252317440.2029@localhost6.localdomain6>
References: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com> <1424902222-10105-3-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

>  	list_for_each_entry(tmp, &c->devices, list)
> -	    if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
> +		if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
>  		&& (tmp != i2o_dev)) {

The line above should not be left aligned with the if.

> -		rc = sysfs_create_link(&tmp->device.kobj,
> +			rc = sysfs_create_link(&tmp->device.kobj,
>  				       &i2o_dev->device.kobj, "user");

Maybe it is possible to push the second line of the call to the right a 
bit more to align with the start of the argument on the line before.

The same comments apply below.

julia

>  		if (rc)
>  			goto rmlink1;
> @@ -279,9 +279,9 @@ static int i2o_device_add(struct i2o_controller *c, i2o_lct_entry *entry)
>  
>  	/* create parent entries referring to this device */
>  	list_for_each_entry(tmp, &c->devices, list)
> -	    if ((tmp->lct_data.parent_tid == i2o_dev->lct_data.tid)
> +		if ((tmp->lct_data.parent_tid == i2o_dev->lct_data.tid)
>  		&& (tmp != i2o_dev)) {
> -		rc = sysfs_create_link(&tmp->device.kobj,
> +			rc = sysfs_create_link(&tmp->device.kobj,
>  				       &i2o_dev->device.kobj, "parent");
>  		if (rc)
>  			goto rmlink2;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424902222-10105-3-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

