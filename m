Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9ABF9CD
	for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 20:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OcY9SFf8"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-31427ddd3fbso3387613f8f.0
        for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 13:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697400714; x=1698005514; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BQsXsWLvN35QalqC7CZzQ/+URZcJ+/xwJPOBk4OOhbk=;
        b=OcY9SFf8D7HB1kEMBON7EjUUeEZ9CzmJq3Ljm4yxdDW5r7eYrHppcI0PT0CalOQno1
         5pEDOtEBSR1IcT+oHYlyBKzjfqdp0cFzDdu7uG9+wNk+g1ZCjvvBHkPe8g8G+Ug3EceY
         7qfY+5/ty7rpaoJulS9cYZsLT8W0L+nx5i+DTKu/L+sL/14TRHZHYfYqgaGm70lROJP2
         vpQHjNGCENCyn1q9VptsYG17SHALAAoln9s74ZTSJmqQsYnlbSddROVGrJd29OJW9TQG
         k4YRr5hcAfXV5F3r485l8bn8vWI2pCqvykA5cp/iVB25t9T8VIUsELMOWM0XN41Y0zgk
         aOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697400714; x=1698005514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQsXsWLvN35QalqC7CZzQ/+URZcJ+/xwJPOBk4OOhbk=;
        b=m0G4k0taE+4O08hecRi2A8fMwrKWZEdCGIuijoxoxOdbbPCZrHt3NllrSSr4QHvO6f
         hKjdBukIXBjwCYMNXlPWz7PDfcQ6P5BIaVbrUaKrorAtdstv2XhAzXfFe/i4UqF1hHdh
         5SXNO3EthflVwYaXWo74lv7mx+mhQlvTDnYxo9kbB/CIg7HKmnaoMFi0UoaXeRiaO9dP
         3BxuAL9H6TssMpFgcKxzWFYyyHgUR1Nb0vNSy0PICXzjIYJJLKa7Khz7BRwd/oC5Bx0Q
         gv5nrJAKPumt6qyj52nMeiatyeidwLEaAY+vDGzyLarWWJ4I2YhTC/4jz65OT+3uQNPD
         Ogjw==
X-Gm-Message-State: AOJu0YylfzWdo465ugIAqvxMLTqcQiTLqUnQXrqWIwEu5ozvID/gYnbB
	3m8gV/H0sv0immizXo3oUiewIDosR/cHrYMxENs=
X-Google-Smtp-Source: AGHT+IFA5qOusosGR+dvQLP70ohoFg/N0rqcS6V23J64bNSRBIC/EpnWRgnF+9KiJlfLeCnTETX6mw==
X-Received: by 2002:a5d:4848:0:b0:32d:a40f:d918 with SMTP id n8-20020a5d4848000000b0032da40fd918mr3331200wrs.68.1697400713969;
        Sun, 15 Oct 2023 13:11:53 -0700 (PDT)
Received: from gilbert-PC ([105.112.31.148])
        by smtp.gmail.com with ESMTPSA id dj16-20020a0560000b1000b003198a9d758dsm8811656wrb.78.2023.10.15.13.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 13:11:48 -0700 (PDT)
Date: Sun, 15 Oct 2023 21:11:43 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Cc: outreachy@lists.linux.dev, gregkh@linuxfoundation.org,
	julia.lawall@inria.fr, andi.shyti@linux.intel.com
Subject: Re: [PATCH 0/6] staging: rtl8192u: Mute checkpatch error
Message-ID: <ZSxHf+ZMA8UcbvRc@gilbert-PC>
References: <cover.1697367161.git.gilbertadikankwu@gmail.com>
 <bfe99c7a-f01f-4ae3-a17d-1e5887a5121f@inria.fr>
 <b5ac8e9f-f733-46bf-bff0-79556f0bd280@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5ac8e9f-f733-46bf-bff0-79556f0bd280@gmail.com>

On Sun, Oct 15, 2023 at 06:10:44PM +0200, Philipp Hortmann wrote:
> On 10/15/23 17:52, Julia Lawall wrote:
> > "Mute checkpatch error" is not very informative.
> > 
> > julia
> > 
> > On Sun, 15 Oct 2023, Gilbert Adikankwu wrote:
> > 
> > > Align descendant arguments to the open parenthesis as per the "Linux
> > > Kernel coding style" in Documentation/process/coding-style.rst
> > > 
> > > Mute the following checkpatch error:
> > > 
> > > CHECK: Alignment should match open parenthesis
> > > 
> > > Gilbert Adikankwu (6):
> > >    staging: rtl8192u: Align descendant arguments
> > >    staging: rtl8192u: Align descendant arguments
> > >    staging: rtl8192u: Align descendant arguments
> > >    staging: rtl8192u: Align descendant arguments
> > >    staging: rtl8192u: Align descendant arguments
> > >    staging: rtl8192u: Align descendant arguments
> > > 
> > >   drivers/staging/rtl8192u/r8180_93cx6.c     |  4 ++--
> > >   drivers/staging/rtl8192u/r8190_rtl8256.c   | 16 +++++++--------
> > >   drivers/staging/rtl8192u/r8192U_core.c     | 20 +++++++++---------
> > >   drivers/staging/rtl8192u/r8192U_dm.c       | 24 +++++++++++-----------
> > >   drivers/staging/rtl8192u/r819xU_firmware.c |  4 ++--
> > >   drivers/staging/rtl8192u/r819xU_phy.c      |  2 +-
> > >   6 files changed, 35 insertions(+), 35 deletions(-)
> > > 
> > > --
> > > 2.34.1
> 
> Hi,
> 
> this driver is about to be removed.
> 
> Have a look at:
> 
> https://lore.kernel.org/linux-staging/20231014211051.GA29518@matrix-ESPRIMO-P710/T/#u
> 
> Thanks
> 
> Bye Philipp

Hi,

Thank you for response. Please is there a list where I can see all the
staging drivers that is about to be removed?

Thanks
Gilbert
