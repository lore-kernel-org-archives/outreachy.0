X-GM-THRID: 6802769340290564096
X-Received: by 2002:a37:2d04:: with SMTP id t4mr1316860qkh.105.1583906851779;
        Tue, 10 Mar 2020 23:07:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4695:: with SMTP id g21ls457057qto.3.gmail; Tue, 10 Mar
 2020 23:07:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusqVc1gaGGkCEx5h+PQA7K4LvMURMG/UdElS6TGS0usR93WimfpbARMrUzwh3mCdciU23c
X-Received: by 2002:ac8:5497:: with SMTP id h23mr1281925qtq.226.1583906850638;
        Tue, 10 Mar 2020 23:07:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583906850; cv=none;
        d=google.com; s=arc-20160816;
        b=zj2r6hlzB1Y9bdrW0vTJf6U4r0K/I05WO3eUvQny1C0lvKgyfryvnRclridJXLc5lz
         2DRQzAwf4AWw0gaaYrm/hOclbA5nU+AVDZF7f5Dok5BDywAieAfe/yYwFABQDhMavXjE
         b8BDQOcMdo+YbZYDFZQmmMcsgKczfkjDYR/lE4iKeUEhnUTSd3Cs4DVjYGsxlA/HTcdX
         pB7LRrvqiuY2WFv72byDcIadK1wS/3A2ocI90bcqerQCm+1SmNgD6/Jo368OijzSEWdM
         dkDBt6dblcD3fEHBdBTTjPPTNotLuj5LHykFnd0eREPof4W68qig+qlKbGr0IB4t7RQq
         CP1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VTVsJ35oDauXYfrYmKkLkBuUba5/Lu+sXGNgiUyysns=;
        b=oy0d3KPlghBq+axHMhU02sYzwhmThOrZ92FqQDp4dV4nGH7dL3fUlmRVuCj8z4mTrJ
         8dPuEXnGmWDxGenxhrERBmasKk0yi/2czBb7oT9cAziF/VxIZB/sSOP1l4jYX72Bg5Jv
         E54KpKKc3X4pTqOO9ScxH8v9K2QT6Ttgp9ztR1A9Yoa5erBXntBL26CdXiY8sWvPTzU4
         jbMArf5OfdTRVVw7skFY0Xu9qlK1Ww+Gf9Ze1uY4QgU4B/H0LEtupvC7eqBaUC+R/KzW
         FfUEkoaG6b23WqD1glR0lr+IjHtSMkhntBP+2TXOd2oJLTKEKJXVcrGO4u+cBY/JPVuf
         GpVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n9W81S2O;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 42si53903qtf.2.2020.03.10.23.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 23:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n9W81S2O;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1886E20873;
	Wed, 11 Mar 2020 06:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583906849;
	bh=4YJrkympvo+O2jIiw2188By9taDk0vhV3ZOc8RO9Sq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n9W81S2OZRrP+Q/grdt9Y1XbOVRZI8IEAeax8bczkpNW9oslb9Vunvko9IowRdbQB
	 a4FGUJbsOHvvyFB1LWiKjsw4WNUZ9tJCAYuW2NAZLSXky6WtKbto6+6xMvcm0hU1wm
	 2hI4NqBKacWkmKE7Sllh16MxGmQy1FFAV2Rw1yBk=
Date: Wed, 11 Mar 2020 07:07:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Question regarding installation of kernel
Message-ID: <20200311060727.GA3522824@kroah.com>
References: <CAMS7mKA1m5JEVhNB+fwytLF3JgFYb-8C9xD9DjOmXm52omC4NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMS7mKA1m5JEVhNB+fwytLF3JgFYb-8C9xD9DjOmXm52omC4NQ@mail.gmail.com>

On Wed, Mar 11, 2020 at 07:49:11AM +0530, Soumyajit Deb wrote:
> Hii
> 
> This is my first mail to the outreachy-kernel list. I am Soumyajit Deb.
> I am currently following the first patch tutorial and accordingly I have
> downloaded the Kernel source tree.
>  I have doubt whether I have to build the kernel source code I have
> downloaded as I am using ubuntu already?

Yes, you need to build the kernel source that you are modifying to
ensure that you are not breaking anything.

Follow the tutorial, it should have all of the details on how to do
this.

thanks,

greg k-h

