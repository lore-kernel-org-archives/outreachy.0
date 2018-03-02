X-GM-THRID: 6528077387977981952
X-Received: by 10.25.157.141 with SMTP id g135mr518395lfe.36.1520013715320;
        Fri, 02 Mar 2018 10:01:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.15 with SMTP id n15ls1134795lja.6.gmail; Fri, 02 Mar
 2018 10:01:53 -0800 (PST)
X-Google-Smtp-Source: AG47ELsr0/GDr8CzlXPoZBonKaQ5tCZ23drHI5r+uezniXoI3rbMXlr5m5KArqtJ2cVXCSimS4ed
X-Received: by 10.46.34.196 with SMTP id i187mr452705lji.10.1520013713636;
        Fri, 02 Mar 2018 10:01:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520013713; cv=none;
        d=google.com; s=arc-20160816;
        b=yFUEIifV6av/oSdXOwwSrx7seNEnZ6cVzJXoDW1xT5sLAHySb8+CXK3BmX0/iv5MpA
         pGvmjoopKjexUYFcpzkrtGBJTl9wYdTzh1Tbj4OR5jtKXH8e2mGXZhAanvY1DiUYfJSc
         5M1e9YI5gRNj6YM7PxzvSF7NGrbxya4OSLp1oyRmyv0ITIzbrA56pplOOAFm71qJd/BM
         b2Y9laYynw4Mj682m9/xVpefLeelUoXkP++dl4O781QFiqb0V0dah0l4DzG7j0enVTE2
         +6cr0jt1zxOfz+PtlF4LEt1X7Bogq2xTr1QfxCDalK6SeNgLVY3aFlnMeU7T7sgGXKJ9
         xp8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0RKzzKfL9psTU1wCIUWn56F1TnVn0hC9OYz5jPpKWD0=;
        b=xcp3S5kASwBKkR6KzNF3q98adPtMh/HKVM1v+4H4SowMXwPMiyVjXN8pzqn1XK0aNS
         YdOfibyQ/cjTurVWACfxkRwTAy80UA1IPh5Fzyvek4uUcR0U2NZErZxcQ2Z8w48gg4Sq
         d5voeM1UTnncbKElVq9zMIno7K1iHv4vSowYcHxqL/sOmkGit/cc2tVD71IUdQu7QGU6
         CbWPP0UU3HUehf2M3fN0TmxH7pepeTWvf8ZxqoeESOqYwye0mxHQ4yuaWZkvWT0xTpFo
         Sr8Aj42e4xTkAPrrTXKpL+llqGv0ytDCJ3MCcNKjD2dA8foAFFBvTltALoU0HME/nBOp
         tUOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 7si163254ljw.5.2018.03.02.10.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 10:01:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,413,1515452400"; 
   d="scan'208";a="316117190"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 19:01:52 +0100
Date: Fri, 2 Mar 2018 19:01:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Help with Mutt
In-Reply-To: <1519937773-28053-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803021901370.17455@hadrien>
References: <alpine.DEB.2.20.1803012135130.3474@hadrien> <1519937773-28053-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Nishka Dasgupta wrote:

> This is with response to your email: I think you will need to give more
> information. Do you get some error message? Does nothing happen? Does it
> crash? What did you do before, in terms of setting up configuration
> files? etc. Any particular thing about the situation that you can think
> of.
>
> My response to your email is as follows: I followed the instructions at
> OutreachyfirstpatchSetup and Outreachyfirstpatch at Linux kernel
> newbies. The instructions said to "say 'no' to creating an inbox for
> now". That is what I did. If I send an email to myself from within mutt
> (using the "m" command) it shows up in the inbox; but no other email
> sent to my account is visible. (Up until now I have been viewing emails
> and responses in a browser and composing replies in vim.)
>
> In accordance with the instructions, my muttrc file contains the
> following lines:
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="Nishka Dasgupta <nishka....ashoka.edu.in>"
> set use_from=yes
> set edit_headers=yes
>
> My smtp and git appear to be set up fine, since those are how I have
> been sending emails so far. However, I don't know how to ensure that
> emails sent to my email account show up in mutt. How can I address this?

Maybe this will be helpful:

https://www.linux.com/news/fetching-email-mutt

julia


>
> Thank you for your time.
>
> Regards,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519937773-28053-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

