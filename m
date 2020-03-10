X-GM-THRID: 6801966173715955712
X-Received: by 2002:a02:a412:: with SMTP id c18mr19633222jal.69.1583831502471;
        Tue, 10 Mar 2020 02:11:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:ca92:: with SMTP id t18ls3213312ilo.5.gmail; Tue, 10 Mar
 2020 02:11:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs6pAWDS8jaRjfq18OCWNBlwMN3KpoN+GMBQXlt5PHuGCAouIxZVjGZJIwxJN0Jqp36rxQV
X-Received: by 2002:a92:1906:: with SMTP id 6mr20033683ilz.130.1583831501251;
        Tue, 10 Mar 2020 02:11:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583831501; cv=none;
        d=google.com; s=arc-20160816;
        b=fnj75a0kISvuPpxgQrW2GFsgHqCasLwvJYImsJcGuK/Yzl2sLuonEHEDDSZKHFgtVk
         CZE9hgn4IDomUPv+YGkG68zmMrk1JOsxfLaJJykfBindHUOCHZsQQ9vjAjnycb1pcf1x
         4S5gV0BiDRCSg3bDp4PsEGEWtSEyO04P4IGKOrJZDb82eKq+4/ZM/5nXRUw5ao3M0IKc
         aXs18S3ap7hTiXIHpjXi05wtVzb7bL0R5aUR0+8ZHENB2np8PW+vzRplaPeqaK7E7W/o
         vJqsqDUJVdEuc9rUwo0CjR3Z6mPOp1I1ogABK+hjIz1daMS0GMT8Vm0qfmhuL/+/iOfT
         mcEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I0L5vn78stJ6ykq8Xij+bV5S5fsw3Zy4VAeo1/DZbLs=;
        b=kayqHORs+vU3SsP4bBZXbzsxDkq/Q1h2Y9fdBFltYpDAoxnFobVU3jOOjJmfJuSDUd
         kZIL/aMjivy0aMea0u87cO86bxahIfMmX0HtDuWFoRpYTdibozjpkwgtxzVj6uULSy7+
         9AVAohYX9aO+kznKfrK8FAsWikqKFomtNyZndVB9iEs2j/V/KZzvn40jU0cGyAUtuai8
         k8A3MxNAoqLpz81p3WOH/LXzv+dyf0wGWn7e69UZLkOtX7rvNqgsUCaJaNLPFzcJ3EvZ
         mWi7UTtr1dl3va862ib+K6OgXqBJaEHok+gfdcaSAFcUM2gFQR71vcWpXiLsa1IBrhO4
         CDjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jk1Axptu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r16si168909iot.3.2020.03.10.02.11.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 02:11:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jk1Axptu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0D86B20674;
	Tue, 10 Mar 2020 09:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583831497;
	bh=OVJOQvDgFEPp2xvo7hLKMuTVpL8sENFskS8PDyI519g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jk1AxptuNvMfn4tDtIRodmxBC51Cy1zucI5tJnviKJwSLNCOsexNUtyhUtd8UrZ35
	 klAI71FbRlUCoOOr0ywWVWSeZuaLchbsgv/ei6AVEvsrKN2BwVsYjlai6MosZAwg+d
	 R1dtBpeaTB4BLbgDHwyUuYOR7NXDngVwulSHc1sQ=
Date: Tue, 10 Mar 2020 10:11:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented
 out function
Message-ID: <20200310091135.GA2480163@kroah.com>
References: <20200308222218.16031-1-lu@pplo.net>
 <20200309125327.422a1807@elisabeth>
 <20200309162655.GA3949@supernova>
 <alpine.DEB.2.21.2003091729360.4721@hadrien>
 <20200309163804.GB3949@supernova>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200309163804.GB3949@supernova>

On Mon, Mar 09, 2020 at 05:38:04PM +0100, Lourdes Pedrajas wrote:
> On Mon, Mar 09, 2020 at 05:30:25PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:
> > 
> > > On Mon, Mar 09, 2020 at 12:53:27PM +0100, Stefano Brivio wrote:
> > > > On Sun,  8 Mar 2020 23:22:18 +0100
> > > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > > >
> > > > However, you should at least Cc: the maintainers returned by
> > > > get_maintainer.pl.
> > > >
> > > Yes, I was about to ask because I read somewhere in kernelnewbies wiki that
> > > Outreachy paths hould no be CCd to everyone in the get_maintainer.pl list,
> > > but I was wondering if this was really correct. So thank you for the hint!
> > 
> > Please search for get_maintainer in the tutorial and follow the
> > instructions there.  It gives some options that will get your patch to the
> > main people who are responsible for the file.
> > 
> > julia
> 
> Yes, if is not too much spam I will resend the patches including
> them, thank you!

Please do.

thanks,

greg k-h

