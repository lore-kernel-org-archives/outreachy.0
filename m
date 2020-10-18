X-GM-THRID: 6885043430736527360
X-Received: by 2002:a67:c292:: with SMTP id k18mr6696541vsj.29.1603050863948;
        Sun, 18 Oct 2020 12:54:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4515:: with SMTP id s21ls395065vka.11.gmail; Sun, 18 Oct
 2020 12:54:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwsXXFTA0BxaEvwECte8d9kCbygcMM/N63CqLIfHO8G/WZj/sCUOMQURmvADyv3VyYjwx0O
X-Received: by 2002:a1f:5341:: with SMTP id h62mr6931545vkb.24.1603050862556;
        Sun, 18 Oct 2020 12:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603050862; cv=none;
        d=google.com; s=arc-20160816;
        b=rwTR216fvVtgXUgnfRVhTOmpcD5lonFe+G19Yd5to7yTZS5PvZlIY5s0EPDKvtxHxD
         B+etpnZ4OkWTmAan/j42U89EMIle0UJjVUp4SC7LevTRNIu7xZPAnP/t7n3yNuNx1Iut
         TRBFXbyunYmhqqDILeWwSjMiOC1eNmBk+vI8ncXrnDIzojL8x1OpCkO1OheLZDS0LzDg
         NpVSo775EXlQi5oKZCiHpjx8iCPW8K9lXLXH6nBe5Akm6XUqSqhmEuCR5dEvyEXVepZG
         GXBGKM9Eqc8mhPGZWgOPEYrvCN6HHYZ7AKEYpMQyELmH03KeuEyFrH+VQDn+ON9niH8/
         fW7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6iycahGJN538kGwe59KHKY2cXANtVTcrv84TNstpDdw=;
        b=axBjpam8LE/wQ19rQdxTIXti3iHj5q0IxO3H4BIy8Yl0nr/DQBJ+RKrnPN1ng/Kae/
         kH5qScWJqKnlqP5+CFiRKklQPeBhGkf3XEehr93URHrNR66/kA0evso5YK3AnEQqc++i
         aDs07qIUgnhwDSur7Wv7IEYX7hcb7XUAH49+SRWfZDPdg15dELRZvdpis2fUwNqqo2YU
         uYKPx46h7hMvIqyzfTN/sdu15nXEoGvFp3DS9AvKpHh8+wz9j4WZP5KCtT7Xkmrxcz5W
         jIG85CTVFAuzecEnBp3i7G6UvQiBuGcIHlnyT/cPgp0bBPfsrGlrgeORYahM42uXaJAf
         bAVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wa4rYUAs;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id e21si490116vsj.2.2020.10.18.12.54.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 12:54:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wa4rYUAs;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id t18so3924958plo.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 12:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6iycahGJN538kGwe59KHKY2cXANtVTcrv84TNstpDdw=;
        b=Wa4rYUAsjc8GU7rhiJMrxASUY8k9hmP0rro0PvL7S4sn3vdy0gbnfMHCyIgLCZNd06
         U4mfpaIBNEQ94uKPBBvWkIDOvHoHho8i+0dD49os+u/CsorcpIx3akvBqlwAFeNDBv6+
         mo2whQmgWxDeUZrdDKYSEkEc6cq5RPNo2YB4aDX/NbMOi2ME9WCkK7/lbQhmOjtaGK21
         VOgsnHtYaIgmYw/O99OXH5wL+qgu3FqMuLrRtne9pgEfs06Kslz6acteNffJwXouHevu
         cT2ibbN5st+f4cB9LiWIQx1rmFd5DpjI3JrXJBfrhMTBv7ik1dZaOrupb+5kNEhsL8dQ
         nR4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6iycahGJN538kGwe59KHKY2cXANtVTcrv84TNstpDdw=;
        b=Svi+wzdDsxwhGjikqeKEmv/6okRCjPfYrknuhMYQMuL0BgsoF3sPnBmyulvzC95Acx
         Z7cr98Kf+FE6hE780rgHkZSmUdX1wTdBp86LAuY9p8Ql32FMJjjFrWQSik9PxDKh79U5
         GfFTUIPp5AwFhojSh07Si4zDcqe0Wu2jVZBN3I+z2CzrKLrSpdVKxtWVI+4hpmrnrKM6
         LMPZVo+TWMeJoEUdUCp5yUPY3xkJIjE5OdFqE9ugXHap7HA6CprS0bSIxLOo1bpJdiWb
         h47GIqFFqZekS9z1fthLNeuR6jJeAvPXPz+2pHeJC6+cUpxUdP8XfEiOW0Fxw/SQd7Hx
         2SEA==
X-Gm-Message-State: AOAM5318PNZYwOGxTfOP190AbWl5Pj6nRTLF6Vf0uXg8C+eviIMbYOkt
	Ilp55hujLw7UBi5gieEqkEo=
X-Received: by 2002:a17:902:fe09:b029:d3:dd95:e276 with SMTP id g9-20020a170902fe09b02900d3dd95e276mr14549394plj.14.1603050861774;
        Sun, 18 Oct 2020 12:54:21 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id k206sm10278867pfd.126.2020.10.18.12.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:54:21 -0700 (PDT)
Date: Mon, 19 Oct 2020 01:24:17 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Izabela Bakollari <izabela.bakollari@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Need help with checkpatch.pl
Message-ID: <20201018195417.GA72991@ubuntu204>
References: <935594dd-9aaa-4fe6-8200-9ddcb2c7eb8dn@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <935594dd-9aaa-4fe6-8200-9ddcb2c7eb8dn@googlegroups.com>

On Sun, Oct 18, 2020 at 12:24:53PM -0700, Izabela Bakollari wrote:
> Hi,
> 
> When  I run checkpatch.pl, I come across an error message.
> 
> perl scripts/checkpatch.pl -f drivers/staging/wfx/* | less
> 
> Checkpatch.pl is giving me this error:
> 
> Global symbol "$gitroot" requires explicit package name (did you forget to 
> declare "my $gitroot"?) at scripts/checkpatch.pl line 980.
> Execution of scripts/checkpatch.pl aborted due to compilation errors.
> 
> Can you please tell me if I am missing something?

Please check this patch sent in today. Still awaiting approval I guess
but I was able to move on by modifying my checkpatch version.

https://lkml.org/lkml/2020/10/18/167

Thanks,
Deepak.

> 
> Thank you,
> Izabela
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/935594dd-9aaa-4fe6-8200-9ddcb2c7eb8dn%40googlegroups.com.


