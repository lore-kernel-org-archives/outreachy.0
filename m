X-GM-THRID: 6332991195333001216
X-Received: by 10.46.69.137 with SMTP id s131mr271092lja.31.1474614381076;
        Fri, 23 Sep 2016 00:06:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.136 with SMTP id 130ls1569883ljj.14.gmail; Fri, 23 Sep
 2016 00:06:20 -0700 (PDT)
X-Received: by 10.46.32.80 with SMTP id g77mr279807ljg.9.1474614380285;
        Fri, 23 Sep 2016 00:06:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si187298wmd.1.2016.09.23.00.06.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 00:06:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,380,1470693600"; 
   d="scan'208";a="237961142"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Sep 2016 09:06:19 +0200
Date: Fri, 23 Sep 2016 09:06:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Katie Dunne <kdunne@mail.ccsf.edu>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Edit struct member
 type for endianness verification
In-Reply-To: <20160923064804.GA2338@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1609230903350.3341@hadrien>
References: <20160922032014.GA31033@katie-Inspiron-5748> <20160923064804.GA2338@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 22 Sep 2016, Alison Schofield wrote:

> On Wed, Sep 21, 2016 at 08:20:14PM -0700, Katie Dunne wrote:
> > Fixes warnings found using sparse on
> > drivers/staging/wlan-ng/p80211conv.c:
> > warning: cast to restricted __le16
> > warning: cast to restricted __be16
> >
> > Updates the corresponding type in
> > drivers/staging/wlan-ng/p80211conv.h
>
> Hi Katie,
>
> I ran sparse on p80211conv.c before the patch, and then again after
> the patch and can see the sparse errors that the change cleans up.
> My concern is with the ones it leaves undone and new ones added
> at line 452.
>
> I'm guessing it's best to work this type of problem as a whole, rather
> than addressing pieces of it.

I'm not certain that it is necessary to address all instances of an issue,
if they are disjoint, and if they require different amounts of knowledge.
Then nothing would happen until the most expert person comes across the
issue.  And anyway the tool will continue to find the other
occurrences.  But adding new issues is not good.

julia


>
> I see Greg is maintainer, so look some more at those warnings and
> wait and see what he says.
>
> alisons
>
>
> >
> > Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> > ---
> >  drivers/staging/wlan-ng/p80211conv.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/p80211conv.h b/drivers/staging/wlan-ng/p80211conv.h
> > index 8c10357..d8fda07 100644
> > --- a/drivers/staging/wlan-ng/p80211conv.h
> > +++ b/drivers/staging/wlan-ng/p80211conv.h
> > @@ -130,7 +130,7 @@ struct p80211_metawep {
> >  struct wlan_ethhdr {
> >  	u8 daddr[ETH_ALEN];
> >  	u8 saddr[ETH_ALEN];
> > -	u16 type;
> > +	__be16 type;
> >  } __packed;
> >
> >  /* local llc header type */
> > @@ -143,7 +143,7 @@ struct wlan_llc {
> >  /* local snap header type */
> >  struct wlan_snap {
> >  	u8 oui[WLAN_IEEE_OUI_LEN];
> > -	u16 type;
> > +	__le16 type;
> >  } __packed;
> >
> >  /* Circular include trick */
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922032014.GA31033%40katie-Inspiron-5748.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160923064804.GA2338%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

