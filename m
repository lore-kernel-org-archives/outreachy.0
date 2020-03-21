X-GM-THRID: 6806467742549409792
X-Received: by 2002:a05:600c:2713:: with SMTP id 19mr16955648wmm.180.1584795053177;
        Sat, 21 Mar 2020 05:50:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fd03:: with SMTP id e3ls98226wrr.0.gmail; Sat, 21 Mar
 2020 05:50:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vskJSGbImC8wvVDUG07IlE3RtTchTj3ivzjPLvKqSAA1qpKMeXnQTmJGY/odCZX0Y++QOM7
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr18258157wrx.166.1584795051789;
        Sat, 21 Mar 2020 05:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584795051; cv=none;
        d=google.com; s=arc-20160816;
        b=WrzineRA7/x8qw2noiW++uxxVdVB8iE9H2sWr5kzV8EyHaYxJy+8FSOtKeU7BKjZIK
         ODJwkCRNxF9wFugADw0KRyvLIIt64wsdjoHbcDUWIOeg9HvUZoIOtk19fpyPDHhbyZCu
         rUE4gDd7s4r6qy1MYge8zsT7Rl2klgf31Zg3eDhWUVFtqJIU6f8yeeYVCEq4r3UxU3wa
         RXJyqwhSa1CivTWb0imBk1tjQu5k3Fnr1OSKDida4dPryxiRu+WZM6lxGD+uWMP9BML5
         eKQSfSNP7IhXrWmVRuA0s+nLmYqFGW5VjLu1qUf0R8Qj1XRUHTYN+gI+Q2NuXk9Wiwsn
         Gh8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=P7eCQ28fNN74oX0u/yve7YOCUgaQCUK/ow2ghTaRQ+U=;
        b=ERVbASF//3WJN3TyrQSpCcH3Hx3u/Vl+464ISJu5Ob5moAcXOLVrlU6uGiShRkfIu6
         aGZRTQslCiK/2vn+mZjhxij54Lk7f4f573KzjlxlkFJ4xKJeFVLV9RKEv2gGODQ0n4G3
         jTkTazc6Xp+wR2HjroPXwS66IUyxjtikBZwvG6N6u53awuIWmYTpay2w+T3oFvw81ZZc
         rV1okKUYxRaaoQqBQV5CZffElFRvd5JZUOJ4l+RoMeZh2jqNaotDi04zWHjOP8++rpUn
         n716fu8kPevTc0yJW9iqCc73x+Zyv+cPaxUENKdHdhNYXrFo6eOQtf9IYghwRWqEaZY2
         QqkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpOVzUto;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l16si280865wmg.1.2020.03.21.05.50.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 05:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpOVzUto;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id h9so10728090wrc.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 05:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=P7eCQ28fNN74oX0u/yve7YOCUgaQCUK/ow2ghTaRQ+U=;
        b=dpOVzUtoo7gfwuV8ykQpjKomhqyk9MK7m+yJjPTbsSqIEKhysUx8lrgFfeLVwPYdbf
         ZQgwkV3epr7R4NCc2LBtXRmlJvHqKYGzruw+COdYWBzsAcLJ1lTTi4S+JMVul6NemPd2
         Qq/TTVhlqg2X/fJ23i9ZyDDz9YpxuQL8LXFOGWBI5+petZJNivhU6RfcX5Q+6gDTlcPy
         f6X0QPmbfb3g9Rpu3GtqlUMzfCHpiYt1smy4azzsoRoTd8DbfrSFXgqDd9qkGYTmXvYf
         OblCNGkoNfYShZcIda8ONasYJJb7i0eF9LWZMY0uN2mI4WKebQs3xPyt2takAM53PNm5
         r2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=P7eCQ28fNN74oX0u/yve7YOCUgaQCUK/ow2ghTaRQ+U=;
        b=LvLj/k88EYo0cJaEso6yiRWVz0a6EcM6IJ9jhMi4XDyw9Wv5NAGdHcT0q3IUWTkHTH
         3Kcj9k9h067yR8pjQNwa2u74P8rO8ElGKCdBfBTPRIGAytIY5p0kpyLj3Hrx6QEEIeN+
         q5+hh4eFvZJ5jl43d6ngw0WZuWx26sLjV7Pun7rv4EA8oFYWvPfHPPiPD+8e6sIBrdFi
         ZkKiZ/oLDCooiJ+zOigQgYyYJQnBAJkrw78veFcb/NpT0vhQuOxxZ8bOe9DhWJGWnE/1
         FaR7/EhCGFDfkuF13W90bqDwge9mHKvk/I4swws2d0vdFWHfIUBgn8ad/R/rCJyhnzk9
         PHMw==
X-Gm-Message-State: ANhLgQ2VUHUAc3oWLco1cHeaBJCeFrzjg+Z3LPCtE4R1jSfTaVuxCEHe
	s9tm05EgfgXzZs0hfbX74KU=
X-Received: by 2002:a5d:4683:: with SMTP id u3mr17088942wrq.310.1584795051378;
        Sat, 21 Mar 2020 05:50:51 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.115.229])
        by smtp.gmail.com with ESMTPSA id g2sm13990664wrs.42.2020.03.21.05.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 05:50:50 -0700 (PDT)
Message-ID: <4ffae0704bd21da5e36c1beac0f454746689a31a.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: hp100: Block comments
 use a trailing */ on a separate line
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com
Date: Sat, 21 Mar 2020 08:50:49 -0400
In-Reply-To: <20200321124615.GA1215294@kroah.com>
References: <20200321013101.GA17131@siyah2>
	 <20200321093325.GC917692@kroah.com>
	 <e60514a251eb3f690e9136670def0ee2b8289969.camel@gmail.com>
	 <20200321124615.GA1215294@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-21 at 13:46 +0100, Greg KH wrote:
> On Sat, Mar 21, 2020 at 08:44:48AM -0400, Sam Muhammed wrote:
> > On Sat, 2020-03-21 at 10:33 +0100, Greg KH wrote:
> > > On Sat, Mar 21, 2020 at 04:31:01AM +0300, Gokce Kuler wrote:
> > > > Moved to the bottom line */ for block comments
> > > 
> > > Again, you said what you did, but not why.
> > > 
> > > Also, you _added_ two new checkpatch warnings, not a good ratio :(
> > > 
> > > thanks,
> > > 
> > 
> > Iam sorry, are we allowed to work on this driver, because i got; 
> > WARNING: drivers/staging/hp/hp100.c is marked as 'obsolete' in the
> > MAINTAINERS hierarchy.  No unnecessary modifications please.
> 
> For basic code cleanups, to learn the process, it's fine, but note that
> the code will be deleted from the kernel "soon", so any changes you make
> will not stick around.
> 

So outreachy-wise, would this be considered as a contribution?
This driver is juicy :)

Sam

> thanks,
> 
> greg k-h



