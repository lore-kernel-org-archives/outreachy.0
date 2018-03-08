X-GM-THRID: 6530656197776769024
X-Received: by 10.28.142.70 with SMTP id q67mr36629wmd.31.1520543993820;
        Thu, 08 Mar 2018 13:19:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.22.70 with SMTP id 67ls35651wmw.5.canary-gmail; Thu, 08 Mar
 2018 13:19:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELvtOuhHungPOYxWCAWkQrfqUley9rCBtaqX7YtN8o3JvmrI+hdLYnots6TeC5lpOW9rqksZ
X-Received: by 10.28.8.21 with SMTP id 21mr38759wmi.0.1520543992967;
        Thu, 08 Mar 2018 13:19:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520543992; cv=none;
        d=google.com; s=arc-20160816;
        b=f/xlnmmKn7T315qtpEZ/Prm91L5GiLhDTw8iEMw6tl6jZFdyJqWzUvg52kvc50HJdz
         DTSeRZYhmYUQgDjp7ZYj5/DT9JDUd570+7vdo9foYM2RzSBXM+mlM1Dv2Kzs597yDqtd
         iVLrSO7TYXtuUBy7nr92ZS8cXMa3naOCgEIcWlgPfrOkejCKoEotBbKWvO0WY8H0eBwT
         riCAlVsCYk5lvkbIepmB8atRCeNyd18A8fX0+WYacjwat/sKfANBz7rzHIQZ34uF6wlu
         Yb2wR/J3EAZWQUNv5tsXjt3bWTFPd54fsRA+HBnRMNVCaXrRdPg+k7Rsjea0xVn5OONQ
         D4Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Oy0OKEXF+oDUH3NRlB/O+aFoVhw37nhL2I/ALK4JN4E=;
        b=e+ybQR5i5TCzBO+rfQneLz9XvJCN/4w7AGpuhPaYesf4ydYT9ImJcl69o1GpFPmHNb
         7a6ztirqkIjs+0PiGVF5kYU9z9WjMf76C7zww5Ue6/nAsPFh0AGJjcTJFVQMSAw+zJtv
         oTLIGXZe0ic9blQzGte/2y0YX0IpNCD5lCE+47TauqboRBqCRJxI8GR7A8UpR4Ilvc7N
         w1TQeeNlf+ewqmPBhEGqjYqwy9KD2BcpIpl9pd7CwBUATPCi815FCtR4/t4zeOdxIbkL
         865S/NqtyU6lldmFNX13D60M4HTS6ZUnBDKs1Jyz46Ok3bP/6/J5HcSNQUFtk5HKEaCG
         rpvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si596741wmc.0.2018.03.08.13.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 13:19:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,442,1515452400"; 
   d="scan'208";a="317114879"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2018 22:19:52 +0100
Date: Thu, 8 Mar 2018 22:19:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    William Hubbs <w.d.hubbs@gmail.com>, 
    Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: speakup: Replace
 simple_strtoul with
In-Reply-To: <CAC4++KCd3fAuzm3Pbz5oZEF=N9amgAd3tsBRgPzT1d39CGLF6A@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803082219200.2245@hadrien>
References: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr> <1520539425-16513-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <20180308204847.2bmei7z43tdqvsgg@var.youpi.perso.aquilenet.fr>
 <CAC4++KCd3fAuzm3Pbz5oZEF=N9amgAd3tsBRgPzT1d39CGLF6A@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Mar 2018, Nishka Dasgupta wrote:

> On Fri, Mar 9, 2018 at 2:18 AM, Samuel Thibault
> <samuel.thibault@ens-lyon.org> wrote:
> > Nishka Dasgupta, on ven. 09 mars 2018 01:33:45 +0530, wrote:
> >> While we are on the topic of speakup, should I also stay clear of the
> >> checkpatch warnings in keyhelp.c:102 and keyhelp.c:743 to add a
> >> KERN_<LEVEL> signifier in the printk() commands on those lines?
> >
> > That should be fine.
>
> What Kernel message should I include within the printk statements, if
> any? KERN_DEBUG,
> KERN_EMERG, KERN_ALERT, KERN_CRIT, KERN_ERR, KERN_WARNING, KERN_NOTICE,
> or KERN_INFO?

You could pick a few and see what seems best to you, and then see what
feedback you get on the patch.

julia

>
> Thanking you,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKCd3fAuzm3Pbz5oZEF%3DN9amgAd3tsBRgPzT1d39CGLF6A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

