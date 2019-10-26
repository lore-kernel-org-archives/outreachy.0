X-GM-THRID: 6749942525265444864
X-Received: by 2002:a0c:d0e1:: with SMTP id b30mr9593214qvh.197.1572112950256;
        Sat, 26 Oct 2019 11:02:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:25f6:: with SMTP id y51ls4063998qtc.7.gmail; Sat, 26 Oct
 2019 11:02:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyr8O2dYBPAys02kHM3QkpVbCx4IfgCfeeU7AjimaDniaWh9xz9Cex7dB+SXgv8iTrpvtCX
X-Received: by 2002:ac8:5310:: with SMTP id t16mr9708991qtn.258.1572112949041;
        Sat, 26 Oct 2019 11:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572112949; cv=none;
        d=google.com; s=arc-20160816;
        b=UuW4CFWTV9nu2iaNjz35s3LqPkGazjnGyRO0gxFdmW6iBSQVR6l4BhkyvutQVngRXH
         mEek1wcjc+fPKFxtVZYglloI9N0rzgghwdcXjJ+WMFV/MOWsnwMDAhPLctQGKwyukLRP
         ROgAy/C80XADb0YsIrdZ94NU3/2EXRi20qZNuaWHN+1dSPg5QmmAScXIFTkPeGnAaVh3
         hJWCRGpSUm6CNPnDOjhOzT6IDiZb8ehc5uo7F2ASrYbo0qxLaZrSiHf70LK8MtezQ8mW
         TXgvb6hBqu+jcy5IhqnO8SqqfVZXhM72m3t4ONZGxz/K//hYcLA3r/+gQIzyfLYIXp2Y
         9s2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OWVZ2X+/EMmWu1MEGWEFFviFBFC4lDK1tvCGDpKoGvs=;
        b=GsLbyHUud1wzcvM9mWu3bOKo2nq+LFDMqju1fNVGimmmYBPBPlWO3Wx9pss8lx4yVD
         Rg9fmdmNzOBscPQiOxdjZFzhxWFbconzPwznwpZTqJTIL4o6nfmMsORBVnlb9FiPA2dS
         JR/hgesw+/bwKoKf0iHy08DopQholady/mYYcjzLS3aW2dN5KiOl18xF405nQTzZFjgE
         ZtXQ2V29ykJBttxslj6oiGM918P8MFjXKd2B3PxA4JQx9D/FwPPWbJyXtOe6u6q8mG1N
         V3dcgtBAMHpIe7Au8StusBhcHbCVa9IrKgC8fXAcVqC1Ul7oDlZzw6Z1xfwNFCaXZuqD
         QOug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ns2I7xmQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t187si332152qkd.0.2019.10.26.11.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:02:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ns2I7xmQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5744C20663;
	Sat, 26 Oct 2019 18:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572112947;
	bh=736+3LKuV8NtSBzw5PYMu27jhPpKvZMpTRt5u2a7cNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ns2I7xmQ15+dgUq66GGoqTdRNEHOsz7OTxkXYI37ZVyVgtbTxSVjo3gQqqWUmy3jR
	 zbKP66vg/fgJZZwAsvrCLT2PBZdR5d4iZMV2jzhCMe7vE4EjkLGlimiMde76g163qb
	 rG7IZi6dn2OQZtUaAAK2KweuGVgem/50FiFO06cM=
Date: Sat, 26 Oct 2019 20:02:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>
Subject: Re: [RESEND PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191026180225.GA645771@kroah.com>
References: <20191025233909.GA1599@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025233909.GA1599@cristiane-Inspiron-5420>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 25, 2019 at 08:39:09PM -0300, Cristiane Naves wrote:
> Fix line ending with a '('
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/gasket/gasket_ioctl.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Why is this a "RESEND"?  Did nothing change in it?

Always version your patches, as the documentation suggests, and list
below the --- line what changed from the previous version.

Please fix up and resend it as a v3 (this is v2, right?)

thanks,

greg k-h

