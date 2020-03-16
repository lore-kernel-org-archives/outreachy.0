X-GM-THRID: 6803014756528553984
X-Received: by 2002:ac2:43a8:: with SMTP id t8mr3791lfl.82.1584372770044;
        Mon, 16 Mar 2020 08:32:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls2645722lfg.6.gmail; Mon, 16
 Mar 2020 08:32:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsz6CbHnfK5xOTbSLJJbUN4usocTsYfb53miHL5C0Ao6aWFU+GOKJr0gAlFurPg3fT9NqdZ
X-Received: by 2002:ac2:5f41:: with SMTP id 1mr16962464lfz.169.1584372768260;
        Mon, 16 Mar 2020 08:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584372768; cv=none;
        d=google.com; s=arc-20160816;
        b=HLvZj5ys/75KLNjV10tU1Y58PTKqAxQGfvxWUCzdvKE3lGy5lVCVEFNK1rj50e6ICB
         BZ58SAu0Ilpw/c11O6SVdOVKhbZIFfLVyGt8UUvUfE1gTmkBG3AFkzxVpYxxITIuYIAK
         bo5nQnEJfN3NIHsj1rs4jgx671xbVxoGMZEw8h+U5rQaVNO0K5IPXEGaCaP42K14KtEp
         VdqGY56/wHkGHXeW7DV4heP3bt3xTeRBZetdLRq1skgpissnC6kx4f7CEowtssWopi/A
         kUmTEgjt8fnR39QkPh7y1sVuaFXGtnd6Df8EuyjZ5OI5vabftnwuQi4tNtKhcpxn+ioZ
         DM2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=f7/Sm4/uXN1oLjquzHSX+Tm74nUvwuZ/uo9GOte3dJ4=;
        b=uCldI28U2r/Zlk3UgCG0O+WJfgDrJLzNBO3JF053Rg/hsbG/S4IyKtBPRGm3WW5KAv
         jWVlMrbs1HWIUwNvv3hh5KmYONfGe6UbIpaSsAQSc4wStmYCkzEzExYmhBQfEKqfOf/i
         PW5ejkHSnXyMpSLw9gcJNtT5ICckBkJNOchUeS4A20QCfoyTHDwq8/FhN31ly0uMqK70
         idhWp+c81IUQZNqPofCxFh6D2fEn1CWlDa0roKZl2EatcWXz5woVKi2V7DWvmnR0xvRC
         BJTtYoc40thHOPuSj6AFDGzF4boj14bm595uLCYzi5C0liy8KqKyhwNoguiTdeJN/evN
         Ku0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m11si21343ljj.2.2020.03.16.08.32.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 08:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,560,1574118000"; 
   d="scan'208";a="440584189"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 16:32:47 +0100
Date: Mon, 16 Mar 2020 16:32:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
In-Reply-To: <20200316162343.36bacaa7@elisabeth>
Message-ID: <alpine.DEB.2.21.2003161631270.5216@hadrien>
References: <20200311181134.GA17847@supernova> <20200312002348.06821daa@elisabeth> <20200313094046.GB3844@supernova> <20200316150829.370975f2@elisabeth> <alpine.DEB.2.21.2003161527020.5216@hadrien> <20200316153629.0fde04f8@elisabeth> <alpine.DEB.2.21.2003161543170.5216@hadrien>
 <20200316162343.36bacaa7@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Mar 2020, Stefano Brivio wrote:

> On Mon, 16 Mar 2020 15:44:05 +0100 (CET)
> Julia Lawall <julia.lawall@inria.fr> wrote:
>
> > On Mon, 16 Mar 2020, Stefano Brivio wrote:
> >
> > [...]
> >
> > >
> > > One idea might be, in run_cmd_parmap(), to avoid redirecting stderr
> > > here:
> > > 	        $@ 2>>$DEBUG_FILE
> > >
> > > if DEBUG_FILE is not set (that is, it's /dev/null) and we detect V=1 --
> > > otherwise, spatch output is thrown away.
> > >
> > > That works for me, but I'm not sure how elegant you would consider that.
> >
> > Actually, I was just going to try to fix the semantic patch that caused
> > the problem.  I don't really maintain make coccicheck, but I will suggest
> > it to the person who does.  Thanks.
>
> Wait, was it really caused by a semantic patch on scripts/coccicheck? I
> couldn't find anything like that in logs. My problem, ultimately, was
> simply libpython2.7-dev missing.

Ah.  Thanks for the clarification.  That is another problem that should be
fixed then.  You installed the opam version?

julia

