X-GM-THRID: 6749323707377778688
X-Received: by 2002:a62:31c2:: with SMTP id x185mr33101517pfx.112.1572427501506;
        Wed, 30 Oct 2019 02:25:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4c5e:: with SMTP id m30ls7506652pgl.13.gmail; Wed, 30
 Oct 2019 02:24:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgrnJotQ3yYMhbduCZaPR+0SH+FIUm62ZLyqiPw3w1xuCUSLqtfRhRdqfRTGFiuOs58RRc
X-Received: by 2002:a63:1f52:: with SMTP id q18mr33165370pgm.35.1572427499733;
        Wed, 30 Oct 2019 02:24:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572427499; cv=none;
        d=google.com; s=arc-20160816;
        b=wvXV8O+0mfRFqxlz49zmVDM1SlmI0cAoc4lu3n8MWkuJEP5m+cZ4+mDsXr+MWfDTOC
         XdmTmyFVFA1YjT6epL0uXz3R0KEpL7xhBxXXzEhKhMIblrcNeOiDa43N/KOxInCLpECq
         iozN4sYP5pj4RFwyxmtmP3DP25OxEOaNeNqf2aL+C4DL8nVniGRsOkVU2oSDLeWxU0b6
         gb6do1gKQ6oyTdubQ/ceJJvpKoNJFnepV1yKUyVXYMDlGMirySLCDoQs7GJDpQ7PYEu+
         pP3D/Cd6rty87AHUfho/G5ERD23zPV1WPCQGNiX2cCI+lr7yqYwBUWFF2mTysrf2ueeM
         oYKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=X3h8eErVao3JlgQAkkokKTa4WkpepuazfrRRoHwP6lw=;
        b=Blw8LSbyCycokt18+Mn4PDtoqAnIj8kG/GnE7hLv1KM6wSV/toj14qphWWSPqrJ6mK
         Ze6I3JsBmRjBN620LtXB5ymoV/+i7q4WCFzRNVqAxm4F6XwcvYcvaStwbsxdI1383yiE
         6drtYk4r9ERpSNtI63VxDLIZiM5oreeHIsF6kjZtPAAofX8YN0vRZN4g3sZx/1bL+q7S
         Shr0GRr6woE5Q4D4EX9EReOotCxK3UdAfnjcF32QEEVbNvPRMXrhviGH062HDbBbCYZv
         71eWcjvgSVGnX0YpSXsXe0WqIUw7qc6vvpuUmTzpFyqdyDsBjCrEfLn/sWfsr7o8paz6
         xCug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p5LyfDC3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d9si65904pfr.3.2019.10.30.02.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 02:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p5LyfDC3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D4C71205ED;
	Wed, 30 Oct 2019 09:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572427499;
	bh=CMEVryoYJMjTA2mtzLbjiYND2s16x7lR5oldgV58KgM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=p5LyfDC3cColb6iW8Oow9IiOdqWGhWxyf23EJsMBSvdT4gSXnPQvzm7fQ3K6qE91Y
	 U/2zPOfJ+oQZQfIym+wFV0tO155wFE4lomzzrdTsBr3MzQjiUNNlI1XeijooQkUIK2
	 xllalpY8wPJFnIEIPAKTtZ9MoCyzh3U89S8mPPvE=
Date: Wed, 30 Oct 2019 10:24:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH v5 1/2] staging: rtl8723bs: Fix line over 80
 characters
Message-ID: <20191030092456.GA637833@kroah.com>
References: <cover.1572396117.git.jarias.linux@gmail.com>
 <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572396117.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572396117.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Oct 29, 2019 at 07:48:49PM -0500, Javier F. Arias wrote:
> Fix line over 80 characters by wrapping arguments in function call.
> 
> Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
> Changes in V3:
> 	- Edit the commit message to properly use the Suggested-by
> 	  tag.
> Changes in V2:
>         - Edit the commit message to use the Suggested-by tag.

This is a v5 patch, but you only show what happened in v2 and v3, what
about the other 2?

Also, you don't seem to have changed this patch from my last review, why
not?  I will not take this as-is, sorry.  Please fix up and send a new
version based on that review.

thanks,

greg k-h

