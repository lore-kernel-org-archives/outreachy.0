X-GM-THRID: 6620120308618625024
X-Received: by 2002:a02:9914:: with SMTP id r20-v6mr18534562jaj.23.1541426769100;
        Mon, 05 Nov 2018 06:06:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:c301:: with SMTP id t1-v6ls7976694iof.8.gmail; Mon, 05
 Nov 2018 06:06:08 -0800 (PST)
X-Google-Smtp-Source: AJdET5exX1jtFjXToy9ntYPlaNV9eGuBVhuDL7HJjiCZAiHruMouZXLuJpCxdkbHvH4gnHJxdDbv
X-Received: by 2002:a6b:691c:: with SMTP id e28-v6mr17194677ioc.25.1541426768260;
        Mon, 05 Nov 2018 06:06:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541426768; cv=none;
        d=google.com; s=arc-20160816;
        b=xbhdzrBOtzpbLFw99ibY+e2311h0go5WdcTBOUJZHU9RE3DT2Njr9eL9ZhIhEO+kew
         3JPJr5A56VO2r3uRyt/fI8Hp+5JDMlaCZ6M5Q83PUCT302JtEWZWseHlAKCCsndrBSq5
         m0ZOSmsMj3e1radT0I8wEH0pD3UaXopy/Xcu/4LOI6ClnujYjX0XmS5NZcqJUtndWuLZ
         fTXLa7zoG4bNZo2PUc/GCE1mOgCTk7uEqnnpi9bmMkdCGPYOcoyZHUkqTDvmLZnM6XGd
         K7yJCF7jdySQAG15WnffzlUQLp0wAb7RqoVwBn62ov/LMKiPCzIGjxDkCKeg5nDm7va6
         hMKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=S2fVUJ1tqa52JDZcaHYxrZKdYTtPfiWxUGB/5jlyap8=;
        b=nkpJ5LEvew4/JB9FQWub6+NMnjyY+c4KC9Q2FdE8LzZFsu3DlbLXS1/Lf4YgXOvXHC
         R3FPClXod6Qz8ctwbuo3tzqTauAkqS8cR0KijN9/b0s5BBUQCtZV84ajIm9tjl/D4pPb
         tHYJ3pEOmiMEtLGdYjft3W1qiSa4tjji9OXbjow0jvMDYXVopu2KO/Mi4rM4gLnSQkl4
         +xoBb/+gYb19g4JErUuwidpum05bhNnUmxVTV+NmlKWxez99ALzBXetbAauZTGrFTPkT
         CzNn8fNEDCUAb7r1yh4cMX3GDJ15IxpMmxz9H+NMUXzVq4LCPBTQWDZJ/X1OMLFC0Ueo
         0cNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E4wIZnVa;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b133-v6si387223itc.3.2018.11.05.06.06.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:06:08 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E4wIZnVa;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08C9E2081D;
	Mon,  5 Nov 2018 14:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541426767;
	bh=TFZWujfYs6i5xotyTRHhfwvE8B585O5ltRFHxsCa6EY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E4wIZnVad3fjF0UIx0FNltP5HxYD3rnbEEhB77o42gMOeLrqwpXDmLdbg/exk3Ygb
	 DaOvAdcbWT41rKdO1OLCXFILOVZ3odgjoCcOPgBLkB63Qw/zXf9ebOveXkmowD3vRd
	 6E+abzI+zkQMUucaF+s/X8lBZ2HUF9hLW4OWgm9E=
Date: Mon, 5 Nov 2018 15:06:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: graybus: match open parentheses
Message-ID: <20181105140605.GB20480@kroah.com>
References: <cover.1541366816.git.code@wizofe.uk>
 <03e7603e693aaf17879365814b2be3e5b9765eba.1541366816.git.code@wizofe.uk>
 <20181105135314.GC9626@kroah.com>
 <20181105135904.GA15852@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181105135904.GA15852@kvasir.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Nov 05, 2018 at 01:59:04PM +0000, Ioannis Valasakis wrote:
> On Mon, Nov 05, 2018 at 02:53:14PM +0100, Greg KH wrote:
> > On Sun, Nov 04, 2018 at 09:28:06PM +0000, Ioannis Valasakis wrote:
> > > Match open parentheses by indenting.
> > > Reported by checkpatch.
> > > 
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > >  drivers/staging/greybus/es2.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > Ah, this is the 2/2 patch, it didn't show up in my searching as you
> > mispelled "greybus" on the Subject: line :(
> Oh, I am sorry about this! Do you still need the whole series of greybus
> to be send as a patchset? thanks 

Yes, all of the patches have now been processed by me, so if I did not
apply them, please redo and resend.

thanks,

greg k-h

