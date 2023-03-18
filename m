Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CF133D9
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 17:57:52 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id h8so8419447plf.10
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 10:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679162272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jc3c7rj/cyWXTndrw6PwlngKYzvQEtb5CV1uZO28U4c=;
        b=eHZZ4eVp+L5r2Ep9fvvFw/crYV87PRlCtsJnoHRbglZZBZ/z6jq98vztqMRgffcefZ
         Lfl8UjvFK2up71v0GhESuRGYs2OSL3RnjZCyoktDRj3ePhEkwd1zhlaQs8HjfXsffdjT
         eRwW0djd/QOAhjWXiPcESsXZqrqPXVDySDQPq5toqoXylhoY0ZWUO9t/UBnm3iBJ5w38
         c5bnzoE5RKueL4FsNppd5x1NzTsOap1dLsyyceAXivfmW/sJ7ZAwzuPsYXsSAZzcYziK
         24PHdRFDcTbLr4DGxa5JymwHE02GvDqVMLZNJDGEmG51e27eTTLgIym3IDXddmltskVg
         YO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679162272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jc3c7rj/cyWXTndrw6PwlngKYzvQEtb5CV1uZO28U4c=;
        b=02o2pAP7PXAuQPWGoqqI5zyXPFq576ciot2SKw6MqJ59u41V/SLKuJaKp171thnPV5
         qMEnmwjKdfjx5fC5tzMPFHjP0vOCfNtIR2UZMoXFotEp+8rZPw3X9yAtL7KOwsTWPnma
         tEarLOaZRNX06H+aJB16yJqZaFUYJHtt+VCzXB0NzC77bf7PfMDO4xe2KlkfmK8fmVoM
         KEAGM9/wY02AayAsMuZB8sXi+QW6L+WgU3kZ6sH/x4KbypBloK+e8qu2rTl263diETev
         Gh+AZLaO+xDT/FlvxUeNMkr96zSFd3cziSm7QfhJvmOsKXY+M+OhoqS8v3KbiWnoaiys
         N7Cw==
X-Gm-Message-State: AO0yUKXCNidDA6N9mTCfteDOZ/Xk6oDMARvVl0Jz65rHvhr9MAcbe052
	JwsigY6dq0HvshAotFie1RY=
X-Google-Smtp-Source: AK7set8wn2Re8dTeXs0mENQtFri2FUK6A2i8rIKS8UsYq9rtp5LQ+p3fKtEpuRpJymRFMTT8rtthTw==
X-Received: by 2002:a17:902:dccb:b0:1a1:b440:3773 with SMTP id t11-20020a170902dccb00b001a1b4403773mr3049553pll.27.1679162272384;
        Sat, 18 Mar 2023 10:57:52 -0700 (PDT)
Received: from sumitra.com ([117.199.163.158])
        by smtp.gmail.com with ESMTPSA id v9-20020a1709028d8900b001964c8164aasm3563810plo.129.2023.03.18.10.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 10:57:51 -0700 (PDT)
Date: Sat, 18 Mar 2023 10:57:46 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230318175746.GB49651@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWA3rb9nVP8ho05@debian.me>
 <20230318121508.GA37278@sumitra.com>
 <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
 <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>

On Sat, Mar 18, 2023 at 08:01:33PM +0700, Bagas Sanjaya wrote:
> On 3/18/23 19:49, Sumitra Sharma wrote:
> > Sorry, for such a silly mistake.
> > 
> > However I run the command "make -j2 ./drARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-" and got 
> > make[3]: Nothing to be done for 'drivers/staging/nvec/'.
> > 
> > I think  this is because it is not yet created as a module.
> > 
> 
> Have you tried cleaning the build first with `mrproper` target? Also,
> is NVEC_PAZ00 enabled?
>

Cleaning the build worked for me. Thanks.
What do you mean by enabling the NVEC_PAZ00?

Regards

Sumitra

> -- 
> An old man doll... just what I always wanted! - Clara
> 
