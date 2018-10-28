X-GM-THRID: 6616381756005154816
X-Received: by 2002:a02:602d:: with SMTP id i45-v6mr8573931jac.6.1540713139457;
        Sun, 28 Oct 2018 00:52:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2c0d:: with SMTP id i13-v6ls1372684iti.0.gmail; Sun, 28
 Oct 2018 00:52:18 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dxrqYDyFV3NT25aJVanv8k3jIPw7gvUTLPEUxaRwvYYU39cePJ3tsvhKiZ8g2xv5pqFT6/
X-Received: by 2002:a24:6c51:: with SMTP id w78-v6mr7589477itb.5.1540713138742;
        Sun, 28 Oct 2018 00:52:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540713138; cv=none;
        d=google.com; s=arc-20160816;
        b=SqgSDVuvWbfYUMDND9i8W/SFJvWdtbbTw5MrG1hwFn20svd/Ugd/ZG95aCtxqbxp5g
         3XEMWP1CqCLUCnEQ+ahaJTuri78HQsnvw0uSZOv0d7cOPcoXeoViotNUOn/OocnaJMjy
         uI2JySbiW/q9njCiyh+d6z+A+ZPjw+rKT3xTTsg9TdMkQJ2QFIlKW8sZBm2QWc5SnA1E
         PwPORTEZCA4XIEuMfNs9nt1UQYmpF+hEOD70d3q0k+r9THbLEaDGmlVS8DIupkEkyQ6r
         uR/mHuNLsJjcNPFNu9fGQ03K7z3FzJQNWGn9mmxJwI7/o2fo6/AnPNUP9hdkqERbOEWN
         xQOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v0pSmNtKEnXMBdOWK7LmCBwi9zGF3A53d3hdljOtgXQ=;
        b=OoX9JHxe0AJJMT4xu84KCcSorfj0wAIu983URUeg/N0zkRKO1h5odlYyLLFgzM5UW1
         bXkQCgnncPlrVh2KFC9Ii/I82aZeT5CPBsuP1Qp3TVSK6I4z1DO6l09WsoX8sE5Uwwre
         Mv4HHnWgyimYJT3yJdgbfqc+03/x2JhxtEszMIEwvy1gpffoCt28eZlCGONmqZeNCWoh
         1TyH1TTumjy/jfb+1L7n6h7rgRqakAtCeSajN7sQelt/qSXant5Ijf9ClAJuO5FGIMVg
         Lq8VAHgh+tNyNuLyEAh1MwSX9pk0JoUWu/jrxggup4C8gIn8ToCxYsIR+tmJqc8X2o3V
         tW7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gAsgiMVD;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id x6-v6si671051iob.5.2018.10.28.00.52.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 00:52:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gAsgiMVD;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id w3-v6so2403499pgs.11
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 00:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=v0pSmNtKEnXMBdOWK7LmCBwi9zGF3A53d3hdljOtgXQ=;
        b=gAsgiMVDOn7lO3zk3Ao/gLGu8JQJFbEFSyD23mzxYyckOS+Hv5i512TmrPmGQVh1UO
         kag4E6HjFOsN3mqO4F3dmXkWOsaFSPdQudIUEtMIMfIqSomxSsdfWathITkHYtXBr1ji
         GC3B/kweP+vsFDwlIPV+QlmPtJwKCSw+Wub8ZWfWG66OpsiMMA3ROScjo94YcBUSVwM9
         YIfEIASXvlmpCjboT/j0xUKC9yhyXBIiFBhexRtyNtCV0aWyh3OTKja501+jdPgPnB5L
         k/U2EgVM9Y4YqRijTgmdti3wzJyPKdhtzocJQjLcdZaPi5skE8VnAi9PXbNzhMI7u9/t
         06Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=v0pSmNtKEnXMBdOWK7LmCBwi9zGF3A53d3hdljOtgXQ=;
        b=Ak6BQVyDYf6q4AkKkPyytslQb2nzVBALZi03DXvCXhTmSWuzn2FosjVP+D794R/i2N
         4a8tsR8v72nb3bec8RtYkLHE0C1BXT2GaoEMe96wBSaWgis8dgNMNDVP2NQB1wg538ds
         7HBoDbmQeRZznUQOoSmIfGsXddzZ1w9EO2zH36AvLVsYEm+BLsDiSIlVP2c4ZCPzOeup
         d55DcLbsUOyZhB+iiPX2lKWU83FrCWBs6VpHtQ8rLM2bsbV2rkyOPo5UCr1gD6eFF9L9
         tTsV9ION9XFQkDS9uNkp18gN7HkL1in6CyLUGaUjjkFVOSPScHl/PQwiz1d04k2gauOz
         6NdQ==
X-Gm-Message-State: AGRZ1gK1mB4oDb51WGiJAgAkdFGzyBb9lA8jnL+WPoiv3zb0I9NCPpsS
	DmWO1eM8P/OX4Gb/ZA2+QQk=
X-Received: by 2002:a63:907:: with SMTP id 7-v6mr9429705pgj.121.1540713137789;
        Sun, 28 Oct 2018 00:52:17 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id p7-v6sm21182013pfb.101.2018.10.28.00.52.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 28 Oct 2018 00:52:17 -0700 (PDT)
Date: Sun, 28 Oct 2018 13:22:10 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
Message-ID: <20181028075209.GA1938@himanshu-Vostro-3559>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
 <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
 <20181026204225.GH2015@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181026204225.GH2015@sasha-vm>
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi Sasha,

On Fri, Oct 26, 2018 at 04:42:25PM -0400, Sasha Levin wrote:
> On Fri, Oct 26, 2018 at 04:04:45PM -0300, Shayenne da Luz Moura wrote:
> > This change was suggested by checkpath.pl. Use unsigned int with bitfield
> > allocate only one bit to the boolean variable.
> > 
> > CHECK: Avoid using bool structure members because of possible alignment
> > issues
> > 
> > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > ---
> > drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
> > drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
> > 2 files changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/vboxvideo/vbox_drv.h b/drivers/staging/vboxvideo/vbox_drv.h
> > index 594f84272957..7d3e329a6b1c 100644
> > --- a/drivers/staging/vboxvideo/vbox_drv.h
> > +++ b/drivers/staging/vboxvideo/vbox_drv.h
> > @@ -81,7 +81,7 @@ struct vbox_private {
> > 	u8 __iomem *vbva_buffers;
> > 	struct gen_pool *guest_pool;
> > 	struct vbva_buf_ctx *vbva_info;
> > -	bool any_pitch;
> > +	unsigned int any_pitch:1;
> > 	u32 num_crtcs;
> > 	/** Amount of available VRAM, including space used for buffers. */
> > 	u32 full_vram_size;
> 
> Using bitfields for booleans in these cases is less efficient than just
> using "regular" booleans for two reasons:
> 
> 1. It will use the same amount of space. Due to alignment requirements,
> the compiler can't squeeze in anything into the 7 bits that are now
> "free". Each member, unless it's another bitfield, must start at a whole
> byte.

Agreed!

FYI original thread of discussion: https://lkml.org/lkml/2017/11/21/207

As Steve says:

"Thus, changing:

 int  a : 1;
 int  b : 1;
 int  c : 1;
 int  d : 1;

to

 bool a;
 bool b;
 bool c;
 bool d;

at best increases the size required from 1 byte to 4 bytes, and at
worse, it increases it from one byte to 16 bytes."

In the above cases, we have all bitfields members and no non-bitfields
members.

But before playing with these bitfields there are some points to be
noted:
https://port70.net/~nsz/c/c11/n1570.html#J.3.9

Implementation Defined
----------------------

* Whether a ''plain'' int bit-field is treated as a signed int 
  bit-field or as an unsigned int bit-field.

eg: `int foo:3` may have a range from 0..7 or -4..3

So, changing `int foo:3` to `unsigned int foo:3` might be a sane
change to remove the ambiguity and make sure range is 0..7.

Also, such an change can also handle unsigned overflow
or better said "wrapping".

* Whether a bit-field can straddle a storage-unit boundary.

So, you can't guess what could be the possible unless you're familiar
or tested the change for different arch.

* The alignment of non-bit-field members of structures.

...

The "possible alignement issues" in CHECK report is difficult to figure
out by just doing a glance analysis. :)

Linus also suggested to use bool as the base type i.e., `bool x:1` but
again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.

And since this issue is added to checkpatch now, very likely there would
be blast of patches sent on the same.

Not everyone who sends checkpatch would be able to disassemble or test
on different implementations.

But if anyone is interested check this:
https://godbolt.org/


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

