X-GM-THRID: 6463854288984604672
X-Received: by 10.46.18.149 with SMTP id 21mr573306ljs.28.1505150771523;
        Mon, 11 Sep 2017 10:26:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.131 with SMTP id u125ls533598wmd.0.gmail; Mon, 11 Sep
 2017 10:26:10 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7SnIbQckij6dysWw6sqj44e6RO33BcBnPtyr6rwxOoFYDglrxPEpGtdjeSl4mfXgc8hkaG
X-Received: by 10.223.196.139 with SMTP id m11mr674072wrf.30.1505150770401;
        Mon, 11 Sep 2017 10:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150770; cv=none;
        d=google.com; s=arc-20160816;
        b=Zoz9tW88eJEBIzh7MzUl9nHNXLRF3owlwzQDCAytgukwKBmf91ccKY3lwRa12qYOFt
         bHvzwmVJPDNp+NH5okVXoJi3uEXkn7cPx7ZFjPmqPFku5Rt0OTyXWHedmdEZLKWvarE0
         8WvJA9PaLDzUWydR2/sC8bnhD9P4vlG4O6D7yY9kwRXrKxTlEj5UpbAtrSBbDNEkUVDz
         ePOO7AT6IErChd6M61r/xe0fgUOHMVoXyT92EfDqClIml+fX7k8TbSjgWU4C67EeNHpq
         a/iO4eldFG66PerTj6aNCzWbSqF/kij0HZy2eociwwcWxkR9gG58H68djhJt2e62NzuY
         vktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=4kPdroLEA7z04kjApoUD8k2lb75+WWLFl6YDJYOQ9G0=;
        b=HwCLrP0e/VM4NkGe45ZU/zKN0rX0awRVjsXPhBafs40gZhS2+wxZNF1xqyfXaTybRH
         HX4afkrt4dRxKeuewFaDEfIpLjhQmr2m5bV6ry+ET/QRP2tKynAoOhpOBU3DDZYQGFgk
         aokdhfUtFgp6UfiJx6uydoQEs2E6QezA2sqvHh3zJ9m3HiZhHAO6KlUI11dmc6Wlrg/e
         Z59UeAduAkDNHfse6haYaM2KZh6lPFzuIw9YEi34Nx9sYLvruyU8EA51KvkalbdEuoEb
         UGzlVLYUPpv6z7tx/rvmTZy//aeiuz+QKsB1TLecnGjzhiE3f0OWDvKzPxREgrfMo6Fv
         NeTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si584098wmb.3.2017.09.11.10.26.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:26:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,379,1500933600"; 
   d="scan'208";a="290552486"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 19:26:10 +0200
Date: Mon, 11 Sep 2017 19:25:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
In-Reply-To: <68bf1580-c3fc-fb41-d96b-559eb7b4c7f9@gmail.com>
Message-ID: <alpine.DEB.2.20.1709111924490.16190@hadrien>
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com> <20170911163210.GA26981@kroah.com> <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com> <alpine.DEB.2.20.1709111900220.16190@hadrien> <6ac72deb-edd6-1026-a2e9-df6ea871b3af@gmail.com>
 <alpine.DEB.2.20.1709111909454.16190@hadrien> <68bf1580-c3fc-fb41-d96b-559eb7b4c7f9@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > > perl scripts/checkpatch.pl -f
> > > /tmp/0001-Staging-rtlwifi-Remove-unnecessary-out-of-memory-mes.patch
> > -f is for files, eg foo.c, not for patches.  You should be able to just
> > give the patch file name directly.
>
> When I give the file name, it is showing me 'permission denied'.

What is the exact command line?

scripts/checkpatch.pl patchfile

should work.

julia

