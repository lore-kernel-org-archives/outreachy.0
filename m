X-GM-THRID: 6205317079064641536
X-Received: by 10.112.132.10 with SMTP id oq10mr275588lbb.1.1444801626373;
        Tue, 13 Oct 2015 22:47:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.207 with SMTP id n198ls675556lfb.54.gmail; Tue, 13 Oct
 2015 22:47:05 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr279294lbb.10.1444801625642;
        Tue, 13 Oct 2015 22:47:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si921034wiz.0.2015.10.13.22.47.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 22:47:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="182677160"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 07:47:05 +0200
Date: Wed, 14 Oct 2015 07:47:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove null check
 before kfree
In-Reply-To: <1444787959-3930-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510140740360.2038@localhost6.localdomain6>
References: <1444787959-3930-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -	if (pu8HdnNtwrksWidVal != NULL)
> -		kfree(pu8HdnNtwrksWidVal);
> +	kfree(pu8HdnNtwrksWidVal);
>  
>  	return s32Error;

Nothing to do with your patch, but maybe you could make a very small dent 
in the horrible variable names used by this driver by changing s32Error to 
ret.

If you want to be more ambitious, you could use Coccinelle to find a 
pattern like, where x is an identifier:

x = f(...);
if (\(x != 0 \| x < 0\)) { ... return ...; }

and then change all occurrences of x to ret.

Even more ambitious would be to find occurrences of

T x = ...;

and then use python to detect cases where the string represnting T is a 
prefix of the string representing x, and then remove T from x, and un 
camel case x.  This would require making variables in python and sending 
them back to Coccinelle, which is illustrated by 
demos/pythontococci.cocci.

The last idea however is not necessarily the best one, because it would 
transform s32Error into error, and ret is much more common in the rest of 
the kernel.  Also, you don't want to be overwhelmed with results, because 
you would have to check and think about each renaming to see if it is the 
best one.

julia

