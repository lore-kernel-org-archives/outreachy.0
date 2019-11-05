X-GM-THRID: 6753896393761357824
X-Received: by 2002:a67:e446:: with SMTP id n6mr4737120vsm.56.1572974001918;
        Tue, 05 Nov 2019 09:13:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e302:: with SMTP id j2ls1572162vsf.3.gmail; Tue, 05 Nov
 2019 09:13:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqymLPIjQBJ67iT1Gnqv5r2zS8R8Na/mcGndZkZIBY6eorS/RthB6J8smHGQfRSDpCcO2+wp
X-Received: by 2002:a67:e290:: with SMTP id g16mr16111262vsf.54.1572974000932;
        Tue, 05 Nov 2019 09:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572974000; cv=none;
        d=google.com; s=arc-20160816;
        b=Zr+ah/Cl2tHfJrfqRM2nMmQ1Yw2ArJLCVbUsgiOZKU84zwhTZYhTuaT4j6L+LkaXrb
         DUd2MUiw+z3qbleL6J6pxMCwpX7aQ2xhz6ZXIDR9RgD+DGxKQeZSSFJ5pLOkv/Tg7GmT
         iEH5u66cJ9lv+n4q87X/XrQAoPuIhNovVA6pTGIH7X+g0I4bKGILBkTXo6H/XThlOqQI
         tpuMdqOeZ6SRoRboQUCoW1GSl9V8eXFTv2aCzA1OrTa9Fni4tS8/gKKE+8sTgW0CEVbK
         BokA1PvR0glehRlM8PmrKek5DfLYqe+Q8npRTrWOeCDIKd6fwOaaApvMjSNX3BnRAZnt
         JmVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VvoivI3ilyWJbskEeLF/R1e9A6iNDnvjpT5Db98yOGU=;
        b=tpzb9tGPBLznqNxPFrP0T5VYduYhBjkAaU2T0w4w/nmDaJUvyLTyRUAqp8ZoGQf9MI
         e2ncOsOn3JXYyJyXR7BYognqTgqXtCIIuR80YxuLPEgtx/S2dTVk44gE4K3jH9bBmLW8
         2veJazqPIgvWkIKQa3XVgl+RlcPGTbOW5wNYe6IL1yoRwdvCRLsI95e1jEOvfkxboSr0
         0q+ucYW+b6fCtp22PTy/hvUzOxoniB2zQ7Ws+9o5xweEaUjZqX/n1pC3614H7mq4tOKe
         p35Vq4IwFgKmGifcQmMo3nHD8whw1wp5lvwVu+n3vjk10RJ8aXqxE16oCDvBH8Mav/67
         0ndQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=h+83HwU3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s197si908629vkd.5.2019.11.05.09.13.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 09:13:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=h+83HwU3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B0BAB2087E;
	Tue,  5 Nov 2019 17:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572973999;
	bh=ETdGU1NpdEA1nZ2jvi6333h7UmDbvQaaUerdtMca1V0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h+83HwU3DdCjyD2XLa/Y+t9sNuy3DFjBb1pL2x2TX7EB+kWkz3XVRpiP9kyNLA9Rc
	 OsJpOQO2UeSf4WPDgls42y50x/o1JHup57b7pVnUDmA9C3PX2T1r/gP6IPW7VHC9Zs
	 oy+dkexqSq/PoxRwspY1GqxlJIPDDUYJa6/Emcpg=
Date: Tue, 5 Nov 2019 18:13:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH 01/14] staging: vc04_services: Remove instance struct
 typedef
Message-ID: <20191105171308.GA2815447@kroah.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
 <ecf031601dd7c0beb9bf6ac279dbeb912994025a.1572915104.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ecf031601dd7c0beb9bf6ac279dbeb912994025a.1572915104.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 04:55:11PM -0800, Jamal Shareef wrote:
> Removes vchi instance struct typedef. Issue found by checkpatch.
> 

Your changelog text still needs a lot of work.

And your subject line is wrong there is no "instance struct typedef".

A "better" subject might be:
	staging: vc04_services: replace VCHI_INSTANCE_T with struct vhci_instance_handle

And then describe why you did this in the changelog text.

You are not just "removing" you are changeing something, and you need to
say exactly what you are doing and again, why you are doing it.

Please fix up the changelogs for all of these patches.

Often times splitting patches up and writing good changelogs are more
work than the original coding part was.  It seems to be that way here.

thanks,

greg k-h

