X-GM-THRID: 6207871882034675712
X-Received: by 10.180.87.164 with SMTP id az4mr6489092wib.1.1445415465959;
        Wed, 21 Oct 2015 01:17:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.229 with SMTP id p5ls345640wif.45.gmail; Wed, 21 Oct
 2015 01:17:45 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr6482118wia.7.1445415465144;
        Wed, 21 Oct 2015 01:17:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si963893wib.1.2015.10.21.01.17.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:17:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,711,1437429600"; 
   d="scan'208";a="151244548"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Oct 2015 10:17:44 +0200
Date: Wed, 21 Oct 2015 10:17:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: dgap: add spaces around
 binary operator '|'
In-Reply-To: <CAHWJYF=m1rr+3thCJw4Cdy6iWmnYFp8pk+ToCV9y1xtFYnikUw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510211017200.2588@hadrien>
References: <cover.1445382697.git.ciorneiioana@gmail.com> <e20a6f69d9b2c8bb11f7e5448a87fa3f2d7974aa.1445382697.git.ciorneiioana@gmail.com> <alpine.DEB.2.10.1510210950380.2588@hadrien> <CAHWJYF=m1rr+3thCJw4Cdy6iWmnYFp8pk+ToCV9y1xtFYnikUw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Oct 2015, Ioana Ciornei wrote:

> On Wed, Oct 21, 2015 at 10:52 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Wed, 21 Oct 2015, Ioana Ciornei wrote:
> >
> >> This patch adds spaces around binary operator '|'.
> >> Done with coccinelle semantic patch:
> >>
> >> @@
> >> identifier x, y, z;
> >> @@
> >> (
> >> - x|y|z
> >> + x | y | z
> >> |
> >> - x|y
> >> + x | y
> >
> > Actually, Coccinelle doesn't care about the spacing that you put in the
> > semantic patch.  So your - lines match all | operations, not just the ones
> > that are missing spaces.  If you give the argument --smpl-spacing, then
> > Coccinelle will follow the spacing that you specify for the added code.
> > Without this option, it just does what it considers to be best, which
> > turns out to be what you want anyway.
> >
> > julia
>
> I will remember that (--smpl-spacing). Thanks.
> Are there any other problems that I should consider regarding this
> patch or it is ok?

The rest looks fine.

julia

>
> Thanks,
>
> Ioana
>
>
> >
> >> )
> >>
> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> ---
> >>  drivers/staging/dgap/dgap.c | 58 ++++++++++++++++++++++-----------------------
> >>  1 file changed, 29 insertions(+), 29 deletions(-)
> >>
> >> diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
> >> index 163d566..60bb56e 100644
> >> --- a/drivers/staging/dgap/dgap.c
> >> +++ b/drivers/staging/dgap/dgap.c
> >> @@ -140,21 +140,21 @@ struct board_id {
> >>  };
> >>
> >>  static struct board_id dgap_ids[] = {
> >> -     { PPCM,        PCI_DEV_XEM_NAME,     64, (T_PCXM|T_PCLITE|T_PCIBUS) },
> >> -     { PCX,         PCI_DEV_CX_NAME,     128, (T_CX|T_PCIBUS)            },
> >> -     { PCX,         PCI_DEV_CX_IBM_NAME, 128, (T_CX|T_PCIBUS)            },
> >> -     { PEPC,        PCI_DEV_EPCJ_NAME,   224, (T_EPC|T_PCIBUS)           },
> >> -     { APORT2_920P, PCI_DEV_920_2_NAME,    2, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { APORT4_920P, PCI_DEV_920_4_NAME,    4, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { APORT8_920P, PCI_DEV_920_8_NAME,    8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PAPORT8,     PCI_DEV_XR_NAME,       8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PAPORT8,     PCI_DEV_XRJ_NAME,      8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PAPORT8,     PCI_DEV_XR_422_NAME,   8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PAPORT8,     PCI_DEV_XR_IBM_NAME,   8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PAPORT8,     PCI_DEV_XR_SAIP_NAME,  8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PAPORT8,     PCI_DEV_XR_BULL_NAME,  8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { APORT8_920P, PCI_DEV_920_8_HP_NAME, 8, (T_PCXR|T_PCLITE|T_PCIBUS) },
> >> -     { PPCM,        PCI_DEV_XEM_HP_NAME,  64, (T_PCXM|T_PCLITE|T_PCIBUS) },
> >> +     {PPCM,        PCI_DEV_XEM_NAME,     64, (T_PCXM | T_PCLITE | T_PCIBUS)},
> >> +     {PCX,         PCI_DEV_CX_NAME,     128, (T_CX | T_PCIBUS)            },
> >> +     {PCX,         PCI_DEV_CX_IBM_NAME, 128, (T_CX | T_PCIBUS)            },
> >> +     {PEPC,        PCI_DEV_EPCJ_NAME,   224, (T_EPC | T_PCIBUS)           },
> >> +     {APORT2_920P, PCI_DEV_920_2_NAME,    2, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {APORT4_920P, PCI_DEV_920_4_NAME,    4, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {APORT8_920P, PCI_DEV_920_8_NAME,    8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PAPORT8,     PCI_DEV_XR_NAME,       8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PAPORT8,     PCI_DEV_XRJ_NAME,      8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PAPORT8,     PCI_DEV_XR_422_NAME,   8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PAPORT8,     PCI_DEV_XR_IBM_NAME,   8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PAPORT8,     PCI_DEV_XR_SAIP_NAME,  8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PAPORT8,     PCI_DEV_XR_BULL_NAME,  8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {APORT8_920P, PCI_DEV_920_8_HP_NAME, 8, (T_PCXR | T_PCLITE | T_PCIBUS)},
> >> +     {PPCM,        PCI_DEV_XEM_HP_NAME,  64, (T_PCXM | T_PCLITE | T_PCIBUS)},
> >>       {0,}                                            /* 0 terminated list. */
> >>  };
> >>
> >> @@ -2705,7 +2705,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
> >>               ch->ch_flags |= (CH_BAUD0);
> >>
> >>               /* Drop RTS and DTR */
> >> -             ch->ch_mval &= ~(D_RTS(ch)|D_DTR(ch));
> >> +             ch->ch_mval &= ~(D_RTS(ch) | D_DTR(ch));
> >>               mval = D_DTR(ch) | D_RTS(ch);
> >>               ch->ch_baud_info = 0;
> >>
> >> @@ -2726,7 +2726,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
> >>               /* Handle transition from B0 */
> >>               if (ch->ch_flags & CH_BAUD0) {
> >>                       ch->ch_flags &= ~(CH_BAUD0);
> >> -                     ch->ch_mval |= (D_RTS(ch)|D_DTR(ch));
> >> +                     ch->ch_mval |= (D_RTS(ch) | D_DTR(ch));
> >>               }
> >>               mval = D_DTR(ch) | D_RTS(ch);
> >>
> >> @@ -2872,7 +2872,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
> >>               /* Handle transition from B0 */
> >>               if (ch->ch_flags & CH_BAUD0) {
> >>                       ch->ch_flags &= ~(CH_BAUD0);
> >> -                     ch->ch_mval |= (D_RTS(ch)|D_DTR(ch));
> >> +                     ch->ch_mval |= (D_RTS(ch) | D_DTR(ch));
> >>               }
> >>               mval = D_DTR(ch) | D_RTS(ch);
> >>       }
> >> @@ -3161,12 +3161,12 @@ static void dgap_tty_flush_buffer(struct tty_struct *tty)
> >>       head = readw(&ch->ch_bs->tx_head);
> >>       dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
> >>       dgap_cmdw(ch, RESUMETX, 0, 0);
> >> -     if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
> >> -             ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
> >> +     if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
> >> +             ch->ch_tun.un_flags &= ~(UN_LOW | UN_EMPTY);
> >>               wake_up_interruptible(&ch->ch_tun.un_flags_wait);
> >>       }
> >> -     if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
> >> -             ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
> >> +     if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
> >> +             ch->ch_pun.un_flags &= ~(UN_LOW | UN_EMPTY);
> >>               wake_up_interruptible(&ch->ch_pun.un_flags_wait);
> >>       }
> >>
> >> @@ -3982,7 +3982,7 @@ static int dgap_set_modem_info(struct channel_t *ch, struct board_t *bd,
> >>               break;
> >>
> >>       case TIOCMSET:
> >> -             ch->ch_mforce = D_DTR(ch)|D_RTS(ch);
> >> +             ch->ch_mforce = D_DTR(ch) | D_RTS(ch);
> >>
> >>               if (arg & TIOCM_RTS)
> >>                       ch->ch_mval |= D_RTS(ch);
> >> @@ -4589,8 +4589,8 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
> >>                * If we have HUPCL set, lower DTR and RTS
> >>                */
> >>               if (ch->ch_c_cflag & HUPCL) {
> >> -                     ch->ch_mostat &= ~(D_RTS(ch)|D_DTR(ch));
> >> -                     dgap_cmdb(ch, SMODEM, 0, D_DTR(ch)|D_RTS(ch), 0);
> >> +                     ch->ch_mostat &= ~(D_RTS(ch) | D_DTR(ch));
> >> +                     dgap_cmdb(ch, SMODEM, 0, D_DTR(ch) | D_RTS(ch), 0);
> >>
> >>                       /*
> >>                        * Go to sleep to ensure RTS/DTR
> >> @@ -4962,12 +4962,12 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
> >>               head = readw(&ch->ch_bs->tx_head);
> >>               dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
> >>               dgap_cmdw(ch, RESUMETX, 0, 0);
> >> -             if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
> >> -                     ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
> >> +             if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
> >> +                     ch->ch_tun.un_flags &= ~(UN_LOW | UN_EMPTY);
> >>                       wake_up_interruptible(&ch->ch_tun.un_flags_wait);
> >>               }
> >> -             if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
> >> -                     ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
> >> +             if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
> >> +                     ch->ch_pun.un_flags &= ~(UN_LOW | UN_EMPTY);
> >>                       wake_up_interruptible(&ch->ch_pun.un_flags_wait);
> >>               }
> >>               if (waitqueue_active(&tty->write_wait))
> >> --
> >> 2.1.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e20a6f69d9b2c8bb11f7e5448a87fa3f2d7974aa.1445382697.git.ciorneiioana%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
>
>
> --
> Ioana Ciornei
> Facultatea de Automatica si Calculatoare, UPB
> Tel. 0753 861 668
>

