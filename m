X-GM-THRID: 6669267213374980096
X-Received: by 2002:ac8:3f5c:: with SMTP id w28mr7009019qtk.25.1552817458782;
        Sun, 17 Mar 2019 03:10:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4889:: with SMTP id v131ls6077605qka.6.gmail; Sun, 17
 Mar 2019 03:10:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyG6dfDrkphtLzpkfoHTSeK8QTqMRdclMw1Tr9hBjf6pP414VPZwb27lDAa99WEmDPrkwjj
X-Received: by 2002:a37:b241:: with SMTP id b62mr6943775qkf.14.1552817458079;
        Sun, 17 Mar 2019 03:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817458; cv=none;
        d=google.com; s=arc-20160816;
        b=wBX1pKsqzc/xca86uSacIYurQbaYKxxpxgWKURi6dFE11iRaACjD5bn9Io7CxPWxyR
         fvE0f0ae2jbhsmdpgKakp4qe+J4L4z8EV9V/B8IyKRA6tk5WawsIcY6hkju80m2aOUwh
         Wzzyix4kjgpUFHFtMRdXDfJAWxTqNHFmw9QPS1XSysCMLXcjnIGXGVRkKV7d5dvzeRh3
         ar4ims8iRjQE8XKsLLb1UT9ANrd/ti/D3CHa6WdNtrNOD6kzrSeLytoqFSpAvORrvyse
         +sz4pxwcLlVifMphKlpBqz/VhkoxGbLKHykSuq8OvIzurF3vNHwEchtqIqHXEyXuThXY
         eJmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=U9HK8GlBuHRgKxJ+9Um0XzVt0wiHtpMyYafP8BBRUoU=;
        b=OtaHjtej+HQcHblyqLs3eTfniwzliRVznpATsQ1fGMmhKWPcIiWEf81hDHNdC4zadl
         +9nuLCUx/OBNuI3vCPAMYd7U2APf3QAPtFSB0iwqQ8stQMX4Ggnpjia4oPGNxu0PpX1N
         JtLn5Iea3wuaB9MPioyDl6MgzZQPZsIChruRU5xs31Y2Xdv/0VhUSUXD4P+NCefwFEHw
         KDdpg2SBti5t6sh12FLI6N9x90Yw5lS8PWevelWlAtgG09eLwX/sdxUgffKq2a2CCZe7
         y8odWE+vH05oft85kRjUamjieekCZYyk3dsHgn4eDiJKL4MCjnpOe0ermWbePn2+ZqaA
         6n3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=blLa1cEd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si395952qtc.2.2019.03.17.03.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=blLa1cEd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 75B822085A;
	Sun, 17 Mar 2019 10:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552817457;
	bh=zczEVyoC8EM0EIrL6lGndK1mtKqCvXkUnuNs88pKYYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=blLa1cEdOdgRwblQg/NkMv0hXo7X9A5oVzBoomaEiRzVOz+cBfaJbvPX6WQtLVvZh
	 56h8hgtJK6ut+3xURKPGKZ4Ba3lCo3Z2vZMg+ZXXGjTKgpVoBxCMVITEqJzXrz1ldf
	 9HM+ZlDKXDxZtnI907KNbOQmJxqCwfV2n9apFjxs=
Date: Sun, 17 Mar 2019 11:10:54 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sound: drivers: aloop.c: fix
 a trailing whitespace issue.
Message-ID: <20190317101054.GA26906@kroah.com>
References: <20190317080246.2831-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317080246.2831-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 01:32:46PM +0530, Sanjana Sanikommu wrote:
> fix a trailing white space error.Issue found by checkpatch.pl semantic patch results for
> aloop.c.
> 
> ERROR: trailing white space.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  sound/drivers/aloop.c | 18 +++++-------------

This is not a "staging" driver at all, so I can not take patches for it
for the outreachy application process, sorry.

Staging drivers live in the drivers/staging/* portion of the kernel
tree.

thanks,

greg k-h

