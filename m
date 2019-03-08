X-GM-THRID: 6665843056733847552
X-Received: by 2002:a17:902:2a87:: with SMTP id j7mr4011391plb.3.1552028805989;
        Thu, 07 Mar 2019 23:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls3814538pfj.0.gmail; Thu, 07 Mar
 2019 23:06:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqyJMs+klVRFWzMLbQhM1L7UubpZuRc+76gPRBSXs6iL1ArhNqgTLk+A9cLE4M8Nv51v7kWi
X-Received: by 2002:a63:5d1c:: with SMTP id r28mr6538564pgb.93.1552028805251;
        Thu, 07 Mar 2019 23:06:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028805; cv=none;
        d=google.com; s=arc-20160816;
        b=VJvbrOCgjqt7iawGS8dt/p8L7TC3YH8dXliO0u/Xn80gjivL2EVkleLwJ0lIR84EkL
         doy64YjCM2vpkQW45nvVJ0BInXKR7hVedxW0DfLEeHaBPTNn1DNNKEbc7FgYrZ523N5d
         fWPdhzGc57iQepGQXsqXRzn/i1M3deNAwevKmQRKj5vAVhqd6recFai63q7Ko63npcOV
         0+X9WHk6D+Z/34JFno77K/RnG27YK3bO082ff7ICdfO7ZgIQ7BD1jVGB3gP/B9G1K16Y
         gmnV2M++xUODzLdN7WGkWrp0Z6zGYoO3QeIlZyzhXQb2v6yJXMxmhEMcXBZODrJnM3R3
         huVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=91tUP+p+E7cZ7CovYQHuwup1DBcxyUHrkimGG+09bqg=;
        b=lPvxmwKCc4OnW6fW+NElLKXKKJrAwRFNWGWlwqisuNb5N2rM2XsdMR/Khxy0cikLFM
         EK52CtSPIzMqF61TcKdn0aIE4i9w9s6WSZIWgiVaqWoMJuARDr7EiMEXsLE5KTxiWyk3
         1R8JtsUAQYgHBVPMExGekTRji9hchwZ8ry6av5EH9DEoPLAczkSlquhFoOkf4Lo1pxOO
         oL64mt9+EhsStMjK99zG3QRE1T6M7/iDI6t4+ajQ87Ds3ZHjkwNvaQL/mwcx6XBNX+pq
         vsTD6j8DMvGOjjVnsDyavEV+zbDeR0ie2gqf6FXbr8ITBR7rrQjCwh0GBGK7IVBkLDPN
         foLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZNbsgfCa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z184si378897pgd.0.2019.03.07.23.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:06:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZNbsgfCa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 847CB20811;
	Fri,  8 Mar 2019 07:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028805;
	bh=pLT2xaZd3XisZhCpz1iak4rFg2CXbG8A3PAj48Ap4uA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZNbsgfCarORZMuLcE5vPkJTHtWbgxQtUJT3A02xEme6hHac76LQnysjYe9gpq2lVy
	 ncElpAEJgCU0nc7/aUVuBT3EC7hR9m+Px3MxknknzlPs/w0Jgr5PT4LolO+u2hGkW+
	 Lp2cCMVemvONaM1Ja70P50siHH7xkHdfcRSYchQk=
Date: Fri, 8 Mar 2019 08:06:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/4] Staging: most: dim2: Fix SPDX-License-Identifier
 in errors.h
Message-ID: <20190308070642.GF17194@kroah.com>
References: <20190308031013.7952-1-etsai042@gmail.com>
 <20190308031013.7952-2-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308031013.7952-2-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 07:10:10PM -0800, Wentao Cai wrote:
> Fix the checkpatch.pl warning in drivers/staging/most/dim2/errors.h:
> WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

You are not "fixing" the identifier so much as using the "correct"
comment characters.  The identifier text itself is correct and nothing
needs to be "fixed" in it.

thanks,

greg k-h

