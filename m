X-GM-THRID: 6662711106976350208
X-Received: by 2002:a37:c383:: with SMTP id r3mr1011737qkl.25.1551285764714;
        Wed, 27 Feb 2019 08:42:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:39c3:: with SMTP id m61ls841229qte.0.gmail; Wed, 27 Feb
 2019 08:42:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqxhrlhfdgm7qL8+rx1v9jVQ2UZxl4zXBjeeyb/TOv4A3A6meUCGJa+yH6I1lUocJvMh+ujr
X-Received: by 2002:aed:39c7:: with SMTP id m65mr1703120qte.2.1551285764018;
        Wed, 27 Feb 2019 08:42:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551285764; cv=none;
        d=google.com; s=arc-20160816;
        b=AyuptHVguubYse+YFI8mRtHH6Hn3BSfdSX896+ldRTmDrig6iVucort5n2/5QKa14J
         QTaVrMw4d9g3yY0M4THGjDXtCVEUQBM4+rEFXH1sWMt9nhLXrMY7hrUOggT+0JaXjjEi
         RGp+q+P//0b7jrt6jlu80e1HxZU/ttN/wcvvrBvqh3aTe5saPluUhoUqfUtwhZE1inQP
         gPbRZGX1MD45orHA85frlQ3mOKnUq0VkScwTSjuK/W8qFpv663G8QjVXhPUpWdQ7tUMX
         VA1fCzNZHo7wBcomT+JrV+yFAuUQe7q3+lscz8EJoTvsrijV/Ujh39KmQxVsiLSRWuQj
         L9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3pI3l55Tq3+56D3hxzaLp7ooUi7Yq39vSJIK/3g5ii8=;
        b=MZAH+LSbbZf62R3qJUmfO/sw+xw3wIuG2NUyxB+1sRglH7uvmXlqlbLD0znMYROqu4
         maolbncOHhwreSBPwReIZrztPd7hdP2sADeLfRSyGvOaSOynNsCEfhhjZVSBsggS0FK+
         4vo+D1ZAWn2ylc40AI4irnRdAC7SqPYV7vMXOFBgYsRhnuJG/xbQUHeXKNeakLq68qpK
         HcLnZRPykNTyF/QBpU3hLLx8SC+mz24rsLm6jtsODfpz/F57MjjsqJ6LLYY1JdtmpfK9
         kedhumixha895XUj33LeHKqqgepYexZId6uN9D0XMfJv9hCRXT+qNZEpqQYNiIsGnazA
         Bxig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BFPk0AGM;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i11si886609qkk.4.2019.02.27.08.42.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:42:44 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BFPk0AGM;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F574217F5;
	Wed, 27 Feb 2019 16:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551285762;
	bh=3DMcpisBj89XZ7yQCXzoJpQJFpIYYiu1o9bd3QXhcUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BFPk0AGM6/gJP01W9u39iB3J+WA/pNSwHuqK5Li2Q4hCyfcXq/iAMh6tFfZXc7YGY
	 8HlDFwUW/FiXMtZP15XldW1iozOsXkjUwzVnccm5abyPFh+oZjC0oHabxOnBreBoCm
	 L13DdOUGi6KFKHQhjbFmsc4QGOohLgSLhUgAmUNc=
Date: Wed, 27 Feb 2019 17:42:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 static function declaration
Message-ID: <20190227164240.GA11873@kroah.com>
References: <20190227160148.21914-1-madhumithabiw@gmail.com>
 <20190227162834.GC23972@kroah.com>
 <20190227163950.GA22354@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227163950.GA22354@madhuleo>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 10:39:52AM -0600, Madhumthia Prabakaran wrote:
> On Wed, Feb 27, 2019 at 05:28:34PM +0100, Greg KH wrote:
> > On Wed, Feb 27, 2019 at 10:01:48AM -0600, Madhumitha Prabakaran wrote:
> > > Align function arguments and function return type to improve
> > > readability.
> > > 
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > > Changes in v3
> > > - Included driver name in subject line.
> > > 
> > > Changes in v2
> > > - Improved alignment of function declaration
> > > - Modified subject line and commit log
> > > ---
> > >  drivers/staging/vt6655/card.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > index 229137f29690..8d0182f5725c 100644
> > > --- a/drivers/staging/vt6655/card.c
> > > +++ b/drivers/staging/vt6655/card.c
> > > @@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> > >  
> > >  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> > >  				       unsigned char *pbyTxRate,
> > > -				       unsigned char *pbyRsvTime)
> > > +				       unsigned char *pbyRsvTime);
> > 
> > The patch does not do what your changelog text says it is doing :(
> 
> I want to ensure whether you mean 'git diff' is not same as it is stated in commit log. I think, i didn't reset the commited patch and just edited the subject line. Please correct me, if I'm wrong

I have no idea what you did here, but the diff here is not doing what
your changelog says it is doing.  So something got out of sync.

greg k-h

