X-GM-THRID: 6885367021918224384
X-Received: by 2002:a9d:5547:: with SMTP id h7mr765012oti.248.1603127876326;
        Mon, 19 Oct 2020 10:17:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls59630otk.2.gmail; Mon, 19 Oct
 2020 10:17:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAqjOP6GdYp8B2+t/mO5vENCOBNIHITKSTelKwQguoIXu9X8YVG/ybZLRsgYdguU0VS2ie
X-Received: by 2002:a05:6830:12c4:: with SMTP id a4mr730287otq.356.1603127875121;
        Mon, 19 Oct 2020 10:17:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603127875; cv=none;
        d=google.com; s=arc-20160816;
        b=HrpotJ13+hCuooTec5EJRlspTXYnkGxbr4+FrQKJXbiqdp5xiHeCgBElye1iRWqpXo
         sMY//yzVj+1CIcV6dWLQg/jAflY902ydHbaqO4HCYi52pYAHkGmVyEqE/heuZLysKg3Q
         +4WQME6MoijfkqMnlj2LWZVjujDyJZjSZ4e41dqGQ2BYNUXlTcAaldGXhcOF035Ic6Z+
         rTJ8Fv03Yq7h58278kcLyijvx0WoBIq3rSSqpkYT6slTQGEguJ+Khh29WFONQadnXdDT
         oRIXxmd3uOZTBfq+tp7uLfUV5ZNOT7QKmJFO9xeAJXVZMd4SjOPJTEUHMEQFDL2qppR0
         OeWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9HHETOzpYnd2zGvO3sUiK6B9IHgkO8hmsUBqCNgTwbU=;
        b=Aa+ulDJGytTdrRq3j9KXq/TsqHXx4zWzeqICxOOuEKLOfg97upWOH55WeuqPI68GnL
         QJGCOwPTkZhq0H3Hrrvd3lTLsQemLvazYSdd0Lj94kpzwNtHFn1EhEt5gbe2nT+1ApKV
         WR2LNECjIQ7c5HXxmKsrt7Q9zxrMWfSDSSMbgO2Iqpzy/OmD+wFG514wI/SebpdX0L8R
         854UshEDxfeyi0ErDl2SJYq1LZIj7yV99lAdonjNWWMOgZ3cgDlGOVVqbHjiWRH6J4TN
         WWFWj1XYDFEWd4tYNXpkOVRvbb75BCDu78t+wCrBYnyMmaYmjWhjqOPfjTjJm2kQXgK1
         XsTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RnEWjGjk;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d20si58964oti.1.2020.10.19.10.17.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 10:17:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RnEWjGjk;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id e7so303482pfn.12
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 10:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9HHETOzpYnd2zGvO3sUiK6B9IHgkO8hmsUBqCNgTwbU=;
        b=RnEWjGjkYMfCzjuKF2vLkkQo1i3KP93LxiVSAl+xxoR90SkgHf/n8x7+8XZ5ZB4FOM
         Xdf+GKZbBK0sDarX6Rawt9o3DpQZ3nmmgkjBUMY8ABwXJJg3NZaDlNCaK7uRUNbM0sOc
         sqlTeZ8eVa1q0/6u5bvuowXQE/XMNsS8z5AoVWt9CH+mRSD7MgBg3895unFSbmhCssXm
         JgBf+HxHHqHFoGzCm2dmzChH/spV98HWH5MkZw04Ev8Owe0PDcOikH1QksQBagP/NgYR
         qSWvZLmccclUtnpV5+vqOh34vWqxkukKgP9wvevxGQvbrMo94o4R1xVGz0g71CJ84MyF
         GZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9HHETOzpYnd2zGvO3sUiK6B9IHgkO8hmsUBqCNgTwbU=;
        b=Sj1CbcQuyogsjmLvbpvEi3LKZnRUkOH1iaf5u+pFJz7+wcf9PsWuQ2MZ2rH6JLDVAS
         mAwrM+YYXS1aGh4WM376PqK8GDsiqNyfwvqRUnXUyrzmv9niakDpEoZ/3kzueGN693EL
         X984Kei/KwmUoQy4X6/wFRlXRmECChzY018jnAgwnXL5p9EKvNs9Rx3ikHR95Ww/nBpj
         DxLqYnB+AN7asI4AiYz6qZkpaXZnnDfVlPoODw0D0+7JLtSToypXuYoaQ9HTIDaD6npI
         iMoDb4TRI2ZtIGU2+0oj9sKn2N58eZ9+1Irh3T+cH6aiHmKLISqhIxCzt7ysUeYiy3HQ
         ZohQ==
X-Gm-Message-State: AOAM532Ah2r6jjB5Zz5UTYisL7QH7hfCtURJWF8UvN5ncYGWN2oP19AQ
	LhfW+UKHnGBMTJrIF7YtJ7hPoWmLfUqhjA==
X-Received: by 2002:aa7:82ce:0:b029:142:2501:35cb with SMTP id f14-20020aa782ce0000b0290142250135cbmr564655pfn.43.1603127874481;
        Mon, 19 Oct 2020 10:17:54 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id f21sm362689pfn.173.2020.10.19.10.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 10:17:54 -0700 (PDT)
Date: Mon, 19 Oct 2020 22:47:50 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Need help building a driver: mt7621-pci
Message-ID: <20201019171750.GA72584@ubuntu204>
References: <20201019162028.GA68635@ubuntu204>
 <alpine.DEB.2.22.394.2010191858240.2781@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010191858240.2781@hadrien>

On Mon, Oct 19, 2020 at 07:01:50PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 19 Oct 2020, Deepak R Varma wrote:
> 
> > Hello,
> > I have made a change to drivers/staging/mt7621-pci/pci-mt7621.c file and
> > now trying to build to ensure the driver builds fine. However, this file
> > doesn't get included in the build process.
> >
> > I tried looking for driver dependencies and am not able to locate RALINK
> > in my driver tree [in menuconfig] to enable it.
> >
> > Can you please suggest what may be wrong here?
> 
> A colleague of mine, Paul Gazzillo, makes a tool called klocalizer that
> figures out how to compile Linux kernel files.  It suggests:
> 
> make.cross ARCH=mips olddefconfig; make.cross ARCH=mips clean drivers/staging/mt7621-pci/pci-mt7621.o
> 
> You can look at this blog about cross compilation:
> 
> https://nishkadg.github.io/2019/07/25/make-cross.html
> 
> If you want to try klocalizer yourself, the code is here:
> 
> https://github.com/paulgazz/kmax
> 
> julia
> 

Thank you very much. I will review these and let you know.

Deepak.

> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.22.394.2010191858240.2781%40hadrien.

