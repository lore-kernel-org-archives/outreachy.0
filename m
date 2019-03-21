X-GM-THRID: 6670726051308503040
X-Received: by 2002:ac8:1911:: with SMTP id t17mr4560762qtj.247.1553194980989;
        Thu, 21 Mar 2019 12:03:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:24ef:: with SMTP id t44ls3023281qtt.4.gmail; Thu, 21 Mar
 2019 12:03:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvVB2J3/SeGr60flIiag+LM4FdROB4shMsi5Dv3fc4jRN8G4NsS4pZjGcvAA0duI52RDK0
X-Received: by 2002:ac8:3653:: with SMTP id n19mr4331698qtb.95.1553194980404;
        Thu, 21 Mar 2019 12:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194980; cv=none;
        d=google.com; s=arc-20160816;
        b=RzNvwGCcUkcS4Wwiho2pU0QzKGHn4RKaBqLklXa+t7WxdB3DSPNrrbZjmU9xHn2cAy
         qumRROsVRbtzSDLKMeknifUjIZlDE/NfPfI10BJAolhph16Boi+2T7ZBaFuMVDmRfXiL
         QInTGWTkPabaqraR1T1WQiixKOpm+bCWXBvTvj8PctE1zjYtOSlhQCf+9jeXcB/+KNhY
         nJqQcwtvXsgTcq9t4IfqHGYUKSHNcGm9HiW5qLeS6iQ/woxRrOcCOyFQGqAIFq6zlrKa
         LGODMZ+sG905WKc9sq2xnV+5cibyXEXI/MyfJX+x4JeL3casKEc6jiMQEoc8QETgun6d
         nnng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=k8tZvk9Jy1ffuhfvw7/UJN73lpO1gk1CeCrTa+CUAfE=;
        b=VJVCzoGNQ5JbWcZ7znsTyQGQH3eqHWhgvuT+nCvwmomg6VHFZg25b5l2arXGFC+zrD
         JWCIajcWqjHasmLHRhEUuSDyIE/nfpUXJdNUYN8S7qMypwIMQyha/U021ajXR8aOSmlt
         DBR8Vpjf/Tk3PlalUGR5jbgBKezUi2JsCWMZiczRXRkRoGpjMeQLohS2Y1AxQfQaxHd/
         fHwVYKtnt+ZWRV8/0CWsSfjhOkxsfSNkI3IclPd6fZl1p7kPw0fJEym5PLYRTzQiSEE9
         yeJtfcygo7l0VQrm2JKugpDoAFf6+Z/DJho2BpD0yWmdU+oFdHJw3xMDbBzwLEWh/mtc
         Z6Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OK5EMs7W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si404641qkg.3.2019.03.21.12.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OK5EMs7W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D975C21873;
	Thu, 21 Mar 2019 19:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553194979;
	bh=ZjD/VUC6IDwatax39HQvIeDgeDgirc1CacaOE7MKagA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OK5EMs7WdtmcjQ01abPdnEGbsb3FyEnGCUrV35aqhsYIaK74LkLDnFQ4XCKH0LVvw
	 AHsVtmtJJ5Hft94/G/hqDgOHTHLioic3wNAkKFPipHZRbqssDAxOgyE1j+5RrBnm3k
	 rIXhTJZS8RZvBugpJvkSqafhQrwlHo6pWAfTH4GU=
Date: Thu, 21 Mar 2019 20:02:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] [Outreachy kernel] staging: vt6655: spaces around
 operators
Message-ID: <20190321190257.GB12522@kroah.com>
References: <1553163225-10581-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553163225-10581-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 03:43:45PM +0530, Payal Kshirsagar wrote:
> Add spaces around operators.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>

1/3?  Where are the other 2 patches of this series?

Please fix up and resend them all.

thanks,

greg k-h

