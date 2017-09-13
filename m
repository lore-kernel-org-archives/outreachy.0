X-GM-THRID: 6465198588662120448
X-Received: by 10.28.24.207 with SMTP id 198mr210936wmy.17.1505296932869;
        Wed, 13 Sep 2017 03:02:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.35 with SMTP id k35ls46997lfi.22.gmail; Wed, 13 Sep 2017
 03:02:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDrvy3Gg7ocsMJP8rvpXZqe3JR7CNCnLGkyj0Bf3Om+PyywMvCNRV5N1I7CjfWdiZMfRl9K
X-Received: by 10.46.25.146 with SMTP id 18mr779730ljz.9.1505296931233;
        Wed, 13 Sep 2017 03:02:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505296931; cv=none;
        d=google.com; s=arc-20160816;
        b=0xjUfZbmkGV1afrBPMYdbOaNfiyf80xBtLTziqGkeQ/swxblQsyeJhrC27zUwq3YrB
         NlBTLxIWVg+w+gfQat8wcOsDJV+2K9VmXDyjEaLIwbldaQygTQVvuO75+EFzDShZVNBb
         VW6H8GScfTJcw7y/Mi/fuYLhSq78m2HGTV35On61DXy6dZwXp2GsYHfE5cUSMeGA/iBF
         groHYrUGVqaPQbCdNH3WO9xfpboNaHBtJggih/OLMZDgGaD33i9jEYS4mfxQXX0Gew7Q
         U6MIxgUGKoQZmYhLpJpV/YqEtJv9USq7qO9K5nCB+4s0JvklQ9SDz2AqZajMY9IA8Gly
         bPBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=M7v7S1a0/BYkdWqdTY3DmGXVPIz+qAq5sROINsKvJz4=;
        b=kbqY8BjApy+kqs4pDgIQkJ/6ha4Q36miy1WZrd988zwRQsdV0chCbgnmy3K6wsa87/
         k10ZopabMVXVbTzWiHMz2QTatga6WAWmXV7/apoItaVHi5IMY7vxIRJPnpQJIMySAwJT
         5dCHCFTJ0/UrGYzay5XsQuujVZ21WEPtlL6nas6faGxW1ULPp01hYvgUvoARmO1JgAcH
         9638BoLkxes5U4A52P475T/wgTrtll4oOzxsbZxXkG/VYZg+YlQIVuSsiwf4vF0iin3q
         5TVWKDaRn5LL3uXu8LAEU7JM0acx/fPUQyiDiyss5OPgkaXM1qUCFw0IxGlpCaWbvydU
         qmuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 7si41507wme.7.2017.09.13.03.02.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:02:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="237315588"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 12:02:04 +0200
Date: Wed, 13 Sep 2017 12:01:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: kernel-janitors@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    Colin King <colin.king@canonical.com>, 
    Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: DR Checker and KINT static checkers
In-Reply-To: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
Message-ID: <alpine.DEB.2.20.1709131156450.13908@hadrien>
References: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Dan Carpenter wrote:

> LWN.net recently had an article about Dr Checker.  It's a promising new
> static analysis tool.  The LWN article is for subscribers only until
> tomorrow, but anyone can read the PDF or install the code.  It would be
> really interesting if someone could run Dr Checker on a mainline kernel
> tree and post the results.
> https://lwn.net/Articles/733056/
> https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-machiry.pdf
> https://github.com/ucsb-seclab/dr_checker/

I'm always puzzled by statements like:

Some 5,000 warnings were generated, of which nearly 4,000 were verified as
correct by the team. Of those, 158 were actual bugs that were reported
upstream and fixed.

If they took the time to validate 5000 bugs, couldn't they have sent more
patches, or at least made the results public in some way so that other
people could fix them?  Maybe the others are "duplicated, but correct"...

I'm a bit short on time at the moment, but if an outreachy applicant wants
to put together a precise description of how to install and run the tool,
I have plenty of computing power available :)

julia


>
> The other tool that's quite interesting is KINT which looks for integer
> overflows.  It's a bit of a pain because you have to annotate some
> kernel functions to make it work.  The PDF and source code are here:
>
> http://css.csail.mit.edu/kint/
>
> regards,
> dan carpenter
>
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-janitors" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>

