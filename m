X-GM-THRID: 6949513279876104192
X-Received: by 2002:a9d:5c0f:: with SMTP id o15mr16250673otk.279.1618062509896;
        Sat, 10 Apr 2021 06:48:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls2613954oiw.10.gmail; Sat,
 10 Apr 2021 06:48:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4X4FHtkIsf41fIsPp+qEklTi0j2V75xDhJdNbIoLpeueBQMsV5Bg0hKoAUcc7MRTanUe2
X-Received: by 2002:aca:f515:: with SMTP id t21mr13602613oih.72.1618062509239;
        Sat, 10 Apr 2021 06:48:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618062509; cv=none;
        d=google.com; s=arc-20160816;
        b=EuoH5ocghInhTmUZB5tcOJjgKNfacP+C6LFvlI2AvKyi3gqfZyyCduxlQMhVVwx6Ap
         2c9ExS9aRNPiytmcJ4nWCp931uPomKyS5vBs5CqnfbYC3y+3R4SDURdiU4R9xH7MIlfB
         /7AjaYTB8QPNMk3k1sjOuakTk1Pome0AonsNJHg7qN7/mkcJpEI94O/nl5hwnNM0jp0i
         05Lce+9AoXjgSKJOxX2/438FfGpPyvvbsr33X8ESg+hSEfwECAi0s3sIdH/sz2TpWSq/
         LAkyUYkzasM2k3Qf0AYdzhgoSTeqCflEBhU/OUpxqAaro6WoDK/M1Cti75iPdFNQi5UJ
         mzNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u7H10EdIXw6iQoAvul5AUZqr2UYajGqvndSxKeyn9k8=;
        b=yyq0cFJOW1Zmx45BdUg9ouanqF42jcboCjubJyMzFt+cizt72dZxBfMtnpmijWLa1D
         OdhzbHguHiAXSwnJgmEe9H7oIh+1JMHErMc5yObtuX6y/1CTZJGg7+ZKBHJBkAcID/+i
         LG2xAyojw4CMVrzcTD6Q6UDmqs/bd29TzVMnQqm/nRwq0mHWx2Nl5PHcBL+fGGhCPnEb
         NWvL08WhjrOrII9doldapYnAetf16JbkfMTMXm9eMGfa2JbfXe4MjKdmWpNQLCqXhNUv
         IIMa0c1+1jC1jTDLYXHxmxAkThXB1hoowStRCjhtOtNEuRYUgbTbxmTlcp2YoADqXjj4
         p0Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=VqL5by2v;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v31si336590ott.5.2021.04.10.06.48.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:48:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=VqL5by2v;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D32FC610A7;
	Sat, 10 Apr 2021 13:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618062508;
	bh=BV9vwcodbAKeTvV83HkpyUEzg0GvejpCEcxYAY2s9/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VqL5by2vI075Osno2/+I6lG7twNASIjNQ4RIfekAGdZ0tvRKa+V295U4rYRgZeuwk
	 0HVEI/2TuTUF1+yYPLz/Xnu2cv3jQpabdjzNlwZBWm5Sy/G1eMCaAqlHxE+eSpu8qq
	 0Lt6dBQTf605WufbqtpFntSGI42aL/5z7ujEfiyk=
Date: Sat, 10 Apr 2021 15:48:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2] staging: rtl8192e: fixed pointer error by adding '*'
Message-ID: <YHGsqpNPPw+yZN12@kroah.com>
References: <YHGhdtldqAlRsPHT@kali>
 <YHGksKltkkmaUeAk@kroah.com>
 <YHGqBLS+IcHdkI6r@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHGqBLS+IcHdkI6r@kali>

On Sat, Apr 10, 2021 at 07:07:08PM +0530, Mitali Borkar wrote:
> On Sat, Apr 10, 2021 at 03:14:24PM +0200, Greg KH wrote:
> > On Sat, Apr 10, 2021 at 06:30:38PM +0530, Mitali Borkar wrote:
> > > Fixed Comparison to NULL can be written as '!...' by replacing it with
> > > simpler form i.e. boolean expression. This makes code more readable
> > > alternative.
> > > Reported by checkpatch.
> > 
> > Checkpatch did not report this specific problem, Julia did :)
> > 
> > And this changelog text does not reflect the commit you made here.
> > 
> Making the changes now.
> 
> > > 
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > 
> > We need a "Reported-by:" line here to reflect that someone reported the
> > problem as well.
> >
> I am resending this as patch v3. I have to add reprted by Julia, right?

Yes please.

