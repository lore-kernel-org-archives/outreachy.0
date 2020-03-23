X-GM-THRID: 6805399652543758336
X-Received: by 2002:a25:6a0b:: with SMTP id f11mr33950677ybc.251.1584965753125;
        Mon, 23 Mar 2020 05:15:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:25d4:: with SMTP id l203ls2074362ybl.3.gmail; Mon, 23
 Mar 2020 05:15:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuuLhaL0m/I+CEWhMVpJGu3gYoUPP6cUFTM1GGr1WZxpRYoXxI9STnoKg8rF4oEIK4jZJX6
X-Received: by 2002:a25:b105:: with SMTP id g5mr14103383ybj.41.1584965751513;
        Mon, 23 Mar 2020 05:15:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584965751; cv=none;
        d=google.com; s=arc-20160816;
        b=Tp9LWUNNF9w5VQMnqGbPtW/6lZV7TeJgAMFN68Gt2A6TN1sD/4d7RGf0TjzaFPOhv+
         t5yQSsLtwtwOmW1BV2PKN7TWTJH+4/+sQ7bc0wMtOD87c2skEYocWndNYAZpmt45n3r/
         SOKwCvGsXBKJGY73J3clsLr8zCKdyWLnrETRz/0KU0Zcy7+nd/I5jr6j/qNUmvexWFcE
         7G/p2kq9ur57WaebEV3ljRKZ9pqn0vOu38GOdnlEE94Y5FsK9MMz8+8fom/eJEzeJe0m
         KFjSd91XgysZCk+MfGK4zdEhTQTq+Fem9PqpE6SaBQTiNNp9jfhm7O+oThTecJ8ge54/
         vCuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=STBVOZ4+HTCp+/CYO9CQUgh44ZzKbpQfDmFXO2XUPKg=;
        b=cCb+G+shWN4ro3j7oaoc2o23imBiYVVz8nwWiD7cnFrhvgQy9eXnWAKhO/cfv/TKvK
         Nf8AYSIuWsrao8XjcItGDEtwEWdF/TzxA/0RXmFpSCsVrhZUI2J7Q264XuVlKPb+LnSL
         xdwMoHXCWx5bE1UZzdPRnKHXDj3ZbbUMPnepCInckRLovc+S4EUZ3bsvIzEzZB34uZmK
         ld9knj2q859+fMVkwgF7t5f0+e9vvVT3eJV+KV9JWgmn5nLMAs2Cbux5oeIdnuZV2kW+
         wEs5cHGpa1HXLIHphxWQ4njPUtq90JXhzW9jv1upLKuGsw5Z8Gm7tFIklpWU02azYuP3
         NEDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BWJ9F0zX;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id e14si1109813ybp.0.2020.03.23.05.15.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:15:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BWJ9F0zX;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584965751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=STBVOZ4+HTCp+/CYO9CQUgh44ZzKbpQfDmFXO2XUPKg=;
	b=BWJ9F0zXDNxEstdE42l7O8KzmASs84LsnL9JtORlsF5ty16FU2yjC6QWq41OWNI6cIzvXZ
	MiwX7FhjN2JjAeeblT/qIwn40VECfADA8d8ZCu+sLMRVxN22Tj8zouuFfF1hMjzJp7Cw1b
	PwSWvYZF+xEVnidjM4k0yWxaw0Ij//Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-7A9IluPYNSO8LOmaQ1My8A-1; Mon, 23 Mar 2020 08:15:47 -0400
X-MC-Unique: 7A9IluPYNSO8LOmaQ1My8A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D6758017CC;
	Mon, 23 Mar 2020 12:15:45 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FA569497C;
	Mon, 23 Mar 2020 12:15:38 +0000 (UTC)
Date: Mon, 23 Mar 2020 13:15:31 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
 outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@gmail.com>,
 kieran.bingham@ideasonboard.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald
 <pmeerw@pmeerw.net>, linux-iio <linux-iio@vger.kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 3/4] staging: iio: adc:
 ad7192: get_filter_freq code optimization
Message-ID: <20200323131531.1d6c8f93@elisabeth>
In-Reply-To: <CAHp75VfF+oDWsOF+_=U6YBeP60XLF=SLYzExa=5WjLSgoMUw9A@mail.gmail.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
	<dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
	<CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com>
	<20200323014935.48048405@elisabeth>
	<CAHp75VfF+oDWsOF+_=U6YBeP60XLF=SLYzExa=5WjLSgoMUw9A@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15

On Mon, 23 Mar 2020 11:28:52 +0200
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Mon, Mar 23, 2020 at 2:49 AM Stefano Brivio <sbrivio@redhat.com> wrote:
> > On Mon, 23 Mar 2020 01:44:20 +0200
> > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:  
> > > On Sun, Mar 22, 2020 at 9:57 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:  
> > > >
> > > > Current implementation of the function ad7192_get_available_filter_freq
> > > > repeats calculation of output data rate a few times. We can simplify
> > > > these steps by refactoring out the calculation of fADC. This would also
> > > > addresses the checkpatch warning of line exceeding 80 character.  
> > >
> > > I'm not sure you did an equivalent changes. I believe in the original
> > > code precision is better. Consider low clock frequencies when 10 bit
> > > right shift may hide some bits of the division.  
> >
> > Note that those bits are eventually "hidden" in the same way later,  
> 
> Even if mathematically (arithmetically) evaluation is correct, we have
> to remember that computers are bad with floating point and especially
> kernel, which uses integer arithmetic. That said, it's easy to get
> off-by-one error (due to precision lost) if we do big division before
> (not so big) multiplication.

That's exactly the point I was trying to explain below: swapping steps
in a sequence of DIV_ROUND_CLOSEST() (*not* of arithmetic divisions),
*should* not affect quantisation ("off-by-one") error.

I'm not entirely sure in this case, so a quick "demonstration" in
Python or suchlike as you suggested would be nice to have, indeed.

> > despite the different sequence, due to DIV_ROUND_CLOSEST() being used
> > at every step (both before and after the change) without other
> > operations occurring.  
> 
> By the way, where AD7192_SINC3_FILTER and AD7192_SINC4_FILTER
> multiplications disappear and why?

Those were in fact divisions (multiplications of the divisor). Overall,
these steps are now arranged in a way closer to how they are presented
in the datasheet mentioned here (up to "Chop Enabled" paragraph, page
26).

-- 
Stefano


