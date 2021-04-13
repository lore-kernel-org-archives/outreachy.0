X-GM-THRID: 6950672534035496960
X-Received: by 2002:a62:187:0:b029:241:fc67:d41f with SMTP id 129-20020a6201870000b0290241fc67d41fmr30197570pfb.55.1618329977013;
        Tue, 13 Apr 2021 09:06:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls9832251pll.4.gmail; Tue, 13
 Apr 2021 09:06:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyib0cgZxze1FokUcud0pTm15eRATa9cSbhORNjgtbu9iAehEpz1SSmMIVbWU9llmyIkj9f
X-Received: by 2002:a17:902:7c88:b029:e6:f006:f8e5 with SMTP id y8-20020a1709027c88b02900e6f006f8e5mr33670420pll.1.1618329975764;
        Tue, 13 Apr 2021 09:06:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618329975; cv=none;
        d=google.com; s=arc-20160816;
        b=EnEWSX2FsMRVUwiz/9GER8KaWCm3u/ObzvPv+Y61F0o/E6CKAdFccgZ/IaxLQA++Om
         AfGzsPZTIxk3w2DtKLuEijrSkFTEI1SbmBVpZxViwB1XgbbKiXN2FiIZ78Chk4jtpxa6
         fXxi0vwYho4S3xQ0UUpEudL6gMkvobrDJLJFXnGr3Yb7Hd7yLeqibmb1OFUeStpkKaiF
         iejvyStEJvpc/g+ApNI/oHwlaCZodSBVOg5ZfUTQeDyrsHLtuP+mjtMQNsgFOPVtRPDa
         F2pm0C8pBWE5Lm+VtYSPqpXNp+FExq22WJsLQACZZBVvnnHqgOFJCEcjhDalBvuS0tIm
         zNMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZXx7m9DkQUuExsuJpCDUVeOzu+0/uj69eSEvU+Wzh94=;
        b=MRtsM7+7mCL8c9376sefezzXpuBJJoyk6BSv4c/Wkg5HGt9Cq0aA6RGkNX+6KC9VSs
         NPczqMxz8h9ExEvHvwh8aRn1jtDaHh/NdpBm7owy6Ac6IczkRlUkPM58UhJ7399idz0g
         Cwk3OmRrXIREFci09dhedJ+FV/vPSVtqc76r+jvBOGN4YdyQ6gMB+tz6ZHZ6G2m1Esk0
         k3QZpD20tm5WaB89N/YFN0uSAEQ11Y5lDFivaAkf0Rz8n1yIFYdM2wket0kUybaIq8WK
         DfUyqAPYuFRJJT8Pi8/nMMgPm6zih/ebuRqsDYlvRwDu4JQAOj6ZRRRkZNiKe9kIbWZp
         AC8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RMUaFgkd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p2si943742pli.3.2021.04.13.09.06.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:06:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RMUaFgkd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCDB360C40;
	Tue, 13 Apr 2021 16:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618329975;
	bh=iVk4ofLtaLgfxOuElcRqpxORDJL5HmaPNe6CvxJHhhw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RMUaFgkd6B45Cczvm272yabgUdJA+06hW6PZ3pfrR60fNoDghNoQgFPyF8WO/NZFF
	 s/+5agp31AB/wtqz4Bpyrsm7x641Xfo8noLe+qMUzthidL6mpegw6yGi+ncjWmjpjn
	 OUOdVgqmFkSQMcR2HbrdqQj9Gtk7y+i9q8eqprW4=
Date: Tue, 13 Apr 2021 18:06:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <YHXBdKuEHd1LcxVG@kroah.com>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413155908.8691-1-fmdefrancesco@gmail.com>

On Tue, Apr 13, 2021 at 05:59:08PM +0200, Fabio M. De Francesco wrote:
> Removed the led_blink_hdl() function (declaration, definition, and
> caller code) because it's useless. It only seems to check whether or not a
> given pointer is NULL. There are other (simpler) means for that purpose.

But you do not actually do that here.  Why not?  You just removed
something, does it still work properly with that removal?

> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Why the leading ":" in your subject line?

> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
>  3 files changed, 11 deletions(-)

Does this patch require some other patch to be applied first?

thanks,

greg k-h

