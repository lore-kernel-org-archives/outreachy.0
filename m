X-GM-THRID: 6750983693634895872
X-Received: by 2002:a81:9342:: with SMTP id k63mr482270ywg.84.1571971291002;
        Thu, 24 Oct 2019 19:41:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:68cd:: with SMTP id d196ls1257767ybc.13.gmail; Thu, 24
 Oct 2019 19:41:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyOeQJQ7OoUO4Szra6sEVz4UDQGXPYKaP/wkeWbqS2KfoT8CI76yDyZdGYddSbrnKGnnuYc
X-Received: by 2002:a25:13c1:: with SMTP id 184mr1296537ybt.20.1571971289452;
        Thu, 24 Oct 2019 19:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571971289; cv=none;
        d=google.com; s=arc-20160816;
        b=lRMFs7mVWU58JR4QJT8gej+92ryUt27JUFNukd/em4cFqMN9nH+lJVtfgbD/gkIvgb
         sSqQOHoghkXz0Fj5AuthafJnJWvh3E5JsotDHfkH3FbcqnvfkYfCliO2dizYAvvN90+k
         /hEnANMBWCQ4iaO2Rl6rc5beC8vKwOatR85evMCJU2ubcRwijMdBsoptTHO3gpJmdJsC
         BDeuo+SnKxgLknDZuwEb9BaAJ4VYBAuNDfZlvYPdRdsfnryfWM4FYX//RQQ2wCbcJAAR
         ZMpuKOnJEyq4rsAvYKiXyZ9B/DP9jC/6bHAWmUEop9+2GIQMfzwvAyTB7KveRWQBdtVC
         m6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t+ap+aPpyhiP0UMRgmQHGdJ8JBDhhSfni+8daZxyaP0=;
        b=zt2k4oARQxIsB/n3FrV3EaWjMiW04Jr3Gy04q1FRbBScAMJi3dCDM/IY/UhJQ77688
         yCxM0C00YC0asoZ+EJ49YKK1FYdxJKG9fwJ1huD1wdY+pvoxXBMXbMp1kbB6v0O0ZrX2
         yt4E+uA+ivT42sz6qphqEVqT653y/gBS51XUaDkvrfnGXhc/jHKNgulDxumQ9siWbHmM
         CsLZKi/NOq24jGxKv37t1SebqFnxXHju4pnFKc31PWX+QNH9Mza4Gj2FQy06ClTxMetM
         tC3o0kujCWUTGFUji+x9Q6VQKAmpZbuF6LHL+1WPZmRr7DafbkEUn+MjaTFQSWmlVC28
         RxqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JH8OgIBC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si60456ywh.3.2019.10.24.19.41.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 19:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JH8OgIBC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F1EC21D71;
	Fri, 25 Oct 2019 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571971288;
	bh=i+Gddnbmw6+VtgQMeWio6rWlsDfBcFscQYv+nmGt6+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JH8OgIBC6/8XBnBCufT7NOZ5SEXt69kpfe+SAQhcf+0xfSGS3gPrVFwiwUUYetrYy
	 tU03WGK7Dr5bi56PGoQ6yPBpS4fGbbUlVIWX3Im2Ox+Esnh/1igMR3rNPN9seeXute
	 U0qs75NpJypPvPGUJCFeq2wfB+jNX5bJO01Z9UR4=
Date: Thu, 24 Oct 2019 22:39:17 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: CristianeNaves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com
Subject: Re: [PATCH 2/2] staging: r8712: Remove lines before a close brace
Message-ID: <20191025023917.GB307080@kroah.com>
References: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
 <db01b7a09ad9ce47cb5f3a1c69f79deee82e1444.1571834718.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db01b7a09ad9ce47cb5f3a1c69f79deee82e1444.1571834718.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 23, 2019 at 11:23:29AM -0200, CristianeNaves wrote:
> Fix Blank lines aren't necessary before a close brace '}'. Issue found
> by checkpatch.
> 
> Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>

The subject line does not match the driver name :(

ALso, we need a ' ' between your first and last name, unless this is the
legal name you use?

Please fix up the series and resend.

thanks,

greg k-h

