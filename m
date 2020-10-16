X-GM-THRID: 6883501515077582848
X-Received: by 2002:a9d:1ec2:: with SMTP id n60mr1841159otn.63.1602837129111;
        Fri, 16 Oct 2020 01:32:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6820:26f:: with SMTP id c15ls101642ooe.2.gmail; Fri, 16
 Oct 2020 01:32:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3PNWEzsRle0/zrZSsnMqzpzu0mMtF5WKe0uenuoalSO9AnXtjxCJ9SWpy8yCIV68IhI9s
X-Received: by 2002:a4a:c68d:: with SMTP id m13mr1865920ooq.64.1602837128113;
        Fri, 16 Oct 2020 01:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602837128; cv=none;
        d=google.com; s=arc-20160816;
        b=zwczXSbWypAYJnVqOPZqwqSgwDNhJcXfMVSXxReTl1Cqm4LhtVlnRS7stokAOe5x9N
         44WDDNmSLf0zomts46C64s/hPrJaBjVG6SdTq2/Txdkh4cxk2Okx90i0BSel9XE/fDTm
         n5Q7TzX50OUbI4vo/Baa+3M/PYqLAiV0XbDRIl5fn96/gjjpSFWsbyqoaKaqPAtHHBXD
         FfZGFAJ7cKCLVVVK+aEZtrpasfrIjux8OAjOQeUuDRZ8parq7i2QXfD036eIQJ9TRfJ+
         xqAcRC04i+tHYuf+UFsDfRkdZWM7TCQE1bpQXhUXeucSsTo46hOCR93EUJ7pBVkR1OYg
         rbWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X1kp3r6GQvopr15lmWrGQmN9246RDMHVpEmRjWtDQ0E=;
        b=BYp615kAW3ZQJ7eOMnZHP2lhvP6d9yq78XOkCDyJV6YnV/QG196viIaeXA41N8aNRu
         I258VX+PMGo8+L1fu+syDLpgYRvEfjd+Fwz192iBUg545z7eWTUAa9TosNQPEchjLIUM
         DSuPTZjATdiGUJn0N0fCRRBR9YEYFX1aq21LLMLrwUNSv3CSVFr+I5M+pkOULhzJu+64
         gcr0+ejnq9UuyLbknM6LBROCk1pKtYvNksUdFw/0v7jlXVpfd1b5IQnPM6FnOWhzkPXg
         ZR4SegD23L6+wofX2ku2PfWK7mlRavPnHQWRy0QRvk8Hm8O0smi8CtY3LiC0TEhk7twV
         7oiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WEV1hCaO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n7si99740oij.0.2020.10.16.01.32.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2020 01:32:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WEV1hCaO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4464620848;
	Fri, 16 Oct 2020 08:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602837126;
	bh=zOwA+L1dzyBa/mD5kkoWZL2x8uS+HAHxbQZzU3IdhUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WEV1hCaO1aoI65wRvQb4K1uLBF0x3SJQaoDmcaCC+4Q9RyNlZtww08fnGg1VXfFAp
	 0SNFGrhZyfTC4TaCh9MDhPrcKYipzlGAB/5KsnBKGoSD9Hp6Dm/ay6sqV47dMPtrJ7
	 /7pxxw0rby+pSQT4Xqj67Z8IqYyeJGihoRnjV3SQ=
Date: Fri, 16 Oct 2020 10:32:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Forest Bond <forest@alittletooquiet.net>
Subject: Re: [PATCH v2] staging: vt6655: rearrange lines exceeding 100 columns
Message-ID: <20201016083237.GB1722359@kroah.com>
References: <20201014173805.GA42788@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201014173805.GA42788@ubuntu204>

On Wed, Oct 14, 2020 at 11:08:05PM +0530, Deepak R Varma wrote:
> Rearrange lines that are longer than 100 columns width. Issue reported
> by chckpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> ---
> Changes since v1:
>    - Removed unnecessary {} for the single line statement post if
>      condition.

You need to mention this in the changelog text as well.  Please fix that
up and resend.

thanks,

greg k-h

