X-GM-THRID: 6803716874412490752
X-Received: by 2002:a17:902:6b86:: with SMTP id p6mr3899490plk.315.1584445134029;
        Tue, 17 Mar 2020 04:38:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls10300671pff.0.gmail; Tue, 17
 Mar 2020 04:38:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvmALSyEF4HeC/0ZXOJWFVF0FwzZpSz8d5MqU6crA3R+P/A4ROe2hEoQXf/Gt0uJVIYhlSV
X-Received: by 2002:a63:ec42:: with SMTP id r2mr4812185pgj.386.1584445132555;
        Tue, 17 Mar 2020 04:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584445132; cv=none;
        d=google.com; s=arc-20160816;
        b=iIgoC60rZSV1Y/yaacBfoMdE++mrPR4ny9LEnMC7aGmOQhSk89zELFVXaqmgw1G9Ed
         +xSqQoSpHzj+4a0jsXN3KLvVn5Kf41pA3fVp7+uql88R1GzaRuey8JbNBZ3QRyLU41jH
         jFp5Iw20pUL6ix4qA2+Zg+balA7hNVMC6SqEqdL+iN6ZuRzY+TGhTw6cdIwgMDWSAEEo
         EQOvGNFJOrdZAX2rlNL9nutGe4+s2LnYwxXxdIbgfOr8eL6g1izDzwbHa6AjCmqMGK+E
         rABM8ONOPwoUZxsku/nRWvUy1Fg07nYxamdRVb/047KWKVEFhLE5I4hqlQeCA0x0sfuV
         +X1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pxEg0vHVH9af6R7oOBXCEB4H3kJqdvjqhem0Kx4cp7M=;
        b=GydjSoLWXomX4BbNuwFwPyVsOr2YWdfBpV5KDjjkiJHz8zWuzChFmwCAoksYVBXTJe
         OwGvQTJlFIkAROFxA/z5VkDD4IgKmkkGm99QcJVvyPEKMmyrHTLJ8FDkIzEcVqiixdq2
         sgM4XtBJA7eGa+hCAzxDtB4G1EBvkdr7ScPCH3JhdOOEerCXbNr4tPy8mW7vOxC7hXWT
         SfUbFcY7JNwxGpgPb0bNPPn50R0bJ76/EUJp2y0aWD/hP8gQeUz2TWoKa3Q/zriaovLx
         AQeMkbyLFH+P8ZJ60NVgW6IgGQNathZNUQRh/0k8Tu8stVMZbRFfzd6z41ZpdYNRK9pR
         pASg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E1O1l+pL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h10si180025pju.1.2020.03.17.04.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 04:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E1O1l+pL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CBAFB2051A;
	Tue, 17 Mar 2020 11:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584445132;
	bh=KhxAgFF7AmF2/l8Rk4RPLyjJI6nuIQol7PLMQ0C8rJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E1O1l+pLIwLuswkspHLSnxYiTDGNAGMcpMiGrIHbxElkttENN5kDQh7VDmHBlavld
	 8dXtAHgBVTw5Ag2fhro+IJWNJt3aD5U5LPkz8ZuGGattr77n1JvRmnxiKTwCeirsOF
	 yhQpRlkSjBCMQL0YbbkvZekhClR3SXADOfck6oRM=
Date: Tue, 17 Mar 2020 12:38:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: remove
 unneeded local variables
Message-ID: <20200317113849.GA1222404@kroah.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
 <alpine.DEB.2.21.2003132025350.2355@hadrien>
 <5dd7e63b4fea205ec7a45456794ec8b12d8faa4f.camel@gmail.com>
 <alpine.DEB.2.21.2003150940050.2645@hadrien>
 <f46d12c4e5ae5dbe5ff6d1faffcb14d02799da5f.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f46d12c4e5ae5dbe5ff6d1faffcb14d02799da5f.camel@gmail.com>

On Sun, Mar 15, 2020 at 03:51:24PM +0530, Payal Kshirsagar wrote:
> On Sun, 2020-03-15 at 09:40 +0100, Julia Lawall wrote:
> > 
> > On Sun, 15 Mar 2020, Payal Kshirsagar wrote:
> > 
> > > On Fri, 2020-03-13 at 20:26 +0100, Julia Lawall wrote:
> > > > 
> > > > On Fri, 13 Mar 2020, Payal Kshirsagar wrote:
> > > > 
> > > > > Remove unneeded variables and their declarations from the files
> > > > > of
> > > > > staging/rtl8723bs directory.
> > > > > 
> > > > > Payal Kshirsagar (3):
> > > > >   staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
> > > > >   staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
> > > > >   staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded
> > > > > variable
> > > > 
> > > > The subject lines should be created according to what others have
> > > > done for
> > > > these files.  In any case, there should not be .c
> > > > 
> > > 
> > > Since I had done same change in all the files in only a single
> > > directory, I needed to add their names to make the seperate patches
> > > for
> > > each file.
> > 
> > Someone suggested that still there should not be the .c part.
> 
> Okay, I will make sure from next time:)

Please fix this and make sure _this_ time :)

