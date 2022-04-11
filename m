Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B251849
	for <outreachy@lists.linux.dev>; Mon, 11 Apr 2022 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=32VI9bEKO/pHjWxs7X+ceZCxxjQsFwUO8SAapA1W4EI=;
  b=ReVZ4+0iGVgTAu1/kOp7JNsCTZ6/dY2AkPmy10YLf0dTLT0xcMcf5gzg
   iIrslVZg3iapPcI2WXejlAwOK422i04JdV/xSYp6ibSHUNxzXOO9Sewrz
   cc/N9/oQEUj324dYZuxwEhGBcLXYtXmCqxMkg+6v1kTZdnHo1ZuPlh1Fb
   w=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,251,1643670000"; 
   d="scan'208";a="31144240"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2022 14:44:15 +0200
Date: Mon, 11 Apr 2022 14:44:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Aliya <aliyarahmani786@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: rtl8712: efuse: code style - avoid macro
 argument precedence issues
In-Reply-To: <CAGTWmRHr1jcyZ66EwJ6S6jXfJ_KfsPt3_2n=Scs3sdmq3OWAyA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204111441490.3197@hadrien>
References: <alpine.DEB.2.22.394.2204110845280.3197@hadrien> <20220411110250.51959-1-aliyarahmani786@gmail.com> <CAGTWmRHr1jcyZ66EwJ6S6jXfJ_KfsPt3_2n=Scs3sdmq3OWAyA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Apr 2022, Aliya wrote:

> On Mon, Apr 11, 2022 at 4:33 PM aliya-rahmani <aliyarahmani786@gmail.com> wrote:
> >
> > From: Aliya Rahmani <aliyarahmani786@gmail.com>
> >
> > Added parentheses in 'offset' and 'word_en' to avoid macro argument
> > precedence issues.
> >
> > Signed-off-by: Aliya Rahmani <aliyarahmani786@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl8712_efuse.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
> > index 4969d307e978..2e1ea9d7a295 100644
> > --- a/drivers/staging/rtl8712/rtl8712_efuse.h
> > +++ b/drivers/staging/rtl8712/rtl8712_efuse.h
> > @@ -15,8 +15,8 @@
> >
> >  #define GET_EFUSE_OFFSET(header)       ((header & 0xF0) >> 4)
> >  #define GET_EFUSE_WORD_EN(header)      (header & 0x0F)
> > -#define MAKE_EFUSE_HEADER(offset, word_en)     (((offset & 0x0F) << 4) | \
> > -                                               (word_en & 0x0F))
> > +#define MAKE_EFUSE_HEADER(offset, word_en)     ((((offset) & 0x0F) << 4) | \
> > +                                               ((word_en) & 0x0F))
> >  /*--------------------------------------------------------------------------*/
> >  struct PGPKT_STRUCT {
> >         u8 offset;
> > --
> > 2.25.1
> >
> Should I make some more changes to the subject line? Also, should I
> create a v2 patch for the changes?

Each time you change a patch, you should increase the version number and
put an explanation of the change since the previous version under the ---

If you need to snd a new version to respect this, then I would say
"parentheses around" rather than "parentheses in", also I would say "macro
arguments 'offset' and 'word_en'" to explain why the change is needed.

Finally, you should still mention that the problem was found using
checkpatch, but it is not necessary to include the checkpatch warning
message.

julia
