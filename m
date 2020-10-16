X-GM-THRID: 6883926801253400576
X-Received: by 2002:a63:5205:: with SMTP id g5mr2195541pgb.306.1602836666236;
        Fri, 16 Oct 2020 01:24:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls680863pgi.11.gmail; Fri, 16 Oct
 2020 01:24:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwYdcrIZVrWQucnbtxG5KirS2lMh0/nZrxEIu4yDovPdFSPZXTUqRRJOpsW/2079rYLubSE
X-Received: by 2002:a62:ddd4:0:b029:155:af54:3000 with SMTP id w203-20020a62ddd40000b0290155af543000mr2640261pff.64.1602836664556;
        Fri, 16 Oct 2020 01:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602836664; cv=none;
        d=google.com; s=arc-20160816;
        b=Qax53PqBLNjMZqMsdB6iiNFk8unrEbvUbLj/JfcvQKUVOnLp5QNPolcbQ4RahVWiy2
         kmrxUK7Tomo/pfzzfPO4cYkwBqS/W4gcRAP/rS6ZdbMX3Cgzl5ymqP+tFdPjPy7apP6D
         GmDqJc43qSa6E6pdGHqYw19aMDaoIA58WdVbkAV5lX0dYUM4vZygryx0tMdtm6l1iwM3
         NuEA5cmTtMyvxCZiFYNh9r0OY1xHlsCMj/6GTWkt9gH+amb5G4lEBaaUiJb9tlUZV9M9
         EuAniuV1S/QqGUhGClKcSnsDC2/wQhHLXX71cNLum2Z/pyRHZxbHg2ga1sPhudgPdZUh
         6VQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YH5yhi8X/xGoyTvYwF2/Hsy9O+v04aM74crmrfVteeQ=;
        b=sfDIhNZZn7z19ZJchEncMRXUZB8236ml1UEQwAzIOWcGS10kD2eY9SoEAtR/PGXJ0k
         XYaPZiqAerrXoXgmQfQRredeTcWWcgCIozJUOrDTLM1W3bQRan3+iEIZusKKQCdoSV5o
         RzWKDP96J8Je2DNE37k3W37j7rDzUyt5n9l5rtbgK4D8Kc7J5PgWgI4w81fSb02lpeGk
         +pGCsLfySxo6kCzBSEyspvjI9FLa4VZ1ARub9Zc7f2qOyjGjKVOH2SitWb/ikyXIWmdY
         GOCjTzqT3y3GImTr7B+C6g0ev4EQnrR8yF9pfw8fZKT+qbRKoxxLvOsLId0nIe/wM6nn
         dSqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KudT5H4S;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y123si81964pfg.5.2020.10.16.01.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2020 01:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KudT5H4S;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7861520872;
	Fri, 16 Oct 2020 08:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602836664;
	bh=PuKPUqmiZPZ+HbaAPIXt4e3vurp+FbBFKAQVyqrkgRw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KudT5H4SzeV+jmnP0zn/UtlhBAtcu8N4gYQBmJ7K65pjO5L2uv1QBNOPFrBmGSoCW
	 dS3oZOsW31wPVVCk5+Gy0h2sYAwgytiS+/hh/aUazfMUfGjbROaa+U9bl3iHcIAKl9
	 PsBHe+fpnSTDpEIiievROp/LFD/TxZ7o0DWhxYb0=
Date: Fri, 16 Oct 2020 10:24:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201016082454.GA1658723@kroah.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201015192157.GC20115@casper.infradead.org>

On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > The show() methods in device attributes should return the number of
> > bytes printed into the buffer which is the return value of scnprintf(). 
> > snprintf() returns the potential number of bytes that could be written
> > which may be greater than the actual length to be written.
> 
> There's a big patchset just gone into 5.10 yesterday which adds a new
> sysfs_emit() for show methods.  You probably want to use that instead
> of scnprintf().

Yes, please do that instead, I will not take these as-is, sorry.

thanks,

greg k-h

