X-GM-THRID: 6810213860225581056
X-Received: by 2002:a02:3506:: with SMTP id k6mr7342221jaa.104.1585898971204;
        Fri, 03 Apr 2020 00:29:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls2154256ioa.9.gmail; Fri, 03
 Apr 2020 00:29:30 -0700 (PDT)
X-Google-Smtp-Source: APiQypI0JtBQOW8eDwNvzULwfdcN3n5fb7LLQ2+pOBe2V/s97NdEKesXUXnrACtBZjMjHZchmjjh
X-Received: by 2002:a05:6602:2242:: with SMTP id o2mr6560045ioo.22.1585898970169;
        Fri, 03 Apr 2020 00:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585898970; cv=none;
        d=google.com; s=arc-20160816;
        b=FkjDp5Ev0KFnI6UEAYa9LCHR/G5LrUHkOAI1iZq7hWBFl9rcztC9ETaqzQ5yBXcA4l
         oVaMQYJaUXswYud+k6WVEEMuJv73GyQJg/EzyqJ0uLwMLrVvxwxJ94T5D7bMMwRgTf0V
         7Qec60dWuuHwNtWxNHjyt5lfSKDWs+Ffm6Y1/+JWC6OBw+mvb0GKxm0qDy7HQmbkddPT
         2CKLEIth/LoY4Vp8LX8K19zD+Rjgk8MBO6N1kC8PlbA+pMWsYINI0ku22vDa3rmabTdW
         5hY8MlI76zTtHORCiKfFlpdW9IQuJHhXOOIT97IOOx3ncoczyn7HSAz+wjV3axwXT1x0
         SznA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hH31yLAj/GAUXIP7fOdfADTKV83hsTbKeFy9a55nQZU=;
        b=NFu9HDtVoKE45d4fqMiM6jYvC1iz7tDyEIqRhukLRsRqkLvavGehjzRNVjU1wcp6Ol
         pskvWz3TGWJTZQSjTYVTm56JB4e5vu2WB3mWCMrWzANojZU6pRPbDRuSXCv8SSiVOTL/
         z8Po2/g6DleZzhq0oLCn7HsIr5T8697OOLBm/LB5QdF73XSA9n2q+dbcRj+V97EhlY96
         InxVuAD9JwPS3UiIgh3pLuk+TFXl3qziiyvc2D4CpYwt/7mKpOp7FLTC2x1T4HFxOxEV
         aC7m5XFCh7CiahYCpBHAEEiB8UWzW6Lv9XFmXq5agSAmDYGj3v5a3q5lTr4Rml1bRhGf
         eKtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SU73N2R6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si659251ili.2.2020.04.03.00.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SU73N2R6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 024EB206E9;
	Fri,  3 Apr 2020 07:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585898969;
	bh=5fwt7p/tw/uKxfzdTBNp9yqnwgauHuwRKIJoeJE0pBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SU73N2R6/XEOvFsNVGx6amktT+48DeczORt5OSWnc7ZZaVCufhC1du03pBcn4D8WZ
	 /WyFFSjP6td9Au0zjW8XvYLQukFI0iZDps1iC+gIfpOxKT5R5zJnlXnOFMWxVGhFu7
	 GnFX1vL41R7VukxAx94f+nprZ8JyfaIJq74jVq40=
Date: Fri, 3 Apr 2020 09:29:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, forest@alittletooquiet.net, sbrivio@redhat.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v5] Staging: vt6655: Replace camel case variable names.
Message-ID: <20200403072927.GA3408239@kroah.com>
References: <20200331034751.59941-1-briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200331034751.59941-1-briana.oursler@gmail.com>

On Mon, Mar 30, 2020 at 08:47:51PM -0700, Briana Oursler wrote:
> Replace camel case variable names with snake case in baseband.h and its
> dependencies.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> ---

This patch does not apply, as I applied the other patch you sent for
this file first, because you sent it first.

Please fix up and resend.

thanks,

greg k-h

