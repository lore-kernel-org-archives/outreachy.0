X-GM-THRID: 6390780050561564672
X-Received: by 10.25.0.141 with SMTP id 135mr92073lfa.5.1488209024721;
        Mon, 27 Feb 2017 07:23:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.141 with SMTP id v135ls1226103wmv.0.canary-gmail; Mon,
 27 Feb 2017 07:23:44 -0800 (PST)
X-Received: by 10.223.129.1 with SMTP id 1mr411543wrm.13.1488209024063;
        Mon, 27 Feb 2017 07:23:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si590618wme.2.2017.02.27.07.23.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:23:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262275867"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 16:23:43 +0100
Date: Mon, 27 Feb 2017 16:23:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: speakup: Align with open
 parentheses
In-Reply-To: <9955a49f-05fa-4a47-8999-175c54069811@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702271623080.3032@hadrien>
References: <20170227151124.18063-1-sreyamittal5@gmail.com> <alpine.DEB.2.20.1702271614250.3032@hadrien> <9955a49f-05fa-4a47-8999-175c54069811@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-847662962-1488209015=:3032"

--8323329-847662962-1488209015=:3032
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Feb 2017, Sreya Mittal wrote:

>
>
> On Monday, February 27, 2017 at 8:45:31 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Mon, 27 Feb 2017, Sreya Mittal wrote:
>
>       > Align next line of print statements
>       > to the right of open parentheses.
>       >
>       > Signed-off-by: Sreya Mittal <sreyam...@gmail.com>
>       > ---
>       >  drivers/staging/speakup/keyhelp.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/speakup/keyhelp.c
>       b/drivers/staging/speakup/keyhelp.c
>       > index ce94cb1..f5156bb 100644
>       > --- a/drivers/staging/speakup/keyhelp.c
>       > +++ b/drivers/staging/speakup/keyhelp.c
>       > @@ -117,7 +117,7 @@ static void say_key(int key)
>       >          }
>       >          if ((key > 0) && (key <= num_key_names))
>
>       It's not related to this change, but there are a lot of
>       parentheses in
>       the if tests that can be dropped.
>
>       julia
>
>
> Ok. I will make the changes and send again.

It's not for the same patch.  You can make a series, though.

julia

>
> Sreya
>  
>
>       >                  synth_printf(" %s\n",
>       >
>       -                                spk_msg_get(MSG_KEYNAMES_START
>       + (key - 1)));
>       > +                             spk_msg_get(MSG_KEYNAMES_START +
>       (key - 1)));
>       >  }
>       >
>       >  static int help_init(void)
>       > @@ -182,7 +182,7 @@ int spk_handle_help(struct vc_data *vc,
>       u_char type, u_char ch, u_short key)
>       >                  name = NULL;
>       >                  if ((type != KT_SPKUP) && (key > 0) && (key
>       <= num_key_names)) {
>       >                          synth_printf("%s\n",
>       >
>       -                                spk_msg_get(MSG_KEYNAMES_START
>       + key - 1));
>       > +                                    
>       spk_msg_get(MSG_KEYNAMES_START + key - 1));
>       >                          return 1;
>       >                  }
>       >                  for (i = 0; funcvals[i] != 0 && !name; i++) {
>       > --
>       > 2.9.3
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170227151124.18063-1-s
>       reyamittal5%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/9955a49f-05fa-4a47-8999-
> 175c54069811%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-847662962-1488209015=:3032--

