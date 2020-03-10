X-GM-THRID: 6802335278632534016
X-Received: by 2002:ab0:144f:: with SMTP id c15mr9843555uae.113.1583842546466;
        Tue, 10 Mar 2020 05:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:27c5:: with SMTP id n188ls1659376vsn.8.gmail; Tue, 10
 Mar 2020 05:15:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsInSLx5fzXpPd6XWylgM62bVgX1G96T8McEsx8VEXeNENUj75nx/03t6/eCbezqXPXETmu
X-Received: by 2002:a67:2f83:: with SMTP id v125mr6798828vsv.100.1583842545252;
        Tue, 10 Mar 2020 05:15:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583842545; cv=none;
        d=google.com; s=arc-20160816;
        b=WN9jeEUoOMi1iZzjMWvx+4KPOlZXSAAl4hBBxf9deeSDYseiDMCqD4qcPEsnd5PYl5
         T+RJx8HGl/aXqHTSkU6P00S20W6SmxP1qcvh/QN1DsxHU0zfnwwCEQMPaEoakBaPJDnf
         J8EVJG2N9fVJCMqEwS+2nshqmwSDs8RDiOnJtzWjU8rqgrrUMRTXwwnlVywxVMNJTBwo
         awwXcC7wvL3yFey7adhqciE1VBKmaAO8C/UCQp35CtWX3+7QJx56MOfCzRxdLmGIhWkF
         9r6xUiO1W0H7Y9Xk4CaXLpMqiIadpyoQ1Dq0qlZg5JQhgkXmBrYXDliWrALbml5H2PK9
         +MLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=z8QZOC/+MQFMDusntDGjdIGQgjLEYgEXGnhLs5iS+qI=;
        b=03YFGyJ8irQEr9fx4Sz9R1X4xvCsg6A+UZr4y4l3ZQkLb4IYUQ6jm8yM6X/xZWiMl5
         T+Ko0He7zqTrKDm27O259/vmWWGL1EggTDxbkxHkHukEFIPg2gjj+UCVuBNMA888K+2h
         6FBcxbpAzeWf7CNnR/b9s0fhhC7bwJAhavqZ+kYdjtxSlI4frYGRsxCfUN7mIJeSn4D0
         v6Hc20U6WhxhwmX3VK7weeD4bajJ/4N9FQSGuzn6uGlbfhyX6C/D42nOV0yLGZbRjrsb
         NdS9/Yu3xFKV7W6G7R5s4amsCKOCyUD1u2zCN45Fx6pQiorHtUlSEjLcUmEG39RR2P3b
         aO3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=TAwsCcQc;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s124si258423vka.1.2020.03.10.05.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:15:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=TAwsCcQc;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id d9so5348603plo.11
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=z8QZOC/+MQFMDusntDGjdIGQgjLEYgEXGnhLs5iS+qI=;
        b=TAwsCcQc8EaDN23Fi1Fqe2DFVqBZZCdUlePRnA7YgIM8yhsKR5KbaxiSadd2WeXDKm
         ijfZzmnDx4AouBaG2ifrOS+bmAHu+2YBdSQ6WKFiFf+iGWl/x7t55/2VwINQ6v8aNGtt
         G9+/KNMruwBeJ+zh4B1NT9e77x0hhbPna7yB1kKLWM/vwh5W+ffoj7N/cwhnAtrcUsKU
         4WU5av1I4eN/HKfBqIEsuV59XvgYICGsGRK4l26mZcVeYMsdkBFAOz6sAtslHLZO0q7n
         JPfMj9xr+9qK08FKKneSKKDjGlLf/TjrzoPdHzQnxp7FGpuE8vrIgvff/TIJ+TcVUpzN
         TbsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=z8QZOC/+MQFMDusntDGjdIGQgjLEYgEXGnhLs5iS+qI=;
        b=Xz1iExUGza8gN9RLsx3wfW32x87HOt4qyRJjJ9HaUA3pI/0XSvhdufFWFEm2eRwt2P
         +VBbkUYie/hqtYTppE9d7KzMd/Kf4qPGJTBQz/2KLzo8MxqhZ7c1FGzQyt2xBzuwNgCS
         xUZpWyIWkfhdnpto+FhEfGCKvQ7R+3PJSJVl+ZVhNTiqmaqLTZLBUkR7Msz2jwcrjYpD
         O0pOSwKEbNiRX6HX+nSAs2psjiKMeyzbO3pW91y76umIAAJHEqwkgdEJD6iKvVkn3C9z
         Jip/rAF+5c8X1pM+tpU6Y+gtw12xv6Cd9ngj6gzFy0pFc5k0Lx2VV7qEhdNR0E176/pC
         Sbvg==
X-Gm-Message-State: ANhLgQ0f1XU/IKlxNl3CFHSZfMmZ2REZp/tYBi8sGgifrKatEcLYGbxj
	w+QZr9GyIb+L6fXQVy/HM3fNNv+I/RP4eQ==
X-Received: by 2002:a17:90a:fa81:: with SMTP id cu1mr1433225pjb.192.1583842542974;
        Tue, 10 Mar 2020 05:15:42 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
        by smtp.gmail.com with ESMTPSA id i6sm7548698pfe.62.2020.03.10.05.15.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 05:15:42 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 17:45:35 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/7] Cover letter
Message-ID: <20200310121535.GC11048@kaaira-HP-Pavilion-Notebook>
References: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2003100809240.2455@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003100809240.2455@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 08:15:51AM +0100, Julia Lawall wrote:
> On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> 
> > This patch set aims at improving the code style in a few drivers in
> > staging. They have been found using sparse, coccinelle, and
> > checkpatch.pl.
> 
> A cover letter should have a more informative subject.  It's obvious that
> it is a cover letter from the number of the patch being 0.
> 
> The description suggests that there is no connection between the drivers
> or the changes being performed.  If that is the case, then there is no
> need to make a series.

What kind of patch sets should Ithen submit? Please guide me.

> 
> The cover letter should contain a complete diffstat of the changes made.
> 
> You should be able to find some examples on lkml.org.
> 
> julia
> 
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309221449.GA5032%40kaaira-HP-Pavilion-Notebook.
> >

