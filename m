X-GM-THRID: 6802515514721566720
X-Received: by 2002:a92:6a08:: with SMTP id f8mr1875354ilc.2.1584498817731;
        Tue, 17 Mar 2020 19:33:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:79c7:: with SMTP id u190ls3749357ilc.10.gmail; Tue, 17
 Mar 2020 19:33:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtTHMMNTTUYz5DDWhS3coXrdNOeoJLl+XHIzGxsqpMqsglXHjGgbdLfadWEMrscxHeTkrcB
X-Received: by 2002:a92:96c6:: with SMTP id g189mr1786395ilh.276.1584498816510;
        Tue, 17 Mar 2020 19:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584498816; cv=none;
        d=google.com; s=arc-20160816;
        b=naZf0tl+IgB/0bCxzZp3/UjJlm9J84VR8GQFNTmZ20npi23565yNMD2AWLKaq7YKQf
         9oegsk9CYBULgdVuOnxXlNo/w4R/eF0lUTZ/1TCxl85tiWxWEHkbK26Duwqk8ndvyN1N
         Gqq8ReA9n9Lu/ytc5TqJVRf518chOIfubwLzpws6qpqUdO4HmnGsGAJjb0GJ1Hly7cyw
         I8cdejKzsMkpCtr6UZpxhk+5A9KjqEtgwD9FFp0Oj3ORub3j2wy2xQadRfEYPheSgi8T
         XA5R8v+V7B1YDKtLf7gpVMxhdZyLy9ZCQJYvvufSG9MyEdjWWT6OL17808d59BlIShGt
         HrmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=G2/feZWJoauIFc3vcQ2DCm6O6ozX+f3t85eCMQ+ifGE=;
        b=lRyNuEOmQrxBoaYznTUUdA4wD3AKPddpIy6tIvszvSn7RTZO7/wZFSD708qMJKiki2
         hGW6yamz/rsvxZBe8/fWh5qAadXkk9bFPyg9n2hu+TU8RmrILrQXbGfIo/m52yutZ5sO
         sU4TU/JO25MJmWeChDQUYj3pFlmv/P0rlNt0jT+SpicsqKLg6x0YAMRYguKN3TP4uh4I
         xxSl1HBMR8biDdWtW5//1DLRomk11FNQRD59rSy00eM9nRITe1eUA+9Y/P131g0p5fz2
         pEoEVQyY/Q3lSfSESsNxEd8Ia3MVmsThTRTvU3xmfMI0opsYgFJUuDQHj5waM5E3Egxl
         rpEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BuS8re7Y;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id 131si156043iou.1.2020.03.17.19.33.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 19:33:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BuS8re7Y;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102f.google.com with SMTP id ng8so636665pjb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 19:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=G2/feZWJoauIFc3vcQ2DCm6O6ozX+f3t85eCMQ+ifGE=;
        b=BuS8re7Yohx2/O2mXvQ0fViyXBkzEWUSsReVnXE5iGbL19UQpO4qHLE/CGDs2z9UF6
         KfietllGCu4bSiItKNBD74RnJoG9rpzLXcbCMX9ry1WBPCGCY+2sAdJM/vezcHbQ6+qX
         aEuVu8dt3+fTB7qrlzrVflOlcVNomkJxSMv+kQgcv1KkXaaK6jnX5hoITDm/xJYTY0Mt
         CTD4LsQ0ktY6te16Gz+FBOgXAWxfN0zy7eTsiAH9knSGs8YsqPzUa5kmX9yclevQ9ne6
         y8ITCtkFzChw4htpawfj0issYAP9EXCNtLrStX41ZRCU1O23YieU99/siP2iOjVX+fcn
         KlFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=G2/feZWJoauIFc3vcQ2DCm6O6ozX+f3t85eCMQ+ifGE=;
        b=Gsbyh9WlbGURzs0K0MrYow0ER5LrON/sQHvNlX8v6TnjD/E5nQicCPE5Gm3s7lfx6P
         LoOldo9kPkFY1HSXOfR1W+OIYOjzK0qZXJvob+E64B3xmVJXIM3K/d4rb97Mwz+te1lu
         P2ZGdLZHekWHJAowXOlWaEplmvRFKhDVFqMSdysqfrRn5tgwOFyyOZVyM6zZWW2xVDD+
         5J7+uPYB8pNkt8BSwmLMh3rK3T9aw7ull5dbR1u2IIXaUZcXS3sUdROdwpyTUFF9fHY2
         NaD1/J3xNwpuxDohrIam4Wwj5kX9+XuEUnMpdUnKdR9ByoD9Cn2kghODY/0hrwwCmnbD
         Avjw==
X-Gm-Message-State: ANhLgQ02yIcHMsYMoWMGZRYWHdmEW+axXAHYwmPCaPGC+1DqzpSWVdpP
	0Bm7T1+TwZmwO5qYmSJUOFjBdU7D
X-Received: by 2002:a17:902:8542:: with SMTP id d2mr1721189plo.200.1584498815889;
        Tue, 17 Mar 2020 19:33:35 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id d7sm4609783pfr.17.2020.03.17.19.33.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 19:33:35 -0700 (PDT)
Date: Wed, 18 Mar 2020 08:03:31 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200318023330.GA24302@deeUbuntu>
References: <20200317140951.GA1362367@kroah.com>
 <20200317192530.GB22314@deeUbuntu>
 <20200317193231.GA1566692@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317193231.GA1566692@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 08:32:31PM +0100, Greg KH wrote:
> On Wed, Mar 18, 2020 at 12:55:31AM +0530, DEEPAK VARMA wrote:
> > > If you have not gotten an email from my patch system saying that your
> > > patch was applied, consider it lost, and please rebase and resend it.
> > 
> > If we have a patch where the review comments by the experts were not
> > implemented, but it was accepted by you, what should we do with those
> > now? Would you suggest sending in a fresh patch with the comments
> > implemented or a vn in continuation of the old patch?
> 
> Consider yourself lucky that I took the patch :)

Thank you Greg :)

> 
> You can send a follow-on patch, if the changes requested was in the
> code, not the subject/changelog areas.  But as my tree is not rebased,
> you can't send a "please replace my old patch with this one instead"
> request as that's impossible for me to do.
> 

That makes sense. Will do as necessary.

> thanks,
> 
> greg k-h

