X-GM-THRID: 6670195041552564224
X-Received: by 2002:ac2:44a7:: with SMTP id c7mr820876lfm.7.1553065102572;
        Tue, 19 Mar 2019 23:58:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:121d:: with SMTP id t29ls151041lje.4.gmail; Tue, 19 Mar
 2019 23:58:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwc/JDyzDN3lyy6Rp2Kkb/KzkGb62wiXc44inMZH9ZrPJDNVGAoBV64xFikIrQf3frwAxwo
X-Received: by 2002:a2e:944f:: with SMTP id o15mr1589207ljh.28.1553065101750;
        Tue, 19 Mar 2019 23:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553065101; cv=none;
        d=google.com; s=arc-20160816;
        b=EZowZv2UWrFssgK8yOrGuv/ZfdzV0rlWlrAVaT2OPWBcUr+LW6XGLNLcIVbwpO48+5
         Ief5iZGJWmo2kvqVbRfpVuOSTazwP+ZF++AP+VIirAwY5MI5+HTQ6UzwYnU7qASedPC/
         ABtTXmY/3nlECRttFglm8vFpesKZgSOvX7m9VpU9H5FK4Y+RkgNaNy/WLcVAdlJACB8p
         RSewSXqZs3JofOC3Ob/RvXz4Dub55MNEWZbqsqqgd/Z4hXQn+FRV6WxTpzNrtXVJaV4H
         Qel62UfERlX2UDRZtnkvmxY3096Ryx9ay3abLOgd7TI74eQ3oZayLzBqPRWbEylTk+Oa
         dVLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1Qx9yD8DXZzoekXlJhXHjfoDn83FEFix7O+H0w3Kdxc=;
        b=BpDd6u+YCze455ynyVeFd1uTkNnthB0PybyOMSikEcC+PRyka8wZIXZLaD4fFjIvuu
         iemoAiKRy0umNUQ5L84Cr/NVi8AhXaqeQ55lVxbJ+dwLePfsEkZBqIJKDpFyqK2ly5T+
         shSkE3Rt/HLc88MZDlGPX/Wp2UlwGXQlJVbzEy6cwzp+hylpp0/WMkdVahtU+OSFQkou
         JmQNWGyJnWvGbIj1cNjiz1x1Xx4lbVE/YpfS7kpeSIb7UG2+J+NflopxYvd+vZJeVNOp
         OytrkUwtlVgDs7Urfm3rojhGqEn8kzwHmA/KQ1PGftZAwjFJ8B1dlRVtU1RcZLkVVwuT
         Q8lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 19si35667lje.4.2019.03.19.23.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 23:58:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,248,1549926000"; 
   d="scan'208";a="374824310"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 07:58:20 +0100
Date: Wed, 20 Mar 2019 07:58:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Nishka Dasgupta <nishka.dasgupta@yahoo.com>, johan@kernel.org, 
    elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Remove parentheses
 around variable
In-Reply-To: <20190320064724.GA11556@kroah.com>
Message-ID: <alpine.DEB.2.21.1903200756330.2593@hadrien>
References: <20190319200308.10710-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.21.1903192104300.2460@hadrien> <20190320064724.GA11556@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, Greg KH wrote:

> On Tue, Mar 19, 2019 at 09:06:04PM +0100, Julia Lawall wrote:
> > This didn't arrive with a From line that corresponds to your SOB.  You may
> > need to put From: Nishka Dasgupta <nishka.dasgupta@yahoo.com> at the
> > beginning of your log message (after the subject line) if you aren't able
> > to have the message come through with a proper From line.
>
> Odd, it looks correct to me.
>
> And you are top-posting :)

Well, I'm complaining about the From line in the message, that is above
my comment :)

I guess that if Nishka has you explicitly in the CC list, you get a
message that looks fine.  The problem is with the ones that come through
the mailing list.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190320064724.GA11556%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

