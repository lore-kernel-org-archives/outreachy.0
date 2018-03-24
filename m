X-GM-THRID: 6536210357179908096
X-Received: by 10.28.165.209 with SMTP id o200mr1336670wme.7.1521885635255;
        Sat, 24 Mar 2018 03:00:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.135.56 with SMTP id a53ls2662207wra.4.gmail; Sat, 24 Mar
 2018 03:00:34 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvHEXtuEf0+OXyNMOHs4EOgI7cFo0r3f/IBYIbOSzdpkInXWQbT8cRhmBNm7IjN0Qno5r4h
X-Received: by 10.223.197.211 with SMTP id v19mr614691wrg.9.1521885634207;
        Sat, 24 Mar 2018 03:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521885634; cv=none;
        d=google.com; s=arc-20160816;
        b=Av5PYGck2YLH4YPVrqZJkpLAnXgoF1yiRZzsh/Ok3Aw+WYjLxkz6SU4QA9WVagm19Y
         Rag5GQUd/974/WhRsiQm93Xr9RpHT1D1GL4ogfltpvorHJPOJfUhsdxinyBKHwtOeifS
         9NJ4r3+xcSF33si5birDHoRBL/xOWE7z4F4lTWg34RRvhWael+KYv1MImcEumPc4/N/Q
         SSi41PHv+w6avoUUsJiScDdJvWIVtPgorSMKme7syY6v6b6nXgoSB7B7fQPmVlgNANkv
         d30PBfxEiLTyoVdKPC1bxoDIJAJS/KdCOiG9v10wz0fHNIhUmaiNQjDxjtxOuqwTnyz/
         4noQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=b1trbOuFvMA3g6j4KAzB+OHDnt0yZDdiEJ+8dOJ2vKA=;
        b=DkerBsuDMB4M/XztMr97HwGKiCc7zKcZeZIrVbA38VkkrL+7SFcrMlXoJhJC+rG9Q8
         TpqGgIqRaE7vYKHB3mN1my2OuVgalB5XhskL6kxtgJJ8mMthcTGbkBw8ASofCFjtu9kM
         N4TrMXb0TTK03Lk3MbTCoOleApeCkAPDnlidaEmEF8+emDJa3q1SGVxkgd/HQwZe8c1k
         Ale7qfkKtr6n8TeoxIXO98DLlHrRVzYRj2w23BGCYkCSMliwwVg/oz3zTpAY6yAWSK22
         stYAICvkueSPACxNv3GxbwUG+uhWBp3l7PxcDtS+aIKrdv8dQ/F7vAsnd2SoYn0QAl3k
         na2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i3si268665wmb.2.2018.03.24.03.00.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 03:00:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,354,1517871600"; 
   d="scan'208";a="319719798"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 11:00:33 +0100
Date: Sat, 24 Mar 2018 06:00:30 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: vt6655: Change
 CARD_PKT_TYPE from typedef to enum
In-Reply-To: <CAC4++KDj9SQiF5Cyxyads8q0XZd7fdDa1eWhH9_WfvnQPA=0mg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803240600030.2577@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1803231435550.2450@hadrien> <CAC4++KDR0oqq6HVRU5NEJx5U_GUZ1-mb8PRP2nXTn1KpTEXkMA@mail.gmail.com> <alpine.DEB.2.20.1803231829090.2369@hadrien>
 <CAC4++KDj9SQiF5Cyxyads8q0XZd7fdDa1eWhH9_WfvnQPA=0mg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> On Sat, Mar 24, 2018 at 4:01 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sat, 24 Mar 2018, Nishka Dasgupta wrote:
> >
> > > On Sat, Mar 24, 2018 at 12:06 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > >
> > > >
> > > > On Fri, 23 Mar 2018, Nishka Dasgupta wrote:
> > > >
> > > >> Change CARD_PKT_TYPE from typedef enum to enum. Issue found with checkpatch.
> > > >>
> > > >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> > > >> ---
> > > >> Changes in v2:
> > > >>  - Clarify subject and commit message.
> > > >>
> > > >>  drivers/staging/vt6655/card.h | 4 ++--
> > > >>  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >>
> > > >> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> > > >> index 487039a..be5254a 100644
> > > >> --- a/drivers/staging/vt6655/card.h
> > > >> +++ b/drivers/staging/vt6655/card.h
> > > >> @@ -39,12 +39,12 @@
> > > >>  #define CB_MAX_CHANNEL_5G       42
> > > >>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
> > > >>
> > > >> -typedef enum _CARD_PKT_TYPE {
> > > >> +enum CARD_PKT_TYPE {
> > > >>       PKT_TYPE_802_11_BCN,
> > > >>       PKT_TYPE_802_11_MNG,
> > > >>       PKT_TYPE_802_11_DATA,
> > > >>       PKT_TYPE_802_11_ALL
> > > >> -} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
> > > >> +};
> > > >
> > > > Were the typedefs never use?  If they were used, then this should result
> > > > in a kernel that doesn't compile.
> > >
> > > This particular driver is compiling at my end; if I remember
> > > correctly, all of drivers/staging/ also compiled with the changes in
> > > this patchset.
> > > Just to be sure, I also searched within this driver for this (and
> > > other) typedefs being used after the definition, and I couldn't find
> > > any occurrences, which confused me a little. Am I doing something
> > > wrong?
> >
> > For an enum, it could be useful even if the type name is never used,
> > because the enum serves to define some constants, eg PKT_TYPE_802_11_BCN.
> > But even the constants don't seem to be used in this case.  So it seems
> > that the whole thing could just be dropped.
>
> No, I couldn't find the constants being used either. Should I delete
> all of these in that case?

Yes.

julia

>
> > julia
> >
> >
> > >
> > > > julia
> > > >
> > > >>
> > > >>  typedef enum _CARD_STATUS_TYPE {
> > > >>       CARD_STATUS_MEDIA_CONNECT,
> > > >> --
> > > >> 2.7.4
> > > >>
> > > >> --
> > > >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> > > >> For more options, visit https://groups.google.com/d/optout.
> > > >>
> > >
> > > Thanking you,
> > > Nishka Dasgupta
> > >
>
> Thanking you,
> Nishka Dasgupta
>

