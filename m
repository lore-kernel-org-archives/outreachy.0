X-GM-THRID: 6674202395831959552
X-Received: by 2002:a05:6402:1811:: with SMTP id g17mr2255061edy.7.1553963198093;
        Sat, 30 Mar 2019 09:26:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a3e2:: with SMTP id t31ls1463118edb.6.gmail; Sat, 30 Mar
 2019 09:26:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwNmKP+1M1v6kFdeJjuzE75IhUA1DA2IHtpLf9xSxOBmSzIZZ63onISk7r5xHMsgZ0dmfin
X-Received: by 2002:a50:b104:: with SMTP id k4mr1819096edd.12.1553963197294;
        Sat, 30 Mar 2019 09:26:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553963197; cv=none;
        d=google.com; s=arc-20160816;
        b=r6nXtjQYXnc7GVfpJnq4YdMvZETcykzYqIUOkGUVEpmFCYTQi8SR9tEoM65tQXXxDM
         GlUYc6PCOWTavQNMo4oUTSMMk6T8sg+Rm9QOOtyCUU//wx7IIyUscDeJjRgUSVVHmSLu
         G+vOhsc5Sgcd8MuxtSzWTaSJlL6JFaHam64ab5nMj35gxXvqrD5EoAZYAjqn77TZTpHs
         WXVAmj9QlP1rYHPBSPW38ZTu6gQGxlccI7hREHl7/pEAnR8Jgi4cCgyPyIWthqzmGpeI
         MR6GsfNE7rwPLagCrb6BuowoOXscrr8ZYMv7vmJETJTzzEZo+6DEDmyK6lwoCHBz62Bg
         izmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UGFzpWmYOGONP77c/FoMe2KdokIvKfY6WFDBeavf0Ig=;
        b=v/4D9K86hyPJTxyu1CHf9TWnsEEgaCbG6RG5pCEml/bbk/+0x+Z1uIK99TEiE87r17
         +2SY0AsgpIv5hksYnepsXSeS8SfRpxUDlrupG0sSVhl0+yIM3+IHER2f5uqiizqErzdd
         0fX9ws2umGqxKrhCwIVanijljhmniLt2zXliNl1QUnEKX+FDMDHaCqXOdm9dVz39CnYe
         X9bex0/LLgoM5hKKDanLbajXlFgdx4b0xUDbiuEI/IX7XhmakQzOJ9eu4XfU5DdU1eQq
         f9tBuFRTWaZm/3pyn6BDE4G+C32bdwETPiPoCvi3Bm3ZZzqagE75z0Y042mSGl4IDQit
         9Iuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l53si326102edc.2.2019.03.30.09.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:26:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376470726"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 17:26:24 +0100
Date: Sat, 30 Mar 2019 17:26:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtlwifi: phydm: Remove
 parentheses
In-Reply-To: <2c938e0a-a06d-3a0c-6f64-98e73aeea724@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903301726050.2608@hadrien>
References: <20190330155517.2194-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.21.1903301717000.2608@hadrien> <2c938e0a-a06d-3a0c-6f64-98e73aeea724@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, NIshka Dasgupta wrote:

>
>
> On 30/03/19 9:48 PM, Julia Lawall wrote:
> >
> >
> > On Sat, 30 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> >
> > > Remove unnecessary parentheses on the right hand side and simplify
> > > expression from 'status = status & <expression>' to 'status &=
> > > expression' to make code more readable.
> >
> > It should be two patches, since you have done two things.
>
> Okay, I will resend it.
>
> > There is a third thing to do, which is get rid of the checkpatch error
> > about a ( at the end of a line.  There is plenty of room for the first two
> > arguments, as far as I can see.
>
> The first two arguments fit. The problem is that the arguments have to be
> aligned (as far as I know), and the third argument (even just the typecast)
> cannot fit after the open bracket of the function without triggering the
> 80-character warning. I thought a checkpatch check about a ( at the end of the
> line might be preferable to a warning about line exceeding 80 characters?
> Given the existing alignment and indentation, I don't see how we can avoid
> both the check and the warning without adding new variables (i.e by doing the
> enum typecast before). What should I do?

Ignore the warning about the arguments needing to be aligned.

julia


> - Nishka
>
> > julia
> >
> > > Issue first detected using Coccinelle.
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > > Changes in v3:
> > > - Move explanation of simplification to commit log.
> > >
> > >   drivers/staging/rtlwifi/phydm/phydm_debug.c | 18 ++++++++----------
> > >   1 file changed, 8 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > > b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > > index 91f2c054d83b..13b34dc33011 100644
> > > --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > > +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > > @@ -51,20 +51,18 @@ static inline void phydm_check_dmval_txagc(struct
> > > phy_dm_struct *dm, u32 used,
> > >   				      (power_index << 16) | (power_index << 8)
> > > |
> > >   				      (power_index);
> > >   			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
> > > -				status = (status &
> > > -					  phydm_api_set_txagc(
> > > -						  dm, power_index,
> > > -						  (enum odm_rf_radio_path)
> > > +				status &= phydm_api_set_txagc(
> > > +						   dm, power_index,
> > > +						   (enum odm_rf_radio_path)
> > >   							  dm_value[1],
> > > -						  i, false));
> > > +						   i, false);
> > >   		} else if (dm->support_ic_type & ODM_RTL8197F) {
> > >   			for (i = 0; i <= ODM_RATEMCS15; i++)
> > > -				status = (status &
> > > -					  phydm_api_set_txagc(
> > > -						  dm, power_index,
> > > -						  (enum odm_rf_radio_path)
> > > +				status &= phydm_api_set_txagc(
> > > +						   dm, power_index,
> > > +						   (enum odm_rf_radio_path)
> > >   							  dm_value[1],
> > > -						  i, false));
> > > +						   i, false);
> > >   		}
> > >
> > >   		if (status)
> > > --
> > > 2.19.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20190330155517.2194-1-nishka.dasgupta%40yahoo.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

