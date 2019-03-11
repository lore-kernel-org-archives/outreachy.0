X-GM-THRID: 6666547009386708992
X-Received: by 2002:a24:becd:: with SMTP id i196mr403857itf.25.1552347051462;
        Mon, 11 Mar 2019 16:30:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls309726itm.5.gmail; Mon, 11 Mar
 2019 16:30:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQjG549pphZnWQpxTK0tbEdacGoA8QW6cC5HbtPSEpsx4Rd+RVOYDYn1LY3B2gHwPR36If
X-Received: by 2002:a24:9c85:: with SMTP id b127mr446813ite.36.1552347050622;
        Mon, 11 Mar 2019 16:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552347050; cv=none;
        d=google.com; s=arc-20160816;
        b=P8dyp497af4aofa0FqNfFAveh4C6HK1WUdTnluKtasoRVt75IyMOc6gMYjA0hv9ZRX
         uH9UUuoMD0y7tWddD8SN90bxNhAvMYdCOzGajQwqYcW7WvXXj5RKWIXg/mPdiYmba+zR
         9xXxzWcQcaZlERTOUG/9geRhlMpU6yw2MtSM7Kjn+Iu2s5WPmeT0EMG/zqmQitcCDcXS
         sq+xRSwdv5bcjOIIYKbnry554PkAt9k99WinDisxNAVIzzTEaAGE37K7oiY7GaKWQwJi
         eQ6UpILNYAvQKT5nbe8lFih04MoppfpIZpFelwB25JVJTMImqlMV4KjE7vas1GTCdI6j
         s1eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6tSB+Kdo3tpFYSnfQS4+cAqWGtzQQ6poky8rhnWayls=;
        b=c6ipNY8i7d/fTnOIxjg2H3ehGbbBQpCeK0z8D2yB93HVXvXkC6i/E5/owvdgrZ7DWx
         afRpDBpRGDv04qAllE8uhcnHRev71wPGcxqVT/3ZVN9tK1/QLsoBVkLHxVYHKBrnGvtm
         lojtP4pUyQ2uOE4td0xZ1woSyw/cY2p+kDrzNFRx96QW1kK6HLqh8OEQ9E+a718F/I+L
         8DyakI5HrameSyrxvAwcQ6SFUEiYq8SMmdZn1+svhAikBC9LI4Z0kbDIo7EphrDBvDBq
         Fgl9P45+8j9IDa170WTXc3JmW76f/V/5h34XEcErgtpmWUgdFZqxdptAu45Ys/dBpIvL
         gNCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hwv+qALb;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x131.google.com (mail-it1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id l23si295280ioc.2.2019.03.11.16.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 16:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hwv+qALb;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x131.google.com with SMTP id g17so1474142ita.2
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 16:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6tSB+Kdo3tpFYSnfQS4+cAqWGtzQQ6poky8rhnWayls=;
        b=Hwv+qALbFBn5qR9ohY8y24n+TYhgH8Xe+ejdkauMEv4/EsA4z/g7dDZTlUBEdPHUju
         /NoNgtz6V4ahJONAN1flFGuyNafVZFg18Pko+uoP0yXYXHZV7WmbhKtYq2f9Qo0LFt/0
         YuM6hG/gp/uoWUmsbAdpINId0ujAit0aTKNFi1dgI/1w1FxGk8ovmGUN3VQiOy09HcOQ
         OWdedhDkFBQYxNzday1+MF/VlwwuUPyBg/3rNyM2zlQMAM/dEjMhHna6L3iXkAy9v7P/
         0IV20lQvwAcXXRmPl+f3wckp4XabJouOABwpuhknoA2afKcetxvGlJ4HsPNNyXcLS67A
         Ij6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6tSB+Kdo3tpFYSnfQS4+cAqWGtzQQ6poky8rhnWayls=;
        b=D6UaHn1HzZpadmfKus3CKvh0/7zUrEKLDmBQSboWJXa87aRwRCZQNJcHbpM8QvpqSg
         2uEGLN0KlpjQjhdpmj1NnXoOOGa9lseHo4gGVEbb9RtltrDzKEBG5KaGEDLyK0tZMyqW
         dJ8XxKKoXN7qty/PnwGzldqy0zXXFI8vxdBYDIfO5p0jdZad9/IXwZ7YgmTE+Bk9Z2Ao
         XsL6fU65+hvtLkFT7rlg9LbBLlhFTK0jKEEoZljFOasq1ddige5AM0hF6M/d/vnpHviw
         03fxdc/55zkc9wXlPvcSmKoLm5rA95ceoU8cHKMXn1mSH4XJ9tdIdziyi9+RcaA7rtxY
         TNug==
X-Gm-Message-State: APjAAAUQKulNtELtYlrTeMjjmmvCTsOydoGA28rfG0h772ZGhXAj5/K8
	0O7k2MOvBSszg2VNn35Jn98ZmqBTwtXN
X-Received: by 2002:a24:62c2:: with SMTP id d185mr466447itc.45.1552347050328;
        Mon, 11 Mar 2019 16:30:50 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:b983:8640:fa8b:1024])
        by smtp.gmail.com with ESMTPSA id g2sm3130905iom.7.2019.03.11.16.30.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 16:30:49 -0700 (PDT)
Date: Mon, 11 Mar 2019 19:30:48 -0400
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: octeon: Lines should not end with a '('
Message-ID: <20190311233048.GA7187@branx011-Vostro-430>
References: <20190310211430.27369-1-brandonbonaby94@gmail.com>
 <20190311225120.GA569@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190311225120.GA569@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 11, 2019 at 03:51:20PM -0700, Greg KH wrote:
> On Sun, Mar 10, 2019 at 05:14:30PM -0400, Branden Bonaby wrote:
> > Start function arguments immediately after opening bracket.
> > CHECK: Lines should not end with a '('.
> > 
> > Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> > ---
> >  drivers/staging/octeon/ethernet-tx.c | 16 +++++++++-------
> >  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> Is this a v2 patch?  You sent 2 patches with the same subject and
> changelog, but the patches do different things, which is very confusing.
> 
> Please fix this up and resend both as a properly versioned patch.
> 
> thanks,
> 
> greg k-h

Hey Greg

So what happened was I sent both patches as individual patches
and since they had the same subject they now showed up under 
eachother in the google groups. What I realize now is it probably 
doesnt make any since to split a patch into 2 when they both do the
same thing in the same files. What I will do is send a new patch with 
PATCH v2 as the subject and include the changes I did in the other
2 patches as 1 patch.

Branden Bonaby


