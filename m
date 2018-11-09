X-GM-THRID: 6621495393645494272
X-Received: by 2002:ae9:f404:: with SMTP id y4mr6055302qkl.27.1541785722809;
        Fri, 09 Nov 2018 09:48:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5a0:: with SMTP id g32ls1117779qve.5.gmail; Fri, 09 Nov
 2018 09:48:42 -0800 (PST)
X-Google-Smtp-Source: AJdET5exO/n0j3M8Qp4nojPKcZe3s8/QCx88PVdGmmVadgY1K4vL4ZxKbhT7t/XqPV/VFLgQE6DM
X-Received: by 2002:a0c:93ae:: with SMTP id f43mr6467629qvf.42.1541785722266;
        Fri, 09 Nov 2018 09:48:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541785722; cv=none;
        d=google.com; s=arc-20160816;
        b=SnF5DD7fNvoEYdyAlAYuc3fAGZ/zJXcQpwZRu23KhQh9ZonDNbolFFszYU4cnbozqw
         f9qggxltrminAtBh2EEq03s0zIR4HSVwoOwUGqfgztvO65II2Zm3aJr8Il81U67oiWkW
         bS7cp4KmwRh8/Bcbu/2QuI4Jmi2hCFop4YzD8JYtN6BBfYpvTHoy6NaRobYH+/Bb2n8S
         zfd4mbbvpuDLOb1DenTrBU8+PwkGLrPp/yrt9CutOYXSmzG8qTw7HhLmOStQPepfgbOA
         KrwmdLfMso5c1F3Kq1Xw2L38/Puh455VlzuJDwFxwqpB5DMR9XohVmmBAO08VnBF49Cl
         EC3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=51rInMIqXADXaabUPTbQhPvLPFDB2EjwndtLyg7cglY=;
        b=B8SadRwzGRK4fJrk5UMXjjbAq9x40TgJC46yMviln9H/B7JgCGwbACrU378p1vUb6f
         vd2ZGGexN1UUIfggV1ZAQzcR5URl3v2JQfDLF2Kk4uPOcGDyOH9eqTLGkhyVxGloo8Eu
         TGm717iEAXu1H30pWwLNFZhBq7RESBWOdc1CuiIbzCUJKJdukKbcpp3u4J33/NKXl0Jh
         saArMq7PHcdBeC1yp0jSyfgYjfg+8ABdMSDaBmN8vSpv/1Ra0otRlsMalvcbYL6X4BTU
         HpO8g9y3Nx9Ce7kuHDuBKg1/FNhYDKdAPVtd/CDPNGFoiVNYwIc2U27aiogD8ojw9SN8
         zZEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c857Jus8;
       spf=pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b78si117885qkh.1.2018.11.09.09.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 09:48:42 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c857Jus8;
       spf=pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (71-6-98-120.static-ip.telepacific.net [71.6.98.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0EFA920827;
	Fri,  9 Nov 2018 17:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541785721;
	bh=Gu1OHgbh0M1fPHI2P0EZFF8pMy592nqZFotFbYv/bcc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c857Jus84aTgZIvZMh1BSSBUiCI3gX84Is4jMHqACIxHRSvM0j58AH0rdpCr3CwxJ
	 vMD85EmE2WgmvN1IIfcfzxIgY7PVHgqGYhciIvezyB8PDW/zkpi+h47J8Z3/uMJ9ne
	 ELcrQY6NlDaI6lIlTooZDt6qUaz/bPsaLQh/NSAQ=
Date: Fri, 9 Nov 2018 09:48:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 13/15] staging: greybus: correct SPDX license
 identifiers
Message-ID: <20181109174840.GC5821@kroah.com>
References: <cover.1541771591.git.code@wizofe.uk>
 <24db22595c2d86773211a1f0b5ca1537b341f1f0.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <24db22595c2d86773211a1f0b5ca1537b341f1f0.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 09, 2018 at 01:54:51PM +0000, Ioannis Valasakis wrote:
> Correct the SPDX License Identifiers by replacing the comment to C-style
> comment. Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/firmware.h               | 2 +-
>  drivers/staging/greybus/gb-camera.h              | 2 +-
>  drivers/staging/greybus/gbphy.h                  | 2 +-
>  drivers/staging/greybus/greybus.h                | 2 +-
>  drivers/staging/greybus/greybus_authentication.h | 2 +-
>  drivers/staging/greybus/greybus_firmware.h       | 2 +-
>  drivers/staging/greybus/greybus_manifest.h       | 2 +-
>  drivers/staging/greybus/greybus_protocols.h      | 2 +-
>  drivers/staging/greybus/greybus_trace.h          | 2 +-
>  drivers/staging/greybus/hd.h                     | 2 +-
>  drivers/staging/greybus/interface.h              | 2 +-
>  drivers/staging/greybus/manifest.h               | 2 +-
>  drivers/staging/greybus/module.h                 | 2 +-
>  drivers/staging/greybus/operation.h              | 2 +-
>  drivers/staging/greybus/spilib.h                 | 2 +-
>  drivers/staging/greybus/svc.h                    | 2 +-
>  16 files changed, 16 insertions(+), 16 deletions(-)

Not a problem, but why did you split this action into two different
patches at two different places in the patch series?  Next time just do
it all in one patch.

thanks,

greg k-h

