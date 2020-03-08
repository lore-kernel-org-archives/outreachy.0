X-GM-THRID: 6801781024772587520
X-Received: by 2002:adf:c64d:: with SMTP id u13mr15158720wrg.326.1583663644588;
        Sun, 08 Mar 2020 03:34:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:cd01:: with SMTP id w1ls3836276wrm.0.gmail; Sun, 08 Mar
 2020 03:34:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1K82LVIufOcWAkzDYOR6rLj+kvfBXUx/Q2qDDtw/DNNciXadVrKvYOYIUo53x80oOjgl4
X-Received: by 2002:adf:b60f:: with SMTP id f15mr15318474wre.372.1583663643262;
        Sun, 08 Mar 2020 03:34:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583663643; cv=none;
        d=google.com; s=arc-20160816;
        b=MB7vgEVFjLQ+luCLtuh9IbjOIEVTJC+H/SHiIz5lXU+NGNn8BddcOTWOS5xvyJ3atr
         M8F1hO90RDok1flyVYxYM11HLvnmBrUMY3wlFCOtkFqSrRQyzWAva3RjwO7ZvTGllivl
         9cpaLMFFEpMRlgpXMyzR7FkYib4XuKEjuA8rT5Zj4xCUJp97q7WuD6EWPfK8V2gSee6x
         xdfoShO2hMOdBDOH1Jx27dzsiNJWq95BVM/NTdsAh1ZfMH6xHnKVyCuTo/w+7G1+u/2q
         CS9ayQTaLtqTSBS1HNLLueQo+HisTFF4BYuApMQK7ZnKBI1T5tlKmggGXtNiRGtWxuEn
         +UQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uT2Kaqn++RyTMr3GEIK/3s0m7zZNfNUEGKPcgAimuJ4=;
        b=xS8KQxTspP6qeAaOOu0I9VgTOsXnBqYRXQiTqhekg8rAyab30TnPObIq20vpHYdBdI
         8DB32BeZA5pJlB0AtCz3hVgoqaFUbsUM5gl1od9v1TNPQvGPN9bNrq82lHJf72iqYdRe
         jkmWpjvlF9WmceCG9oDTKl8Ns1P6WXaPfkP7IA1phbzLdyZ9X5M6rBZZZTA1CjepSfvs
         8wBdLGiepKwfFIlMkcGTcw6utNaVKwqK8phZQKVp1MrRHCAHi9PT7CLHE6zgaEm9LhbO
         N/VIyma+KsPzs377GoBdWaskWynrO9qXFlSI5Z83joIg6eCc5RzCWwREEB0UXkJ9vhfx
         Jw+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q202si318682wme.2.2020.03.08.03.34.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 03:34:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,529,1574118000"; 
   d="scan'208";a="341656053"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 11:34:02 +0100
Date: Sun, 8 Mar 2020 11:34:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Sending patches using other Email address?
In-Reply-To: <CANTOzWF=FTWsMtRXZnvPZAkLAkOPqJ9bpXtHPeD6OH00a1ZkUQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003081131500.2400@hadrien>
References: <CANTOzWF=FTWsMtRXZnvPZAkLAkOPqJ9bpXtHPeD6OH00a1ZkUQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 8 Mar 2020, Payal Kshirsagar wrote:

> Due to some security issues with my email ID(The email address which is
> associated with my outreachy account) I am not able to send patches neither
> using mutt nor git send-email using that email ID.Can I send patches using
> other email ID and record those patches for the outreachy account having
> different email address?
> Will those contributions be considered or not?
>
> Please help:)

I don't think it matters at all about what account you used to sign up
with Outreachy.  If you are at all concerned, perhaps there is somewhere
in the application (I have no idea what it looks like these days :) where
you can explain about the different email address.  But I believe that you
just attach links to show your contribution.  The email address is not
part of that.

julia

