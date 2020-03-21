X-GM-THRID: 6806467742549409792
X-Received: by 2002:a63:f502:: with SMTP id w2mr5388872pgh.423.1584798717740;
        Sat, 21 Mar 2020 06:51:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls4659460pff.5.gmail; Sat, 21 Mar
 2020 06:51:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vte9+aYCBCd9NO5GPPpzpS8j5ZlqjQ0pHQITYYoMKMkvxERa0UrdzA3QiRl9HBSzjHgwXfg
X-Received: by 2002:a63:3547:: with SMTP id c68mr13673574pga.380.1584798716129;
        Sat, 21 Mar 2020 06:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584798716; cv=none;
        d=google.com; s=arc-20160816;
        b=yUaq8kfk8qHmUrlDhf6Aav9Q9YvLpjwQ1Uz4uU6f+BQfZVyVPYTedKHmj77wwlrdmW
         eqN04sFeRta2jpW6BojvvrryyLUoTdtiOSUiFcrwoTj6lDiGk2RtcD4UugN5Fdlb5Zay
         Rj3l9YQ1/999n3zCo+1uCO4UK224bHIqcz+3dOKdkRMwaSPHV3xELrIfDsIpn8Zlhvtn
         2u3qXEUohwuiNaVUsA+sJ8q0xFK6ldQ2r+6QB8yjj1ftrffSsqwAYptKv49NSb9IGr5d
         Brr4DaRwO+0aKPa/w+kWJjANiyMfV3GaIywI5u4Y2vf8JN+2h6x30pKbJ19SOfe86Ch2
         gzRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h/VWQKQuuTiXNsqC9/XOHagWZPK6WffF9lltfbQvVls=;
        b=U2Ft4kiGd4rj44V7lZPB1CHMBwE5DRVn+96gE5VFD6+NJZfoo0/koVcykggtKmWE3Y
         7etOe4DQ9PkYaTuNyCKbQqR3wi/5FYxuBCDg4b69FMNCup975rIcKHnf0e1tpykr/ijV
         Uo+aDieFfKdPgEeuqAG+1+OB2XLVnknF3lBS/UQ8iZT2ZVF6QQye/vUy/oOBLoqmlR/Y
         ANXLjpP2krSfSuCt3BZr4cC8A2qU7CB2/PmnnOT4TvfcmpdztAuPL90fq1x42sAqEHD5
         QNhJUxuW2FPYIeF2eSpFl6FBmCNarweAYncE+Kq1DgqFEPIKhSiRQMkSQq3p3/5k/r4t
         hIYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qfci72e5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c125si3299pga.5.2020.03.21.06.51.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 06:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qfci72e5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4AF3920754;
	Sat, 21 Mar 2020 13:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584798715;
	bh=O4Of9Ij0u0WCxeygy4mLrMqXToRYOpLnrRwDgGtYtbE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qfci72e50LtkL6pQ0DgkXAJSxWQ3YiXNVZHxgAqXuWf0eLn7VSwhhM+gvyee06Daw
	 bPBZb/KZV1hrf3YjjF8I8bTlVIOw+Ej6HDIgtbtWJxazjGCoFz9cAM5t1rXfH14j/g
	 hhYwKBXh2jlGi1LnhWOph5lMoqAM/yp376Xhzxfc=
Date: Sat, 21 Mar 2020 14:51:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: hp100: Block comments
 use a trailing */ on a separate line
Message-ID: <20200321135152.GA1219517@kroah.com>
References: <20200321013101.GA17131@siyah2>
 <20200321093325.GC917692@kroah.com>
 <e60514a251eb3f690e9136670def0ee2b8289969.camel@gmail.com>
 <20200321124615.GA1215294@kroah.com>
 <4ffae0704bd21da5e36c1beac0f454746689a31a.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ffae0704bd21da5e36c1beac0f454746689a31a.camel@gmail.com>

On Sat, Mar 21, 2020 at 08:50:49AM -0400, Sam Muhammed wrote:
> On Sat, 2020-03-21 at 13:46 +0100, Greg KH wrote:
> > On Sat, Mar 21, 2020 at 08:44:48AM -0400, Sam Muhammed wrote:
> > > On Sat, 2020-03-21 at 10:33 +0100, Greg KH wrote:
> > > > On Sat, Mar 21, 2020 at 04:31:01AM +0300, Gokce Kuler wrote:
> > > > > Moved to the bottom line */ for block comments
> > > > 
> > > > Again, you said what you did, but not why.
> > > > 
> > > > Also, you _added_ two new checkpatch warnings, not a good ratio :(
> > > > 
> > > > thanks,
> > > > 
> > > 
> > > Iam sorry, are we allowed to work on this driver, because i got; 
> > > WARNING: drivers/staging/hp/hp100.c is marked as 'obsolete' in the
> > > MAINTAINERS hierarchy.  No unnecessary modifications please.
> > 
> > For basic code cleanups, to learn the process, it's fine, but note that
> > the code will be deleted from the kernel "soon", so any changes you make
> > will not stick around.
> > 
> 
> So outreachy-wise, would this be considered as a contribution?
> This driver is juicy :)

Sure, I'll take contributions to it until Wednesday, and then I'll
delete it from the tree as it's about time it needs to go.

thanks,

greg k-h

