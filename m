X-GM-THRID: 6805913239014080512
X-Received: by 2002:a5d:9902:: with SMTP id x2mr2797386iol.81.1584626883825;
        Thu, 19 Mar 2020 07:08:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c9d1:: with SMTP id k17ls601848ilq.9.gmail; Thu, 19 Mar
 2020 07:08:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3lMVj/2ujGUtb1iPWgNJiiRTnK/bNL/Zux0MxUb2NrC+xARkHAUKWs/+8EMYHabcsVy0q
X-Received: by 2002:a92:8901:: with SMTP id n1mr3588213ild.176.1584626882453;
        Thu, 19 Mar 2020 07:08:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584626882; cv=none;
        d=google.com; s=arc-20160816;
        b=tF4NPQwuL8rr/bVB6qnyMPkVs+crP42mifIR7vG6aRqVnB+0heWF3l69h24sbcj0oN
         CWD6EltUfR5KUS0oCL7D0zHMz0RVuUtVaVJqOy1KY/XENn+7+dBfBZZCjbXP7IOswjL1
         h9ld0Fz1X20Z4CRImv2xagAn2pbGCYj+j5Oi4J3IjR8fRy//LHbPnv4pvaWva6B32GMu
         lcllNKQ3s17/DaBgucYkVU/2Q5STqI0E+NvwcIszWeMLh7LCNZrifKpO+ZIVjSw20mSL
         AubDbzdIr/JXz+4ovGKRLtoQIm427eclv1YF2DnnVJnrawnJ3SleDMyqpLKlfGi5/6TC
         +J3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9oX1bXgkhwXZNUM6oYZL97bvFLrKjuBtvJGw52x7P78=;
        b=uGUypoS/fHL2QG2DOHwq+K9eb+kDlr08/xmBWh/ZGVeN5xybipv+a8ZiUv4AvJcOgt
         gq1kMWsymUkjxzRZ95xMq+5axLvz0fjvFwCoBQPf7lsFbOJubPqyNv+MWQJjbtgX2Qvd
         ZJBwwJtoz5O0Ao+MvzRGLkFso6Clu4qEtvvMLVf/+HZFN9OYHoUZArj08ieMT+Hqku2e
         pK3TKB5vr35vrnwr6M0QeWE9RBVLAnulBnv+KpXu2iEezlgSjcprjH63TJ/bu+42UrYP
         jfc9i3zXySM1sOLqStAyn4n/rqge2MtpDyhO0gBSU8P4Q3AuA4lkyp1cFrEu6dsA3opF
         31yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xS8QT3od;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k88si144042ilg.1.2020.03.19.07.08.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:08:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xS8QT3od;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4878B2137B;
	Thu, 19 Mar 2020 14:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584626881;
	bh=jzgz5ftASLqloZf5Q3mh71ToWwIlUgv7Gn9xyoCvw48=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xS8QT3odTyj7/D+jTlyFBkARqq+l6Rtdl7YoxSX64Y5IMvQZODJrfcatuAi/U9k8C
	 7ZS1HQOb8Jq4vY+inmA11+4o+uk8+y75SNqkMalXVYiS4aV4gGUoj+9fit4x+h9HTs
	 LdN5dCj91zgNV38uy9uTqpv9GHILcCEs3A9dsmps=
Date: Thu, 19 Mar 2020 15:07:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/2] staging: rtl8723bs: os_dep: Correct typo in comments
Message-ID: <20200319140759.GB4192874@kroah.com>
References: <cover.1584624834.git.vkor@vkten.in>
 <b2b27aad972dc77158e06bedda1a4a677b47f3af.1584624834.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2b27aad972dc77158e06bedda1a4a677b47f3af.1584624834.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 07:08:59PM +0530, R Veera Kumar wrote:
> Correct a typo in two comments.
> Misspelling found using checkpatch.pl.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>

Like your other series, you need better subject lines for these as well.

thanks,

greg k-h

