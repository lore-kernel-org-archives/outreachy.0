X-GM-THRID: 6803014756528553984
X-Received: by 2002:adf:c5c8:: with SMTP id v8mr31642880wrg.111.1584368872137;
        Mon, 16 Mar 2020 07:27:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6802:: with SMTP id w2ls834018wru.6.gmail; Mon, 16 Mar
 2020 07:27:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvpiluzgIF/90pKSicxONbjGUQXgvvqV8KzafxLqNvhtdsMyRCmIglKTVFSAfRgW1rVe7Ob
X-Received: by 2002:a5d:484d:: with SMTP id n13mr22410452wrs.179.1584368870880;
        Mon, 16 Mar 2020 07:27:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584368870; cv=none;
        d=google.com; s=arc-20160816;
        b=c4AAzc4F1RTBugkMJ4Va2dr8RTKeJ4QhXEAIsZhJ/3iIwDPKVRjeXprh/YDwZnKawf
         nbeYm1+XmRHNowTr+IDtVhb0go3wywgpgrOcnBSbrDktMc7uWQCWBRFeXWEdueQhAKgR
         AWhY/37ZQtaD8fruVnJPn+2px6rrEpXU1F8EjurxzMjA2BRhAGtCqsUUTYDP6Gm5zOX5
         QdvhYZh8q1OnI+l6+NbJrEv51D4L0+6uMGwDgDxLu8I71k8spACW9mWHypBXZQXyyveY
         b4vAhOm4+GUVvW9inEBVlFFyQgdp1OjZrERjPXzyiKQlu17OsTi2aZ7gnQP0VAv12ViC
         VjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wdZiRfOi1+VtD7VAMsJ8z+uDmdpxgRxtQwaCE2ugjcM=;
        b=IcfBzJb1KstxdiaDXMDDSeIUnEP6Mk2DVKD+IOeSyc4EMi+JTvLRwBngxR4EkbBEG9
         KsorlJaWDf4dqd+gX5NrO5ziJmSTM6KXVg+yLHqUnXe/LFi91MmZDcWi92i1P67Ft5ZC
         X9sNSkFc8yxbzdNGPys1JJ0kpAgiHPsFcVkgdQXtTi1bbHoaJPomL2fbQqU2ywlbP+G3
         2UoqjbrGzK3STj8uHP3eOzx2HtI+xDWJJwYA0qEQAkIeHQA5SY/6LsSKckdCsYSKjae9
         iiTnekKdlCPbZRVYyDQNRlV8OLTnlTpigy0Wmgx09h68CyF6dVqLraHIGyCfwabvMdDb
         3sXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l13si823791wrp.2.2020.03.16.07.27.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:27:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,560,1574118000"; 
   d="scan'208";a="342524732"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 15:27:39 +0100
Date: Mon, 16 Mar 2020 15:27:38 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
In-Reply-To: <20200316150829.370975f2@elisabeth>
Message-ID: <alpine.DEB.2.21.2003161527020.5216@hadrien>
References: <20200311181134.GA17847@supernova> <20200312002348.06821daa@elisabeth> <20200313094046.GB3844@supernova> <20200316150829.370975f2@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Mar 2020, Stefano Brivio wrote:

> On Fri, 13 Mar 2020 10:40:46 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
>
> > [...]
> >
> > Indeed, this is all the output: (this command is run in the sources root
> > directory)
> >
> > make coccicheck MODE=patch J=8 M=drivers/staging/android/
> >
> > Please check for false positives in the output before submitting a patch.
> > When using "patch" mode, carefully review the patch before submitting it.
> >
> > coccicheck failed
> > Makefile:1740: recipe for target 'coccicheck' failed
> > make: *** [coccicheck] Error 255
>
> Hah, I think I got the same issue on Debian. I installed coccinelle via
> opam, then:
>
> ---
> $ make coccicheck MODE=report M=drivers/staging/android/
>
> Please check for false positives in the output before submitting a patch.
> When using "patch" mode, carefully review the patch before submitting it.
>
> coccicheck failed
> make: *** [Makefile:1740: coccicheck] Error 255
> ---
>
> Debugging: looking at makefiles, I thought about using V=1:
>
> ---
> $ make V=1 coccicheck MODE=report M=drivers/staging/android/
> bash ./scripts/coccicheck
>
> Please check for false positives in the output before submitting a patch.
> When using "patch" mode, carefully review the patch before submitting it.
>
> Processing alloc_cast.cocci
> with option(s) " --no-includes --include-headers"
>
> Message example to submit a patch:
>  Remove casting the values returned by memory allocation functions
>  like kmalloc, kzalloc, kmem_cache_alloc, kmem_cache_zalloc etc.
>
>  The semantic patch that makes this report is available
>  in scripts/coccinelle/api/alloc/alloc_cast.cocci.
>
>  More information about semantic patching is available at
>  http://coccinelle.lip6.fr/
>
> Semantic patch information:
>  This makes an effort to find cases of casting of values returned by
>  kmalloc, kzalloc, kcalloc, kmem_cache_alloc, kmem_cache_zalloc,
>  kmem_cache_alloc_node, kmalloc_node and kzalloc_node and removes
>  the casting as it is not required. The result in the patch case may
>  need some reformatting.
>
> Running (4 in parallel): /home/sbrivio/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/android/ -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 4 --chunksize 1
> coccicheck failed
> make: *** [Makefile:1740: coccicheck] Error 255
> ---
>
> so, yeah, spatch fails, but no error (see below) isn't propagated (even
> with V=1)
>
> Julia, do you think it's worth trying to fix this? Any quick idea?

I will try to find the problem.  I think there is a way to get debug
information.

julia

