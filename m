X-GM-THRID: 6665747871131762688
X-Received: by 2002:a25:1c2:: with SMTP id 185mr13265214ybb.87.1552224246582;
        Sun, 10 Mar 2019 06:24:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:60c1:: with SMTP id u184ls69933ybb.3.gmail; Sun, 10 Mar
 2019 06:24:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy43rg3SEF7x9/MQgul9ACaEMaNsM4zzy6z4rpJnzF/DUlo9pMGaR2nfceE2EXFuTkCoL1g
X-Received: by 2002:a25:3291:: with SMTP id y139mr4455218yby.4.1552224245625;
        Sun, 10 Mar 2019 06:24:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552224245; cv=none;
        d=google.com; s=arc-20160816;
        b=ijFDi7qTnQwfs7mSqINXFs+5nCzoFvaKYbhOA2KBqyjqbzwH8QXNHz4ZOtnjbLYlPo
         iwtDNuWUCzsdlaH136mGfJYOLZ0QuXo2OLUekWGiR9354FX8Rr+MUUTbL10pRQe/A2Uv
         G9+4UW5z/Hif8UouEzLJcw6AkPZb3/iN72foLmBBlenyY8A3QZw/t4rWVZmg9skAHcTe
         drGz1l2WteGgk7vfGMJU38CR7DjcPC/zsFmbQH3tfq/eS+oBq4k6Dyo8pJjwJ4j3b+bt
         HhCDbNqlR/O/SqTrgM94axiSVpYkQ85/2sx4LitvbiJ9DAygjOtbvbIFjMdJV/yFFhVq
         0ENw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=5uDA+kbBLn4+tTsYHKVubVMuniHuzSr9e3gsxgUL6sg=;
        b=TXOddAIt9Y9K+Z6juftuYWuTwc7oH4fZNrrdiwCiN0dvyzFvOEm3nB+dponzk0w79d
         rQN/OhfXM08SsEKM0hyya/AWOxfvvekoSBE6PnaScv4KI/HlF7o0seYOdtqG8M50419S
         ifqSFVmX4lqW53LDK7H+7uTrSnxHWUUKXKyL55R3ctW1NXxd7yKjCrbN1cV6z25SXHLA
         I28ZIf6FtZAchyMlqpsfTNhD+xL6NjjYDxclf8ymflMKpAnFrTPN3EyAM87J06e1M38r
         E98yWYW88URGomjHMsA9rdC3uYZMwIvAyLOqKHBllN+QgvU4lczFaldXWTbL23a15GWf
         EDbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ptyUaa+g;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id s11si106966ywg.3.2019.03.10.06.24.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 06:24:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ptyUaa+g;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id j10so1596711oij.13
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 06:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5uDA+kbBLn4+tTsYHKVubVMuniHuzSr9e3gsxgUL6sg=;
        b=ptyUaa+gcyPXDIs9mqP8JxNQVTAXrr171OPQTGh6pjCvcZ/653ZvL976bLrX5a+BmH
         Xukqf6tcXbSO9R+iomBcNfVavwf541gjswRbO79XF6Y3GY+w+kg2uwQtp4XAcXJfgfg9
         5AWoKQGsYI0YNb79S3i8RYoykPjNPlb0hFv/NbSdf98Xkq7nvk6c7y41P4MTwRO4Ic8q
         Uc1MyXyb3J23DVIy9m3CdGkgSG3t/OurDWQBbqHbu3gEi8fit53v1yfyjStan6uNuRpY
         qU7cHysrM08cfm2pj23XyN9XGwt45x7t32tGC4JelxZ1b9Yxql3v5VMUhW04o3WeuLB0
         vIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5uDA+kbBLn4+tTsYHKVubVMuniHuzSr9e3gsxgUL6sg=;
        b=CEFm2uBF8W2ty+vX8NkXfkwQnjoE+q0lcZnWiNGGncUUPZTI91jLMbHWKIrHOE37xq
         kCETwfaNBuBQcMI1menbyHfPn3Dn+VDa/H8E9IT650N3HYlYqXFvuCkzFUYueZIsYBYb
         acwyX5kyxxrLwQ0SStGzALHy2uPi5lUxlxcRi53ujauAkvJpSs1PlWLtHUxifpry1pR4
         2PXvLYWKGsvHU2ekNxDch5iERSWWELQcn7hZdfELYMyRB0mv0ao0O4BsdX3gCi0Ur7j8
         /K26cDiHPMY7qDE4Z9YF1s83MciOUTzDa7sOTXbs4/thpIWJpy/RATjBSCfbbkcBhB3d
         nf8w==
X-Gm-Message-State: APjAAAUgfw3X9y7WZJa1trMn6nu62ktM+XRB0knfvUkakIi0fZLqqrVi
	N6/iKav3tujVcv8j5B+uGderQnSFjSc=
X-Received: by 2002:aca:b3d5:: with SMTP id c204mr14311904oif.91.1552224245051;
        Sun, 10 Mar 2019 06:24:05 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:91e0:43d:c060:be20])
        by smtp.gmail.com with ESMTPSA id w22sm1304184oth.45.2019.03.10.06.24.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 06:24:04 -0700 (PDT)
Date: Sun, 10 Mar 2019 08:24:02 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Remove unused
 function prototype and definition
Message-ID: <20190310132400.GA3887@madhuleo>
References: <20190307204930.8418-1-madhumithabiw@gmail.com>
 <20190308070016.GA17194@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308070016.GA17194@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 08, 2019 at 08:00:16AM +0100, Greg KH wrote:
> On Thu, Mar 07, 2019 at 02:49:30PM -0600, Madhumitha Prabakaran wrote:
> > Remove an unused function, as it is never called in kernel tree.
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> Tiny nit, and I'll fix this up on my own, but usually it is nice to put
> the name of the function that you are removing in the changelog, so it
> is easier to search for in the future when you are wondering why did a
> specific function disappear.
> 
> thanks,
> 
> greg k-h

Thanks, will remember that in future.

Madhumitha


