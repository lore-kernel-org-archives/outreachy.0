X-GM-THRID: 6522422209365934080
X-Received: by 10.46.17.17 with SMTP id f17mr146140lje.29.1518700532492;
        Thu, 15 Feb 2018 05:15:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.133 with SMTP id d5ls2034031ljf.11.gmail; Thu, 15 Feb
 2018 05:15:30 -0800 (PST)
X-Google-Smtp-Source: AH8x2255AYDdTgdwD4lB+GQmxhemkBu8yGkMxq4NjaFGZdoSi0ZFkD9fNl4q1SXM6FUsAedxQ77H
X-Received: by 10.46.77.79 with SMTP id a76mr146886ljb.12.1518700530912;
        Thu, 15 Feb 2018 05:15:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518700530; cv=none;
        d=google.com; s=arc-20160816;
        b=AR0k9lKIpAhKpBL36Hm7llM3XgEbwVbM1GWMAO2UNcoiUQkXnBv2EXPoAAIpYM8NQR
         kHQpxuS2+bCJJjxYgxaJkDh4yw5dQDlw3R5kzsjzDT0/yG3u8u/zdnSE/NilLv37oqVm
         I+JAROyyVNHW5tHXEuW25Gq7Akvf4oZcJd7tsVllRgHY+L7jcWoCKKyCAsaJHEv1P4NP
         zJAoY2fFL7sya7uXDeI8Bt0tIDrPFdkdj/tATwwq2Vy2mhqqIytYKT1IJeABIEspjuzu
         BvBBSdYknxSwyYhLeMbSlqKwYXdIJr+cO6i0SYWp9nqhIn1ZFA8Y0HIPE/wy28U1orX2
         qz4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=j9CZOn7h5gt9Dfm3h+PQ3AYaZkzgFgxp+ChIVBq6rqk=;
        b=eyYSBw8SWby7dOjK/nXi4VlCO3UsgOAymdfrVmWVXWSF2ae7mx0QXokUWZ4xopxukQ
         POgVKDWE9BKmCmB1raEX7zoGJiMmGjW+LqlvnsBB0qajE7Gdl73zxGUF9bwlduRyKtad
         nJbmXoc8iMRJ5TlG66+lm0d1Fq+GKWOG2YndJrUYlBn00uXQwigjZo9TLwzLhHl7U9gA
         XzdMOh/oQUGP/i9Jh0SB6E/hwsyNTZbGQ5HkDWi6IgqEDawdCrzdr7bnamhHW2WvWG0y
         we1XPJW2Rf+S6FmIwOHhelqNDwbD5pE72NydMw69pXlAnjFC4MEkhw92SFF3kFBws4dA
         rzjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w20si794488ljd.2.2018.02.15.05.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 05:15:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,517,1511823600"; 
   d="scan'208";a="313741359"
Received: from wifi-inria-87-123.paris.inria.fr (HELO hadrien.local) ([128.93.87.123])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Feb 2018 14:15:29 +0100
Date: Thu, 15 Feb 2018 14:15:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ishita Tripathi <sakurakhadag@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Outreachy kernel wiki
In-Reply-To: <0e16c6cf-6635-40bf-8fdc-afb0a37eb181@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802151412130.3152@hadrien>
References: <alpine.DEB.2.20.1802141547450.3340@hadrien> <0e16c6cf-6635-40bf-8fdc-afb0a37eb181@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_940_1791669913.1518700112559"

------=_Part_940_1791669913.1518700112559
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Thu, 15 Feb 2018, Ishita Tripathi wrote:

> Hello ma'amI was setting up Ubuntu using the kernelnewbies wiki. The link
> for Ubuntu 12.04 (64 bit) provided on thepage�https://kernelnewbies.org/OutreachyfirstpatchAlt?action=show&redirect=
> OPWfirstpatchAlt", redirects to the page"https://www.ubuntu.com/download/desktop/thank-you?country=IN&version=14.04
> .1&architecture=amd64", which shows error "404 Not Found" instead of
> downloading. If I click on the 'download now' link on the page, I get the
> error, "Not Found. The requested URL
> /ubuntureleases/14.04.1/ubuntu-14.04.1-desktop-amd64.iso was not found on
> this server.�"
> Could you please update the links?�

Thanks for pointing out the problem.  We will take care of it.  Please try
here:

https://www.ubuntu.com/download/desktop/thank-you?country=FR&version=16.04.3&architecture=amd64

julia

> Thank you.
> Ishita
>
> On Wednesday, 14 February 2018 20:19:21 UTC+5:30, Julia Lawall wrote:
>       Hello,
>
>       To start making a contribution, you should follow the tutorial
>       at this
>       URL:
>
>       https://kernelnewbies.org/Outreachyfirstpatch
>
>       Unfortunately, the wiki that hosts the Outreachy kernel
>       information is not
>       so stable at the moment. �If you get an nginx error, please just
>       try again
>       in a minute or so.
>
>       thanks,
>       julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/0e16c6cf-6635-40bf-8fdc-
> afb0a37eb181%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_940_1791669913.1518700112559--

