X-GM-THRID: 853259845632
X-Received: by 10.180.12.146 with SMTP id y18mr947753wib.6.1424375193073;
        Thu, 19 Feb 2015 11:46:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls200159laz.61.gmail; Thu, 19 Feb
 2015 11:46:32 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr815166lbb.5.1424375192529;
        Thu, 19 Feb 2015 11:46:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si6470348wib.3.2015.02.19.11.46.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 11:46:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100661200"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 20:46:31 +0100
Date: Thu, 19 Feb 2015 20:46:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gamze POLAT <gamzepolat94@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: main: Fix line over
 80 characters warning
In-Reply-To: <1424374754-5313-1-git-send-email-gamzepolat94@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192042460.2192@localhost6.localdomain6>
References: <1424374754-5313-1-git-send-email-gamzepolat94@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Gamze POLAT wrote:

> WARNING:line over 80 characters and simple_strtoul is obsolete, use
> kstrtoul instead
> checkpatch.pl warning

These are very different issues.  Fixing a line over 80 characters problem 
is easy, while the kstrtoul issue requires careful analysis of the 
behavior of the code (you can see a patch from Navya earlier today about 
this).  So they should be in different patches.

> @@ -1930,7 +1933,7 @@ oops:
>  		return 1;
>  	}
>  
> -	goto_pos = simple_strtoul(goto_buf, &cp, 10);
> +	goto_pos = simple_kstrtoul(goto_buf, &cp, 10);

There is no such function as simple_kstrtoul.  This suggests that you did
not compile your kernel before submitting your patch., or at least that
when you compiled the kernel, you did not compile this file.  Check if you
have a file ending in .o that corresponds to this .c file.  If not, then
you didn't actually compile this one.  It may be helpful to try make and
then the pathname of the file with .c replaced by .o.

julia

