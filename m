X-GM-THRID: 6526929159245004800
X-Received: by 10.28.112.15 with SMTP id l15mr1292629wmc.8.1519738768711;
        Tue, 27 Feb 2018 05:39:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.0.78 with SMTP id 75ls320876wma.4.gmail; Tue, 27 Feb 2018
 05:39:26 -0800 (PST)
X-Google-Smtp-Source: AG47ELs0RYxEOPvZH+k+kpk1Iy159+d+0MLFkcgbSkjW/c428Xnp9n260jPt9n4n4VKNwUSP3lfE
X-Received: by 10.28.50.4 with SMTP id y4mr1535954wmy.1.1519738766733;
        Tue, 27 Feb 2018 05:39:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519738766; cv=none;
        d=google.com; s=arc-20160816;
        b=a2VR2tbHgxBAf+jozudRl8q+t8xsOIBeke7uzi55LUyN5YC/g0prNfxj3Kc/IQO2p0
         xbAxIEa97grQI42nd2W3RHk7n265MmNsIywzNPdMCWYIaRO8nb6TI+WoN+c6YactGJOc
         y2d4UQd7xQI063YFA+MXphWZrwcUp4+3U/B3eyJ8o8/C/BsVbK4iF7djur1XVGOv0QyJ
         zl56tC7bWChbHL6Cj+UuIyOaFf7ccysnNSdg1Obo8ruTZHvdB0nXoECghr+xdUeauWxg
         fneeqomHNB+t2I6+dK57jcZGEjxIc+W9RaRu+1hOm9me3zwFwg4jnuHgFnHIGGkopnmu
         w46Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=b18aygCVuHOhD2/3/Pox1pbxhnTG3Nb3vof4AjW84GE=;
        b=mUTmnJLCcoP00mQXa89Dlnt8QXDsLOYTwZNL1HxQRIOh1EoUZEe6nBP8DmxMX2popE
         DW6mkaaVFHgd4LzOIITZMj8773Nlxl/eqG2u32JgttYGy7Ol5gVLEeXHbS4ElikBm0rh
         Oj5piHSju2FqMoueSjmHP2ow1XPfXS0304OJBuFWkQKPZsPsc+AXwcyV7XT9QAPbPlLq
         M1P/njQP2qzgqG2dGwwG25dv9Egt4DOqiXg8slA+UuHu3SgYTlemDAKTqyr/4uuuHYon
         f+WnR9g0bymdn5NRepqlP1bIcEfzBwTtAbW9SxeBZLiAWScTrQ0lwUcVk1s2HLNkCez6
         m4rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 51si120014wrw.0.2018.02.27.05.39.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:39:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,401,1515452400"; 
   d="scan'208";a="315488721"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2018 14:39:26 +0100
Date: Tue, 27 Feb 2018 14:39:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: Re: [PATCH] h [Patch] Fixed unnecessary
 typecasting to in. Error found with checkpatch. Signed-off-by: Nishka Dasgupta
 <nishka.dasgupta_ug18@ashoka.edu.in>
In-Reply-To: <1519737818-4809-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802271437470.18318@hadrien>
References: <CAOCi2DFEG2FRaZ2HE5g4uNHmztSvPFC=COEnZ6ucuAYhxDz6Wg@mail.gmail.com> <1519737818-4809-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Feb 2018, Nishka Dasgupta wrote:

> Hi,
> Thank you for pointing out the formatting errors. I have deleted the unnecessary [Patch] and added the driver information.
> I could not, however, work out how to separate the subject line from the body of the text.
> I sent the commit to the maintainer of the patch in a separate email as I was (and am) not comfortable with git send-email, though I am doing my best to learn. I have sent him the revised patch, however.
> I don't know why a and b are prepended, unless you are referring to the variables that I added, in which case I would like to clarify that I did not want to use names as generic and vague as a and b for the new variables, so I appended part of their respective values after the initial character for ease of understanding. Should I have used more descriptive variable names?
> Finally, I did compile the this particular driver (make path/ as on the website) and an output file was generated for the modified file, so I took that to mean it was working as it should. Was I wrong?

I think that the code is actually better as is.  Normally, there are not
floating point numbers in kernel code, so it is nice to see the int cast,
and to see what the numbers are being used for.  Checkpatch is not always
correct...

julia

