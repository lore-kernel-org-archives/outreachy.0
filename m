X-GM-THRID: 6528077387977981952
X-Received: by 10.223.129.200 with SMTP id 66mr339268wra.17.1519936643815;
        Thu, 01 Mar 2018 12:37:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.1 with SMTP id t1ls1623668wme.7.gmail; Thu, 01 Mar 2018
 12:37:22 -0800 (PST)
X-Google-Smtp-Source: AG47ELu2huexnljELtJGrr5hG2t6/NoANu6lzrNBb8m9920ycjJ8DiScNURKTKDaIzmjT7MnMakn
X-Received: by 10.28.216.16 with SMTP id p16mr408421wmg.0.1519936642953;
        Thu, 01 Mar 2018 12:37:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519936642; cv=none;
        d=google.com; s=arc-20160816;
        b=p1XKiGePpM3RY5Me1PWXEw5UeDnz0ya61YJZQR+kFD12fAN6nt2gZGSgNjghyGS1O9
         ePauyCvl8/iHzd1YpCH0BB5KfdMaz/lTFQOHZK9sb4nFWydlcjOmkkbEfIHKi9o40f9O
         OjIfDv/iA7KMLXjX5QnDWQey2lopeImDmDloLQ52Wne7HBUuarfdPkwLzC+bUo2qroT/
         bc9qwaPdr23kt2jFTCEHvymL8z2opKNYq7enWavMWOFb4lu/6UapGr0bkaGAqVdTC66X
         iTb00cbsnhbLlNVlvpu5QDV9fumfqk1M/3mNYsZS4jumQ4uS6Y1pkzSOYpgkm4dPmNta
         Bx7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Nnc3G9W3gyKasUbnL6SEDuUtxMnI8TBEpkxv/DIXGzU=;
        b=vvjIjOrAXq8TLw1AhlovHa2a2KMRTtSHMs7edMgDaIOAyBVurH3y1sLZy/3dksE2xc
         wHB3+T/Ddj0hJ+wDFO4qmiUojixwGOtN9bGWl1qW3LDpvZX7uZ+u45rqTXbeUeJEOdcv
         JYbmTrzAii4P81qSAOPKdswe0daKvSVfJluYbgPdB4ZNI1XR6W/kla36E3gNZfH0rzB1
         /q9dQQM9u1UPve3V/pSIw71FqFdLrI1pVmpfptDImCDSkYvVC2YieQj4AqzmMTj/XgkE
         +56agPg0VuYqElrYq8SnUjLnijA4ZPuYxtrYcbxnTTXt7t9bdfCPe+A2q/ar8cSbNpgE
         tM4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m29si149102wrb.1.2018.03.01.12.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:37:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,409,1515452400"; 
   d="scan'208";a="256636399"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 21:37:22 +0100
Date: Thu, 1 Mar 2018 21:37:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Help with Mutt
In-Reply-To: <1519936448-27708-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803012135130.3474@hadrien>
References: <1519936448-27708-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Nishka Dasgupta wrote:

> I have been having trouble loading my inbox into mutt. Consequently, I
> can't reply properly to emails. How can I address this?

I think you will need to give more information.  Do you get some error
message?  Does nothing happen?  Does it crash?  What did you do before, in
terms of setting up configuration files?  etc.  Any particular thing about
the situation that you can think of.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519936448-27708-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

