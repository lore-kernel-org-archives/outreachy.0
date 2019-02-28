X-GM-THRID: 6663027370941743104
X-Received: by 2002:a25:654:: with SMTP id 81mr4079171ybg.67.1551366883014;
        Thu, 28 Feb 2019 07:14:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2304:: with SMTP id j4ls1338972ybj.5.gmail; Thu, 28 Feb
 2019 07:14:42 -0800 (PST)
X-Google-Smtp-Source: AHgI3IboqH+Bgpqrilx6YLtq5LVhpttQf9xVdznyOCC1lpmHY6aNT8m7poiQ7vQVARnJ1LM8DPDe
X-Received: by 2002:a25:4e86:: with SMTP id c128mr4078361ybb.12.1551366882181;
        Thu, 28 Feb 2019 07:14:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551366882; cv=none;
        d=google.com; s=arc-20160816;
        b=EJyKKE5uP5LU48LQrTrrJWBth8Hz3Xvv6fGPXdVgJsNcyOdC5PJAeR6q0e+3ewMBlH
         oKrLv8t3c2nmTEs0Kj9qEhL/+cgTrf4OpW++ElGSytv2xD/UhL5BmtoCaF+wJx+QrEjI
         xbzR8ophMtLSgeV9l6DW66xyBlCBZ2eXwXNpTrdcrAaOHR2KkIpOxKDAdRC3CmRHh1WX
         604FAjGLlCMHPmnInu7HYdkrBRBDB9YFXAPKcKp2VI9eaa4tLqOLjUcFlBjiDRxMDm3I
         eo1vMt2rZD4CaoS14WM6tIefHJnJ89QvppvFJ7CPkSkmZTRih/h3cN5B/GGy82fVAzaI
         q1gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pu+IH59zKudF3ODkMmfd+6kBG2GJ+35HaESScMRnHrY=;
        b=JINtdyqw22IkQGq9c5zCANykNqOTBLrOtMfMoNm1Hhkh4MIserlsWLdcP60RW+TDhP
         fP5JCHqY4WPn2Dl50g0EQNrEJARg56fgEIFwKdOp5SLtROgheRZDQykI5sV1cqwvMcSy
         pH9LpV8v4zV+QzC+nEDJiYPoXTiNCJXi4zsDT0rieaXoKTAngn8zoqYrJQtyXqVp9Cag
         a6/4xvj8vqn9gAYb4s57ByIxs0olBb+aaodW4LyajPzwsleCwlIiV305p0ShAalx/PDL
         E6+xNoGDVD3OCkYYrZfa7QyihWmtVqmE0b2G+Cmj68taNp/9dpVh2AAmuw+/jNsztA9/
         fdGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i7uqUtZX;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si1416737ywd.0.2019.02.28.07.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 07:14:42 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i7uqUtZX;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0E8420C01;
	Thu, 28 Feb 2019 15:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551366881;
	bh=oRbmPphIAEBMsU9Z6frQIVKijVc+CCjQ0dPsyIhsQpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i7uqUtZXr5zBFZnji+h0Mpp0y3C9pi5SI+1+GUcslQJe5afDOD71xVlGz1C0x1u9z
	 7UNuhphHLfOv9hx2qYa5nWOsjGtAJCs/MoUDp9McSeqBZ14nuiOSzHYh/hnupLkItp
	 PZg25Yb0s4HbzxlOwuwTuUJg6P/E5IVRmmXgGzdQ=
Date: Thu, 28 Feb 2019 16:14:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Michael Kelley <mikelley@microsoft.com>,
	Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 1/1] staging: speakup: fix line over 80 characters.
Message-ID: <20190228151438.GB1360@kroah.com>
References: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
 <CAOMPgjhjgt2bv3pL4weJjx6VgfV8Bfrmdfu31esFB8CPKusGgQ@mail.gmail.com>
 <20190228140038.GA16345@kroah.com>
 <CAOMPgjh3MA0WBs+WA4BVm6zrydsxiXa-oXPUkYNRAw3mNCKArQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMPgjh3MA0WBs+WA4BVm6zrydsxiXa-oXPUkYNRAw3mNCKArQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Thu, Feb 28, 2019 at 07:59:24PM +0530, Bhagyashri Dighole wrote:
> My apologies Greg, Above message was for one of my subordinate who wants to
> contribute to the project. I was helping her to understand the patch
> submission process, verifying her patch and accedentally messed up the
> email thread during reply.

I do not understand, are you not the one who wrote and contributed this
patch?  Do you have multiple working on this at the same time,
contributing with one "name"?

This feels very odd...

greg k-h

