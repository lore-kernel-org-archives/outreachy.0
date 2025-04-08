Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BA026981E
	for <outreachy@lists.linux.dev>; Tue,  8 Apr 2025 10:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744108620; cv=none; b=L8VFvHgo8HHvkf2EQWpH+KlVpwjVyFoZnGboWjUz9el9Jwe8JVTRkduaKvhjWriO+xg5Kfw8+gj/zw39DsNiM5Ad9CcmHk5Ne9yBxGTpKCo7aobV9hwtxLsAk1KkVyEAPRQmR1Ej5V1BLUMjK8NKoLG/tMLP5EToY7Dce54+CXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744108620; c=relaxed/simple;
	bh=z6yPF9uOlyPYwnYcyCbUHbrjMWRaBMiD7QCPSnGxte4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BzX9uOXj6K3GNvvsxGJbMj5wrnXxOYlDNi0DrNtKK3Cf2Kx+4fDbeJqx1an4x4KJ67Od+21OzoN9ugjpqHhO+lZo8x6rPNWYrJHiohAbNUnZnV27yjgH0rosUgtfzDcbB20HM77hReu2/MzcpSWkZgeBVwmJxrxH4a/Og3kbBrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rBGKhrvq; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rBGKhrvq"
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39149bccb69so4991418f8f.2
        for <outreachy@lists.linux.dev>; Tue, 08 Apr 2025 03:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744108617; x=1744713417; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sG5zgBeaBnx+L7h2Ew9MdPNsbBnWrTWwGOQbfcDyH0Y=;
        b=rBGKhrvqVBwRFaLq4uPadeayCIEXTRhmfrSqN5n2Jv5KM4bjsC5+wYfeKIHEd2SFi3
         WhIAx+xjaD66z95tRnn72pcySxxnlAOnNXSVAf1v9sI5PEpmIw/7oCwhOqFXPlnoTgxy
         DjkZsDi+6/piUrrLrk7urVPynRHCCBuHbTiANjwv4M3+kJ9a+vlwW6jlvilkpSWGk7gh
         cVasXZQUCfQ0QFHy+T2FR+V1C+L5lPNbIgyrsokg8CJfMR4dJmFnvXt/SIP3n/erw5O9
         9ZOPHMLduDOeyvhWwo2sc5wlYNdAolyd1b6+1MT35NH7e/83iy+cageXlALHDx1g7wnb
         XhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744108617; x=1744713417;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sG5zgBeaBnx+L7h2Ew9MdPNsbBnWrTWwGOQbfcDyH0Y=;
        b=XUEgvRKqY8X06Xv8CNGl9965qivfZmtmMCEszt4zdoLSCaRmRLXdbbBNIu6oCtH+vW
         nrhxMRPPSJmkH+4iGB7iFPLq026SYrt81BrC8qeIZMAwAodo6ogYSPTTzLypgn23eZYA
         Bv8gS4ST4sMb5T4Vu95ElVvMwsDQCI3P4Pt2AzacN39GFwJTI14poM7xkF7D+VsOwngF
         WOgWTC11XvjxkrvYcT9kUIIDzF0rCjvxe737AN2SCUXGVuvaWXB/nXQcfCiVbcpFb66I
         l1dKiTK/c210iBJuoHJl3N0gTbhk3K3TDduyTcXz2eORHnnk282u5Q8KxO8NdNbrfaJ6
         Ec9g==
X-Forwarded-Encrypted: i=1; AJvYcCW3rmXNEvGymKSgs5yzb0xdkkro9VqWLLLSoslFfnPzGFVZqYameFUa/CtfiSZvqz+7s8ua/y5BeXU=@lists.linux.dev
X-Gm-Message-State: AOJu0Yxyz+8YeJU8VjX7UOz4LLmJe9LzrzIhcHk8yc2VmApM5yzRS00A
	cTOI2Vti+5gVC2VkYjbKW0L6BhWBXYXuXoy6E83YDFCQcJlihTJHxTg31tyjfYI=
X-Gm-Gg: ASbGncufYA0FdGgdqNBytPoy3lto4amKFdAHKPLT35inTuLCzcnUPLcmpAgyx/JeD8w
	TG8M+YEWB2QdFBMCj5MqufzeVc9ILfjBDohk6EbXm7o6/FdVfgVPHEKAX4pegyGTdC37eSfM4wn
	yLgiVUVndy34bbLtmVKbIdE6C5/+Dqqw5qxK7NiRjkd01AtyzUOyO+EkmPWDks0RcXSzlnQeFsX
	+3neXuKb9E+rQUjC8YOMPQxgMw0NvkQWyRcsfQBMclLzF4HqDgK1qhtiV9ounV70RM5qRLiHZVj
	tbqLuTGQ1je3yGfRxetlbdO8DFV0zb4nWexpP0g6nQ0uRzNSGmPOh02HC67+
X-Google-Smtp-Source: AGHT+IGtPTU+zuWSgGfB7w18BXvfTFGqbzfm5r9SrIrzLuQfA8Y5CPDOZv1Q0DcjrDiDvt4vtBbAOw==
X-Received: by 2002:a05:6000:2509:b0:391:2fe4:de0a with SMTP id ffacd0b85a97d-39d6fc0c1d6mr8986003f8f.2.1744108616902;
        Tue, 08 Apr 2025 03:36:56 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c301a727bsm14422827f8f.27.2025.04.08.03.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 03:36:56 -0700 (PDT)
Date: Tue, 8 Apr 2025 13:15:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Samuel Abraham <abrahamadekunle50@gmail.com>, outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org, julia.lawall@inria.fr,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	david.laight.linux@gmail.com
Subject: Re: [PATCH v6 1/2] staging: rtl8723bs: Add white spaces around
 binary operators
Message-ID: <b89c8837-4aa1-4073-bb09-f71f37b5dcc6@stanley.mountain>
References: <cover.1744061673.git.abrahamadekunle50@gmail.com>
 <4ccdbfd3e8d74d99679927f294f71cfb694fcc6c.1744061673.git.abrahamadekunle50@gmail.com>
 <CAHp75Vfp8Je1fUavSwTDAM_5_rDaDfXETa2oM5f0CjL1mxWX_Q@mail.gmail.com>
 <CADYq+fbh=kG2JABmdF8FjjPiyigMpnJ7WhQh+faqRk6FJe4MBQ@mail.gmail.com>
 <Z_TtyXwkOBK1MXGy@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z_TtyXwkOBK1MXGy@smile.fi.intel.com>

On Tue, Apr 08, 2025 at 12:35:05PM +0300, Andy Shevchenko wrote:
> On Tue, Apr 08, 2025 at 10:22:44AM +0100, Samuel Abraham wrote:
> > On Tue, Apr 8, 2025 at 8:20 AM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > > On Tue, Apr 8, 2025 at 12:54 AM Abraham Samuel Adekunle
> > > <abrahamadekunle50@gmail.com> wrote:
> 
> ...
> 
> > > > -                                               psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq+1)&0xfff;
> > > > +                                               psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq + 1) & 0xfff;
> > >
> > > > -                                               psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum+1)&0xfff;
> > > > +                                               psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum + 1) & 0xfff;
> > >
> > > You mentioned Linux coding style, which also requires lines not to be
> > > so long. These lines are. That's why a few versions ago I suggested
> > > you to change these to be two lines each. I don't know how many times
> > > to repeat this (it's third one).
> > 
> > Okay, sorry
> > I will add a third patch for a line break before the patch for %
> > operations since each patch should handle a single thing.
> 
> I am not sure you need a third patch for that. It lies into category of space
> and indentation fix.
> 

Yeah.  Let's not go crazy.  Do the white space change as one patch.  The
rules are there to make reviewing easier.  Splitting it up into three
patches doesn't help anyone.

In staging we say, "Fix one type of checkpatch warning at a time."
That's because it's a simple rule to explain and it stops people from
sending us huge patches that fix every checkpatch warning.  But this
patch is small and everything is related and it's easy to review.

regards,
dan carpenter

