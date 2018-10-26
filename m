X-GM-THRID: 6616381756005154816
X-Received: by 2002:a25:19c5:: with SMTP id 188-v6mr3210924ybz.76.1540586549706;
        Fri, 26 Oct 2018 13:42:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:9a41:: with SMTP id r1-v6ls1160120ybo.1.gmail; Fri, 26
 Oct 2018 13:42:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d5L49Dovz6iEJ0REHkwAVx7VeAWCHCx4zh79HkN8gNh1LHFBmQn5CFFcwEN7lXmwnzrCwy
X-Received: by 2002:a25:8b8b:: with SMTP id j11-v6mr2483151ybl.40.1540586548787;
        Fri, 26 Oct 2018 13:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540586548; cv=none;
        d=google.com; s=arc-20160816;
        b=Oou3aJLsxY2u0iRC5QJq0JymESfbA1lnFrr6MQr6U4LNs8ytMqygtczFzD4X2tTUvx
         bWkQLZ47CD2xXJCjFNFnxOYCQNgRpMoxWZMHfSx+3QWFWpdaM+w0dwWe4jafTZgRVM80
         yfoLobNAqXV9a12NTk/S6+opPI/RheUDXRUfSPWX4zxXZC9ixsTdYJra5N518LCHAp0O
         24iZ5fTZGoax+b0OPNTeC0uYsCjnD1ymQ59eeqCyZaANE3RRk+v1gNpyer7p67rvuo71
         kkiRl8yB2EDRlUQ9Wa8mZi6U4qCfWs3FjFXl0mwI3B3x24eaZMRA5bcMtwqNWWniapP1
         8IIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yYn/weYHlFV31GeMW1wvhRKFTYvmrVOjjCXjNWJuqJc=;
        b=bABg8mKLQFuhBTp0oJNlGzaRlRcCOQNc6t3cI3tdJ7JKg/Y1L4qZNsWhJ6LKxQ1wIA
         jFLpupuMnlTQZWyl5PdRd9cM4PWmK4eDuPK4YkKPCN59MBADOifKURdKNl3EvUA7YV7F
         Rc6BmJnnHV+Ia6ung1XY5lTMtLB15y6/JfhD2gNsBOJucHcNZvzdUslusHDo3wXQNgY2
         U4kP+Kr3EXuBeOrlWI4FgdiwI7HSN9KzaU0o4eZtWZtbxFRYovkSuD3f678rB19a+Ks7
         OJp+dRFIPz5ND5iHzscgVu0hnjvok0ETH2HGPnEZSaEZTH/ckbDHi7dEjNAdqKKdn6gE
         TS5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hhE9nvAq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10-v6si572294ybp.4.2018.10.26.13.42.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 13:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hhE9nvAq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (unknown [167.98.65.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 47D1C20856;
	Fri, 26 Oct 2018 20:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540586547;
	bh=y6GHLD3iTfoUWTyAENeES4MoLFw0vJUADnQ3lSdtbhk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hhE9nvAq/8DD2EwHleLGhktokBMxiQspgqXH8QJtPNQ0JDIYI27gisXZK81Jvo52G
	 fj7sCIkZ2YRYWLnVYD6CSnJHxT3hVSObtJjWgy1UXNfKCq0pXHJpbCqere9dyG3wPO
	 MFQBn8QnRkv/WK3SlajbUhB2uT40b1g5IcQtzmW8=
Date: Fri, 26 Oct 2018 16:42:25 -0400
From: Sasha Levin <sashal@kernel.org>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
Message-ID: <20181026204225.GH2015@sasha-vm>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
 <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 26, 2018 at 04:04:45PM -0300, Shayenne da Luz Moura wrote:
>This change was suggested by checkpath.pl. Use unsigned int with bitfield
>allocate only one bit to the boolean variable.
>
>CHECK: Avoid using bool structure members because of possible alignment
>issues
>
>Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
>---
> drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
> drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
> 2 files changed, 8 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/staging/vboxvideo/vbox_drv.h b/drivers/staging/vboxvideo/vbox_drv.h
>index 594f84272957..7d3e329a6b1c 100644
>--- a/drivers/staging/vboxvideo/vbox_drv.h
>+++ b/drivers/staging/vboxvideo/vbox_drv.h
>@@ -81,7 +81,7 @@ struct vbox_private {
> 	u8 __iomem *vbva_buffers;
> 	struct gen_pool *guest_pool;
> 	struct vbva_buf_ctx *vbva_info;
>-	bool any_pitch;
>+	unsigned int any_pitch:1;
> 	u32 num_crtcs;
> 	/** Amount of available VRAM, including space used for buffers. */
> 	u32 full_vram_size;

Using bitfields for booleans in these cases is less efficient than just
using "regular" booleans for two reasons:

1. It will use the same amount of space. Due to alignment requirements,
the compiler can't squeeze in anything into the 7 bits that are now
"free". Each member, unless it's another bitfield, must start at a whole
byte.

2. This is actually less efficient (slower) for the compiler to work
with. The smallest granularity we have to access memory is 1 byte; we
can't set individual bits directly in memory. For the original code, the
assembly for 'vbox_private.any_pitch = true' would look something like
this:

	movl   $0x1,-0x10(%rsp)

As you can see, the compiler can directly write into the variable.
However, when we switch to using bitfields, the compiler must preserve
the original value of the other 7 bits, so it must first read them from
memory, manipulate the value and write it back. The assembly would
look something like this:

	movzbl -0x10(%rsp),%eax
	or     $0x1,%eax
	mov    %al,-0x10(%rsp)

Which is less efficient than what was previously happening.

--
Thanks,
Sasha

