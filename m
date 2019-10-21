X-GM-THRID: 6749515623301120000
X-Received: by 2002:ac2:43c2:: with SMTP id u2mr14059130lfl.61.1571640777665;
        Sun, 20 Oct 2019 23:52:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:107c:: with SMTP id y28ls571393ljm.7.gmail; Sun, 20
 Oct 2019 23:52:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjGGLEWPgHgKcFpBVw6MyO76SjEiW5zYLVadipcFvlauMpuJJORiJZwI5+W/Ci9kRdWR0r
X-Received: by 2002:a2e:9112:: with SMTP id m18mr14229218ljg.75.1571640776722;
        Sun, 20 Oct 2019 23:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571640776; cv=none;
        d=google.com; s=arc-20160816;
        b=VTxo8c68g9WOPIrDgCAFdm9NRh0XN6XK0fCSZFFecBci588DgFryy/xAZl9G1xzX3f
         mbNlbVM0F5h54aSmz/COjYJkL3gfvaxpEVGVLkT1675jwnFQTcXEgyhx+U1PfPymtHmb
         Ze8bJkgfxiligDi7lEQ5BzS7VeN7TLhsTqi0lY1BWcyJWKrbJH5a7RgqiUNuCiQoGNVV
         nzmpsJRZRBDP9KbsS99RHBlYC7XTtFwi1pROMRv7Pcka1lUafdjjFZVREQDLq7q2NrgU
         wZUIM7AcMLoYiMcWKQVC2NOPczJn370jEcIz4UkaciJwaFZ2R6fWx34WgD6kt3ihLSLZ
         qCig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LuobqEl83tBhFSc2uoL10qi/akD8+eO/KFp/lKzryZk=;
        b=wMmozi3tMbVmiwshLi324uATH1403bR+b6+5qHS/0G0TOouJU2T6CW64wxh2gR3vb/
         UtfA/wKRzkRGLbDqYg2RtXdk0d2ZiD4SJCmg6ggygIEjM4J7duISnGk5EA7rdRg5o24Y
         EDpg25Y4Q8p0eN0O2h9noRJusYDGcQy6aH+jxXcLNucCGAGAYzP9NeXO+pE3wPGYJHw8
         sKOv/BAD5nr1snuaPcd1ZSlTbRN2OjykqB6s8FdLWgVs4HcAJ2+hbb8VBc18xY8cMpmx
         bCdlPXWmv7C4UcicJdjDLI4ftJoujuU4EwJM8QPlqXMnYL5MWXEqaaIkCdzdU/XIP5tG
         FLWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y6si838164lji.0.2019.10.20.23.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Oct 2019 23:52:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,322,1566856800"; 
   d="scan'208";a="407139933"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Oct 2019 08:52:55 +0200
Date: Mon, 21 Oct 2019 08:52:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    Jules Irenge <jbi.octave@gmail.com>, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
In-Reply-To: <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910210850080.2959@hadrien>
References: <20191019140719.2542-1-jbi.octave@gmail.com>  <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>  <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>  <20191019180514.GI24678@kadam>  <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
  <20191020191759.GJ24678@kadam> <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> btw2:
>
> I really dislike all the code inconsistencies and
> unnecessary code duplication with miscellaneous changes
> in the rtl staging drivers....
>
> Horrid stuff.

I'm not sure what you mean by "miscellaneous changes".  Do you mean that
all issues should be fixed for one file before moving on to another one?

Or that there are code clones, and all of the clones should be updated at
the same time?

julia

