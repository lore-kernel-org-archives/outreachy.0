X-GM-THRID: 6663210271515869184
X-Received: by 2002:a24:2f15:: with SMTP id j21mr2385540itj.4.1551427144758;
        Thu, 28 Feb 2019 23:59:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:5917:: with SMTP id n23ls3358389iob.1.gmail; Thu, 28 Feb
 2019 23:59:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzcsIPBONiPV8nYJAY9O/18lhNvsZ4xlL97DDRsBZH/Slj4YTZ4UvHznD132ZUO4exJwldR
X-Received: by 2002:a6b:5b0b:: with SMTP id v11mr2073054ioh.19.1551427144099;
        Thu, 28 Feb 2019 23:59:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427144; cv=none;
        d=google.com; s=arc-20160816;
        b=fhdssaKlAn/vfPY3wslYE/TyfsdxvT5eWkd//Po2MGY7bzSGIzim/2TKl/ppuYu8/R
         fg+/69a1zT8SH2bmpWLiAa2uQZbnJMGtvQ9zerKL1OVH2CaRjLHbYD1sCLgKnFkFiVw4
         49mozvKpvn/nN1RFATS95yVEIDLyvegeJS3eFGfA7+kQeRmfKaRzMbZ8Z/Els959n3Cp
         KL1gXbqqAUWS9ULI1N8Uo7ISceGz2Xg23wxW+r+MMoeNeSxqhAWRgy8Ks8YKaM9xFTF9
         M7YvP6FcGxrDOeM6zpToCP0UiagiWrvVre1Okga3rOgyMJOHkN926JPKrgiHnfpc7fgq
         mtiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VNfTZtQB0T0yboFDll6TDy3H4XP1OUQESWnp0OHvf4o=;
        b=y8eKkWByqQ3rPk90NJzol7PH1NyMDZJm9Q/d1KDSBoQS/xEA3MdFi7IXfb5UFn7apm
         Uc0OYJcCOOUZepH+AzyA2Xi0w13UiHNHyibMW6tDUfpMKvqmQguLIl4V6+f9ok39GpwF
         J/o2yqYHiYRz0HaeW2PDWK/klgVSMA0RzefMl7ycrbT31cNbRpPmP8JhRYgYXA3ZSeX2
         ZN4nH1X1VQBL9QPJSr0NIZ7GE3pQXIorB48zmkzJ16xlfRj6r6k9XvF6hZnw7//WrOLA
         BTH4uEVtspkdQ3IrmLsr+rxfVx6qgY/hfQhp+IOlFP7I8ZTrhI3Y0iykAthvZUIYC4CC
         HrPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hb2Xeg6C;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n185si155797itn.3.2019.02.28.23.59.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 23:59:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hb2Xeg6C;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C714A2083D;
	Fri,  1 Mar 2019 07:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427143;
	bh=VR+W/iC52B6REmFekXMOD/x6vaOUOOT66cLWd8CnPa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hb2Xeg6CbrqNRaA+N+GV/Jc70fb0kZH1XWb8VL7ghXKou8XSreTCgcCSHauHFUyMx
	 BmJsPP3vAavD2hJFvaGFaZVH489cW2mRmp+xOwRoD/evPGi5m2ZG2mqb0R/0UsJvBl
	 Z57yYF5usodYfAGs5DYq3WS+Ln4Jxv6BeVzG7fGs=
Date: Fri, 1 Mar 2019 08:59:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [v3 0/2] Add SPDX license
Message-ID: <20190301075900.GB13643@kroah.com>
References: <20190301001417.16556-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301001417.16556-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 12:14:15AM +0000, Jules Irenge wrote:
>  This patch series adds SPDX license identifier to fix missing and
>  malformed warning reported  by checkpatch.pl tool 
> 
>  WARNING: Missing or malformed SPDX-License-Identifier tag in line 1 
>  
>  The patch then removes unnecessary license boilerplates.
>  Now that we have the spdx specified, the license text is not necessary.
> 
> v3:
>  [PATCH 1/2]:Commit log corrected, commit message clearer

Next time, the subject for this email should match the patch emails.  It
should be something like:
	Subject: [PATCH 0/2 v3] staging: mt7621-eth: SPDX license cleanups

thanks,

greg k-h

