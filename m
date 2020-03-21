X-GM-THRID: 6803716874412490752
X-Received: by 2002:a02:ac09:: with SMTP id a9mr11711239jao.128.1584776125437;
        Sat, 21 Mar 2020 00:35:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls1389233ioe.2.gmail; Sat, 21 Mar
 2020 00:35:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtWMEeveR3lkLhtV77UW8rklqX0fWcniIHs0H48e4zuTcgyNM7uYoKdQdUZdTunllpuuewq
X-Received: by 2002:a5d:974b:: with SMTP id c11mr5054040ioo.63.1584776124324;
        Sat, 21 Mar 2020 00:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584776124; cv=none;
        d=google.com; s=arc-20160816;
        b=UcFA/JthuaKwLs+s7tVXqvx07lDAcxJM3ZxOGENZraXR9AndgbjHUokV7VnzFBHLV2
         a8CnaqnIOKPZzF5lN8LUQFDDkLPbj3YXp8cBmO+xwoRxGfVTWONvOKSfIYH/xF+IKi7N
         GpurnSlkeyu7PlzISzgZv2I27j2MQe9pOAmqeqIhX1YK0AdoUXXKcgOVTbNnwwVRkn56
         0ZnDImvRUhV5g1/xnt17r1fQAZGHXUxbwtUXmz35wP2IVe9VYuoszL4Z2Iy/HhOTwYDT
         IXNT5BhmlQJsRzkpB31bCU5+KrLIy/DKSYLhsxiW3uB3xNp10x/SmUQHtglyoQQAL6+l
         QMRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=dN2gc2VL/tWJcbYaiy/5AjuwzdqE+wZx4ZEls90gwPY=;
        b=ltqk1BVN2QKAbMqAxIZwPydRr9VfhsFPIG7t9ahT+G/MCwGBWWW6JMnQX25i78CCDS
         dxYIJbruQQmpJHEzp1kUgG26/Zu98Zxav813a2T5oHo3TXagagQsj8AL6tIg94OElQ6/
         96+E7nJDG8muzn4ZEiC7PTinQrFZmDAgpsPoaJO5cfRtcN14wqbG/cUHI/dJlHc3izQI
         fNjBHd2v7+XJ4jUXS/8CjNePvCLJVrIJQfr/vqDbZ4lpSytulXSIlBXbmom3Y7F8L/WP
         vbtzUgPzzHGd783rdB58kzzO/obrAzTyoRxamUiC+BE72IQ664zvWOjl+9IOumfAZEgO
         RPAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFAu5S90;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id a3si598443iog.2.2020.03.21.00.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFAu5S90;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id m15so3500837pje.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 00:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dN2gc2VL/tWJcbYaiy/5AjuwzdqE+wZx4ZEls90gwPY=;
        b=pFAu5S90XLZ/NDWN2brs06CREMNIt2MUogFGauc+W8OIFD1gxBH1q2dmrsXR7L6Snz
         CZQ8gXDKK8F9dSF2SMvvaV8sTe9O64+IA75ETTZzbANH8oy/FoQgFxI8mWIAAaoCMKHI
         aCqWX7bGyIjL44ZxRXS6y9+j7L4QOuT7sRA/a3Z4g0fey9oNXBs9217bCSOQb4nI7+3N
         6YDXazI8LGi++sn3zDd/1O1vJLHBLLz01xIE+SLUbuZikieSUXHX/O0AmUVVBF/k3Pu1
         6D/xvp8Uew4RT2KjEJtXXXK9AS3FjiVyzCTwY5uL5/Egw27h6EEyyzDQEAJ91N3G3pB5
         20Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dN2gc2VL/tWJcbYaiy/5AjuwzdqE+wZx4ZEls90gwPY=;
        b=o1bj2eSn0boUb2prZIF/XvIBzN0BdEAFfyAH2M++txyJW4iW1lJjEkXc+D4c8x05ii
         zhyjLMVUPfxwXaHxhY27I7s8ylID2mgYLzKnLOnJDfwu8j5ILd0UJ3yshbcbTXXfJbpR
         nZK0WqkoYNgf3rT5iyN6ilcWQzO/CpuG3EzWARPqSUZ3yYHl34oFH/qp1SZte7MdP0mD
         1+o019Z1HcLsnFyBh5qOs0VLNpjfyR/+ld07yCb236Se7hFHC0QLg/mN/gySBFq6MGsl
         A2Uij4hvU/9sLkvQAGYGF3Widew1hAUZSkcXISCAfEn0n0Op/QTdO3IQbN6fjYMFkfAE
         v7nQ==
X-Gm-Message-State: ANhLgQ2/YjJZ3DhYKOi7nUrujZ9oAgjcD6uiULj5yA3DVXwIHuzC8QSs
	qz5I3LAQR4UVfPWK1Sol2uMu1mJv
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr12604552pls.36.1584776123276;
        Sat, 21 Mar 2020 00:35:23 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.14.249])
        by smtp.googlemail.com with ESMTPSA id h11sm7614039pfn.103.2020.03.21.00.35.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Mar 2020 00:35:22 -0700 (PDT)
Message-ID: <fb33df4b25a1a588fe1850b6cbc9397791ce6499.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: remove
 unneeded local variables
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Date: Sat, 21 Mar 2020 13:05:17 +0530
In-Reply-To: <20200317113849.GA1222404@kroah.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
	 <alpine.DEB.2.21.2003132025350.2355@hadrien>
	 <5dd7e63b4fea205ec7a45456794ec8b12d8faa4f.camel@gmail.com>
	 <alpine.DEB.2.21.2003150940050.2645@hadrien>
	 <f46d12c4e5ae5dbe5ff6d1faffcb14d02799da5f.camel@gmail.com>
	 <20200317113849.GA1222404@kroah.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-17 at 12:38 +0100, Greg KH wrote:
> On Sun, Mar 15, 2020 at 03:51:24PM +0530, Payal Kshirsagar wrote:
> > On Sun, 2020-03-15 at 09:40 +0100, Julia Lawall wrote:
> > > 
> > > On Sun, 15 Mar 2020, Payal Kshirsagar wrote:
> > > 
> > > > On Fri, 2020-03-13 at 20:26 +0100, Julia Lawall wrote:
> > > > > 
> > > > > On Fri, 13 Mar 2020, Payal Kshirsagar wrote:
> > > > > 
> > > > > > Remove unneeded variables and their declarations from the
> > > > > > files
> > > > > > of
> > > > > > staging/rtl8723bs directory.
> > > > > > 
> > > > > > Payal Kshirsagar (3):
> > > > > >   staging: rtl8723bs: hal: hal_com.c: remove unneeded
> > > > > > variable
> > > > > >   staging: rtl8723bs: core: rtw_io.c: remove unneeded
> > > > > > variables
> > > > > >   staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded
> > > > > > variable
> > > > > 
> > > > > The subject lines should be created according to what others
> > > > > have
> > > > > done for
> > > > > these files.  In any case, there should not be .c
> > > > > 
> > > > 
> > > > Since I had done same change in all the files in only a single
> > > > directory, I needed to add their names to make the seperate
> > > > patches
> > > > for
> > > > each file.
> > > 
> > > Someone suggested that still there should not be the .c part.
> > 
> > Okay, I will make sure from next time:)
> 
> Please fix this and make sure _this_ time :)

Okay, I will send them all in a single patch so that I won't need to
add .c file names in the subject lines.


