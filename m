X-GM-THRID: 6394971085965623296
X-Received: by 10.46.7.80 with SMTP id i16mr2021368ljd.5.1489063416556;
        Thu, 09 Mar 2017 04:43:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.8.73 with SMTP id g9ls661450ljd.33.gmail; Thu, 09 Mar 2017
 04:43:35 -0800 (PST)
X-Received: by 10.46.9.141 with SMTP id 135mr2233612ljj.19.1489063415496;
        Thu, 09 Mar 2017 04:43:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si950754wmh.1.2017.03.09.04.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 04:43:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="263844832"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 13:43:35 +0100
Date: Thu, 9 Mar 2017 13:43:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
In-Reply-To: <c301a39d-7f44-4c3e-8f6c-2350b5938d1b@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703091342440.3186@hadrien>
References: <cover.1488944614.git.varshar186@gmail.com> <58bf8051.081a620a.e7433.8064@mx.google.com> <alpine.DEB.2.20.1703081016060.3156@hadrien> <53167cf4-2fc5-4178-b963-c616822ae3b1@googlegroups.com> <alpine.DEB.2.20.1703091203100.3186@hadrien>
 <c301a39d-7f44-4c3e-8f6c-2350b5938d1b@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1317304817-1489063402=:3186"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1317304817-1489063402=:3186
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 9 Mar 2017, Varsha Rao wrote:

>
> Hello,
>
>       > However, here it does not match void and void * . Also gives
>       no output for this particular file.
>       > Why is it not recognizing the difference between ptr and p ?
>       (with the earlier coccinelle script)
>
>       Because there is a bug in the parsing of metavariable
>       identifiers.  I knew
>       this, but haven't thought about it recently...  I think that
>       once it sees
>       a *, it applies the * to everything that comes after.  Or more
>       likely, it
>       is probably parsing the metavariables as T * being the type, and
>       the list
>       of names coming after.
>
>       I'll make a note to fix it.
>
>
>   Yes, it is indeed a bug and thanks for considering it. I hope the
> following observation would be of help.
>
>   There was one more case, which I ignored as it gave false result. (using
> the first script)
>   Such as it could not recognize difference between declaration unsigned int
> __user *user_chanlist and cast (unsigned int __force *)user_chanlist .
>   Removed the later casting. The file is comedi/comedi_fops.c
>
>   -               cmd.chanlist = (unsigned int __force *)user_chanlist;
>   +               cmd.chanlist = user_chanlist;

Yeah, Coccinelle is also not good at annotations at the moment - work in
progress...  It was good thinking to ignore this case.

julia


>
>    Thanks,
>    Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c301a39d-7f44-4c3e-8f6c-
> 2350b5938d1b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1317304817-1489063402=:3186--

