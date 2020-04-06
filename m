X-GM-THRID: 6812465234894127104
X-Received: by 2002:a05:6102:38e:: with SMTP id m14mr16514042vsq.141.1586182966268;
        Mon, 06 Apr 2020 07:22:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:b8:: with SMTP id 53ls1131018uaj.10.gmail; Mon, 06 Apr
 2020 07:22:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypIA08bgQgCsIxHzXiaaNeiey5/BcQ6kXX0ot9C3VlBk1rcavsJsIICktjzsq6yXcn6YDwJf
X-Received: by 2002:ab0:3389:: with SMTP id y9mr15130130uap.98.1586182964346;
        Mon, 06 Apr 2020 07:22:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586182964; cv=none;
        d=google.com; s=arc-20160816;
        b=QvNnnrSatZF9hhi93RWuRROhVF3p0eIscmnfae242S8ZxAMt7B7EzI0a7ux5wh2XZc
         SYCrCoudwWj2zrEKxFHfLwqvX7uj7n7PZ0Q7ZYP1+GYopDZyqbbNRLi3LWTazrRPRuUS
         6g20Wn1+sAzEci/HUz4oICSDV0XBqegQEVSsYcrx2dgdzHfQi6KR8eei3viqxaUUubxA
         ydR2R+1dr1FLCLchW55CCh6GMiRhf7IB8Mx5pCH6UY4xzZ+hj+yWEkNBxcGxuRhPJ8jO
         AHmPISkMtzsuv8zI/e2FX4gwJlm4xaAqhQ9AEANkIfqhqjp+cJQJbtZpL/0HLJy1Wyqq
         0SsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dYE9xSRN3ih1y8e69yrpMRbK/eJUugkWo71Ot9jxbnQ=;
        b=oqr7fhVh+lOOyEhAaTk21guXNaA/5mCbiozcZlksI0FbUCAu79Vhr9K05NgzAoheCZ
         58te6GWeYBLD3ZAdI0qJ7l2CzHvn7EIVbp3PqA9bD2/0GE/KHdHlbhPEuc+dn2TRc3IT
         ozKf1pjddNrM7tHbPT+uV77Y8ryDUOA/TPei80iU4XJTIP34ekCDwfREyY8nN9ZXIydS
         1BQCb4VOrq+mW64GlW/MObIcawj6Mj4G5ClFnn4tqtwAn+nXFnrGXStJSUsGy5NsrzVr
         qlJEcXmOFJt59r5CjFqIYFNOt/0mMVCzGY24g+7E17xZV3+w/pXQt7rO/TTZMSkPnqnf
         bpyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=paMFAUh8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g6si1132514uab.1.2020.04.06.07.22.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 07:22:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=paMFAUh8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B413A23D3B;
	Mon,  6 Apr 2020 14:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1586182963;
	bh=Oxf68w/tVFA3tVK5TNvOMGhxZmF2Wy/Q5R8bW6xk+X4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=paMFAUh8f1ZuLQfiGXsT7I5V3o1qECGSdDH11/Rr20t7IJjxt+t59piL+560CzLuV
	 4oB3vhKJMbiMhy8t0sb01+G4QAvOOuIXXLZ6ZNcrGCbQZw9KriJ9SWaf5e3TApx/8p
	 eFPmy9+QXGBNmr5qJt0JVxiWGXmA3kil7oqafkEM=
Date: Mon, 6 Apr 2020 16:22:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 0/4] staging: rtl8723bs: Spelling corrections in driver
 code
Message-ID: <20200406142240.GA48581@kroah.com>
References: <cover.1586150254.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1586150254.git.vkor@vkten.in>

On Mon, Apr 06, 2020 at 10:54:10AM +0530, R Veera Kumar wrote:
> Spelling corrections in driver code.
> 
> Patch 1 & 2 are dependent.

Dependent on what?


