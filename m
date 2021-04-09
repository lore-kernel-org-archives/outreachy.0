X-GM-THRID: 6948889025177452544
X-Received: by 2002:a17:906:ce32:: with SMTP id sd18mr17089691ejb.85.1617989207963;
        Fri, 09 Apr 2021 10:26:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:c1ca:: with SMTP id bw10ls5415402ejb.5.gmail; Fri,
 09 Apr 2021 10:26:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhIBjYyIKtqee5yO+xX2i6kQ2/uAm6bayNXe7gMVl38LJTztH88hIKbxjF/x0AE0x84FUB
X-Received: by 2002:a17:907:3f20:: with SMTP id hq32mr9958660ejc.226.1617989206388;
        Fri, 09 Apr 2021 10:26:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617989206; cv=none;
        d=google.com; s=arc-20160816;
        b=h4aITvFsGpsnfriZFJHBiQFnuixBodxo56rMyEtVmxDzZynnyypEdYL3Ey/pQ8LQsH
         YSyO84QPEjgfepxDZ/Uwoquue00iwYsvheo8szVXA7O2GB1rnBzecQEBh2mdLjr3NGFV
         uMlvUbKOqx8slrExRbFDvWVpg8r8FjKLQrabH9ZklF2+2NXlhfX5FzDbR0utH/cRo1cr
         hQL+IKEVQQDzelP0C2Du0Ctu0MYXQmLEDDJMXoZLGtStqCJRji30m884cXxFf5MCgSP/
         tJXzPu2V8yeHXM61aupXjQxVSdT5vDxpICnUfnOGKpGiVcf/CeMOytC3IAehveeFceiw
         ynOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=x/b/InZ8ATFJ0WMpSCv4ht+J7m1Ut4mpK/Wf9/yfatA=;
        b=La0ku75WdRbx0d3KTVUGmTM6K6hCVQZPmb+sp4Tih417FdDFlZn3vbsT6luJyq3xz/
         RkENwQOcQLjBoF60aMBYH+V8lL7CBobcsvJ9vExpWec/YsE2/X+WMB2/cXuswm3EoKhY
         RE+Qo4nSuEKLz1vRuTV9ACjcYSJquZvIe8Ihmb39LmmAZeuuM8irAa5KrQQ6l9En+Qic
         ji0rklvjeqm3D0/52A0pd8Ag0PteF/YnqYbrD+zkhiL4/8WwG7LDFckCiBAKXrrLSu1K
         maTxXPfOCB8xiavlCJRri9IuYGaJXV1QFrHXaQ4F9Tqb12yOBiDFTn5t2jkXF9A0Zplz
         od0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f23si163397ejc.1.2021.04.09.10.26.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:26:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Abr03kKnDZVW9L84g4ina0hwZcsnpDfNNimdD?=
 =?us-ascii?q?5ilNYBxZY6Wkvuqpm+kW0gKxtSYJVBgb6Kq9EYSjYVeZz5565oENIayvNTOMhE?=
 =?us-ascii?q?KEJJxvhLGM/xTOFyHy/eZW1+NBXsFFebvNJHdgi8KS2mOFOvMh2sTC0I3Av5am?=
 =?us-ascii?q?815JTRt2L51m9RtzEAyBEkZ7LTM2Z6YRMZqH+456oCC9cm4cdcSxCj09WfLfzu?=
 =?us-ascii?q?e78a7ORT4jK1oZ5BKVjTWugYSKaCSw+hsFSTtAzfMD3AH+8jDR3amov/GlxhK0?=
 =?us-ascii?q?7Qa6071slMLl2p9/AqW35PQ9ECnmiQqjee1aN4GqgTZdmoySwWdvvuLtjlMZH+?=
 =?us-ascii?q?kb0QKzQkiF5TXX+ySl6xoAgkWD9XaoxV/K5ez/Xi8zDMBM7LgpFSfx2g4FlJVG?=
 =?us-ascii?q?3K1GxG6fvZY/N2KloA3No/zBVxRrkUSVjBMZ4JYus0A=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378242890"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 19:26:45 +0200
Date: Fri, 9 Apr 2021 19:26:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: Hans Verkuil <hverkuil@xs4all.nl>, clabbe@baylibre.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, linux-media@vger.kernel.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] media: zoran: add spaces
 around '<<'
In-Reply-To: <YHCFsNZVGfjjyHDi@kali>
Message-ID: <alpine.DEB.2.22.394.2104091926280.17316@hadrien>
References: <cover.1617912177.git.mitaliborkar810@gmail.com> <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com> <f196d8ff-e8bf-360e-ee7b-cd2dcafd9742@xs4all.nl> <YHCFsNZVGfjjyHDi@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Mitali Borkar wrote:

> On Fri, Apr 09, 2021 at 09:23:22AM +0200, Hans Verkuil wrote:
> > Hi Mitali,
> >
> > On 08/04/2021 22:38, Mitali Borkar wrote:
> > > Added spaces around '<<' operator to improve readability and meet linux
> > > kernel coding style.
> > > Reported by checkpatch
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > > index 71b651add35a..a2a75fd9f535 100644
> > > --- a/drivers/staging/media/zoran/zr36057.h
> > > +++ b/drivers/staging/media/zoran/zr36057.h
> > > @@ -30,13 +30,13 @@
> > >  #define ZR36057_VFESPFR_HOR_DCM          14
> > >  #define ZR36057_VFESPFR_VER_DCM          8
> > >  #define ZR36057_VFESPFR_DISP_MODE        6
> > > -#define ZR36057_VFESPFR_YUV422          (0<<3)
> > > -#define ZR36057_VFESPFR_RGB888          (1<<3)
> > > -#define ZR36057_VFESPFR_RGB565          (2<<3)
> > > -#define ZR36057_VFESPFR_RGB555          (3<<3)
> > > -#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
> > > -#define ZR36057_VFESPFR_PACK24          (1<<1)
> > > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
> > > +#define ZR36057_VFESPFR_YUV422          (0 << 3)
> > > +#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > > +#define ZR36057_VFESPFR_RGB565          (2 << 3)
> > > +#define ZR36057_VFESPFR_RGB555          (3 << 3)
> > > +#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > > +#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > >
> > >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > >
> > >
> >
> > I looked at that header and it is very messy.
> >
> > Can you make two new patches? The first aligns every nicely, e.g. this:
> >
> > #define ZR36057_VFEHCR          0x000   /* Video Front End, Horizontal Configuration Register */
> > #define ZR36057_VFEHCR_HS_POL             BIT(30)
> > #define ZR36057_VFEHCR_H_START           10
> > #define ZR36057_VFEHCR_H_END            0
> > #define ZR36057_VFEHCR_HMASK            0x3ff
> >
> > should become:
> >
> > /* Video Front End, Horizontal Configuration Register */
> > #define ZR36057_VFEHCR			0x000
> > #define ZR36057_VFEHCR_HS_POL		BIT(30)
> > #define ZR36057_VFEHCR_H_START		10
> > #define ZR36057_VFEHCR_H_END		0
> > #define ZR36057_VFEHCR_HMASK		0x3ff
> >
> > Same for all the other register blocks. Use tabs to do the alignment
> > instead of spaces, as is currently the case.
> >
> > The second patch can replace the (0<<3) etc. to BIT(0).
> >
> Then I guess only one new patch would be needed for proper alignment, am
> i right? I have to rename it as v2 or should send as a completely new
> patch?

v2 might reduce confusion.

julia

> > That would be a nice cleanup of this rather messy header.
> >
> > Thanks!
> >
> > 	Hans
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHCFsNZVGfjjyHDi%40kali.
>

