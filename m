X-GM-THRID: 6950254518663643136
X-Received: by 2002:a4a:9843:: with SMTP id z3mr22698794ooi.51.1618235930218;
        Mon, 12 Apr 2021 06:58:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls3608726oiw.4.gmail; Mon, 12
 Apr 2021 06:58:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUUznLnAfhl34kyVW4oUJ3g7oyPqyuiY3FvpLxGO66JbDaI2hgEQQ/cdu8/+0AtlvUm7yd
X-Received: by 2002:a05:6808:4c4:: with SMTP id a4mr1843062oie.170.1618235929406;
        Mon, 12 Apr 2021 06:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618235929; cv=none;
        d=google.com; s=arc-20160816;
        b=X+MFjOLWAde4stlKbDdnHvzeLrL5d7wJXD+4a+V7zb9yg276HUAuoAVUXUoT5gcm8J
         aPDdmq39Jau6V5iZUYl48bNDg90UwDSisra/wZpxE7DJwMPClBD6RORsbDEnubdque92
         VFTopL/IMQ2yy6rJrd/4hV7PKYSFx2CijsbmabfGCWR4pfo90zPGadL1EcvgjjG1FU08
         xOnpBIke621e5t/y7codAW6PYMEWeQKS0yRjwk2/BObT5DZbnSr5HNgqOVPUgZ6WJQ1t
         kJToqO5mItzHgKOBf0Ot7W+oAps3A1cmqr9KEFJT/oJbjPoUvjCMztX4gTVqSvlijUfM
         0oYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=SJw/FCmBKIoHaZdn5FSsuIC5fqSzcrzjPH5C6swmKnU=;
        b=KFx6SOU8up5I5d1lPke+q1yY9QR7vx/g2FyPc9xKFdW87DHy872r9DYWjpiooO1HGZ
         wbTP305ipwz9zFE3FRIoh8kPFmG4IntSX/aeTOGE5jIkG01hte6TVVMkFach9H4FPkf0
         oneq9y2L87LN8QNZpSpGZrj0OPs6P0NKtfUKsTuVr/4pkXzSebqiC10eab/X+neXMe6D
         pJCVgOQwzT2A+Nh3g6g53pc9udPacixy7dtOu+6AtybWxt8IhYpZuMu5E6yK0CzokgKs
         +yFD0R+Tt34hEtzSEggAO6zDFQMcx8ntRh2tLACu14tres1N2hZx1FBiFY3OQV3gN98h
         UKwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C5aRJDDn;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com. [2607:f8b0:4864:20::82f])
        by gmr-mx.google.com with ESMTPS id p9si696002oib.2.2021.04.12.06.58.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 06:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) client-ip=2607:f8b0:4864:20::82f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C5aRJDDn;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82f.google.com with SMTP id f12so9953000qtf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=SJw/FCmBKIoHaZdn5FSsuIC5fqSzcrzjPH5C6swmKnU=;
        b=C5aRJDDnSepZQj02FKN5Pt1KjVS4QcitMncok9+1+VXGcl4U+zNMyE/CDSRFpGnNsg
         o8dtkR1O04Y64hBWrt5sW/Nxa5Off34WPhS5p461086smlNV/vwnJsOUx4J7pQtBGQOd
         NkMgtFWEdPC0F8wB6kggZFshNy1S6HsSGEFnTPbS7DSq5T3BsF6icZi+xK30DjKjl7zQ
         eo2QFX6aBpyvkf3kceseTWQn+6j1S5NtJjIVGYP/0e6fcDPDcpWTWyYZbjFGFjmIMTz2
         7N4nAj2qT2Cexa0gIpNzQ1RRo2lWRaw+BzDHCjmIzA2lq0mlUCuWqH9cfs/9YtWEPP7/
         6OUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=SJw/FCmBKIoHaZdn5FSsuIC5fqSzcrzjPH5C6swmKnU=;
        b=N6fCRtJVmZgqwNlSOGm5SRUpCVp0LBxbP2wGZyfsAtQ97IwmTnahxQVZCDWSfZOLnM
         1zB4tfYs9lzZo3Xc36TJRJZbeDGz3mA7DPaclCzByGhk3gdjlZwazwl4SdZfNa/8ucDW
         Cse2FgtfCAnaC3F9qx2Cd7bg8o4ROFOv7pxR/Vtm55BR8m+Hbu680q/gyw3gAwg2jztF
         elC71WOmp0UEuDmrIshP46bxT4mOdHlkmBCc4OEZQhNC/tGTRnqLnQkCJJ0Ox11W09el
         vyZVdQc+4ho9D35O2U2fXBfDb4ygBDmZr3ISvouVvOdtlG7ywA7a7m/eATTxrbOpZ/26
         3B9Q==
X-Gm-Message-State: AOAM531XrkXSClqXH+SZd97WMl5wyz4c/QgJF+3ERA3usgoOF7DgkmL6
	vL1R6Ei4ftLhVnjXa85GTZ4=
X-Received: by 2002:a05:622a:486:: with SMTP id p6mr26013241qtx.98.1618235929094;
        Mon, 12 Apr 2021 06:58:49 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:476a:dfcd:f18f:9ad5? ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id q125sm8018087qkf.68.2021.04.12.06.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 06:58:48 -0700 (PDT)
Message-ID: <7457fd4eb5afbf66b3a6f2fed4dd1e440e6ed422.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss:
 Replace macro function by static inline function in file iss.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Mon, 12 Apr 2021 10:58:45 -0300
In-Reply-To: <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
	 <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>
	 <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em seg, 2021-04-12 às 16:40 +0300, Laurent Pinchart escreveu:
> While testing on a device isn't a requirement as you can't be
> expected
> to have the necessary hardware, changes are expected to be at least
> compile-tested before being submitted.

Hi Laurent,

I thought recompiling the kernel would be enough in this case.
I recompiled it in native Ubuntu 16.04 without errors.

Thank you for the feedback.
Aline


