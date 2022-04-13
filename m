Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4620F4C60
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 18:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ST56/+fYDzUk2nSPcEOQG4fUGnmNZn9hnw6dPgkUQZI=;
  b=Aqfo8aemuc8WED/Xpdzy4nOqn4MTBzSeFle+xIw3mCY8PQeWE3FTPZEq
   GeS+V9BTicoR9aRIKHVupZJ9a/wuIloyCzdvvNXW2L382LiSldTDK8yH3
   X8769/S626yDyb3aMl+F+Y2PiumKoqnOyAf2Urh3Uf6CP9D09bjPzzPpv
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,257,1643670000"; 
   d="scan'208";a="31579436"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2022 20:41:04 +0200
Date: Wed, 13 Apr 2022 20:41:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Aliya <aliyarahmani786@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: vt6655f: rxtx: code style - Fix Lines should
 not end with a '('
In-Reply-To: <CAGTWmRG0hZAqOczhMKuUb8pQXHGYPPFHtcc+-6synWoAg_bTEA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204132038460.2995@hadrien>
References: <20220413101114.23992-1-aliyarahmani786@gmail.com> <alpine.DEB.2.22.394.2204131226160.3091@hadrien> <CAGTWmRErQT7-9sn=KEWdQOiamYgG0+k4PxuK-qp7R+VhsLS-dg@mail.gmail.com> <alpine.DEB.2.22.394.2204131310550.3091@hadrien>
 <CAGTWmRG0hZAqOczhMKuUb8pQXHGYPPFHtcc+-6synWoAg_bTEA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Apr 2022, Aliya wrote:

> On Wed, Apr 13, 2022 at 4:42 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Wed, 13 Apr 2022, Aliya wrote:
> >
> > > On Wed, Apr 13, 2022 at 3:56 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> > > >
> > > >
> > > >
> > > > On Wed, 13 Apr 2022, Aliya Rahmani wrote:
> > > >
> > > > > Remove indentation to fix the checkpatch error that lines should not
> > > > > end with a '('.
> > > >
> > > > This comment doesn't completely describe what was done.
> > > >
> > > > julia
> > > >
> > > > >
> > > > > Signed-off-by: Aliya Rahmani <aliyarahmani786@gmail.com>
> > > > > ---
> > > > >
> > > > > v1->v2: Add Indentation and remove the gap between static and void.
> > > > >
> > > > > ---
> > > > >  drivers/staging/vt6655/rxtx.c | 23 ++++++++++-------------
> > > > >  1 file changed, 10 insertions(+), 13 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> > > > > index 53506e242a96..01dc83b2f4bc 100644
> > > > > --- a/drivers/staging/vt6655/rxtx.c
> > > > > +++ b/drivers/staging/vt6655/rxtx.c
> > > > > @@ -567,19 +567,16 @@ s_uFillDataHead(
> > > > >       return buf->duration;
> > > > >  }
> > > > >
> > > > > -static
> > > > > -void
> > > > > -s_vFillRTSHead(
> > > > > -     struct vnt_private *pDevice,
> > > > > -     unsigned char byPktType,
> > > > > -     void *pvRTS,
> > > > > -     unsigned int cbFrameLength,
> > > > > -     bool bNeedAck,
> > > > > -     bool bDisCRC,
> > > > > -     struct ieee80211_hdr *hdr,
> > > > > -     unsigned short wCurrentRate,
> > > > > -     unsigned char byFBOption
> > > > > -)
> > > > > +static void
> > > > > +s_vFillRTSHead(struct vnt_private *pDevice,
> > > > > +             unsigned char byPktType,
> > > > > +             void *pvRTS,
> > > > > +             unsigned int cbFrameLength,
> > > > > +             bool bNeedAck,
> > > > > +             bool bDisCRC,
> > > > > +             struct ieee80211_hdr *hdr,
> > > > > +             unsigned short wCurrentRate,
> > > > > +             unsigned char byFBOption)
> > > > >  {
> > > > >       unsigned int uRTSFrameLen = 20;
> > > > >
> > > > > --
> > > > > 2.25.1
> > > > >
> > > > >
> > > > >
> > >
> > > Remove indentation and spacing to avoid warnings.
> > > Identified by checkpatch: CHECK: Lines should not end with a '('.
> > >
> > > Is this okay?
> >
> > No.  "Remove indentation" is not understandable because you have increased
> > the indentation of all the other parameters.  You also removed a newline
> > in front of the first parameter.  And you removed a newline in between
> > static and void.
> >
> > julia
>
> Changes applied to fix checkpatch.pl warnings :
> 1. Removed newline in front of 'struct vnt_private *pDevice'.
> 2. Removed newline in between static and void.
> 3. Increased indentation to structure the code.
>
> Please suggest any changes, I'm new to kernel programming.

[Added back the mailing list]

I think it would be better to take a more high level point of view.

Improve the layout of a function header:
* Put static and void on a single line.
* Put the first parameter immediately after the ( and align the other
parameters underneath it.

julia
