Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D20C4A3F1B
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 09:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792401438; cv=none; b=oVf4VIZUYAjNePBGG0m3oNM5hc7PAm/vo0D7vMDVv8g9bvYEuoRCkp2g948giOCoHo9ORaF/sguol75C7xIzdKV8vMUIk2/4m6T44APHDZb38mG2c2cUmTNgqblGDUF9hvH45V3ILBLOzgtHA1F7yGbHaPqrelM+r+V0Y9iEexc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792401438; c=relaxed/simple;
	bh=JGCN14DSdkaYDz0L1wUcX1YfgAZpVl0MxngkUJepzpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h+LFnx8XgE7Po0r2w2EKcFfID9Gw0gj1l8GXHiYpzCU5FPO6NfMPIZKyJXQ5r0+nscLsGd386tOtGfGn6UuJQud/Rjl4GkYHpVBNtLsvfQknRf8QT+zRA60DtG2xdTFNg7QlzbnGc3hHIPIvcZs5J4WXoKM2Ez5slSs+rTllPJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=igX51SSC; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="igX51SSC"
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-3535bf8b3e0so3923162eec.0
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 02:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792401436; x=1793006236; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+GGRHuFuy9q3u8gF9aGqTkLAN78SoDlwfASLSUJHutQ=;
        b=igX51SSCkKQvXTkwqrkcKVeQwfY1UsGJqb6K/mpIFRAtg4OuTYk6lwbn7hGqvJPV0f
         /L0zntNF9+I0zoeh4qpI3TgHYEkdiyqwBGeEd5mPRQOMNnysJHAZeemy7ytBAk2HwITU
         nPQLFP8e0siP2boGagJgFZgsFiFBwdN8/nSh+4AsvrL7DhWb4pnUj+psTOGQVj4hqvUj
         p3PdgQasZqTHN3VVFUDVbec/yfZweRk/CgBcU+E5O+ozNVVhzBzNxfTgnPlZvplYzyB0
         i1gYXwcybv4gKkl/RIUmb8OYDRVSrY2yDnxTTAnXhv36kr7771+KxOehEHv5tXvq9jRB
         1dgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401436; x=1793006236;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+GGRHuFuy9q3u8gF9aGqTkLAN78SoDlwfASLSUJHutQ=;
        b=pH+WmpQm/8K3GxGOQBoThr9C5G+sPyo2kUs1KGHS2GVrwDXqISDT90ixiq202y0r5J
         HrsqyGtwW4GZNWvnrDTX3y3gNP5qnaSjjIS7ortSGYvbwVyKXoJID+GCUeizDuO3qBBG
         Q69v5xxsBLiYHAiiHwXCEixyxC+mAcBvtwbaW+i/FBLkJ+j5Wa/II8addQHomanz8Lio
         DKapfdKldongAGByXirOEBlaNr3V/yhu5yQqkTa5yXc/aUISgeqNprft1NbHrQCb1dNB
         C536yz7OXBuSfbyQyQIDYREdLU20kMG9jO+WKLOcrCVQGBMSuD+EF/iKXMHY+ZVtECXt
         Mk7Q==
X-Forwarded-Encrypted: i=1; AKwUvBz9XqAnRodVVTIw3qiVqkfWrsEnzhJKtKO5s2hiJ/dnJRuv5Yga/h/GpgQjZFKcKkd/KQD9v/VxDVo=@lists.linux.dev
X-Gm-Message-State: AFq9FYJrh0R4zuuUcYsxbrriln3md9bCM09BEZks2KReW1MHwZFqAXtk
	SU65YTwqkQNu5tmLOzLLL4X0hv/ZWR8wVWSM4ChPiSiiAMOKOHcPEqsf
X-Gm-Gg: AYBFou1bNym9YC/FmC7jhJcExSOEd+PVHHZiG57P6ZPJc/WN0dFtPPONpiRaRP1ds/2
	y6/QXpe3/NbICOFO07XhCXQ8zmdCS2+UWCT2GrIBGnQdL4AW4ecvozVF56U0N35dxDzmzEyyYv+
	4m3r7NTbZ864sSwa7q4tSI2JPlNHnNEh8GXE8mO7TFy2VQgAmjvYRBKfL276gaeWR3B75dt5qY9
	c+73DiqbczE1QTAzK++g4NY1v1XmBOk6Db7iJLdHwF0mrbcSZ0sTTSY1ZgIckhcdi0Qlg22tZys
	IG0M+/uDC163SeczjpOK9U9niVQhw/DuDmURUM3pjuueyL1YQEwvZvEG3BHn5/KUI0JfHTzY5ic
	dfTICxam5q9gqlftGv6QRCQ60g2Oong2imWF1zbkm/WAUwOxDRuXAnQ2ndy+wNrS97RyCmhDtjF
	KBB+qgBTxdIxtv2sHWb+ddWCIxTLWPk8OJZ9QrXsXjgP1uHI+5W/1nAou5l0YcrkoFxJ9YnXfTy
	cM1hsvKHR/J4khV
X-Received: by 2002:a05:7300:a9c:b0:353:5908:36fc with SMTP id 5a478bee46e88-361a1b517e8mr10639911eec.17.1792401436187;
        Mon, 19 Oct 2026 02:17:16 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:3246:597c:c4cc:181c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36081ea7e5csm29714408eec.15.2026.10.19.02.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:17:15 -0700 (PDT)
Date: Mon, 19 Oct 2026 14:46:52 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Johan Hovold <johan@kernel.org>
Cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev, elder@kernel.org,
	dtwlin@gmail.com, vireshk@kernel.org, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Alex Elder <elder@riscstar.com>
Subject: Re: [PATCH v5] staging: greybus: use %pe in error messages
Message-ID: <atXgBFNsXG6w30EQ@user>
References: <20261018084925.11793-1-pavankumaryalagada@gmail.com>
 <atXDvg_u1hQAZiYX@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <atXDvg_u1hQAZiYX@hovoldconsulting.com>

On Mon, Oct 19, 2026 at 09:16:14AM +0200, Johan Hovold wrote:
> On Sun, Oct 18, 2026 at 02:19:25PM +0530, pavankumaryalagada@gmail.com wrote:
> > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > 
> > Use %pe to print the error pointer directly and display its
> > error name.
> > 
> > Keep PTR_ERR() calls when the numeric error value is needed
> > for returning the error code.
> > 
> > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > Reviewed-by: Alex Elder <elder@riscstar.com>
> > ---
> > v5:
> > - Drop arche-apb-ctrl.c and arche-platform.c changes because the
> >   files were removed.
> > - keep only the uart.c change, as the fw-core.c changes are already
> >   present in staging/staging-next.
> 
> The commit summary (Subject) is a bit misleading now.
> 
> > diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> > index d47f00751e7a..74c9898c0eed 100644
> > --- a/drivers/staging/greybus/uart.c
> > +++ b/drivers/staging/greybus/uart.c
> > @@ -956,7 +956,7 @@ static int gb_tty_init(void)
> >  	gb_tty_driver = tty_alloc_driver(GB_NUM_MINORS, TTY_DRIVER_REAL_RAW |
> >  					 TTY_DRIVER_DYNAMIC_DEV);
> >  	if (IS_ERR(gb_tty_driver)) {
> > -		pr_err("Can not allocate tty driver\n");
> > +		pr_err("Can not allocate tty driver: %pe\n", gb_tty_driver);
> 
> There's really no need to print the errno here as it will always be
> -ENOMEM if we ever hit it. You could even remove the error message
> completely.

Since the error message is no longer needed, I will remove it in a separate
patch rather than in this revision.

Thanks,
Pavan

> 
> >  		retval = PTR_ERR(gb_tty_driver);
> >  		goto fail_unregister_dev;
> >  	}
> 
> Johan
