X-GM-THRID: 6803435195586314240
X-Received: by 2002:a1f:9d04:: with SMTP id g4mr334573vke.18.1584789993421;
        Sat, 21 Mar 2020 04:26:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:1b54:: with SMTP id b81ls493477vkb.5.gmail; Sat, 21 Mar
 2020 04:26:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuUvKBr8Jf3pe+rQGphSfa03mDRKdyNOUGqdMGrHKP5lOHV14vQlXp03LD2Jq3P9J3cqUTv
X-Received: by 2002:a1f:c188:: with SMTP id r130mr9136610vkf.94.1584789992070;
        Sat, 21 Mar 2020 04:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584789992; cv=none;
        d=google.com; s=arc-20160816;
        b=FgcqS4PG35ttq1UgnbiCrvpAscSjJIvh4fRQr2idcvZDHD9IeZcf3C2TG3TsIVdVBM
         h4y9kkxf6yeRUm11zH+EQKEVAMDBY2d1v+IoeXGHpSjzthumDyVVq/AZqpRWQupX12Yh
         oQmd1NeSk0JvTahqXH5LpjWpkXSVfZ5D1SXzgbkfudt5xccBQbSyjzL5sqAo0d2uw/l0
         SI19F9/8U6Q/yzwBpdeNp+qRBWysMVPqP0I8/TlC9ZemHdU+lHS3Pb8c76nM7rK7jjdN
         HMuDARCJLhkqWsfhK/fskbLSZns61V+hxfz9jk0iRuhaPUaCfQ2aDz/dNjMjb4emqMjX
         65EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=i6Hukd/cjDKrnzvGWyY4MYBbvgIPg9/k+ZSz44AsmQM=;
        b=s4FTECPcH8nVHQR34X92H4+hfL5kqvlDdawxTNDaUgtNaTJDM17H/q0fgZxd28gSz4
         r/pyIpxrw3p4iztRsksARu6wsLqudxe/gu/JWuHy7aDVDmR1Bg6RM8xyBKLNPkoYB8h3
         qjtJeLn38MNwGNdSdDTBlZFi+MWfUNqgNZNXbrPY7k9yzY7v+4SgRQRwl2WdHbA9e7Kj
         VSN8Wu22hIO4uF9C9LpHJd5sPHomYG6xW2nqKg16b4oh1VzFuPyAn1hy9MagW+/fCFxB
         mIrTUEdtANAMUdmAjzGHjJLAQU+kR+NWYfUid03kbdUayV2adh3oU44sbe9e2EMXwp2N
         PyoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aEETYfSH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v5si68348vsl.0.2020.03.21.04.26.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 04:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aEETYfSH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i13so4731909pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 04:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=i6Hukd/cjDKrnzvGWyY4MYBbvgIPg9/k+ZSz44AsmQM=;
        b=aEETYfSHoigCviswRfDhWhsmnCjcBTaC4N8CNsPjvUbBHQ1sSWc9ElyieLPS3Km+f9
         ExPh8Rs321noqKOZfOe6GNHjcE6UsgCK+aJZSEbM7AO0QgI6fg8t9fGLGfR2JqM+vbE1
         oL2fLfSwOp080Ucm7IqfgUXdgBq9DyBO9lCRbyiFYiRg8dOpCPyEN7CdaQ6MBRtyMGoe
         /y1WZRP/RFxyfVaarg78FclAFrQ9HSY7lHzHjUfELy3Kn/2sWISUeOtvvWivRAnfG+Gd
         7oFHMVWzYMTC64ciB5Mut5MqMA2Is2jMLDd20+MoixKdnB/q/363beEVZVsuPSSshF4R
         tJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=i6Hukd/cjDKrnzvGWyY4MYBbvgIPg9/k+ZSz44AsmQM=;
        b=dVMsBZiMGjgOjuvdEOWSEUk8bz/JwSepfeCpMcm35YjjzNvS7q+rtBRNx5F2KBjsUH
         9xtUNpu3dATfjlTylB3wOn8e4PkWCju+nEFknp93cEZpxzNvizA8zzREBlkBcbMAWXS5
         nJgV1JMyzx1jjXZ4WPw7XU5jHFWiFjBryc0laGllxEWZtwoPrL8HioSGukkc0QYjXnB/
         JQocsD78wn0iFk9ILhgHktz6bxKT5/gKDPT/faV50hg19zaxuySy3dH4H5tkVU4Z1ow5
         2jRoaC8gQ5Kb24TuHooXw5Y6Dvm9Z/ObGx/3mVX6tFIOXPZI6Lo3WWejMM0fqT/uDVNE
         T9OA==
X-Gm-Message-State: ANhLgQ2G8UNQZIArzaYpm4zPnwcD02h+O+8i5lFsfvSG5evbTcCri1yl
	UOdUhe4msEMgX2bHuPxobTg=
X-Received: by 2002:a63:3187:: with SMTP id x129mr12577238pgx.180.1584789991136;
        Sat, 21 Mar 2020 04:26:31 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.132])
        by smtp.gmail.com with ESMTPSA id z20sm7537261pge.62.2020.03.21.04.26.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Mar 2020 04:26:30 -0700 (PDT)
Date: Sat, 21 Mar 2020 16:56:26 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com
Subject: Re: [PATCH 4/4] staging: fbtft: Avoid potential precedence issues
Message-ID: <20200321112625.GC3019@deeUbuntu>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
 <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
 <20200317114614.GA1233256@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317114614.GA1233256@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 12:46:14PM +0100, Greg KH wrote:
> On Mon, Mar 16, 2020 at 05:12:32AM +0530, Deepak R Varma wrote:
> > Put parentheses around uses of macro parameters to avoid possible
> > precedence issues. Problem detected by checkpatch.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> > ---
> >  drivers/staging/fbtft/fbtft.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> > index 81da30f4062e..76f8c090a837 100644
> > --- a/drivers/staging/fbtft/fbtft.h
> > +++ b/drivers/staging/fbtft/fbtft.h
> > @@ -406,8 +406,8 @@ do {                                                         \
> >  
> >  #define fbtft_par_dbg(level, par, format, arg...)            \
> >  do {                                                         \
> > -	if (unlikely(par->debug & level))                    \
> > -		dev_info(par->info->device, format, ##arg);  \
> > +	if (unlikely((par)->debug & (level)))                    \
> > +		dev_info((par)->info->device, format, ##arg);  \
> 
> "precedence issues" are impossible to happen here, it's a pointer that
> we are dealing with, not some other type of expression.
> 
> So I'll take this, just to shut checkpatch up, but note that this is
> _NOT_ a real issue at all.
> 
> And what about all of the other macros like this in this file?  Does
> only this one need the changes?
> 
No Greg, other macros are either taken care of earlier or do not need
similar consideration.

Thank you.

> thanks,
> 
> greg k-h

