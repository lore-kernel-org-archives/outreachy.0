X-GM-THRID: 6889706616955863040
X-Received: by 2002:a63:d245:: with SMTP id t5mr6233815pgi.283.1604155689609;
        Sat, 31 Oct 2020 07:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6a85:: with SMTP id n5ls4163252plk.9.gmail; Sat, 31
 Oct 2020 07:48:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxkGb7ZCa+0H29oY9mQz/IOfAigvJuULJ10LOK9Db4QcMzph+eJ/hnlHy7ypCz+zjuSRp/O
X-Received: by 2002:a17:902:a50a:b029:d4:da2d:c9a1 with SMTP id s10-20020a170902a50ab02900d4da2dc9a1mr13963178plq.6.1604155688023;
        Sat, 31 Oct 2020 07:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604155688; cv=none;
        d=google.com; s=arc-20160816;
        b=sE58w1n8+XKvTYq4jqMX/WS18yEdGHH9ODBCB/Mh3cgA4/j9z9diAOhImT7wkopHu/
         5HeALFIPKChebMAFvKVRIj+YXaNsx2xt4tT9QTi8p1oC6z7NtaWo8/NR9h1l4dIgADsO
         RT65pz7V7MHaNZPJmoPN/qL5wC8UCH77X36kzAW7Z2QClHuLVp4okEhZLo3QSCYWQFFt
         aLPdSyLwgfwwkIkYLhRDw7eLw/xJgY2xpsrklaSr1HgfH3UbqYBWINU+ugaOEH606Z5f
         d9dWlx0OKU1W/QX3CehMFXfAglakYxWsM1rxituf4glhVBAYM1sPHdgUVM82RxRNYcWC
         xTMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R/YVB/YYUEXqGOEpfSxmsk6jWsY2t2AS99mByEQSe/s=;
        b=rLIG2D8lPd8H+AKLmLJhmDcLTiBJagBIVWfZjFTqLZ5M+7uIgF5KuQUwdW7HhnhPos
         hW5WFtJqLaWPxh5ezRsI/LAGkF7LmEOJlHN1ip+yM7WSZwwKUvQLHCBaV9Fu7v9ndA/R
         nT2ZYC3HdY1/8WnCE6syIxpcs+YnCQ//PAKJCLYBFiAdFvKetyG8ISAWkdaRwRbUAtIh
         20YxWBXk7Cp6JbOqD5VqRaJYeXJ/AFg9xVkpEXaD13KW03l473cGmUWeJbIk/0jBrC5+
         kw3Nn29UFMxwpaI4H99gD3b2AyfmYVUrhga/7jd4Q6bRtFUA96GGi0eWfqGarjTI68n0
         ByOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRjjG7PD;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id e22si594567pgv.5.2020.10.31.07.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2020 07:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRjjG7PD;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id m17so853450pjz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2020 07:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=R/YVB/YYUEXqGOEpfSxmsk6jWsY2t2AS99mByEQSe/s=;
        b=VRjjG7PDinpS5Pd2PIXKCuaxAHBDJULMBMm+Dbj8Dxnin1xS/A95KdVyc+OPNXCn0s
         r/8oeI07i5s0yV9ZVqM+TdDSJHKHf2afWubrnhT8aXME9uymsVYy/Wr6icdQ1LW0puDd
         yFnAL2OXHQn6dqApnSVZ0AqGrRegjGEzFIRxOu9jKrUAi94OLEohzYdpdyxFzKkFdlhA
         OzM8VR/jspMmeNVQdNJx56QJNRhclnWSftoOYej+cnoFUAMrCJFy6tqmKLBg/PTShoWS
         ICc8Nr9z0uEiYzXaRS+WNWf2KQ7h/HPKcfUuU7IuzOC+ZGLr37tLNooOddzvFlfXgkYN
         +aAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=R/YVB/YYUEXqGOEpfSxmsk6jWsY2t2AS99mByEQSe/s=;
        b=GVpuxPR0i3FgdSLgulU78+XLGXc2G4VhLZoGTZOIJYRq8IfZvyTyUVzIyxOnY0cB85
         jzWeosIiox/yZYqV4E/9zOqhAoeW0A23DFghtr3YnvDKSVClSgu9sEBSYtpLPotAYvxj
         +mKJNFIwG1uN0Jkt+WQK9K9T5ZK0sNlOu8WlPgWszkdPcAvQHIzsrxt8urXIr8+BxB0l
         TJd5U63z4FZzBKY4exZVYOmPdt39OzeE5GvWWVcK01maQy6IBG6rVo3HpJjLfjeKJciD
         o/JE4g77nDyzgdD5QV/fz524C2BE6i8hJjCCGPOkJled72/dgxqKFPKa/Q26aJ6+Kx0U
         8+Tw==
X-Gm-Message-State: AOAM530qoOZlaXuYI76PTjicPuv8PRsUunJoX0eAg4VPpIj/McAE1X+w
	L7r/vriIYeuOtID9zngrrb4=
X-Received: by 2002:a17:90a:dc82:: with SMTP id j2mr8735977pjv.68.1604155687756;
        Sat, 31 Oct 2020 07:48:07 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id r187sm9234802pfc.137.2020.10.31.07.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 07:48:07 -0700 (PDT)
Date: Sat, 31 Oct 2020 07:48:06 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: vt6655: Remove useless
 else
Message-ID: <20201031144806.GC1965@Zangetsu>
References: <cover.1604133727.git.mdejesusfilho@gmail.com>
 <a794bc3814ffac8027cef21e2993de67fa7e30d0.1604133727.git.mdejesusfilho@gmail.com>
 <alpine.DEB.2.22.394.2010311027260.2733@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010311027260.2733@hadrien>

On Sat, Oct 31, 2020 at 10:28:18AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 31 Oct 2020, Marcos Antonio de Jesus Filho wrote:
> 
> > The else statement is not useful due to the presence of a return
> > statement on the if block. Remove the else statement, adjust the
> > indentation of the code and remove useless return statement. Reported by checkpatch.
> >
> > Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> > ---
> >  drivers/staging/vt6655/rxtx.c | 38 +++++++++++++++++------------------
> >  1 file changed, 19 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> > index 9db4317f9a42..508e1bd7d76e 100644
> > --- a/drivers/staging/vt6655/rxtx.c
> > +++ b/drivers/staging/vt6655/rxtx.c
> > @@ -440,6 +440,8 @@ s_uFillDataHead(
> >  	bool is_pspoll
> >  )
> >  {
> > +	struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > +
> 
> I'm not sure what was the goal of the above addition, but it also looks
> strange to declare the variable buf and then, on immediately the next
> line, not to use it.

The goal of this change is to make the fix and not introduce a build warning,
because I can not mix variable declaration and code, otherwise I would get an
"ISO C90 forbids mixed declarations and code in C" warning.

Marcos


