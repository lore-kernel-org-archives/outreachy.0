X-GM-THRID: 6665132923205713920
X-Received: by 2002:a37:9346:: with SMTP id v67mr3813706qkd.37.1551863280411;
        Wed, 06 Mar 2019 01:08:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ba29:: with SMTP id w41ls692677qvf.6.gmail; Wed, 06 Mar
 2019 01:07:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxvY1Yep/HEOCym+9L6jISatWXuJsfQgrvZmcIEq8YFcmnBnoFV3y6x4q9pFPQWjSwRokV
X-Received: by 2002:a0c:99e1:: with SMTP id y33mr4148046qve.32.1551863279868;
        Wed, 06 Mar 2019 01:07:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863279; cv=none;
        d=google.com; s=arc-20160816;
        b=Ef6qK/CLd8dpXibFR1/PN6e2EM6DUhRTaFnlTbzxFYOsgqFMIcYLN01HbGJGpFpuBx
         0A2jRHMEbB1YoFUpCcO5b/LY0TBnvX/JkFyZuS3t0w1w+r0NXHXyl/+MjKd3kcYO1IjP
         nB+HSgGea8ZZw6mZhugbHnKGoISuE6pyXkHnm/dMvythJ5w0ArBaa3opLQzTr9PXrJyq
         8Ccn/yXZk6eTynEZe4B3c7DiaIR9FlyM4hMsnt6HtiNZ2mUM2PqnZXFU9g0RLg+VEWEa
         DkedlsRQDNsQkdSd4GZpLyemHFkOHo6JCe0jDXqiEvr9JjJ4q8V+koTKao9/WkgcxUqv
         4gWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Emzpbh4R/EOj4AVwjmqBsVAs6l2gO5MWOhOh1nGPy20=;
        b=w1oMk+NI2kROvoyRNBBeg+VdAjZeCZUb50yKnZsigEoS1DbazSEb+B5wv0uAV2+pza
         lW6Ma5ZnGwuecOR0ONYo7hB+l7R22AA7a4+qVQ+3hrPvPWVbZXY6fzTFg+WkavWtg5g0
         fdHYY2tF9PiIRC716wgGR0xPoDpYioFJPc71ZInbjsRB8YFO8nf4/cKmda+ySiluZ9y5
         HQY8SxiFKfySrCLsbm4sWkJysVOfiVXkU/xnzWsI0sagM4sgYU1tqHtw8RgEpI10kW65
         y6foqwo4rzWU3Dre3vEUq6HjdQNlFzQq5syGEhh8ydsXFiwoHxYUuco7dizel2MYFsPV
         N1dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G+1EIB0h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si69868qkg.3.2019.03.06.01.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:07:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G+1EIB0h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 487C020661;
	Wed,  6 Mar 2019 09:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863278;
	bh=9iY47cb61MDGeHWOzYXRKgIxdQSB881L6/WgYxC/7kQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G+1EIB0hksSi+MR5qcwXDdV1e2TRsML/0gORThyxbGL5zN1OvaoK/KLJAx7BeSJ7i
	 KHTN3ZLhLi8KujpjjADLn4eXWYysR0LGT0qnVmb06l6wf8dov3aIWDz1vrigcIB2/Q
	 nGe08TAyAumyW443vQHrtXM05gl1G2spwtRZEQY8=
Date: Wed, 6 Mar 2019 10:07:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Wentao Cai <etsai042@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: most: dim2: Fix
 malformed SPDX-License-Identifier
Message-ID: <20190306090756.GA7492@kroah.com>
References: <20190306043941.6141-1-etsai042@gmail.com>
 <alpine.DEB.2.21.1903060807170.2706@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903060807170.2706@hadrien>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 08:08:59AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 5 Mar 2019, Wentao Cai wrote:
> 
> > This patch fixes the checkpatch.pl warning:
> > WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
> 
> Hello,
> 
> When you make a series, you should also make a cover letter that gives an
> overview of what is done in the series.  You can find information about
> how to do this in the tutorial.
> 
> Also, previously Greg has asked that patches that add SPDX identifiers be
> accompanised by subsequent patches that remove existing boilerplate
> license text, if there is any.  So you may want to check on this.

These files do not have any license boilerplate, I just used the wrong
comment character when I did the initial conversion to SPDX a year ago
:(

thanks,

greg k-h

