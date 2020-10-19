X-GM-THRID: 6885049612383551488
X-Received: by 2002:ab0:6034:: with SMTP id n20mr6802389ual.90.1603104700558;
        Mon, 19 Oct 2020 03:51:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:15c7:: with SMTP id 190ls1094113vsv.1.gmail; Mon, 19 Oct
 2020 03:51:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6eUrEO3uC9jSbYYu02DKTU3OjwS2VxLVbWk0lqFbgjJKNqPqKcSx8gnU2M97qRt5uiCEd
X-Received: by 2002:a67:e8d0:: with SMTP id y16mr7822371vsn.53.1603104699138;
        Mon, 19 Oct 2020 03:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603104699; cv=none;
        d=google.com; s=arc-20160816;
        b=a4mNp4eogdgDb01kqafnd1cFxl1bSziQ+Axj7Xq2yxgMLF9KqUHasVKuXMkWixLWOt
         ReCXt3KN3ZY0Zm35XXxyV9nlk53+DBV48xpfRqkKpX5/QzYxmzP/bzRYCws2PnhZhmxi
         SBG9Gzu/syBW6DS/IxebHFWj4UVtBs5F4D3bFe2e6CFpWWp8zPBf025gyq0SZ5akunKr
         KTSgDY8U/NaOl0jVg3uxbCvGX2OsldS40461EO6fXseZygKo7IWqL9FTgGoWLT0u8gPo
         6RH68bhK3JaBqqkmldUdylS1JUrmoA4hhXUdt1/eteq5/qVKaLhFMYYIng6s1FyntY5L
         LW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=POJUUWt1MFPOM3h57wm7ZLoYvrjx8cgXX5L8pirMN6k=;
        b=WJ4TUewLksBtR8fLsGI904On0RFg9+sxWtm+52f4fPN57+l6RqkdwSVxaVK/n0ZeEx
         vqrvKK2Jv+mwwkNXjDm0CdQbORYainy2B5IoEA2vfpOFviS0/FbOvu8m9PYP+toYENfj
         KiTS7kso7flqSZxWXSszrtB/WaP3/eTvgc6jTOnW1MliQ/ZRaKvtAotWDTEu+aRvJ4Ef
         U2vcenfRVwBID0TgBI+V1K+KCZizRCruAnNwM17yUjj7wuUaWNlWxxd6bYbIra2gdJtC
         i/AolHhXGyDvNvxI/BXcnQlVLHf3xPaBjIVfvtduXp2YI8e0x01O15fYAUon3QXGZH4g
         U5+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vfr6xkW9;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v3si510607vkb.2.2020.10.19.03.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 03:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vfr6xkW9;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j7so5801243pgk.5
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 03:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=POJUUWt1MFPOM3h57wm7ZLoYvrjx8cgXX5L8pirMN6k=;
        b=Vfr6xkW9HKYZrqGUS2tPGml8eGqgr4Vaw9XPImttfIDIjVrKNu09lX5opzwzuCmXjD
         uzlq6hs18uAPBoscuR5ByuOUaH6zi8jcZRtm2TxhhfdeyASx5mvdST5Fk6oOhzGUaPT5
         OD8RSWa6vXPquRa1c7rbGS2cDjkmX8xyCbYfr4xmljeQgkdPU9Y3uKirqN2TSexX5tU5
         kiJtmRxl9W5bv5dLd95bxPQPq+GV8vMddpH9cFemwds+PlGZmruAeyWciIxVWBQWOcQj
         0XJi4Fphy2FhfAXy5AR2HJjj25PeivA99yE5yBMmbIaiPAqRbc33k25UBfACTJnIrKL2
         /cGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=POJUUWt1MFPOM3h57wm7ZLoYvrjx8cgXX5L8pirMN6k=;
        b=fxTfHCerIMjvZIJu70w8qJqktzLn7g+nQog8S6+JUROvKW4XuM/TXloYH9JXSqw2nd
         0FACGbWNUmVFs+n2TK1Sra3NNnl335hV+r7ij0mUcFkT1fdYpW1PtCJphKhnfAZ0Uia7
         nWpOB69Nja9TZgzc1TRVYRG7Kfp3EsYQLk0O1DgPsTEZT06ZdF2s79RF68wOPG/zP71j
         dQhsx9Xbr8mfX6dVRejSd+6WkNB46/R/vAQO3vb37y3/uk+3Q8ETPnT/UaD3u1EKAWht
         5fl2nxwvYf/MoU95kiOqwiLSloTtahMU0H75Rh1OJ4qenOb9HKHRxI8XFp1oJHccmiag
         YPzw==
X-Gm-Message-State: AOAM531vuiE/RKJhGgISF1xLQuCONb3/NUSZLkbQFp5P/bFdwEk9UKaX
	+6YgA7hjhlGAxkeKY9eXdZg=
X-Received: by 2002:aa7:9a4a:0:b029:155:323e:adae with SMTP id x10-20020aa79a4a0000b0290155323eadaemr16056891pfj.70.1603104698282;
        Mon, 19 Oct 2020 03:51:38 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id bj17sm11408865pjb.15.2020.10.19.03.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 03:51:37 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:21:32 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Subject: Re: [PATCH 1/2] staging: comedi: Simplify conditional evaluation
Message-ID: <20201019105132.GA9681@ubuntu204>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <90da78e2-eaa3-1174-744e-5ab6a49eb338@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <90da78e2-eaa3-1174-744e-5ab6a49eb338@mev.co.uk>

On Mon, Oct 19, 2020 at 11:17:38AM +0100, Ian Abbott wrote:
> On 18/10/2020 20:48, Deepak R Varma wrote:
> > Boolean comparison of the condition inside unittest function is
> > unnecessary and can be simplified by directly using the condition
> > outcome for evaluation. Issue reported by :
> > scripts/coccinelle/misc/boolinit.cocci
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >   drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > index eaefaf596a37..7db83cf5e4aa 100644
> > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > @@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
> >   	const struct ni_route_tables *T = &private.routing_tables;
> >   	init_pci_fake();
> > -	unittest(route_register_is_valid(4, O(4), T) == false,
> > +	unittest(!route_register_is_valid(4, O(4), T),
> >   		 "check for bad source 4-->4\n");
> > -	unittest(route_register_is_valid(0, O(1), T) == true,
> > +	unittest(!route_register_is_valid(0, O(1), T),
> >   		 "find first source\n");
> > -	unittest(route_register_is_valid(4, O(6), T) == true,
> > +	unittest(!route_register_is_valid(4, O(6), T),
> >   		 "find middle source\n");
> > -	unittest(route_register_is_valid(9, O(8), T) == true,
> > +	unittest(!route_register_is_valid(9, O(8), T),
> >   		 "find last source");
> >   }
> 
> NAK.
> 
> It looks like you have inadvertently inverted some of the tests.

Hi Ian,
Thank you for catching that. I am correcting it and will send a v2
shortly.

Deepak.

> 
> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

