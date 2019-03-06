X-GM-THRID: 6664067951305424896
X-Received: by 2002:a24:37c6:: with SMTP id r189mr5290313itr.13.1551863724945;
        Wed, 06 Mar 2019 01:15:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls512227itk.1.gmail; Wed, 06 Mar
 2019 01:15:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqwV+6sB0F3SSnLuk9pWXhkhR2+Dc7ncVcaZLUWFeCz+k93ELwMCodv1aRDIR6mYvN2yUac1
X-Received: by 2002:a24:9884:: with SMTP id n126mr5147184itd.4.1551863724316;
        Wed, 06 Mar 2019 01:15:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863724; cv=none;
        d=google.com; s=arc-20160816;
        b=d6NlIp54LqFnV0TVGcrsstzGo+GpfaRMhDC4BirTPqkk9ESuthT1XV1yY37J8XQV5w
         r7Y7KXkmenNsWUDgW1ViMXe12vyH5mRyzmVT7yhcGMj8YwaCqKnXM9G+mA/RcH4IXToX
         c+uhsx9safSXU993y2NqU+CBgoXA0TCO6dMASqW1TspNa9cFdw7Ija+UDbz8Z2zLXQEz
         pBiVwsTW1in4sPtecAMoRag5f4o7Zmv2GHNO3fPot2je4NcSkTtJVhfSUyngk4/JaHq+
         GOavaHwBuTzTyOwGF7OBgZcWRtPtmSpXOaNf0RRVAaq0+sr5rTvikMFwOglL+pVQKRGq
         xcOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jm7y1h6z5E1e5hwS8F2CWxRqdk85hely8v7KP3N0ors=;
        b=MLyab5q+FS4D16wriYURo5TfKkAvillFURqVBFea8BbToBmDOpAaKzvUWYwZSpmnak
         HVqx097p65xP59B5n+noRhlj4YZLuAOwScEIntWItBMtvwk3ZbId7bJ7sMO80RQFL/Ry
         j6C1KH7lsJVRn5jUHgqxxNkmvv3cVosHa7wFO1gyJS4SQg8MhkMDaTdAocMS8sVfot3O
         tqmZgDicwcRSc22g2G9mjz3oGD+MGRbPmxsPNzpkL7mV5QvzO9JwJa25qUcfKxK49yE+
         aZpBjVlJSsmhq5koo8uZiiwzR6WflXSWo7+F2XmsMpE0vZw/DtMGIDCw7gVPZJ6cUC26
         u+qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ugHxLeuF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si136305itb.0.2019.03.06.01.15.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:15:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ugHxLeuF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1595D20840;
	Wed,  6 Mar 2019 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863723;
	bh=d0sttXlfNaVpl5tHgFhMPJyR4q8+CAbb/7YdG1mYc3M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ugHxLeuFKHEEeL0GlXd1CSc3N9ZLSEGS2ivCYTUtLZlx0YRqt/tDBhXkyaSCNzUaD
	 oeXXhiJzeYNOBj/kntyTKdJp2bMFpI6YjoQDEHVA7gNUaK42u8o2Jn+cGiVHy+6mut
	 bPbBP+znI4gx9Dv3T7xUJkbNw6NVMCo559ktI4PA=
Date: Wed, 6 Mar 2019 10:15:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190306091521.GD7927@kroah.com>
References: <1551805986-49458-1-git-send-email-idebleenasen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551805986-49458-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 09:13:06AM -0800, Debleena Sen wrote:
> Break the lines after '&' and match the alignment with '(' to remove the
> checkpatch.pl warning. Remove whitespace after '&' if any.
> 
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>

This has the same subject line as your previous patch, yet does
different things :(

Please resend them all, as a patch series, with unique subject lines.

thanks,

greg k-h

