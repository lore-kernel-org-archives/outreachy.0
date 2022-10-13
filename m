Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1902D33C5
	for <outreachy@lists.linux.dev>; Thu, 13 Oct 2022 14:59:32 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id k2so4553579ejr.2
        for <outreachy@lists.linux.dev>; Thu, 13 Oct 2022 07:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/tNLPuj0llTCwkn+Ti9i//D1hMTZZaQramJPtYu10g=;
        b=WXO/Mg/p+tlLwOE565aO4NA3EZQGs09FsfOiBGx/b2hUhwWS7PwjWxNQtDcGo7Y0Hy
         oC2gihqt9VOMHmEix1WXTtwpdd5QqxqIyy0wBW2Y6Jt0gzNvJYVMtw0jw+cd7ZpLtnKe
         odhs5ySQ702BhXqY/vla8hxDmCeBSxZX507jNwJxhKnJHPsakuRT+/TzmzWyRKtN06nn
         s6Q/hJNb2/DQ2Bz/d5BByLxR7J6v+kaaTDPnPWWJGw+8ZqLaTCBPSFE1y8Xbkp344/RI
         iCDMgseKRlDGg68FKEGYjRGwOvyVeR+gUrCqfJgPvHJcT6lPPE38YTxoAeYw9KMnrqJj
         gjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/tNLPuj0llTCwkn+Ti9i//D1hMTZZaQramJPtYu10g=;
        b=QosGfcrZmtQdXWckCs5gvfeXjpxpzJ07HBz3JSP6GXIfMCGsxf+TCunn10rlOuR/Pu
         +yi+jIg1oEnZHmRRU3tdZisnDi/IGvb4Fs+CF1tEI7CcifThEvor6oqIiK9DTIaj6bb8
         To6JAUnUjr3rSbjvMLLLT/oxavzUEvyRLVNv3MvZ0SBe19K3xTE0Az9K8zNbC3vLCVMJ
         KV/6LSv5dW+0jqaGKDgqu2XUpTqKsLPD3Ubv6NXyFWZ+4srutTtlAxBb70KrBquHH7bi
         SR1LL83yCdUyclVuYfC1Y0Y5HyNtQ+mwM8I/p2GQ8D4h/c+GVUZatUnkNwherm7Pab8I
         StPw==
X-Gm-Message-State: ACrzQf0BZPNfa3A8o9fIwdgeVg/Wto6gEeCLZbNU0EFMEvMYiktibdJq
	ibiIaXcdreE6+2RMrA69hzc=
X-Google-Smtp-Source: AMsMyM4TyIseFGWIBVYvL5ZsHc+9LW8d3Pmht/SpYCOHFyJFBuGwfYo3HF+GzwT+YlCKvHnaNYGdXQ==
X-Received: by 2002:a17:907:31c9:b0:740:ef93:2ffd with SMTP id xf9-20020a17090731c900b00740ef932ffdmr130417ejb.584.1665673171175;
        Thu, 13 Oct 2022 07:59:31 -0700 (PDT)
Received: from mypc.localnet (host-79-53-189-63.retail.telecomitalia.it. [79.53.189.63])
        by smtp.gmail.com with ESMTPSA id i5-20020a170906114500b0073d6093ac93sm3246881eja.16.2022.10.13.07.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 07:59:30 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
Date: Thu, 13 Oct 2022 16:59:38 +0200
Message-ID: <2118793.irdbgypaU6@mypc>
In-Reply-To: <Y0ch7rDCJoTKgMac@vivasvan>
References: <Y0MKHfWsqsh4S9ld@lion> <Y0MnTOcGeoVeVIXg@lion> <Y0ch7rDCJoTKgMac@vivasvan>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, October 12, 2022 10:22:06 PM CEST Deepak R Varma wrote:
> On Mon, Oct 10, 2022 at 01:25:56AM +0530, Deepak R Varma wrote:
> > On Sun, Oct 09, 2022 at 09:12:37PM +0200, Julia Lawall wrote:

[snip]
,
> I realized that working with the certificates is very complex. 

I entirely agree with you :-)

> > Create your own secure boot signing certificate without such an EKU, enroll 
it into either mok or db, and use it for signing.

Time ago the following documents from openSUSE finally helped me to understand 
how secure boot works and how to create and add my keys to boot custom kernels 
and modules:

https://en.opensuse.org/openSUSE:UEFI
https://doc.opensuse.org/documentation/leap/reference/html/book-reference/cha-uefi.html

After some time I realized that I don't need secure boot enabled when I boot 
my kernels and modules on several QEMU/KVM VMs (the guests) for testing 
patches. It's easier, faster, and I avoid the risk to hang or bring down the 
host, or worst, to corrupt the filesystems in the partitions of the "real" 
machine (the host) (these days my tasks are related to converting call sites 
which still uses old memory management API across the whole kernel, especially 
in file systems code).

This way I still have an host always booting with secure boot, and several 
VMs for testing patches for various archs (32 and 64 bits virtual machines).

I'd suggest to not disable secure boot in your host, since it's really useful 
for whoever cares security. Instead you should run custom kernels in VMs and 
just disable secure boot in guests.

Regards,

Fabio




