X-GM-THRID: 6803926658306801664
X-Received: by 2002:a2e:9c4:: with SMTP id 187mr715083ljj.89.1584489758340;
        Tue, 17 Mar 2020 17:02:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls3323153lji.7.gmail; Tue, 17 Mar
 2020 17:02:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsX0gsbqsLdTFZmVj889/2x3r1aTOpKSLhMehl3GbETJvuji/U92uO8f1fE8XmOEXPZWjeT
X-Received: by 2002:a2e:b609:: with SMTP id r9mr695649ljn.105.1584489756767;
        Tue, 17 Mar 2020 17:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584489756; cv=none;
        d=google.com; s=arc-20160816;
        b=t9Y2b7yBlY0n8f3jFeSBUMzxj6So53il8sk7Tf2WajXtyedSNv6D994kamFVbkRaXO
         5TssXk1u+rIY+GSpbke6Pno4mBDSh/gw+OSbHaeGAQ4FCjWkmh2d9x4bGeNj2k7kiO+m
         P2JWidzvJMg1EoN4XQQJA6+wIci6fTHNjpoCG8R98VhE7iIgAcswpcrfPY/IHcK89EwX
         PPKhRQ5wDEU33aPcrssD6YANtHQiUJt2Xx8QPaey5B3xBRRoeM8XXi9qoYFYVx8Zccf2
         kGoVsN4GrJ/+xHn3kEiMlj1LCrTJMN3COM7q6LNCmN5shXiDWVjr7lwWwExxuJuWK+2y
         V9dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=F6FERVfUjx9wPqCnC2hId3X5KrQCR3XKoHF+ii8/AbA=;
        b=zilhqroIhaYAtbZklwadHXM4Q7HPmnLiPMHPRgttf+gQYm8PEme6tkUhvMwof341DU
         iuVYNZpTjaq00RmY+ypNUt32lxCsQQpMT6Twv5waXN7UlrsR17prhPxif6KzaX7IM5sn
         WnIS8Ypl1WbMGp7C8FvDu+FiU+KTYOO5j1ltcQOy/KQhXh6gZVgnW4m44MMc1MMvJ0cz
         hQ8oANcV91V9s4Vx0G31E922bBvTLKh5jmRWxR3eHnzpGrWWq6q/gBWd9oQ6KBTEQ1/T
         XrcVJWpgmuCjhqyp97yvPOwX6/lhOI0uOdMeSGnPEInnz0Xz4UwHhBM5ktF+LxZx/z/f
         y8GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id g23si184855lfd.0.2020.03.17.17.02.36
        for <outreachy-kernel@googlegroups.com>;
        Tue, 17 Mar 2020 17:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3573 invoked from network); 18 Mar 2020 00:02:35 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.223.67)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 18 Mar 2020 00:02:35 -0000
Date: Wed, 18 Mar 2020 05:32:29 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: interface:
 vchi: Fix longline comments
Message-ID: <20200318000228.GA624@tulip.local>
References: <20200314050955.GA1504@tulip.local>
 <20200317110008.2152e405@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317110008.2152e405@elisabeth>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Mar 17, 2020 at 11:00:08AM +0100, Stefano Brivio wrote:
> On Sat, 14 Mar 2020 10:40:07 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > Fixes long line comments in C header file.
> > Found using checkpatch.pl.
> 
> Same as Julia's comments for your:
> 	[PATCH] staging: rts5208: Fix long line in C func call argument
> 
> Also, C99/C++ comments (//) are not allowed by the coding style. As you
> are rewriting all those lines anyway, you should fix that as well.
>

One thing, I read somewhere perhaps in Documentation/process that C
headers should use // comments, else breaks with some compiler /
preprocessor. Correct me if am wrong.

Veera

> Please re-send.
> 
> -- 
> Stefano
> 

