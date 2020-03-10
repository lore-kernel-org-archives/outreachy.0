X-GM-THRID: 6802456134444646400
X-Received: by 2002:a17:902:868d:: with SMTP id g13mr19868167plo.36.1583823292507;
        Mon, 09 Mar 2020 23:54:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:1888:: with SMTP id mn8ls38469pjb.1.canary-gmail;
 Mon, 09 Mar 2020 23:54:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu+g6eI+mttflPvaQ7i4+16+g2e3MlZEp5AvpFVfiAib1w8ZyHVNn0q/YpUW5INtmNdy3ek
X-Received: by 2002:a17:902:7282:: with SMTP id d2mr19471370pll.263.1583823290976;
        Mon, 09 Mar 2020 23:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583823290; cv=none;
        d=google.com; s=arc-20160816;
        b=OdLk2UiMYy7J4UdDud5kwuEQMt34yIpaatSKxas5qxs7Br1ygOgbfCDqXSt7QYyY58
         sei1NQO78bszYkJhO/de8434tOhS5ySTU+OxoxLZDGAPwz3T6wwTqCy72oohAulxWLZ0
         VartSVm/MGpSgRk5iG0sbovNEspprBgF02vqULlIPXusOg3Q3VL6Rr9mHUk+igRivK34
         C0yOg4RZBFDh/UnW/u73vYO/62L9K9Xrj7daoBE0FJ7N01QZ4TTQHdgcgWwRbl6dITO2
         MmpyABtluaSBT/hddHUMFMDL+sIuOcUUBCi3Wz52ZlkKgtR0P/fD+Hr7Jh8mLcmesqov
         p4ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BAtsIAzsR1swpOoTAuV7hXkcfPC0z3Mn7zjLz1QE2EU=;
        b=nw5o/4tNzGCOfMYw8vz0cK+tgmOP3u7xhGp8onsgBAFUdsii+jCgv7dvKIT0B1ZnWp
         vtlwP3OYci/N0u3dIwuqzBjd3dbEvOpWYWIFkB+UCnG44AGZg44Xe6QREejpMo5ZzhpC
         BpLQPCRF9F4+2ffBRlQal/EB6n0yNi408sF/FRECuIedi3Wc+fgRgFP9mTukPn9eTi0/
         sv46ujnG2J/1JOCXWpDX4W9Wcps1DFATFQq5HoXqnUi1XabPYq32uiK3PWkaRluWELpS
         W1CAeadveg2kqxwOyNB6YX+v4IjNBmgR8uwI0VYzQcuhUA08r7pxdkDFiznVF4NUFTFG
         HnuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KSv+Eaep;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si248530pff.4.2020.03.09.23.54.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 23:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KSv+Eaep;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2245024673;
	Tue, 10 Mar 2020 06:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583823290;
	bh=/v/PGNNBScJXTPfXnJPRjkoXtj845r046Eldjh4lI+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KSv+Eaeptsc0KDr/rW4Iz0WdHsT1TW9SlfTCeCAsWeOs6qWOw/2ZmvkQ9fc5YhTT6
	 c33VyxrZwJyuvQdCkxaIX3fRgWB870izJR7o56dwdcZdEzXEPxEeBIuR69DVhdGJpy
	 NGlGGaDK0eM7sraJDCuC5qFp8GunU3+ju7akNN24=
Date: Tue, 10 Mar 2020 07:54:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Need help locating octeon_usb driver
Message-ID: <20200310065448.GB1967668@kroah.com>
References: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>

On Mon, Mar 09, 2020 at 11:04:00PM -0700, Deepak Varma wrote:
> Hello all,
> I made a clean up change to the octeon-usb driver file. I tried to correct 
> a checkpatch warning of exceed 80 column. However, I am not able to locate 
> this driver in the device driver list during "make menuconfig". 
> 
> I have verified the driver dependencies. I am unable to understand the 
> CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something 
> referred to as BROKEN???

No, you need to set that hardware configuration option in order to be
able to build this.  And to do that, you have to build for the MIPS
platform, which is quite difficult usually.

Sorry about this, this driver is tough to build, and is a pain, I would
stay away from it for now until you get more experience.

thanks,

greg k-h

