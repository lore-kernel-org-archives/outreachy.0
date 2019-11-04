X-GM-THRID: 6755177272483774464
X-Received: by 2002:aca:5942:: with SMTP id n63mr834735oib.56.1572848593826;
        Sun, 03 Nov 2019 22:23:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls2613758otf.14.gmail; Sun, 03
 Nov 2019 22:23:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqznBkxWLOlJa1qQqAZjX2itXDNqzvQK79aWZzeXCDfHU2HnbT6uqwjPv8BmThxCrVt3id5x
X-Received: by 2002:a05:6830:1d74:: with SMTP id l20mr657001oti.111.1572848592872;
        Sun, 03 Nov 2019 22:23:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572848592; cv=none;
        d=google.com; s=arc-20160816;
        b=g/mziQrCGLj+KuS+7BeXRd/G923DO/DUNsxBG8pc0ueDsXLZT67s3ZJao5yn+T8kGg
         LA9Q/hhYiXo6YJT2WFvrMlY7UIA8P6v5FkOc+Lnji8cTnnqZMIfpGXa5Zrq1hD5o5jtW
         NBlvxAhC6bdrlFOOnOVV1vcmM3ZtfcybKdMLYjHbhrxG/OFsQ/3LxUKl1jDEpvs4yYds
         12Xga6epw8r+9lKj/RWHHWoT28h9L1ESEydJoK6BfM6t0pqbblLmbqr6HmbY972FD+IW
         GnR1S2fVZ1M9/q/3T7ablEteb8zYhGeX1revV1irdBm5+PKWaDYgq/FhmgYzdpXE4ViS
         Q1ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uhcOnlbLDxFLRK1F9JvnZVMtlWBUchiiuxXUziFaYHc=;
        b=VFjZxZiRCMkkl2m4Af1TcfBhKc4rsHdx7J5ihJ8UZuacKEbizGcd1zHKEC+fO+q1fP
         0nuRXDrZ+jVbfPcPiO+CkWUf57fi7VIDIhVPUDRa/6TrF1nsJMZwyCp6D+jK2zYy1kT1
         iVZ45m/rPx7O42/6738xLw8dmI6/nZRrJkw5lgQRDDIeS+yviJg9kgfdAtBmUSpSOiWA
         at5cCac0TFCXC1MgTyR2bjIJOI3wohnzrWkb/FjX0gS4F+poCWrm5uTQGby/xymTMm/E
         r6n6EwgVtmrqd+oj5xADlN9PrfxNrqiytvbfcmk8qwi04piT2VqhHE5iLQqr5DJqX8iA
         yEYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EXBcrR1u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l141si851345oib.4.2019.11.03.22.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 22:23:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EXBcrR1u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E741205C9;
	Mon,  4 Nov 2019 06:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572848592;
	bh=Gkthfnpb5bc9pHeOdQmfpK5yCvKeGM4OmxPXu05Jv1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EXBcrR1uPztjapY0P/zr+AT0DodsaABkHVd1o5JB2ae0alTbr02Ej34apvLlmkgRY
	 c5F5WVGTKZeq90bVxtTXXY7QpCzG95JlSdcBD3GfuAP5T1PkgXfFyUUO9bH8iNz3Eo
	 HfqeqmfgmyhAxH5Qso3kB66MwNIrxpaoguqqxkbE=
Date: Mon, 4 Nov 2019 07:23:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [PATCH] staging: comedi: rewrite macro function with GNU
 extension
Message-ID: <20191104062309.GA1119067@kroah.com>
References: <20191103201740.25415-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191103201740.25415-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Nov 03, 2019 at 08:17:40PM +0000, Jules Irenge wrote:
> Rewrite macro function with GNU extension
> to remove a possible side-effects of MACRO argument reuse "x".
> Issue detected by checkpatch tool
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedi.h | 6 ++++--
>  drivers/staging/wfx/queue.c     | 2 +-

Why are you modifying the wfx driver in a patch for the comedi code?

:(

greg k-h

