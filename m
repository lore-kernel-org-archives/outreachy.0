X-GM-THRID: 6803926658306801664
X-Received: by 2002:a05:6e02:e81:: with SMTP id t1mr2500422ilj.226.1584510929630;
        Tue, 17 Mar 2020 22:55:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls6604502ilb.4.gmail; Tue, 17 Mar
 2020 22:55:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvtHEa3cpv/GMNl99u4OIw8MfUnO76GChzq4QQOTcbbmgFXqJ/ZJAN4mHKX0tjXZGeZjyQJ
X-Received: by 2002:a92:4946:: with SMTP id w67mr2402647ila.292.1584510928301;
        Tue, 17 Mar 2020 22:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584510928; cv=none;
        d=google.com; s=arc-20160816;
        b=aMvfmEf05ibBpbsZmKRoV938EwiLDsyXiMYWE/sAQ//JAsoT8vvS1S9YGwdHl154mS
         Q/YnAAtWN006kS1u2iZuRJHGKv6o+AaVxhzwnTNxTcQIzbCa9IUL/3glJPu+L1LgQIzI
         eppF3unKlY3ACJlMnoDxS41TsgByPEvDwutK32hr7bodUAajofQbQoixDsrr50gUMQ8f
         T2W2MdkH5qmPE4z1xcnhMuf1i5SHuJRXPLhBKYakxfL0bk9hlIiQNF4QCEbOVV0clVVw
         qg7Cn2+4BR0XM+UPl6qk9ndKW5f1cka7IlqO9t3cr6oHOZoVQ9z8hDUzUpFF/CL7v/tU
         okoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4f8A3ZZUgHt/dXMVivIQ5G4F+/gvcdvLqF+jbq9tGQI=;
        b=Y5QyJtQ/Ac0QGruJSl6TN7+dtKdIM1+O7TRI0/59PU3H5+qPz6XOT4lv+iidUFkk4g
         NYQon62ydpQlCQAqtiExeSVuJldWvAcmI3uGJUIF/KA+6AacxgWz/91j5eBrBqBz1s/v
         /lvC0rEEze7JiPnF/U1gQC3kgCF89VuoIiN2dTzSjhnB/fvKJkzyxN/KKi8L4mO3RxNi
         OoiKK+aqdFW6Gnduo/tDN+An8VTlsD/84g6t3HbW/qKrYn/I+gON3gg/ePXJB2phUWzP
         sGYOsJLEId2rBz7UjdKacqt5iUaoAikBWmLRVEIJPY/JF1K1aOM2cO0JAVZmfeUvRJmK
         D/mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FPdRNTW+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u6si151174ili.3.2020.03.17.22.55.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 22:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FPdRNTW+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 022902076C;
	Wed, 18 Mar 2020 05:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584510927;
	bh=WWvl9iyjemJslThDkwNnDb+reXeglvw2QlItV/TAkyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FPdRNTW+aEUvFRw1U9x2qDp2D4Qb1owCILXJGl8jKH5mCt7Eu5DF2q4n5AFEncMKC
	 DlB8GJ9jMwk8LXyxNpUU3m+g/uEhyWDkZVMFYx5T8NQDj6DI/Ie+/7Q/rGQwrrXvXt
	 34aQCk7ir6zfxjxM4w89VroJ8fcM2+vQpRoFrvdU=
Date: Wed, 18 Mar 2020 06:55:23 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Stefano Brivio <sbrivio@redhat.com>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: interface:
 vchi: Fix longline comments
Message-ID: <20200318055523.GA1594039@kroah.com>
References: <20200314050955.GA1504@tulip.local>
 <20200317110008.2152e405@elisabeth>
 <20200318000228.GA624@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318000228.GA624@tulip.local>

On Wed, Mar 18, 2020 at 05:32:29AM +0530, R Veera Kumar wrote:
> On Tue, Mar 17, 2020 at 11:00:08AM +0100, Stefano Brivio wrote:
> > On Sat, 14 Mar 2020 10:40:07 +0530
> > R Veera Kumar <vkor@vkten.in> wrote:
> > 
> > > Fixes long line comments in C header file.
> > > Found using checkpatch.pl.
> > 
> > Same as Julia's comments for your:
> > 	[PATCH] staging: rts5208: Fix long line in C func call argument
> > 
> > Also, C99/C++ comments (//) are not allowed by the coding style. As you
> > are rewriting all those lines anyway, you should fix that as well.
> >
> 
> One thing, I read somewhere perhaps in Documentation/process that C
> headers should use // comments, else breaks with some compiler /
> preprocessor. Correct me if am wrong.

Only use // for the first SPDX line, in .h files.  Not in .c files.

thanks,

greg k-h

