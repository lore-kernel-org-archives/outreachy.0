X-GM-THRID: 6661069764566188032
X-Received: by 2002:aa7:8804:: with SMTP id c4mr2991630pfo.19.1550911377964;
        Sat, 23 Feb 2019 00:42:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls4269761plt.7.gmail; Sat, 23
 Feb 2019 00:42:57 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ3DGffuSUYxXkAN7Aq4os8tSz3Uysgq+bWdtriynurxc+yJrzGE2frAu6RlVLI+s1joJx7
X-Received: by 2002:a17:902:6947:: with SMTP id k7mr2523828plt.72.1550911377282;
        Sat, 23 Feb 2019 00:42:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550911377; cv=none;
        d=google.com; s=arc-20160816;
        b=NOVkNbkvYW9V4uOTu6p6oUjDXsMdQBXdaYwFgR4DDdGZsFyjcLpvsAQ+RncDC4uwTL
         gDK8TtiBZxECsGFPCA3EBIPkADpRU4Np/dthijg+bAKIv1c9hBAnUY3tFfdfItErbT8W
         uSSWGm5C51Ec2F2XynLD0oLrxy+wIhWdLAm3U0bPxtTIUJvgvUe4kpCsitbQiAXSE+IO
         f22Pyr8S4xNDcLiJn1w0fZmCTc295h9OQfMCZNAz9j/OYVNvdcgqaU9MAwHOmB7WE+VN
         MYyRNA+t4tY9aPibavr6uC80IpbKUgxBzc4oBXbi54NU/QorRoP1QfqaKq1P1YDpfsfi
         Ye5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=neBdlLILKY3911gsObbJ27Geg4d3PkqHKLztMSOXU1g=;
        b=yc2Ry6J7FHHrgJ3lrCbcyQFTpgWoylmL4B/l9ZDZT1dVhwsFCXwZ2wHeMqgufJw0PC
         wuzDSVq+Mw+8e29AtYe5zFF20vOG/u6OCO5q1u3XchYBGmzvm7BU2xxvjpPo2Za5H1x1
         my6mjBmx0Pp9Nek6S76dOqRkoIQKV0w4Q6m4pOitk1+/R/+rRwCrW/6nE1Uy6RhhQ83m
         NzEOF6k/vS7mRTAC58yJ+lQlpCsR0Jr1hNv9r6VL94eau67TDyARKhg5j/He5PusJS/9
         38ri3CLmOV/45MsftPVfrZzAGn4b+k31H0qmnI/2FD+HxbqOXxM9aV9JTl/ySiJ8eKLJ
         1Mhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zxOYGcss;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d26si313430pfj.2.2019.02.23.00.42.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:42:57 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zxOYGcss;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 85B4F20684;
	Sat, 23 Feb 2019 08:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550911377;
	bh=+SB1h1JEvXf1Bvd2z30sjztx7qhMLmuXsr9QEfuYBuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zxOYGcsskaX+cCXNaAljiU5EPem7NhMi2q+fO9FLddxPlr0m2AWjpMRahhz3PKU41
	 NtUcSigaCt5S9hRPhZksUjMmGKjWN5AWGc7i9KtaTYuwcR8FplYoJoOS4D67wR232h
	 kA6xk7EAqykL2soFAmmel3zZ1918pZswJMJRq7Jg=
Date: Sat, 23 Feb 2019 09:42:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: gasket: Replaces
 symbolic permissions
Message-ID: <20190223084254.GC4902@kroah.com>
References: <20190223055207.3792-1-bhanusreemahesh@gmail.com>
 <20190223075641.GB2640@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223075641.GB2640@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 08:56:41AM +0100, Greg Kroah-Hartman wrote:
> On Sat, Feb 23, 2019 at 11:22:07AM +0530, Bhanusree Pola wrote:
> > Replaces Symbolic Permissions with Octal Permission which solves the
> > checkpatch.pl warning:
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > 
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> > 
> > v2: Subject line modified
> > 
> >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> > index 151e8edd28ea..60590ea4b760 100644
> > --- a/drivers/staging/gasket/gasket_sysfs.h
> > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > @@ -40,7 +40,7 @@
> >   */
> >  #define GASKET_END_OF_ATTR_ARRAY                                               \
> >  	{                                                                      \
> > -		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> > +		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
> 
> The trailing "\" is now messed up :(
> 
> But, as I have said before when people try to fix this up, this whole
> macro is not needed at all.  Please just remove it and use the proper
> logic in the code.
> 
> >  		.data.attr_type = 0,                                           \
> >  	}
> >  
> > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> >  
> >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> >  	{                                                                      \
> > -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
> 
> Trailing \ is not aligned here either.
> 
> Also, this should be using __ATTR_RO(), right?

Really, all of the sysfs stuff in this driver needs to be fixed up
"properly".  I think it's even a TODO item, but that might take a lot
more work than just a simple "coding style" cleanup patch would entail.
I would recommend just leaving this mess alone for now.

thanks,

greg k-h

