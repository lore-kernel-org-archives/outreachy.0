X-GM-THRID: 6207871882034675712
X-Received: by 10.112.150.229 with SMTP id ul5mr1808209lbb.2.1445415411863;
        Wed, 21 Oct 2015 01:16:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.213 with SMTP id g204ls181862lfb.92.gmail; Wed, 21 Oct
 2015 01:16:51 -0700 (PDT)
X-Received: by 10.112.184.170 with SMTP id ev10mr1814585lbc.4.1445415408727;
        Wed, 21 Oct 2015 01:16:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id hs5si886363wib.1.2015.10.21.01.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:16:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,711,1437429600"; 
   d="scan'208";a="151244432"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Oct 2015 10:16:47 +0200
Date: Wed, 21 Oct 2015 10:16:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: dgap: remove unnecessary
 brackets
In-Reply-To: <CAHWJYFm87YacGDpaEmjYQvDBzcD6OtZ0desHaTBCxL36fH_dTQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510211013480.2588@hadrien>
References: <cover.1445382697.git.ciorneiioana@gmail.com> <297a5e7fdf9061882469fc3af732a51e033c426c.1445382697.git.ciorneiioana@gmail.com> <alpine.DEB.2.10.1510210948040.2588@hadrien> <CAHWJYFm87YacGDpaEmjYQvDBzcD6OtZ0desHaTBCxL36fH_dTQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Oct 2015, Ioana Ciornei wrote:

> On Wed, Oct 21, 2015 at 10:50 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Wed, 21 Oct 2015, Ioana Ciornei wrote:
> >
> >> This patch removes unnecessary brackets when dealing with
> >> unary operators like '&'.
> >> Done with coccinelle semantic patch:
> >>
> >> @@
> >> expression e;
> >> @@
> >>
> >> (
> >> - &(e)
> >> + &e
> >> )
> >
> > The outer parentheses are not necessary.  Parentheses in column 0 are for
> > the case where one wants to consider a collection of possible options, but
> > that is not your case here.
>
> The outer parentheses were just forgotten there because I tried
> multiple versions of the semantic patch and one of them had multiple
> cases.
> Sorry about that.
>
> >
> > Also, with your rule, you remove the expression e and add it back.  When
> > you do that, Coccinelle decides how to format e.  In this case it probably
> > doesn't matter, because there is not much choice about the formatting, but
> > if you wanted to only remove the parentheses, the rule would be:
> >
> >   &
> > - (
> >   e
> > - )
> >
> > julia
>
> Should I rework the patch with the new semantic patch and resubmit?

No, I think it's OK as is. In your particular case, it has no impact on
the output, and the semantic patch you give is understandable.  It's just
something to remember for the future.  Also, it's really a tradeoff.
Sometimes it is good to not remove things and put them back, because the
developer already made good choices about the spacing.  But other times,
when your semantic patches makes big changes around some code, the code
will have to be reformatted anyway, and it can be easier to just let
Coccinelle do the whole thing.  So it may be useful to try both ways, and
see what makes the largest amount of code look best.

julia

>
> Thanks,
>
> Ioana
>
>
> >
> >>
> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> ---
> >>  drivers/staging/dgap/dgap.c | 194 ++++++++++++++++++++++----------------------
> >>  1 file changed, 97 insertions(+), 97 deletions(-)
> >>
> >> diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
> >> index fe29ff3..163d566 100644
> >> --- a/drivers/staging/dgap/dgap.c
> >> +++ b/drivers/staging/dgap/dgap.c
> >> @@ -1510,15 +1510,15 @@ static void dgap_input(struct channel_t *ch)
> >>
> >>       rmask = ch->ch_rsize - 1;
> >>
> >> -     head = readw(&(bs->rx_head));
> >> +     head = readw(&bs->rx_head);
> >>       head &= rmask;
> >> -     tail = readw(&(bs->rx_tail));
> >> +     tail = readw(&bs->rx_tail);
> >>       tail &= rmask;
> >>
> >>       data_len = (head - tail) & rmask;
> >>
> >>       if (data_len == 0) {
> >> -             writeb(1, &(bs->idata));
> >> +             writeb(1, &bs->idata);
> >>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
> >>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
> >>               return;
> >> @@ -1533,8 +1533,8 @@ static void dgap_input(struct channel_t *ch)
> >>           !(ch->ch_tun.un_flags & UN_ISOPEN) ||
> >>           !(tp->termios.c_cflag & CREAD) ||
> >>           (ch->ch_tun.un_flags & UN_CLOSING)) {
> >> -             writew(head, &(bs->rx_tail));
> >> -             writeb(1, &(bs->idata));
> >> +             writew(head, &bs->rx_tail);
> >> +             writeb(1, &bs->idata);
> >>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
> >>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
> >>               return;
> >> @@ -1544,7 +1544,7 @@ static void dgap_input(struct channel_t *ch)
> >>        * If we are throttled, simply don't read any data.
> >>        */
> >>       if (ch->ch_flags & CH_RXBLOCK) {
> >> -             writeb(1, &(bs->idata));
> >> +             writeb(1, &bs->idata);
> >>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
> >>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
> >>               return;
> >> @@ -1553,10 +1553,10 @@ static void dgap_input(struct channel_t *ch)
> >>       /*
> >>        *      Ignore oruns.
> >>        */
> >> -     tmpchar = readb(&(bs->orun));
> >> +     tmpchar = readb(&bs->orun);
> >>       if (tmpchar) {
> >>               ch->ch_err_overrun++;
> >> -             writeb(0, &(bs->orun));
> >> +             writeb(0, &bs->orun);
> >>       }
> >>
> >>       /* Decide how much data we can send into the tty layer */
> >> @@ -1591,13 +1591,13 @@ static void dgap_input(struct channel_t *ch)
> >>                * space to put the data right now.
> >>                */
> >>               if (!ld->ops->receive_buf) {
> >> -                     writew(head, &(bs->rx_tail));
> >> +                     writew(head, &bs->rx_tail);
> >>                       len = 0;
> >>               }
> >>       }
> >>
> >>       if (len <= 0) {
> >> -             writeb(1, &(bs->idata));
> >> +             writeb(1, &bs->idata);
> >>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
> >>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
> >>               if (ld)
> >> @@ -1630,8 +1630,8 @@ static void dgap_input(struct channel_t *ch)
> >>               tail &= rmask;
> >>       }
> >>
> >> -     writew(tail, &(bs->rx_tail));
> >> -     writeb(1, &(bs->idata));
> >> +     writew(tail, &bs->rx_tail);
> >> +     writeb(1, &bs->idata);
> >>       ch->ch_rxcount += len;
> >>
> >>       /*
> >> @@ -1840,8 +1840,8 @@ static int dgap_event(struct board_t *bd)
> >>       eaddr = (struct ev_t __iomem *)(vaddr + EVBUF);
> >>
> >>       /* Get our head and tail */
> >> -     head = readw(&(eaddr->ev_head));
> >> -     tail = readw(&(eaddr->ev_tail));
> >> +     head = readw(&eaddr->ev_head);
> >> +     tail = readw(&eaddr->ev_tail);
> >>
> >>       /*
> >>        * Forget it if pointers out of range.
> >> @@ -1916,7 +1916,7 @@ static int dgap_event(struct board_t *bd)
> >>                       if (ch->ch_flags & CH_RACTIVE)
> >>                               ch->ch_flags |= CH_RENABLE;
> >>                       else
> >> -                             writeb(1, &(bs->idata));
> >> +                             writeb(1, &bs->idata);
> >>
> >>                       if (ch->ch_flags & CH_RWAIT) {
> >>                               ch->ch_flags &= ~CH_RWAIT;
> >> @@ -1983,7 +1983,7 @@ next:
> >>               tail = (tail + 4) & (EVMAX - EVSTART - 4);
> >>       }
> >>
> >> -     writew(tail, &(eaddr->ev_tail));
> >> +     writew(tail, &eaddr->ev_tail);
> >>       spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
> >>
> >>       return 0;
> >> @@ -2030,8 +2030,8 @@ static void dgap_poll_tasklet(unsigned long data)
> >>               eaddr = (struct ev_t __iomem *)(vaddr + EVBUF);
> >>
> >>               /* Get our head and tail */
> >> -             head = readw(&(eaddr->ev_head));
> >> -             tail = readw(&(eaddr->ev_tail));
> >> +             head = readw(&eaddr->ev_head);
> >> +             tail = readw(&eaddr->ev_tail);
> >>
> >>               /*
> >>                * If there is an event pending. Go service it.
> >> @@ -2370,7 +2370,7 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
> >>               return;
> >>
> >>       cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
> >> -     head = readw(&(cm_addr->cm_head));
> >> +     head = readw(&cm_addr->cm_head);
> >>
> >>       /*
> >>        * Forget it if pointers out of range.
> >> @@ -2390,7 +2390,7 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
> >>
> >>       head = (head + 4) & (CMDMAX - CMDSTART - 4);
> >>
> >> -     writew(head, &(cm_addr->cm_head));
> >> +     writew(head, &cm_addr->cm_head);
> >>
> >>       /*
> >>        * Wait if necessary before updating the head
> >> @@ -2399,8 +2399,8 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
> >>        * is outlandish, declare the FEP dead.
> >>        */
> >>       for (count = dgap_count ;;) {
> >> -             head = readw(&(cm_addr->cm_head));
> >> -             tail = readw(&(cm_addr->cm_tail));
> >> +             head = readw(&cm_addr->cm_head);
> >> +             tail = readw(&cm_addr->cm_tail);
> >>
> >>               n = (head - tail) & (CMDMAX - CMDSTART - 4);
> >>
> >> @@ -2453,7 +2453,7 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
> >>               return;
> >>
> >>       cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
> >> -     head = readw(&(cm_addr->cm_head));
> >> +     head = readw(&cm_addr->cm_head);
> >>
> >>       /*
> >>        * Forget it if pointers out of range.
> >> @@ -2472,7 +2472,7 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
> >>
> >>       head = (head + 4) & (CMDMAX - CMDSTART - 4);
> >>
> >> -     writew(head, &(cm_addr->cm_head));
> >> +     writew(head, &cm_addr->cm_head);
> >>
> >>       /*
> >>        * Wait if necessary before updating the head
> >> @@ -2481,8 +2481,8 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
> >>        * is outlandish, declare the FEP dead.
> >>        */
> >>       for (count = dgap_count ;;) {
> >> -             head = readw(&(cm_addr->cm_head));
> >> -             tail = readw(&(cm_addr->cm_tail));
> >> +             head = readw(&cm_addr->cm_head);
> >> +             tail = readw(&cm_addr->cm_tail);
> >>
> >>               n = (head - tail) & (CMDMAX - CMDSTART - 4);
> >>
> >> @@ -2535,7 +2535,7 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
> >>               return;
> >>
> >>       cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
> >> -     head = readw(&(cm_addr->cm_head));
> >> +     head = readw(&cm_addr->cm_head);
> >>
> >>       /*
> >>        * Forget it if pointers out of range.
> >> @@ -2566,7 +2566,7 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
> >>
> >>       head = (head + 8) & (CMDMAX - CMDSTART - 4);
> >>
> >> -     writew(head, &(cm_addr->cm_head));
> >> +     writew(head, &cm_addr->cm_head);
> >>
> >>       /*
> >>        * Wait if necessary before updating the head
> >> @@ -2575,8 +2575,8 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
> >>        * is outlandish, declare the FEP dead.
> >>        */
> >>       for (count = dgap_count ;;) {
> >> -             head = readw(&(cm_addr->cm_head));
> >> -             tail = readw(&(cm_addr->cm_tail));
> >> +             head = readw(&cm_addr->cm_head);
> >> +             tail = readw(&cm_addr->cm_tail);
> >>
> >>               n = (head - tail) & (CMDMAX - CMDSTART - 4);
> >>
> >> @@ -2614,7 +2614,7 @@ static void dgap_wmove(struct channel_t *ch, char *buf, uint cnt)
> >>        * Check parameters.
> >>        */
> >>       bs   = ch->ch_bs;
> >> -     head = readw(&(bs->tx_head));
> >> +     head = readw(&bs->tx_head);
> >>
> >>       /*
> >>        * If pointers are out of range, just return.
> >> @@ -2646,7 +2646,7 @@ static void dgap_wmove(struct channel_t *ch, char *buf, uint cnt)
> >>       memcpy_toio(taddr, buf, n);
> >>       head += cnt;
> >>
> >> -     writew(head, &(bs->tx_head));
> >> +     writew(head, &bs->tx_head);
> >>  }
> >>
> >>  /*
> >> @@ -2695,12 +2695,12 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
> >>        */
> >>       if ((ch->ch_c_cflag & (CBAUD)) == 0) {
> >>               /* flush rx */
> >> -             head = readw(&(ch->ch_bs->rx_head));
> >> -             writew(head, &(ch->ch_bs->rx_tail));
> >> +             head = readw(&ch->ch_bs->rx_head);
> >> +             writew(head, &ch->ch_bs->rx_tail);
> >>
> >>               /* flush tx */
> >> -             head = readw(&(ch->ch_bs->tx_head));
> >> -             writew(head, &(ch->ch_bs->tx_tail));
> >> +             head = readw(&ch->ch_bs->tx_head);
> >> +             writew(head, &ch->ch_bs->tx_tail);
> >>
> >>               ch->ch_flags |= (CH_BAUD0);
> >>
> >> @@ -2966,7 +2966,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
> >>       /*
> >>        * Read modem signals, and then call carrier function.
> >>        */
> >> -     ch->ch_mistat = readb(&(ch->ch_bs->m_stat));
> >> +     ch->ch_mistat = readb(&ch->ch_bs->m_stat);
> >>       dgap_carrier(ch);
> >>
> >>       /*
> >> @@ -3158,7 +3158,7 @@ static void dgap_tty_flush_buffer(struct tty_struct *tty)
> >>       spin_lock_irqsave(&ch->ch_lock, lock_flags2);
> >>
> >>       ch->ch_flags &= ~CH_STOP;
> >> -     head = readw(&(ch->ch_bs->tx_head));
> >> +     head = readw(&ch->ch_bs->tx_head);
> >>       dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
> >>       dgap_cmdw(ch, RESUMETX, 0, 0);
> >>       if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
> >> @@ -3252,15 +3252,15 @@ static int dgap_tty_chars_in_buffer(struct tty_struct *tty)
> >>       tmask = (ch->ch_tsize - 1);
> >>
> >>       /* Get Transmit queue pointers */
> >> -     thead = readw(&(bs->tx_head)) & tmask;
> >> -     ttail = readw(&(bs->tx_tail)) & tmask;
> >> +     thead = readw(&bs->tx_head) & tmask;
> >> +     ttail = readw(&bs->tx_tail) & tmask;
> >>
> >>       /* Get tbusy flag */
> >> -     tbusy = readb(&(bs->tbusy));
> >> +     tbusy = readb(&bs->tbusy);
> >>
> >>       /* Get Command queue pointers */
> >> -     chead = readw(&(ch->ch_cm->cm_head));
> >> -     ctail = readw(&(ch->ch_cm->cm_tail));
> >> +     chead = readw(&ch->ch_cm->cm_head);
> >> +     ctail = readw(&ch->ch_cm->cm_tail);
> >>
> >>       spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
> >>       spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
> >> @@ -3296,7 +3296,7 @@ static int dgap_tty_chars_in_buffer(struct tty_struct *tty)
> >>                       if (tbusy != 0) {
> >>                               spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >>                               un->un_flags |= UN_EMPTY;
> >> -                             writeb(1, &(bs->iempty));
> >> +                             writeb(1, &bs->iempty);
> >>                               spin_unlock_irqrestore(&ch->ch_lock,
> >>                                                      lock_flags);
> >>                       }
> >> @@ -3341,7 +3341,7 @@ static int dgap_wait_for_drain(struct tty_struct *tty)
> >>               /* Set flag waiting for drain */
> >>               spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >>               un->un_flags |= UN_EMPTY;
> >> -             writeb(1, &(bs->iempty));
> >> +             writeb(1, &bs->iempty);
> >>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
> >>
> >>               /* Go to sleep till we get woken up */
> >> @@ -3420,13 +3420,13 @@ static inline void dgap_set_firmware_event(struct un_t *un, unsigned int event)
> >>       if ((event & UN_LOW) != 0) {
> >>               if ((un->un_flags & UN_LOW) == 0) {
> >>                       un->un_flags |= UN_LOW;
> >> -                     writeb(1, &(bs->ilow));
> >> +                     writeb(1, &bs->ilow);
> >>               }
> >>       }
> >>       if ((event & UN_LOW) != 0) {
> >>               if ((un->un_flags & UN_EMPTY) == 0) {
> >>                       un->un_flags |= UN_EMPTY;
> >> -                     writeb(1, &(bs->iempty));
> >> +                     writeb(1, &bs->iempty);
> >>               }
> >>       }
> >>  }
> >> @@ -3463,8 +3463,8 @@ static int dgap_tty_write_room(struct tty_struct *tty)
> >>       spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >>
> >>       tmask = ch->ch_tsize - 1;
> >> -     head = readw(&(bs->tx_head)) & tmask;
> >> -     tail = readw(&(bs->tx_tail)) & tmask;
> >> +     head = readw(&bs->tx_head) & tmask;
> >> +     tail = readw(&bs->tx_tail) & tmask;
> >>
> >>       ret = tail - head - 1;
> >>       if (ret < 0)
> >> @@ -3540,9 +3540,9 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
> >>       spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >>       /* Get our space available for the channel from the board */
> >>       tmask = ch->ch_tsize - 1;
> >> -     head = readw(&(bs->tx_head)) & tmask;
> >> +     head = readw(&bs->tx_head) & tmask;
> >>
> >> -     tail = readw(&(bs->tx_tail)) & tmask;
> >> +     tail = readw(&bs->tx_tail) & tmask;
> >>
> >>       bufcount = tail - head - 1;
> >>       if (bufcount < 0)
> >> @@ -3576,7 +3576,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
> >>       if ((un->un_type == DGAP_PRINT) && !(ch->ch_flags & CH_PRON)) {
> >>               dgap_wmove(ch, ch->ch_digi.digi_onstr,
> >>                          (int)ch->ch_digi.digi_onlen);
> >> -             head = readw(&(bs->tx_head)) & tmask;
> >> +             head = readw(&bs->tx_head) & tmask;
> >>               ch->ch_flags |= CH_PRON;
> >>       }
> >>
> >> @@ -3587,7 +3587,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
> >>       if ((un->un_type != DGAP_PRINT) && (ch->ch_flags & CH_PRON)) {
> >>               dgap_wmove(ch, ch->ch_digi.digi_offstr,
> >>                          (int)ch->ch_digi.digi_offlen);
> >> -             head = readw(&(bs->tx_head)) & tmask;
> >> +             head = readw(&bs->tx_head) & tmask;
> >>               ch->ch_flags &= ~CH_PRON;
> >>       }
> >>
> >> @@ -3624,7 +3624,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
> >>       if (count) {
> >>               ch->ch_txcount += count;
> >>               head &= tmask;
> >> -             writew(head, &(bs->tx_head));
> >> +             writew(head, &bs->tx_head);
> >>       }
> >>
> >>       dgap_set_firmware_event(un, UN_LOW | UN_EMPTY);
> >> @@ -3637,15 +3637,15 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
> >>        * Otherwise turn it off right now.
> >>        */
> >>       if ((un->un_type == DGAP_PRINT) && (ch->ch_flags & CH_PRON)) {
> >> -             tail = readw(&(bs->tx_tail)) & tmask;
> >> +             tail = readw(&bs->tx_tail) & tmask;
> >>
> >>               if (tail != head) {
> >>                       un->un_flags |= UN_EMPTY;
> >> -                     writeb(1, &(bs->iempty));
> >> +                     writeb(1, &bs->iempty);
> >>               } else {
> >>                       dgap_wmove(ch, ch->ch_digi.digi_offstr,
> >>                                  (int)ch->ch_digi.digi_offlen);
> >> -                     head = readw(&(bs->tx_head)) & tmask;
> >> +                     head = readw(&bs->tx_head) & tmask;
> >>                       ch->ch_flags &= ~CH_PRON;
> >>               }
> >>       }
> >> @@ -3701,7 +3701,7 @@ static int dgap_tty_tiocmget(struct tty_struct *tty)
> >>
> >>       spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >>
> >> -     mstat = readb(&(ch->ch_bs->m_stat));
> >> +     mstat = readb(&ch->ch_bs->m_stat);
> >>       /* Append any outbound signals that might be pending... */
> >>       mstat |= ch->ch_mostat;
> >>
> >> @@ -3912,7 +3912,7 @@ static int dgap_get_modem_info(struct channel_t *ch, unsigned int __user *value)
> >>
> >>       spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >>
> >> -     mstat = readb(&(ch->ch_bs->m_stat));
> >> +     mstat = readb(&ch->ch_bs->m_stat);
> >>       /* Append any outbound signals that might be pending... */
> >>       mstat |= ch->ch_mostat;
> >>
> >> @@ -4124,7 +4124,7 @@ static int dgap_tty_digigetedelay(struct tty_struct *tty, int __user *retinfo)
> >>       memset(&tmp, 0, sizeof(tmp));
> >>
> >>       spin_lock_irqsave(&ch->ch_lock, lock_flags);
> >> -     tmp = readw(&(ch->ch_bs->edelay));
> >> +     tmp = readw(&ch->ch_bs->edelay);
> >>       spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
> >>
> >>       if (copy_to_user(retinfo, &tmp, sizeof(*retinfo)))
> >> @@ -4459,8 +4459,8 @@ static int dgap_tty_open(struct tty_struct *tty, struct file *file)
> >>               /*
> >>                * Flush input queue.
> >>                */
> >> -             head = readw(&(bs->rx_head));
> >> -             writew(head, &(bs->rx_tail));
> >> +             head = readw(&bs->rx_head);
> >> +             writew(head, &bs->rx_tail);
> >>
> >>               ch->ch_flags = 0;
> >>               ch->pscan_state = 0;
> >> @@ -4944,9 +4944,9 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
> >>
> >>               if ((arg == TCIFLUSH) || (arg == TCIOFLUSH)) {
> >>                       if (!(un->un_type == DGAP_PRINT)) {
> >> -                             head = readw(&(ch->ch_bs->rx_head));
> >> -                             writew(head, &(ch->ch_bs->rx_tail));
> >> -                             writeb(0, &(ch->ch_bs->orun));
> >> +                             head = readw(&ch->ch_bs->rx_head);
> >> +                             writew(head, &ch->ch_bs->rx_tail);
> >> +                             writeb(0, &ch->ch_bs->orun);
> >>                       }
> >>               }
> >>
> >> @@ -4959,7 +4959,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
> >>               }
> >>
> >>               ch->ch_flags &= ~CH_STOP;
> >> -             head = readw(&(ch->ch_bs->tx_head));
> >> +             head = readw(&ch->ch_bs->tx_head);
> >>               dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
> >>               dgap_cmdw(ch, RESUMETX, 0, 0);
> >>               if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
> >> @@ -4995,8 +4995,8 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
> >>               if (cmd == TCSETSF) {
> >>                       /* flush rx */
> >>                       ch->ch_flags &= ~CH_STOP;
> >> -                     head = readw(&(ch->ch_bs->rx_head));
> >> -                     writew(head, &(ch->ch_bs->rx_tail));
> >> +                     head = readw(&ch->ch_bs->rx_head);
> >> +                     writew(head, &ch->ch_bs->rx_tail);
> >>               }
> >>
> >>               /* now wait for all the output to drain */
> >> @@ -5900,31 +5900,31 @@ static struct attribute *dgap_sysfs_tty_entries[] = {
> >>  static void dgap_create_ports_sysfiles(struct board_t *bd)
> >>  {
> >>       dev_set_drvdata(&bd->pdev->dev, bd);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_state);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_baud);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_msignals);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_iflag);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_cflag);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_oflag);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_lflag);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_digi_flag);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_rxcount);
> >> -     device_create_file(&(bd->pdev->dev), &dev_attr_ports_txcount);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_state);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_baud);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_msignals);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_iflag);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_cflag);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_oflag);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_lflag);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_digi_flag);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_rxcount);
> >> +     device_create_file(&bd->pdev->dev, &dev_attr_ports_txcount);
> >>  }
> >>
> >>  /* removes all the sys files created for that port */
> >>  static void dgap_remove_ports_sysfiles(struct board_t *bd)
> >>  {
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_state);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_baud);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_msignals);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_iflag);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_cflag);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_oflag);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_lflag);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_digi_flag);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_rxcount);
> >> -     device_remove_file(&(bd->pdev->dev), &dev_attr_ports_txcount);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_state);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_baud);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_msignals);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_iflag);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_cflag);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_oflag);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_lflag);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_digi_flag);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_rxcount);
> >> +     device_remove_file(&bd->pdev->dev, &dev_attr_ports_txcount);
> >>  }
> >>
> >>  /*
> >> @@ -6760,12 +6760,12 @@ static int dgap_tty_init(struct board_t *brd)
> >>                       ch->ch_dsr      = DM_DSR;
> >>               }
> >>
> >> -             ch->ch_taddr = vaddr + (ioread16(&(ch->ch_bs->tx_seg)) << 4);
> >> -             ch->ch_raddr = vaddr + (ioread16(&(ch->ch_bs->rx_seg)) << 4);
> >> +             ch->ch_taddr = vaddr + (ioread16(&ch->ch_bs->tx_seg) << 4);
> >> +             ch->ch_raddr = vaddr + (ioread16(&ch->ch_bs->rx_seg) << 4);
> >>               ch->ch_tx_win = 0;
> >>               ch->ch_rx_win = 0;
> >> -             ch->ch_tsize = readw(&(ch->ch_bs->tx_max)) + 1;
> >> -             ch->ch_rsize = readw(&(ch->ch_bs->rx_max)) + 1;
> >> +             ch->ch_tsize = readw(&ch->ch_bs->tx_max) + 1;
> >> +             ch->ch_rsize = readw(&ch->ch_bs->rx_max) + 1;
> >>               ch->ch_tstart = 0;
> >>               ch->ch_rstart = 0;
> >>
> >> @@ -6783,7 +6783,7 @@ static int dgap_tty_init(struct board_t *brd)
> >>
> >>               dgap_cmdw(ch, SRHIGH, 7 * ch->ch_rsize / 8, 0);
> >>
> >> -             ch->ch_mistat = readb(&(ch->ch_bs->m_stat));
> >> +             ch->ch_mistat = readb(&ch->ch_bs->m_stat);
> >>
> >>               init_waitqueue_head(&ch->ch_flags_wait);
> >>               init_waitqueue_head(&ch->ch_tun.un_flags_wait);
> >> @@ -6791,18 +6791,18 @@ static int dgap_tty_init(struct board_t *brd)
> >>
> >>               /* Turn on all modem interrupts for now */
> >>               modem = (DM_CD | DM_DSR | DM_CTS | DM_RI);
> >> -             writeb(modem, &(ch->ch_bs->m_int));
> >> +             writeb(modem, &ch->ch_bs->m_int);
> >>
> >>               /*
> >>                * Set edelay to 0 if interrupts are turned on,
> >>                * otherwise set edelay to the usual 100.
> >>                */
> >>               if (brd->intr_used)
> >> -                     writew(0, &(ch->ch_bs->edelay));
> >> +                     writew(0, &ch->ch_bs->edelay);
> >>               else
> >> -                     writew(100, &(ch->ch_bs->edelay));
> >> +                     writew(100, &ch->ch_bs->edelay);
> >>
> >> -             writeb(1, &(ch->ch_bs->idata));
> >> +             writeb(1, &ch->ch_bs->idata);
> >>       }
> >>
> >>       return 0;
> >> --
> >> 2.1.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/297a5e7fdf9061882469fc3af732a51e033c426c.1445382697.git.ciorneiioana%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFm87YacGDpaEmjYQvDBzcD6OtZ0desHaTBCxL36fH_dTQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

