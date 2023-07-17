Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B11A187C
	for <outreachy@lists.linux.dev>; Mon, 17 Jul 2023 17:34:53 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-403a7066bc8so34176731cf.0
        for <outreachy@lists.linux.dev>; Mon, 17 Jul 2023 10:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689615293; x=1692207293;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sv2JJ20O+YCT64NoV8NiHrZl8O4tnnOMgOgJhZwZaMs=;
        b=kggTnOxD3kCdKrWn4aifZQpxY+XAusz2vs+Vg+LSmJotpp9ppuMo9SYu1b2+gNN/68
         h4ru5y9smLIN35whpuj4vI6tElmCA4toOA7//px0l1huHePvxNLpaJggX8be+4PwUMJh
         c0d97Ewh15x6+Ez4ClYTJeQ/WclZTyQSMOhL8NYzjZTDm2AX6zN9MDTMd2t9p/47GrEf
         ftzsKHM/CctEPxjaRQC5AkFTTZKkiQBrM9L94YfUaNcM3Zm9FVA03whkOicUg3x4gmpI
         //3NN4uQP9EAbSCsU5ZLyLnqzk7W9BYSYtHeHa7B3rfvf3MIsyjOO51qI8y8iUTKNQCl
         kRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689615293; x=1692207293;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sv2JJ20O+YCT64NoV8NiHrZl8O4tnnOMgOgJhZwZaMs=;
        b=JxA6SKYDJVtX99VRjmBYvC8hkA1VbUmMoUNLLBGUaJ1sTiNHxjp9EtmIOCHmoR2Qvn
         l0omqWaRVFYrcotlZ6ITvLMp+oTnFDTEPyR8ObZ8LaV0rFxgHsVIt70mOyPg8Ot1Ge0I
         +ZUx3GgCdI0W7IC2qVyjrocO2F/m3n6KiQZKbixOiQ8coo55OPcv4aY3weR4BNueuu9V
         BQ0nlTQ9/4PR7E8tMH/KeSJd01ihCBWMeWKtXP+voWIYN+IhsYQWWb4U5ibZB/KWW5R2
         IwNiHECJRWSLqM302leqKKycfqXH6w8u3ol3yuVbBFb+cR4qQevZ9vn8U/YHpluFrSZ4
         Wkyg==
X-Gm-Message-State: ABy/qLZZ0npX3UnCNmxoVKsICeYrOpVMutbz2MWxgQxuWWz/bm7f5Cpo
	WlYGzzpqFnnHa4rewyoFYMs=
X-Google-Smtp-Source: APBJJlHR/CcMc/Ixd4PW/olXbUFY6XTqYdszcwiBQBOwNnDmibDiIqvPRmFKMMPWR/I7oGflhJBs8w==
X-Received: by 2002:ac8:7d10:0:b0:401:e29c:b1b6 with SMTP id g16-20020ac87d10000000b00401e29cb1b6mr15503302qtb.39.1689615292734;
        Mon, 17 Jul 2023 10:34:52 -0700 (PDT)
Received: from DESKTOP-EVNFDUR.home ([47.188.94.155])
        by smtp.gmail.com with ESMTPSA id hh4-20020a05622a618400b003f394decd08sm9414qtb.62.2023.07.17.10.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 10:34:52 -0700 (PDT)
Date: Mon, 17 Jul 2023 12:34:49 -0500
From: Jeremiah John <jeremiahjohn08706@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Cannot see custom debug message in dmesg
Message-ID: <ZLV7ueRRajciyga6@DESKTOP-EVNFDUR.home>
References: <ZLRxV4CciqmQ4EYS@DESKTOP-EVNFDUR.home>
 <alpine.DEB.2.22.394.2307170735350.3217@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2307170735350.3217@hadrien>

On Mon, Jul 17, 2023 at 07:36:50AM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 16 Jul 2023, Jeremiah John wrote:
> 
> > hey everyone.
> >  I have just taken up kernel development. or at least I am starting, and
> >  I have run into an issue. I saw that qrtr was a module loaded by running lsmod,so I modified static int qcom_mhi_qrtr_probe() in net/qrtr/mhi.c
> >  so that it prints "I can modify the Linux Kernel" to KERN_DEBUG. Yet once I compiled and
> >  booted up my new kernel I couldn't find the debug message i set in dmesg. is it because qrtr (or mhi.c) is not a module loaded at start time?
> >
> > I asked this in the IRC chat but then disconnected, forgetting that I would not be able to see subsequent replies after I disconnected. So I am retrying my query here.
> 
> To see the message you need to modify the driver of a device that exists
> on your machine.  Or maybe you can insmod the module, if it was actually
> compiled.
> 
> But it's not the outreachy application period now, so the mailing list is
> not active.
> 
> julia

I see. Thank you for taking the time to answer my question. I will look 
for included modules
