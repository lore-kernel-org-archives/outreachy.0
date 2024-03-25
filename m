Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DBB4A28
	for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 17:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711388779; cv=none; b=CsSQDRkH0BINCa1Ac28RHEsvEuWRBD9Ug9fbiJxyxOYUCWI8o988yi6wuRJRCIAKnZ+0SaOA6lsWUP3k0FJGZ7cy3yUhgWqpxpMD0DREh//awmHrl2AAJM550GBvDhahd1rSVCroPkwZgLnvdSSuhW0amEv6/TA2XAFK0Kq6wFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711388779; c=relaxed/simple;
	bh=vdR2Ct/2vJ1Tp1sljJPBy3o/6JoVN+EFn9lQB2Uyhb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UlSuHPek1xGtco0f3Kn26+G0QFR8zD2BtqSlAtSMZ15hTswo8/bAj4rsqhCEyiFmorGtYKUlDEle3SRzezGm0dcChXsVS7gEE66Vh6hDpES8xbT/Sgb5FMMYXDsboDVXaV0UjL56aelp6GPPjZxrqdQV6GfvG+o9oaSPc1eEqVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ElEhzZCc; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ElEhzZCc"
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5a56a22004cso194493eaf.3
        for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 10:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711388776; x=1711993576; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OW0h6Jz54NBOP/j8FwUEDp5zhdnVGPm3pq8zwA6fMyE=;
        b=ElEhzZCctpzqGAOdrmoTPBhLIZCHuo9VzIAytN1S/DsLeF8nRXTnRDUyfojIQo/Ia3
         /7ntSbyxQU07Njlc9ud6Aj/AO6LUJDe0xIaZZZqj0QvNRgL2ZGB6ULTdTRglpJnEY74n
         Aoz7n5+XVARyFo7KRdHbXTpu8Bq8mNvq4d1gzpY8cVmB5oppCdDDg4xEoLdXdWFLUJkq
         Z1/rPfhrn9h+fV10NfihG0c2G/LugbS8m94RU/DD6xDiTCfFbPvDq1xZEIKklTvQSGln
         hdH1unvMWdHeHYZB+DTJqcumZFVg1Ywun0YK9kyITAEiPThwB2SJHwc2g8+pkgv8LpjD
         j8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711388776; x=1711993576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OW0h6Jz54NBOP/j8FwUEDp5zhdnVGPm3pq8zwA6fMyE=;
        b=AzRzaNGlWROJ7RzrhoADu44yVM6B+/jNoR1pMMJEalDKuyEARaIy1e/k6vXKhXN13h
         yvZ1wtUlenGa2/hobX8+yoLkERRlu8p3hWc4gbWhfozf3MtJsXxlmriqpmGCB76xMIQ4
         zmFPrr/EMRnblFkpWMOe0k9LR5S4iN6bAine3TkiPH05lmfF0TQ1N+8eHgUPu2wwL/RJ
         Iv4wvpcqH+2oyDSYU2rYgHan6FOwVmMCdudz6Plxk1ZcVRmcVYBEAP04VIR6HKIam2Vw
         zeVL0JxyY+CgBosrTkR48fOa32WpiD5FzSF6/XYDpGnpcAyJpvZUpVflo+XKOHhEdvyq
         6tjg==
X-Gm-Message-State: AOJu0YzGOtkNJR7gl3GO+OTxjC4YenAHf1hHtE/YT5FAoQQ5ojXK4zQp
	swjE1I6H7TvIkDFECtEZf0t/vKSmT+umkiiQjFCQPbV6opwkE3bDJJfFF/Znkjc=
X-Google-Smtp-Source: AGHT+IEFe25ngEKv3smVE0dg5LWXv4fRi5/jFgGNt3wDKfSHucUHw4v/kx9KWTBuqrwMyYQmrrGBaw==
X-Received: by 2002:a05:6358:71cd:b0:17b:304f:b3d with SMTP id u13-20020a05635871cd00b0017b304f0b3dmr7832146rwu.23.1711388776404;
        Mon, 25 Mar 2024 10:46:16 -0700 (PDT)
Received: from ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx ([103.6.158.65])
        by smtp.gmail.com with ESMTPSA id q9-20020a63e209000000b005eb4d24e809sm6125677pgh.34.2024.03.25.10.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:46:15 -0700 (PDT)
Date: Mon, 25 Mar 2024 23:16:11 +0530
From: Ayush Tiwari <ayushtiw0110@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v3 0/3] Trivial code cleanup patches
Message-ID: <ZgG4YxSmcPQ9zzRl@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
References: <cover.1710965653.git.ayushtiw0110@gmail.com>
 <2024032552-ardently-colonial-8502@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2024032552-ardently-colonial-8502@gregkh>

On Mon, Mar 25, 2024 at 06:23:30PM +0100, Greg KH wrote:
> On Thu, Mar 21, 2024 at 02:44:51AM +0530, Ayush Tiwari wrote:
> > Address different kinds of checkpatch complains for the rtl8712 module
> > to ensure adherence to coding style guidelines.
> > 
> > Changes in v3: Fixed issues about backupPMKIDList and verified with
> > CONFIG_WERROR set and built the kernel.
> > 
> > Changes in v2: Checked any possible reuse of backup_PMKID_list
> > manually and rebuilt, rebooted the kernel and loaded the driver
> > with modprobe.
> 
> The subject line for this 0/3 email does not give us a hint as to what
> these changes are for.  Please resend the next version with something
> like:
> 	staging: rtl8712: .....
> 
> so that we know what to expect.
> 
> thanks,
> 
> greg k-h

Hello Greg.
Thanks for the feedback. Sorry for the error. Sending the patch properly
again.

Ayush
