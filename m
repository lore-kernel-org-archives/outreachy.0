X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:a40f:: with SMTP id p15mr12251999ljn.440.1618062821587;
        Sat, 10 Apr 2021 06:53:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls955381lfm.2.gmail; Sat, 10 Apr
 2021 06:53:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxSq1hBVXVtX51p/59/+641UE/HWOwWPDRNBasOihAqf6KaGvDXWIzPaXdT6RqAYgmAsGLh
X-Received: by 2002:a05:6512:33d3:: with SMTP id d19mr12971858lfg.363.1618062820142;
        Sat, 10 Apr 2021 06:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618062820; cv=none;
        d=google.com; s=arc-20160816;
        b=LyWUr2gsE44O8GN9JBApGuG7jZryKIgt26hzogPKw3goHVbL08I/MkGVs/HuqAanGu
         TxNketp35NFnhW6opYE6KyVYGwF+5C+6R28pFRx36/V2rNPqa+GwOuPP1VFhVfUVBf25
         7UUo8k0WBkZUnzWAdS4f7JNnEvEHk2uUUTvHpp8mm5UA3Zl45GgPSLEBQT+Otdmk3/7u
         wQ1z0B8IRSfEHkKa0z86at+Zy4/4R6ZrQWQvQlyOq/Wq0XdvJQRb0NUlMII6XKgMZlxY
         1GoC1sBXHl8mOJdCIs0wq9XHFwKY7ETQs0FI493ElrIblNFR5ntVAk9St7k3draXcIqm
         PH7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bv2vUSAnN3p10ry0IvtHE0T+2d/JPvTUdYnOAvNQIfM=;
        b=oEIuezqsmJ9KsYo+jTSCF8JgKNGC1vb/pBSojVDEJ+pBZW/Ofoxo+R+aP7Yt1Je++8
         Zux6i4MDtVb/8e5vQQAgROeosJKwxFUMnk2yx7YqNAk/JzOOFR/FTUruq6C9OSLmIGd+
         Nrg3rIwIzP+VmbckvZ7QYngQDPK+pQ/DuQFoGDr46jLu+LlQIX0SSayUYuYbgyxmSGlL
         3AhECkpRaUZQiCKrpu4BhIJAnQiHEJrGULYnA0OAwqLeSdcYj82qyijsePQRZ5tSziuk
         ynb5k18dexRQsA8AfMOrkUhbxqhHhIaRC2pxlDOzRr+ygBihHDZoZLVvBmDq4J/TUFcq
         psRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z5q6J/B/";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id f7si350923lfa.0.2021.04.10.06.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z5q6J/B/";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id m3so9744712edv.5
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 06:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bv2vUSAnN3p10ry0IvtHE0T+2d/JPvTUdYnOAvNQIfM=;
        b=Z5q6J/B/RehQpXADwE8ru8iJSam25LnH1sQlgPRhW/X8zGcawKP/h0JMmw611R9Z2y
         FYRd8V9JKBCqbGRY8s6aVaz9IuB61CD9SYVuyRnR71XmDWDydhMxrjWuEWKIUinKo6HJ
         CEb0SRjlM0WLAsZDnybvK16NP5tKzBhWXM2D4foXvUQJYFcme2PEQNvLYKzyP09yVJdY
         YHTNzGxLMQ+zm/nb+2/QOqsnuJ2r23z9yCThKZI4bL7FF6DDC+RCnwsHZu5nTYJbh16R
         zQM83k/gg7PSuOH0s52vCceihWfdjGEbpW6gRw6Iu91s2OVFQe1FFm0QdOPAEuS7rC7x
         Ueug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bv2vUSAnN3p10ry0IvtHE0T+2d/JPvTUdYnOAvNQIfM=;
        b=AkUqQsWg2+gc0aD0M7+K8OoxNnp/iEP/Ojgq6ibAViXZdUr5Oy5OZh9ShT8vm4q/0q
         lTcO9gJBom9k19hzHo1d8TMb1NJZMv4Sr0FVAS/9fxYtkUif+ZJJm5c/aPVtlTx/58ds
         8WxFmttveEQRIwpYE3QhtVmcbdU+phoe6oQiphsoTgmvuhQJ1O/iLNQ6tHw3/IY6xPyQ
         zZGO34DeSb2xwRLEiLmShq6Ksx7zf0aEI4EdlFlWr5iYWEWfKJT4PvAn5b7dcfMN+pgt
         GiUL5Rwp2v5Ttnc5Xf07GuMYd29GVrqEnOtKfwF+gKpmY9jAMuEIalOveDxTak7yVkgv
         AJAA==
X-Gm-Message-State: AOAM531PxQB3Fm6hapUq+VPpokud50zb7alQlD5Dj5HKuYg06Tebz9wR
	I2wxNXRDz4QatvHLDRAHE0SQkrTJ7oFfkKKp
X-Received: by 2002:aa7:dc0b:: with SMTP id b11mr22171923edu.124.1618062819950;
        Sat, 10 Apr 2021 06:53:39 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id lj21sm600651ejb.74.2021.04.10.06.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 06:53:39 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 15:53:38 +0200
Message-ID: <3114102.qbl0ZuBMXl@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104101524260.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <2186059.xkuF2sVEJi@localhost.localdomain> <alpine.DEB.2.22.394.2104101524260.2975@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Saturday, April 10, 2021 3:24:43 PM CEST Julia Lawall wrote:
> On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > On Saturday, April 10, 2021 2:12:28 PM CEST Julia Lawall wrote:
> > > On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > > > On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > > > > > That variable has global scope and is assigned at least in:
> > > > > What do you mean by global scope?  None of the following look
> > > > > like
> > > > > references to global variables.
> > > > > 
> > > > > julia
> > > > 
> > > > I just mean that fw_current_in_ps_mode is a field of a struct in a
> > > > .h
> > > > file included everywhere in this driver and that the functions whom
> > > > the following assignments belong to have not the "static" type
> > > > modifier.
> > > 
> > > OK, but a field in a structure is not a variable, and this is not
> > > what
> > > scope means.
> > 
> > You're right, a field in a structure is not a variable.
> > 
> > > int x;
> > > 
> > > outside of anything is a global variable (global scope).
> > > 
> > > int foo() {
> > > 
> > >   int x;
> > >   ...
> > > 
> > > }
> > > 
> > > Here x is a local variable.  Its scope is the body of the function.
> > > 
> > > int foo() {
> > > 
> > >   if (abc) {
> > >   
> > >     int x;
> > >     ...
> > >   
> > >   }
> > > 
> > > }
> > > 
> > > Here x is a local variable, but its scope is only in the if branch.
> > 
> > And you're right again: I needed a little refresh of my knowledge of C.
> > 
> > I've searched again in the code for the purpose of finding out if that
> > struct is initialized with global scope but I didn't find anything. I
> > didn't even find any dynamic allocation within functions that returns
> > pointers to that struct.
> > 
> > Therefore, according to Greg's request, I'll delete that stupid 'if'
> > statement in the patch series v2 that I'm about to submit.
> 
> I'm really not clear on why the if should be deleted.
> 
> julia
>
I'm supposed to delete it because of the review made by Greg. In a couple 
of previous messages he wrote:

"If this is only checked, how can it ever be true?  Who ever sets this 
value?"

and then:

"Just delete the variable from the structure entirely and when it is
used.".

However, like you, I'm not sure yet.

Thanks,

Fabio
> 
> > I've really appreciated your help.
> > 
> > Thanks,
> > 
> > Fabio
> > 
> > > julia
> > > 
> > > > Thanks,
> > > > 
> > > > Fabio
> > > > 
> > > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> > > > > > pwrpriv->fw_current_in_ps_mode = false;
> > > > > > 
> > > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> > > > > > pwrpriv->fw_current_in_ps_mode = true;
> > > > > > 
> > > > > > drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> > > > > > adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> > > > > > 
> > > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> > > > > > pwrctrlpriv->fw_current_in_ps_mode = false;





