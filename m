X-GM-THRID: 6522213287288897536
X-Received: by 10.46.42.66 with SMTP id q63mr238892ljq.37.1518591319670;
        Tue, 13 Feb 2018 22:55:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.221.210 with SMTP id w79ls721182lfi.12.gmail; Tue, 13 Feb
 2018 22:55:18 -0800 (PST)
X-Google-Smtp-Source: AH8x225uSrCPs8GmuwxfswswSyaf5uy7SprlUwgF35ke30NkwQxzhOpRn/Se9ER795wa2Rst4W28
X-Received: by 10.25.32.194 with SMTP id g185mr273659lfg.13.1518591318216;
        Tue, 13 Feb 2018 22:55:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518591318; cv=none;
        d=google.com; s=arc-20160816;
        b=ULeGDTHzYWAWlPyeO4xkOcAPpIpjLGz2J1dyBPrVmLy9VzJxT4rKy3goIofKXVaBtz
         zDRtVgygTpc0HeihUkYJF7x1enEyf101yx2iG/xtJhi2o+PQohfexTkm3wFWlC8RfS57
         hIKZuAmOP7JnYuo6LKJYe6oJRLE8Ada+TjM7N9v7kFTJJZmNP+YKUmOjUThwvpq0bD+9
         9TARFHHzBZWnr70GHCFPQoJRA7aAzw73PFB75tTybG8slaiOoqdRb74Q2B01EXXUXB8I
         OHBfUEHTfOkoZyiyAYh3+MGvzDgD4yR0qa9Li4MLrAmD6tRLtO6zK6GcH7sKr5gz12R+
         OY+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Rdyl+t4ANcwKbXUlbNuQY4HMu8f4wG7Tqm37VosIdbY=;
        b=sAgeqDuBFfMtHyC6Ygbze9cD0JVaLnpRduqL9VARmJIZur1opqMWEo7gXphNI4OoMB
         NeazGxWmEIf5VwctROu1NVDb9/o60yzRtvC2CdYoe+qcByNQqJgqYVdgC5Vu9ki+Z+Fs
         kWEqu59s4hKnL/zIO3dguBcwY0neY4cbOjK9H2fiyfrWnql8sh42P4g3kyB3E9qaF0u1
         SxLwtDBK1WXizEdJqV1BuN2SRHZcP/Vn4EJJXKCGUki22eL5eXLOUmgqa5IGMDnuslRl
         ZSZjzmQ/ka2+v2/xdRDz4vZJMmjuYeWu3dTVNoIMjmUMByRQyql2pENvZLODLVLZam0K
         lTKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m2si692576lfj.2.2018.02.13.22.55.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 22:55:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,511,1511823600"; 
   d="scan'208";a="313467643"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2018 07:55:17 +0100
Date: Wed, 14 Feb 2018 07:55:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kedunne@ucsc.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Initial Application
In-Reply-To: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566>
Message-ID: <alpine.DEB.2.20.1802140752270.3874@hadrien>
References: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Feb 2018, Katie Dunne wrote:

> Hi Vaishali and other mentors,
>
> The introduction message says we need to fill out an initial application
> before contributing. The outreachy website says we must make a
> contribution before applying. There is a Linux Kernel landing page where
> we must 'Record a Contribution' before we are given access to a link to
> submit an application, e.g. 'Once you've recorded at least one
> contribution, you can start your application for the project.' from the
> following link:
>
> https://www.outreachy.org/2018-may-august/communities/linux-kernel/migrate-nand-driver-to-new-exec_op-framework/contributions/
>
> I take this to mean we have to have a patch accepted before we can start
> an application. Let me know if that is incorrect.

That is incorrect.  You must fill out an application first.  Where does it
say that you should make a contribution first?  If it is on our wiki, that
is something that we need to correct.

I think that the point is that now you start to fill out an application
without specifying what you are applying to.  I'll check on the page for
the nand driver.  Perhaps it is expressing things in the wrong way
(everything is new in this round...)

Thanks!
julia

>
> Thanks,
> Katie
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180214011834.4t7ltqv632mspyy7%40kdunne-Inspiron-5566.
> For more options, visit https://groups.google.com/d/optout.
>

