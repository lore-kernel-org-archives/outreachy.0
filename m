X-GM-THRID: 6802341212191719424
X-Received: by 2002:a05:6830:18ee:: with SMTP id d14mr15905281otf.298.1583846629084;
        Tue, 10 Mar 2020 06:23:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:13d5:: with SMTP id e21ls1642635otq.11.gmail; Tue,
 10 Mar 2020 06:23:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vurdjE+7Z+zYWFmx2pgSg+mF1GbCvW4Wjm1ZYQ4N3riUHU9O/tpOb4+9LPdAf6IsdPNUXQK
X-Received: by 2002:a9d:6254:: with SMTP id i20mr17571347otk.130.1583846627758;
        Tue, 10 Mar 2020 06:23:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583846627; cv=none;
        d=google.com; s=arc-20160816;
        b=Ey8tdo1Dp5SK1gvbtsU7ihFdxOlg0Fn0ApJh/M65UD4lGQjdNGKHHjl2U9vVNf9BgB
         6KdwG9yY3F/L+h3/rspP2j0ido9+cb2kZfZgc8YUBeV8JbqK9V0X3zYC5bdftOQMwTVI
         PEI1C0AOOzFH/4EhzPCvJukEFwgERPc03etl/jIc0xtRwd2oGOmfN6vKS+W1vEPJJKtq
         z+FP5K2XmyUfbwvvO+4fR+8ZvXAG9nze4dvVuxxp9ZIF1zlQbM8nEnrCzuMJqnBUQAZL
         LKQQq0qoqBltHuNFo1YIv1KII/u44YEivQmfMs1qL9XG98AsJNZ9+zXiex2wyM7PYMx5
         RaVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=mhAnzpzeES/Y4tJghnTCjV91OdqX5XSc4XTyvawhalo=;
        b=sV+2q3hfFW/sXKNplEBghsVHQD1JBqXKTMe3wtNjRTYC0jAFSbZa/S8cTD1ToU8wIa
         af0CPgQ3UJjJE6K6F50/Fwb1/wGgVXc9ZD2UQjrcaUBfIue/5MIZxdB4WYoPAjCi2jUn
         CC+ZazYDHbXmi3WbmvYyHuVm4x5tVF+y4aj7Yiw9Y/JWhee7UQUnG6/xBsEJd3Uh8k8b
         9Imz10nYKiM4FyM4KdiwWDV5sYnlxwxSnZxw7yiD2aAbXlnBDjztFPkZNoxG0cEZw0/Q
         QHcD2Yc2XjN6UMw/OLDnIv6jKy6xiibfJFFxX0aUXO7G1C/pHEhsCyx7LROydE8DFTNM
         Gt1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=mB75OgqN;
       spf=neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v19si241751oth.1.2020.03.10.06.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:23:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=mB75OgqN;
       spf=neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x543.google.com with SMTP id z12so6301638pgl.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=mhAnzpzeES/Y4tJghnTCjV91OdqX5XSc4XTyvawhalo=;
        b=mB75OgqNTuTlHs4Y+dxhQdPzCugMZqOC9GBEb/mPeqHWgRltH9ZG9cmMifEg1modpm
         UOed4C/V/J22Wy6pqZD+ICVBi+lwz5OLU6hcnQGuyRoAk9E9MJbml7PTJFk5g26sx+5d
         z6jAIqcAJ8S7DZr0Di7VkM5LznvBixgaKEdAFvSzkjy3cL8tm1jJP+Nt9jWH3tmyhqa+
         r36PtBbYLycit9vGoCMQtNQMaOyJgjD2OBzB5XXD2clu4xjhl2raymS0C5iy28VH8p/H
         4n3GJe6/RE7KIoxLlrH/e4RrWrq6g7j9S/2d/Uym9Jv5iC85rJSifDCsuOATcqsn2moZ
         5wJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=mhAnzpzeES/Y4tJghnTCjV91OdqX5XSc4XTyvawhalo=;
        b=keTiaCPeXuOuflvNzetmFeiAkMYmp+s3+2+H9VGu7j30vwkQXUEZUrS5qlnLWC+T78
         BhmX5saxLprION5lPSJaErvTtBw9pWxhcKKw2Uzudctf4c2dKW2vAtDjihn+/TwQgz13
         e/AD9rx2qtadyf0oUSYIizXoBIgDf996OQQ+a2v+ESn8MaqzMNM5DCtv9NcytqQyTsR4
         nJOwpK3IZT8StADHseobzEG2rjbm0EIR8jiDWQW3CfrUqolVj1dc5vp7rDVal3MrPQWl
         b6WUZmxe/COMmUvLM7VyTxJ/pk5fk+POlOU3YW/SpBbxchPiIoJsmZE9PbKu5KvE9vpv
         7LgQ==
X-Gm-Message-State: ANhLgQ2lLbh0/VsHq1rpFYRtjZdswvRv8yOrRHDFAA7ZLdcuUSKN5GCx
	fCuluQOk8hmr/TE9v48kocTLog==
X-Received: by 2002:aa7:9732:: with SMTP id k18mr21140816pfg.231.1583846626689;
        Tue, 10 Mar 2020 06:23:46 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
        by smtp.gmail.com with ESMTPSA id d2sm2536483pjo.45.2020.03.10.06.23.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 06:23:46 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 18:53:36 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: =?iso-8859-1?B?Suly9G1l?= Pouiller <Jerome.Pouiller@silabs.com>,
	Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/7] staging: wfx: change 1 to bool
Message-ID: <20200310132336.GB22891@kaaira-HP-Pavilion-Notebook>
References: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2003100824490.2455@hadrien>
 <20200310121242.GB11048@kaaira-HP-Pavilion-Notebook>
 <2641095.QEJj9zIe3E@pc-42>
 <alpine.DEB.2.21.2003101409210.26409@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.21.2003101409210.26409@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 02:09:47PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 10 Mar 2020, J�r�me Pouiller wrote:
> 
> > On Tuesday 10 March 2020 13:12:42 CET Kaaira Gupta wrote:
> > > On Tue, Mar 10, 2020 at 08:27:54AM +0100, Julia Lawall wrote:
> > > > On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> > > >
> > > > > policies[i].uploaded is a bool. It is equated to 1. Change it to bool.
> > > >
> > > > equated -> assigned
> > > >
> > > > As far as I can see, policies[i].uploaded is a u8, not a bool.  Have you
> > > > checked that all of the uses indicate that it is used in a boolean way?
> > >
> > > Yes, I got this warning using coccinelle, after which I checked a few
> > > uses of this as well. I found them to be indiacate policies[i].uploaded
> > > as bool. For example line 227 of the same file :
> > >
> > > `if (!policies[i].uploaded && memzcmp(policies[i].rates,
> > >                             sizeof(policies[i].rates)`
> > >
> >
> > Hello,
> >
> > Indeed, policies[i].uploaded is a bool since 6673f2636b41 ("staging: wfx:
> > use boolean appropriately").
> 
> Indeed.  I was looking at a totally unrelated structure having the same
> name...

Okay! I'll send them in a proper patch set now :p
Thanks!!

> 
> thanks,
> julia


