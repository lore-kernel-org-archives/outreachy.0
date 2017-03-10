X-GM-THRID: 6393343309495926784
X-Received: by 10.46.78.9 with SMTP id c9mr3434549ljb.20.1489170221702;
        Fri, 10 Mar 2017 10:23:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls1064667ljd.29.gmail; Fri, 10 Mar
 2017 10:23:41 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr2809479lfe.28.1489170221300;
        Fri, 10 Mar 2017 10:23:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si39178wmd.0.2017.03.10.10.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:23:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,142,1486422000"; 
   d="scan'208";a="216340402"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 19:23:40 +0100
Date: Fri, 10 Mar 2017 19:23:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Avoid multiple
 assignments on same line
In-Reply-To: <3f1d5d12-ab81-46ae-84a7-9dd421baec05@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703101922300.3356@hadrien>
References: <20170310171337.GA4940@arushi-HP-Pavilion-Notebook> <alpine.DEB.2.20.1703101819260.3356@hadrien> <3f1d5d12-ab81-46ae-84a7-9dd421baec05@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-549073779-1489170206=:3356"

--8323329-549073779-1489170206=:3356
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 10 Mar 2017, Arushi Singhal wrote:

> Should I resend the patch

Maybe let it go.  If Greg asked for a resend, he's probably fine with it
as is.  It's more me who would rather know whether it is something I have
seen before :)

julia

>
> On Friday, March 10, 2017 at 10:50:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Fri, 10 Mar 2017, Arushi Singhal wrote:
>
>       > This patch fixes the checkpatch.pl warning "multiple
>       assignments
>       > should be avoided."
>
>       Is this something that you have sent before that Greg asked you
>       to resend?
>       It could be good to put RESEND in [PATCH] in that case.
>
>       julia
>
>       >
>       > Signed-off-by: Arushi Singhal <arushising...@gmail.com>
>       > ---
>       >  drivers/staging/speakup/main.c | 18 ++++++++++++------
>       >  1 file changed, 12 insertions(+), 6 deletions(-)
>       >
>       > diff --git a/drivers/staging/speakup/main.c
>       b/drivers/staging/speakup/main.c
>       > index c1c3ee7dc95a..6c21ae1ae2d3 100644
>       > --- a/drivers/staging/speakup/main.c
>       > +++ b/drivers/staging/speakup/main.c
>       > @@ -269,9 +269,12 @@ static unsigned char
>       get_attributes(struct vc_data *vc, u16 *pos)
>       >
>       >  static void speakup_date(struct vc_data *vc)
>       >  {
>       > -        spk_x = spk_cx = vc->vc_x;
>       > -        spk_y = spk_cy = vc->vc_y;
>       > -        spk_pos = spk_cp = vc->vc_pos;
>       > +        spk_x = vc->vc_x;
>       > +        spk_cx = spk_x;
>       > +        spk_y = vc->vc_y;
>       > +        spk_cy = spk_y;
>       > +        spk_pos = vc->vc_pos;
>       > +        spk_cp = spk_pos;
>       >          spk_old_attr = spk_attr;
>       >          spk_attr = get_attributes(vc, (u_short *)spk_pos);
>       >  }
>       > @@ -1643,9 +1646,12 @@ static int speak_highlight(struct
>       vc_data *vc)
>       >                  spk_do_flush();
>       >
>                        spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
>       >                            
>        speakup_console[vc_num]->ht.highsize[hc]);
>       > -                spk_pos = spk_cp =
>       speakup_console[vc_num]->ht.rpos[hc];
>       > -                spk_x = spk_cx =
>       speakup_console[vc_num]->ht.rx[hc];
>       > -                spk_y = spk_cy =
>       speakup_console[vc_num]->ht.ry[hc];
>       > +                spk_pos =
>       speakup_console[vc_num]->ht.rpos[hc];
>       > +                spk_cp =
>       speakup_console[vc_num]->ht.rpos[hc];
>       > +                spk_x = speakup_console[vc_num]->ht.rx[hc];
>       > +                spk_cx = speakup_console[vc_num]->ht.rx[hc];
>       > +                spk_y = speakup_console[vc_num]->ht.ry[hc];
>       > +                spk_cy = speakup_console[vc_num]->ht.ry[hc];
>       >                  return 1;
>       >          }
>       >          return 0;
>       > --
>       > 2.11.0
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170310171337.GA4940%40
>       arushi-HP-Pavilion-Notebook.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/3f1d5d12-ab81-46ae-84a7-
> 9dd421baec05%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-549073779-1489170206=:3356--

