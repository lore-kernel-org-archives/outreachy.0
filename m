X-GM-THRID: 6752263859613990912
X-Received: by 2002:a62:b419:: with SMTP id h25mr27808640pfn.196.1572381321243;
        Tue, 29 Oct 2019 13:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b304:: with SMTP id i4ls7000867pgf.9.gmail; Tue, 29 Oct
 2019 13:35:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxHQgquQm8fP4vxFCoanDQikc2yKfre3qcRSlYaDHT2UWYXcc3GNpHCA3E5MuVV2exlE4TA
X-Received: by 2002:a63:c103:: with SMTP id w3mr4466413pgf.275.1572381320390;
        Tue, 29 Oct 2019 13:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572381320; cv=none;
        d=google.com; s=arc-20160816;
        b=T14/vYlU5dIqyk29Kwns4Pcfn9SF4Nx7juYlf4wrQ8he2q9Quze1R7/yy2qBQMWI3y
         N/wPObiwOQMYwSOdbbSfpMHcz3EpMrEHzWzgefxx4Uz0NkhfmEGl8fjDv4c9T2vODq0k
         mTic0dxnJyuT5glXJ2nkXf42ydRoRpCLHN4ygZlrMsia5ReMbgCXcb5e+P1Y4x9psoie
         xtoaqnGwvlEn32e/fY4TUXl+yieiG1zhTmm6DcHlSsCcdhtUmja9By/yVNGG1a15mZqa
         iFo1JIDULxspvG7qQA9ZIxtSZA7aXTxWki2POq4PDR0jjpJ4aW0iENe7W4eae/vf+YkN
         JPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XnSPGwKBRJTkC0yNjsu4dKHcOgEjPbAHTMxUjiGU3KE=;
        b=zhYUMqG2htDF5eIAhLrcjX22MJrEdPlPcIDs7ZCGEIqF0lv3JD+2RNjJ3sXi+IUD7Q
         QM+JD43IbTWD2syt2e/DZqpu9+ay3QC/qX03ZgvLpLrfGiez0aRoLBmbnhJfZVmYrNag
         YwrTLW9pnjz/EcHVaGJzQroEUPpDPTX38wECBBDn1ijMQ4jpR0GFzwKPqhQQ31kr4zMN
         ynI6JHGN9TZJjBV3PnRSovT4u4EltQQL2P7XaQ+VaF49w5LJozq4KT4m+80T3Qf+e16y
         O/VPOwYp4qQYWMaNd3yKszccVyjSwVTvcXbS9xvTpjHDX8x8ZqyycPsexwC0nMY+8ESg
         cjyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OgAZMpsf;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id d3si358plr.4.2019.10.29.13.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OgAZMpsf;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id m125so258248qkd.8
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 13:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XnSPGwKBRJTkC0yNjsu4dKHcOgEjPbAHTMxUjiGU3KE=;
        b=OgAZMpsfVKWRz6r/dTNV6VDGqp8E7wNDym38IXD6DNNihIGFHUHG7tZPyu3+4CM5cA
         tG8yyVS4YafB8pG+kkWzBvfeF51l48wp70d3DLPKxapPceDBSEVNzSJxpp2THMfHz+0N
         5cwUN0KNDden+Di7h7L0gqnHuB9Yyei3P/o1raUO8TiU+Oa8/k0Fh8W1pvHzcwLb3krc
         CwtdgdhN8HQ4Vv3mUIQ9YIMmGEmFqZgfviOfwKoKwSXk7pH2sexsB04wsH3rVl9KSp0I
         vS2u5fs9hW900/jBBQ0E5e7iQJO6uke2FxXVKgu1hXUcJTa8kT1YJkylh/ytjxnzXCGu
         +4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XnSPGwKBRJTkC0yNjsu4dKHcOgEjPbAHTMxUjiGU3KE=;
        b=cDDu2v4tVh+gTRV6SSlvAKAM4eoEhlFd34qbWl0J9H+auAVSx1uFeN7qieYLXjQmGP
         FoGixyMjXbd2llhgcZwS+GULZ/4NfRS0IsNeqUg56iuKCK0X2p2sZSJi0IgLVEw6cNAI
         t4yEv+LnuhTn8zAiAHqESS4YM6Wawt7QBrFsIMWMyuLMECGkOXuQhhuWTKMFMV2QexYn
         C3XUU61ggXMz2ap6KvUSLv8aLhkHS9bOUdrgXTLBStVuPXn5RG/MZmDNo5zH+v45xIjR
         /5BMU/fwG/9D1X87WeET2EKoyEA85In/far73hbg+lY4CvVyxnakpMWdOAj7Jti5QdRf
         cLjA==
X-Gm-Message-State: APjAAAU0GlTC7OCTpk7B1ODo8ReeHX9CRPakXXAc54zoQKztd1mCCxLy
	By8x+rThMethw6wpWzc7Jd+DltdH+1aiSw==
X-Received: by 2002:a37:e102:: with SMTP id c2mr23424666qkm.269.1572381319464;
        Tue, 29 Oct 2019 13:35:19 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id d39sm8984574qtc.23.2019.10.29.13.35.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:35:18 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:35:13 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org,
	LinuxKernelMailingList@cristiane-Inspiron-5420
Subject: Re: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
Message-ID: <20191029203513.GB2188@cristiane-Inspiron-5420>
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
 <CAGngYiXG1JbFcYLfnKDKYac=Ku+KAkOetPa_MkUCt7xXgJA-XA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGngYiXG1JbFcYLfnKDKYac=Ku+KAkOetPa_MkUCt7xXgJA-XA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 29, 2019 at 01:40:08PM -0400, Sven Van Asbroeck wrote:
> On Sat, Oct 26, 2019 at 7:52 PM Cristiane Naves
> <cristianenavescardoso09@gmail.com> wrote:
> >
> > Use devm_platform_ioremap_resource helper which wraps
> > platform_get_resource() and devm_ioremap_resource() together. Issue
> > found by coccicheck.
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> 
> Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
> Tested-by: Sven Van Asbroeck <TheSven73@gmail.com>
> 
> Greg has already queued this patch, but the link embedded in
> his commit message should point people here.

Thanks, I'll check it out.

