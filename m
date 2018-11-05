X-GM-THRID: 6618634579794198528
X-Received: by 2002:a1f:3151:: with SMTP id x78-v6mr20040415vkx.21.1541425460976;
        Mon, 05 Nov 2018 05:44:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e146:: with SMTP id o6ls1933875vsl.6.gmail; Mon, 05 Nov
 2018 05:44:20 -0800 (PST)
X-Google-Smtp-Source: AJdET5fSzAewpU2G7FIEBf7Re32lBaL0yXwS9AP8HIzm4cnTRdsw9YwX0jM7DyqnE910wbfR8aHo
X-Received: by 2002:a67:3008:: with SMTP id w8mr7739066vsw.27.1541425460186;
        Mon, 05 Nov 2018 05:44:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541425460; cv=none;
        d=google.com; s=arc-20160816;
        b=h6kCGualcmjd7rQYNizei7RWJJWksxT4wwSkcRhyyFHPmaAoP5HaoS29L6w/u3yCm6
         dgq/VxxOvi1cY+uPd0qaDVDfWjp9bX3mwREeWjqhtHiXU7rTm4UuqZ4tffQ3ukSVvJU5
         LeePdJQysRwmbzsVFzTMJeVOFDK9h1Dz/CnbunTg6f3sNzuLURUNHLzgqIlSrg26VrON
         Q+0GxYHcpZvLwYfayhgXx6MaFGCf9lJbInVxsYwcX4F/Gm0gYPW6piQRKm6RClh/9pFH
         TJZPIkeqS3xEIt92P7cIMXsOpeeKuimV0fYaA50Ze5vX+1jqgltNDdTn/joWdXOptpXF
         XEiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CDMgms/VQBFuqYX9F/EchlU6lBEiXWPttPMnUws2BYc=;
        b=ChpxkmlPLiSuZDkheENH0n3m99pCpnjqKUYGWMzy27KNclkf7JBsAADJhoxiKpqBxd
         V281gsN3kzpxLeHmok5V/V0oH2JtVwLsZ0poUhMt+vhVriKocnLufcmav1E7WF5DEpS/
         WTyVdw4oZBu94ac71MDSabgK2fpnBCu3kGiIBm8qXxRf1RIx9g6Woq1mFaD7ZwwjOdH4
         +XUjML6x0M4Ob+xNL3s9uODWmtMdSLTtZ74PviG3DYvS7T1ki5rfaVv+NT0TTYNfW1LM
         2xfjVxqi12elE1kEb3vFPUFO/tAjElkesFkaXvEKkYH/xjySxL6iP9OCCFWWrYpJHVl/
         5duA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Aw4ysDZV;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w206-v6si1597069vkw.5.2018.11.05.05.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:44:20 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Aw4ysDZV;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 670E12085A;
	Mon,  5 Nov 2018 13:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541425458;
	bh=j/rzwKuR+HDZ1yaPN7fU5yrHKcEnO4rj/QuCmy8rcCM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Aw4ysDZV87Nrsxoyvk9ZpkgHjvqNjz4NyEAuS7Adjv31J+p60P2+KfFJMy4DVKFyp
	 gsuO8RuZmqYZUG7Qa4AspNFP6TyjfAfJYiLBV8VfRVE7sXY+yzZEPWpy/wfT1hmTtV
	 DHIWygjEFMaDIbxWCaJg3AqsK1O0aZ05vIRp6/zw=
Date: Mon, 5 Nov 2018 14:44:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, alexander.levin@microsoft.com
Subject: Re: [PATCH v6] staging: gasket: Create a free memory error path
Message-ID: <20181105134416.GB8389@kroah.com>
References: <20181101010554.GA30222@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181101010554.GA30222@kvasir.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Nov 01, 2018 at 01:05:55AM +0000, Ioannis Valasakis wrote:
> Create an error handling path for memory allocation. It avoids repeating
> the same assignments and returns the respective ENOMEM.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
> Changes in v5:
> 	- Correct label names to reflect freed memory

This is v6, what changed here?

And what about all of the previous versions, what was their history?  No
need to drop it, putting it here is good to see.

v7?  :)

thanks,

greg k-h

