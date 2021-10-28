X-GM-THRID: 7024064041486123008
X-Received: by 2002:a5d:69ce:: with SMTP id s14mr5527781wrw.25.1635435381769;
        Thu, 28 Oct 2021 08:36:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4e85:: with SMTP id e5ls4289482wru.1.gmail; Thu, 28 Oct
 2021 08:36:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxivtlfaRAP43jTzD46LprnDarWmExkelbZQKHmG53Zp0cZ7qFwz9Onl8fZkEksGy1AjXnT
X-Received: by 2002:a05:6000:2a3:: with SMTP id l3mr6627162wry.12.1635435380285;
        Thu, 28 Oct 2021 08:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635435380; cv=none;
        d=google.com; s=arc-20160816;
        b=tIzi6wYUQnrsA/BooPRpIa8w1kpQFebAIYZl06r5171O3gfukVisjYBHRfAJ/hO+qH
         t4dfIIl02ubMQTIPKaouRXcB7JBInqOhcpvWyLIbwndAg8JWwy5LfREY13SR2EnBcuUw
         +nAe5d42iH1FgNeQgGXVBkYjvQbi/U7sD8U1EbTkP3OEirR1Mdf25mcgHnPu0Tl2wyy5
         RG46F6NmHW+Gs5Qn1ieNcCI+fcDAHQ5ZGZD5g6tpgEMTPm03dLVstzYSOi9ZlvPudKa6
         eZb495CvYqVlp/8rMtLTgbH77HJELkmIq3dH+cSGQqPPkN0Wh9w9pCWP2Cv/TaAfhwtm
         0nRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Km7RN9DuYhSgIdZd4vw5rE9R6RjCpFJ/7Jxi8UL+wpU=;
        b=PV+sN57RygXJYKQM/zUi9tuJeiJZjzBQtXjY5LeCGDKjSOoHWvdn2JkCvqDdxf/eEd
         XMjGyzIaR+tXaVavppDLJz8HiqQqbYfFM8F98bcO8m3r526WWxLlWj0Cx/AP3bbbuviC
         YTSXcKaQ6WyZH1WhBBJgIb/GEZuYjCuwHyEN59BuTSZ0RWmRBrowJuSa1MnW25mnbV06
         ckHwh5AsUPG5rOJhAKEJChuOqivPEzDwv54BJRL2Rjlfd9IArAxzroLguM5JOfbJo35g
         aq7bPkt5kd9KJcAMZ5u8THa7vlMoL8agBWZmDmOvg6Xhry17gaCW5bNt4UgPnQIu6tJr
         IxnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AlM+eueZ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id a10si301104wmb.0.2021.10.28.08.36.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 08:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AlM+eueZ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id h7so27061484ede.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 08:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Km7RN9DuYhSgIdZd4vw5rE9R6RjCpFJ/7Jxi8UL+wpU=;
        b=AlM+eueZXz8t3SOmFz7G6PaqrKh/8fZ7t4ebW1BfNzZVsiSmiuBcpXUbFbzFr80EPh
         b3wK5Fp0Dah+Kr1sNSpyk3ND5UYWlrL/QOBud8eo4PQUE0gfQoRFuRqEgC+ZOIoJMKVD
         4srzw4IwWjmkY1d/GYfmTHou9jwST8itfs7PmfHN/JidMIqJqyLQy1VyqeLduhjGFjyn
         6XUaxx0+1udNHyqUeGnqhCwUy1wftttRahRagX9OMuFb4FiDStKPkPdoxEjwwkPgSmBg
         CCcgJHeJRZtecoilsnWiJCaQtgJ/bzROBO8Pv3XJtxy4/e3M5GVe7t7ezA0qUiXdr1Cs
         3CTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Km7RN9DuYhSgIdZd4vw5rE9R6RjCpFJ/7Jxi8UL+wpU=;
        b=Arsc5I7X3TTogn9Y3+blmKuaBBTQc7pHc2F/gbXqWFq31q4HfgijLnB4cWvAVLBT8R
         3A96o8X8L8Qoi3kw0YxocsSv5rf5RIaywdGPcgu14c1zJNn/dRJmnkF3n97pY1iIQ9g8
         /LsrHV2CyixP0hltDF/qEU7THs8G0iMveTsNqYMktCgUm0lTEWDjin2yoIxmRvK+1qec
         tDTGdMwo5Sf+qO0+Txao41V0ST9TuobUTMX9xkthC3zBqSKer2bV907erdFDKAbK0+4Q
         Fy5tEXfo+aIq5b1a89Efc0Pv+cXEA0wgXgta98zStPF2xEacqDfz+0t+WTNcTuE5AupX
         rryw==
X-Gm-Message-State: AOAM531m7hkzkYNtkNDf4ddrsPkyt+2hCGVb1jC8omMMb4+6pmHhpEnJ
	H8rBtFT7NNSsM/SifIbDE/U=
X-Received: by 2002:a17:906:1848:: with SMTP id w8mr6316533eje.485.1635435379975;
        Thu, 28 Oct 2021 08:36:19 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-56-54-101.retail.telecomitalia.it. [79.56.54.101])
        by smtp.gmail.com with ESMTPSA id hv9sm1604735ejc.51.2021.10.28.08.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 08:36:19 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, forest@alittletooquiet.net, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 5/7] staging: vt6655: Rewrite conditional in AL7320 initialization
Date: Thu, 28 Oct 2021 17:36:18 +0200
Message-ID: <9038076.3kJb6oI6SG@localhost.localdomain>
In-Reply-To: <6d2590b127499ba7ae1e7bc36d71064a5262659d.camel@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com> <alpine.DEB.2.22.394.2110281505170.9518@hadrien> <6d2590b127499ba7ae1e7bc36d71064a5262659d.camel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Thursday, October 28, 2021 4:35:30 PM CEST Karolina Drobnik wrote:
> On Thu, 2021-10-28 at 14:36 +0200, Fabio M. De Francesco wrote:
> > As far as I know by reading some Greg K-H's replies to other
> > developers, this 
> > "<test> ? <true> : <false>" style is not well accepted here.
> 
> I thought that the expression is simple enough that it can be written
> this way. Julia nicely summarised why I think it's a good usage of the
> conditional operator. Still, there's no problem in changing it to "if-
> else" statement if that's the preferred option.

If I were you, I'd leave the patch as-is and wait for Greg review.

I was only reporting some words that I recall I read in some emails of Greg. 
But it is highly probable that those contexts were a bit different or that 
the statements were much more complex.

As far as what my personal preference is, I think that you shouldn't care 
because I'm not one of the maintainers. Above all, even if I were one of the 
maintainers I'd never prevent developers to use their own style with this 
kind of statements.

To summarize, you'd better leave the patch as-is.

Thanks,

Fabio

> 
> Thanks,
> Karolina
> > 
> 
> 





