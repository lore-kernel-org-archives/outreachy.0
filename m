X-GM-THRID: 6947860813701971968
X-Received: by 2002:adf:d208:: with SMTP id j8mr177205wrh.115.1617692905335;
        Tue, 06 Apr 2021 00:08:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls10411577wrd.0.gmail; Tue, 06
 Apr 2021 00:08:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEk2twttJmxtBgkJQkD0BR6jyxRuWIYrr++hU+4hKfVzddDdrsR9ITCcQefCHby0r2wPUB
X-Received: by 2002:adf:fd48:: with SMTP id h8mr33395692wrs.229.1617692903954;
        Tue, 06 Apr 2021 00:08:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617692903; cv=none;
        d=google.com; s=arc-20160816;
        b=VNPLH+4qdvk1DBGmx8eikPpTJHRlSsyMqWiP1CTEDCGa0vkoL1V8g1PwE5D6VfV7ks
         4DrFPLCaYbaW1c4Tdgok9HVa7BO4Ldr2ajGjh+GFMewm/cIwzt3dd+XSTRDjcx6eVwYh
         rsDERTduBBwNUXE9+90QOKuu9A9uFaZQ/6+ddj8l1P9UtSObCAyLQeMnvW6zUNHZ2ObZ
         j0PWzoJLkDrMwLnpXSc8xu38/QEzqFR1Wc2JCogtqvRIDQ5l/UPBQW117QHK+V0IaHdH
         JK4twUr+VsQhGPx9lCIoUNZZ9hTHliv5k5uhxsLTt7Jxus3BhUy3gYJMnyzbpjJ5gis9
         mMcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BZMuCZHitRJYTy3JBJr/A8LQNWX+MBhdkZb4xixL7do=;
        b=uPQe3cErWlLXcFS4FDe5HLz7QGdEDjAg44o0W+XDhOPEjxddFpKj88YY9q52ipETea
         A15vlsvESwRM9e4k5Ru1gCtAnL37qQCzROfuj3tkF87uWLilRkhWGA2ebd4d08sUwwxX
         uE7yekEwBG86cfw3FATRJSKHTZ7Xxhn8OmJPBKewoHU1ZRJR6N/4z+dORAhKZ0hvRA+P
         Si97J7U1hMnvwMB8jjxNL+ckprnCYx+lzLYS9+Ikba2jwEP1NwlzOkETJy87oHSjARCD
         Fjk6O5I58e5qaiUytE+UwDgwS2DnuEgw9gMGFWcl95Tjf+kV+S+KTrv+mc+g7xGbAUzr
         aCZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JEjpjW56;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id l8si1228763wrz.4.2021.04.06.00.08.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 00:08:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JEjpjW56;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id u21so20193668ejo.13
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 00:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BZMuCZHitRJYTy3JBJr/A8LQNWX+MBhdkZb4xixL7do=;
        b=JEjpjW56lnvbYZnkI1q88FPFpxsVzuP2oWp9AS8Zg3PgMNdA61irxotx4uOwZ73nL/
         HLSfR3jkup/Oxb+GpEw7GoBe9nha74mk1t8X9v0tq25Ba+8W4U0jdI3byQyK6QA5eATi
         RiPdxrj34jK+AepU/9w5ntM6OdB1mrGFDCiJnemGX0WTjZbHgRG2gWJTr8vHZ72nSZO8
         +VNfPmgmzmk4nPhWaY8vXpefSShSGOnpMy8dBEkdiPC2CehiqsbivhZps6rn/M3VfnSK
         4uQc4++bhW55+T0XLbmuYVAM4hcO4ejmq6cN82oH1qr0lTjbxBvH43UaSexeVondM7hZ
         6nQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BZMuCZHitRJYTy3JBJr/A8LQNWX+MBhdkZb4xixL7do=;
        b=bkHx21CK8W59hpf+hdkPbHS9PAWmD2WoqBeHMcYAe5kgv4s1VOvvqnOV7HC1pzO483
         n47/ycSEgmfTzgmSUVYHmMFtmX0V5j3lRu/viFVqgNEMtJsUqMxj1UHe8Gpk5WBcyY5k
         i7nWmfwC1tHg84Ohzh/0BPBPqODJpbEVorrhHKOlZS94ZeCbfRZJR2kS7KBS0W3dNBYy
         pWs34822iuIP8sNnUwHKxZXNEL93vi4QmHQnH/p+Nz2u8mSNI9mALscJfcEUA2MuBB8U
         qdFstU7eDbed9ooKP4WI8Jqzm285EHjidzjW3nUXnlEP0C7A8bx2vqY+aFnbfMySoZxy
         K4wg==
X-Gm-Message-State: AOAM530D5wJRmjUEIhnWZ9TOelInyxA/EhjsoHDCSyMieZz8I7M1kYJZ
	0bs+HCXdWpmnXoiaV5A/nq+59gkDjc27mAEn
X-Received: by 2002:a17:906:49c1:: with SMTP id w1mr19181238ejv.178.1617692903790;
        Tue, 06 Apr 2021 00:08:23 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id s12sm7998786edx.18.2021.04.06.00.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 00:08:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in Hal8723BReg.h
Date: Tue, 06 Apr 2021 09:08:21 +0200
Message-ID: <3909721.0tKxYtM2Wc@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104060839310.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <1851038.q9TLUjBrch@localhost.localdomain> <alpine.DEB.2.22.394.2104060839310.2882@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 6, 2021 8:40:37 AM CEST Julia Lawall wrote:
> 
> On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> 
> > On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> > > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > > >
> > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > ---
> > > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > > >
> > > > You forgot to cc: all of the needed mailing lists.  And your subject
> > > > line needs some work.  But the biggest issue is that I do not understand
> > > > what this patch does at all.  What is wrong with the original code here
> > > > that required you to "correct" it?
> > > >
> > > > confused,
> > > >
> > > > greg k-h
> > > >
> > > I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists
> > > and for the subject I had already sent a v2 patch that had
> > > all the required tags (staging: rtl8723: hal:).
> > >
> > > I think that what was wrong with the original code was that
> > > the #define values were far from the symbols with random indentation.
> > >
> > > For example, I changed something like:
> > > #define SYMB1 		0123
> > > #define SYMB2 5678
> > > #define SYMB3            9ABC
> > >
> > > to:
> > > #define SYMB1 	0123
> > > #define SYMB2 	5678
> > > #define SYMB3            	9ABC
> >
> > the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.
> 
> There is surely a difference with the use of spaces and tabs.  If you
> change something about the defines and this problem shows up, you can make
> another patch in the series to make the spacing more uniform.
> 
> julia
> 
I have not this problem in the file in my git/kernels/staging directory, it just happen when I see that patch in KMail. When I open it with Vim, all the defines are correctly aligned in a single column (that is, the correction I made to the indentation levels of the defines is there). As a consequense, I suppose that the patch itself is correctly formatted. Doesn't it?

However, what is really important is what Greg K-H thinks of the patch. I'm not sure I was able to explain to him what I've made and why it improves the readibility of the whole file (may you please take a look at the original in Greg's tree? You would see that random levels of indentation I'm talking about). As you can read above, I asked him if I should make a v3 of that with a clearer explanation about the work I've made on those random levels of indentation but I haven't yet had his response. 

What do you personally think about producing a v3 patch with a better explanation of the work I've made?

Thanks for your time and patience,

Fabio





