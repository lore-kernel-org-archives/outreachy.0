X-GM-THRID: 6748170899726270464
X-Received: by 2002:a25:2d49:: with SMTP id s9mr1173234ybe.450.1571971712132;
        Thu, 24 Oct 2019 19:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:68cd:: with SMTP id d196ls1259455ybc.13.gmail; Thu, 24
 Oct 2019 19:48:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWZAQq2BcR9xLueFUE3lgNqrESbpqeOd3lurglBd9qxAkr8XO/QmSCohomA75ejaFAn/4j
X-Received: by 2002:a5b:ac1:: with SMTP id a1mr1247966ybr.237.1571971710612;
        Thu, 24 Oct 2019 19:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571971710; cv=none;
        d=google.com; s=arc-20160816;
        b=tAtqiAe4a6ABOPmVePe+CCBryuHk5rAfxybrAjaITb0UtExeR2S1AuZm+pCvafM065
         zUjNj++lPV58Fq0+uka0XzP8WBKbIQbEWAZjl0naMhUdI8ahcO/TzUrEcWxutGrLkowr
         LB/F+erpced9Ct1R3t9DvmTL1sVKzA3l8NrfW1qdkWt/uAT/CH55wiFtt8X6knwWtuo2
         jQM6ZxyBbSA/z7lhadgtIqAuSMxiO5o6l2Ts10IsUxQFrNBojfduv/UZlDigDY8BBENw
         FcgKZp1tdUZ9QmSes1bWv3POwleYJJa+4YaeXz0tf5jMpIeXcs9yIcrtrmUlUuyUfjTt
         inoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hIdUzPcsl2xLqc0cWsW6YwHgrqgDEDnz9pyxajDHr8g=;
        b=QXGjLhSjrfw+6S1jxjinCv6j9DLUOsqXRrLs7RXlVwOk8yxg/83hdxJD6hBQDiK/D/
         x6kYzkh+rhKBRqL7572AtkbVNBuQwjyp0/ZI21XYvbNvVVep5Wn+wKsuU1fr/gbN2Kau
         /4xf3SRgVybWZXrqjo2tFGElv7Td/Pi9zv9kBDJd7SdVjJ6g836C6kKMbET284cNBPNY
         FSfj2GMPmAMQjs9L+9A0JsqNZ1fWFQk/cvXlnNTcORXzr0+pA22U192qg5+XJvFzwlcl
         iCa/C8/+pvoESHy5q1fAU77s6o0zkmIRDUkRIqGykojGk20nle2Ezij7DSLncds2py5c
         1LMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TDzhOoB0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u8si54223ybc.2.2019.10.24.19.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 19:48:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TDzhOoB0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 45FF521D71;
	Fri, 25 Oct 2019 02:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571971709;
	bh=YjIrWYi+vq47WqR5MSAO03FVUzkLa1Xz/MTdPOUAoMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TDzhOoB0Qe5Ftev/sS98DxeVb7fInMY1jJghpagE8EWRAVSaRFhU74QDCu7wnn66+
	 M2Wut3on9i4CjvY6rEFQ4+F0xdXE+FxPKpAuHOD9miNQfXFMbMgsI9j1h+CvgwY2mE
	 xxrpQ6ZvN3zg1cNmlE2oJdugoCTkIYYRCdh+Riqg=
Date: Thu, 24 Oct 2019 22:42:05 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, eric@anholt.net,
	bcm-kernel-feedback-list@broadcom.com,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Subject: Re: [PATCH] staging: vc04_services: add space to fix check warning
Message-ID: <20191025024205.GA331827@kroah.com>
References: <20191015230922.11261-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191015230922.11261-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 16, 2019 at 12:09:22AM +0100, Jules Irenge wrote:
> Add space betwen operator to fix check warning.
> Issue detected by checkpatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> index dbb6a5f07a79..192c287503a5 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> @@ -163,9 +163,9 @@
>   * by suspending parsing as the comment above says, but we don't.
>   * This sweeps the issue under the carpet.
>   */
> -#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
> +#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
>  #  undef VCHI_RX_MSG_QUEUE_SIZE
> -#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
> +#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
>  #endif
>  
>  /* How many bulk transmits can we have pending. Once exhausted,
> -- 
> 2.21.0

Path does not apply to my tree at all :(

