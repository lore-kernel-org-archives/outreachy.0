X-GM-THRID: 6207871882034675712
X-Received: by 10.129.73.143 with SMTP id w137mr6513465ywa.19.1445415469678;
        Wed, 21 Oct 2015 01:17:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.145 with SMTP id 17ls406462ior.97.gmail; Wed, 21 Oct
 2015 01:17:49 -0700 (PDT)
X-Received: by 10.68.94.1 with SMTP id cy1mr6616619pbb.14.1445415469205;
        Wed, 21 Oct 2015 01:17:49 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x243.google.com (mail-yk0-x243.google.com. [2607:f8b0:4002:c07::243])
        by gmr-mx.google.com with ESMTPS id m124si401263ywb.7.2015.10.21.01.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:17:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::243 as permitted sender) client-ip=2607:f8b0:4002:c07::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::243 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x243.google.com with SMTP id w201so3517830ykf.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 01:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KV82JYQdOf/8fRjzJ+e3TEhkV2euZU5/Tov+HldKL+I=;
        b=teJr3tIFRvnt/dxqm6jtkHKdALe0eTwb1LEHQeO30jeaL43lZt8nZJsfjNCL+wTC5N
         MNK1GTmp+iwnQgZfdJuRyeahGJqY/NZuuhi45q8ozNiXYBgJuuaSgXuONCWt1E0RzwmZ
         iqLP4ZvCtJzpJ3eN1dmQW+8Uh3Ge2o4e5gZEAQlU02VCFUJsbMTAOollDIToAaIxzyIm
         dFZL2pUqYHxY67mAk53tJjVXbub/bmVPZdJxi2VG43nuRqeHOhvIco6JlIPxpddd0nob
         aGBjMNi+DlEspARrgaRQkWMBQU4xpjHlIgl3g+YcfZ3cXLeZgKp+PzpnjFTYOU/I+5Mi
         AYjQ==
MIME-Version: 1.0
X-Received: by 10.13.216.212 with SMTP id a203mr5584820ywe.112.1445415469011;
 Wed, 21 Oct 2015 01:17:49 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 21 Oct 2015 01:17:48 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510210952460.2588@hadrien>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
	<d884ca2435043329459e463d282995002ab72e6f.1445382697.git.ciorneiioana@gmail.com>
	<alpine.DEB.2.10.1510210952460.2588@hadrien>
Date: Wed, 21 Oct 2015 11:17:48 +0300
Message-ID: <CAHWJYFnows9YywXh-9CASf48hZ=Grk7BMdNHR2gftFQi32VV7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: dgap: remove unnecessary
 space after cast
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 10:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 21 Oct 2015, Ioana Ciornei wrote:
>
>> This patch removes unnecessary spaces after the cast.
>> Patch done with coccinelle semantic patch:
>>
>> @rule0@
>> type t;
>> identifier e;
>> constant c;
>> expression expr;
>> @@
>>
>> (
>> - (t) e
>> + (t)e
>> |
>> - (t) c
>> + (t)c
>> |
>> - (t) expr
>> + (t)expr
>
> Again, you are actually just removing all expressions with casts,
> regardless of spacing, and then adding them back with the default
> Coccinelle pretty printing strategy.  But it is true that the semantic
> patch does represent clearly what you are intending to do.
>
> julia

Now I understand why after applying some coccinelle patches like this
one there were also other changes made to the code alongside the ones
that I explicitly requested.
Was there any better way of doing this or I should leave it as it is?

Thanks,

Ioana

>
>> )
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>  drivers/staging/dgap/dgap.c | 88 ++++++++++++++++++++++-----------------------
>>  1 file changed, 44 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
>> index a47f5eb..fe29ff3 100644
>> --- a/drivers/staging/dgap/dgap.c
>> +++ b/drivers/staging/dgap/dgap.c
>> @@ -1413,7 +1413,7 @@ static void dgap_parity_scan(struct channel_t *ch, unsigned char *cbuf,
>>
>>               case 0:
>>                       /* No FF seen yet */
>> -                     if (c == (unsigned char) '\377')
>> +                     if (c == (unsigned char)'\377')
>>                               /* delete this character from stream */
>>                               ch->pscan_state = 1;
>>                       else {
>> @@ -1425,7 +1425,7 @@ static void dgap_parity_scan(struct channel_t *ch, unsigned char *cbuf,
>>
>>               case 1:
>>                       /* first FF seen */
>> -                     if (c == (unsigned char) '\377') {
>> +                     if (c == (unsigned char)'\377') {
>>                               /* doubled ff, transform to single ff */
>>                               *cout++ = c;
>>                               *fout++ = TTY_NORMAL;
>> @@ -1837,7 +1837,7 @@ static int dgap_event(struct board_t *bd)
>>               return -EIO;
>>       }
>>
>> -     eaddr = (struct ev_t __iomem *) (vaddr + EVBUF);
>> +     eaddr = (struct ev_t __iomem *)(vaddr + EVBUF);
>>
>>       /* Get our head and tail */
>>       head = readw(&(eaddr->ev_head));
>> @@ -1994,7 +1994,7 @@ next:
>>   */
>>  static void dgap_poll_tasklet(unsigned long data)
>>  {
>> -     struct board_t *bd = (struct board_t *) data;
>> +     struct board_t *bd = (struct board_t *)data;
>>       ulong lock_flags;
>>       char __iomem *vaddr;
>>       u16 head, tail;
>> @@ -2027,7 +2027,7 @@ static void dgap_poll_tasklet(unsigned long data)
>>               if (!bd->nasync)
>>                       goto out;
>>
>> -             eaddr = (struct ev_t __iomem *) (vaddr + EVBUF);
>> +             eaddr = (struct ev_t __iomem *)(vaddr + EVBUF);
>>
>>               /* Get our head and tail */
>>               head = readw(&(eaddr->ev_head));
>> @@ -2262,7 +2262,7 @@ static void dgap_poll_handler(ulong dummy)
>>                               continue;
>>                       if (!brd->intr_running)
>>                               /* Call the real board poller directly */
>> -                             dgap_poll_tasklet((unsigned long) brd);
>> +                             dgap_poll_tasklet((unsigned long)brd);
>>               }
>>       } else {
>>               /*
>> @@ -2315,7 +2315,7 @@ schedule_poller:
>>
>>       new_time = dgap_poll_time - jiffies;
>>
>> -     if ((ulong) new_time >= 2 * dgap_poll_tick) {
>> +     if ((ulong)new_time >= 2 * dgap_poll_tick) {
>>               dgap_poll_time =
>>                       jiffies +  dgap_jiffies_from_ms(dgap_poll_tick);
>>       }
>> @@ -2369,7 +2369,7 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
>>       if (!vaddr)
>>               return;
>>
>> -     cm_addr = (struct cm_t __iomem *) (vaddr + CMDBUF);
>> +     cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
>>       head = readw(&(cm_addr->cm_head));
>>
>>       /*
>> @@ -2384,7 +2384,7 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
>>        * Put the data in the circular command buffer.
>>        */
>>       writeb(cmd, (vaddr + head + CMDSTART + 0));
>> -     writeb((u8) ch->ch_portnum, (vaddr + head + CMDSTART + 1));
>> +     writeb((u8)ch->ch_portnum, (vaddr + head + CMDSTART + 1));
>>       writeb(byte1, (vaddr + head + CMDSTART + 2));
>>       writeb(byte2, (vaddr + head + CMDSTART + 3));
>>
>> @@ -2452,7 +2452,7 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
>>       if (!vaddr)
>>               return;
>>
>> -     cm_addr = (struct cm_t __iomem *) (vaddr + CMDBUF);
>> +     cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
>>       head = readw(&(cm_addr->cm_head));
>>
>>       /*
>> @@ -2467,8 +2467,8 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
>>        * Put the data in the circular command buffer.
>>        */
>>       writeb(cmd, (vaddr + head + CMDSTART + 0));
>> -     writeb((u8) ch->ch_portnum, (vaddr + head + CMDSTART + 1));
>> -     writew((u16) word, (vaddr + head + CMDSTART + 2));
>> +     writeb((u8)ch->ch_portnum, (vaddr + head + CMDSTART + 1));
>> +     writew((u16)word, (vaddr + head + CMDSTART + 2));
>>
>>       head = (head + 4) & (CMDMAX - CMDSTART - 4);
>>
>> @@ -2534,7 +2534,7 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
>>       if (!vaddr)
>>               return;
>>
>> -     cm_addr = (struct cm_t __iomem *) (vaddr + CMDBUF);
>> +     cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
>>       head = readw(&(cm_addr->cm_head));
>>
>>       /*
>> @@ -2550,19 +2550,19 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
>>        */
>>
>>       /* Write an FF to tell the FEP that we want an extended command */
>> -     writeb((u8) 0xff, (vaddr + head + CMDSTART + 0));
>> +     writeb((u8)0xff, (vaddr + head + CMDSTART + 0));
>>
>> -     writeb((u8) ch->ch_portnum, (vaddr + head + CMDSTART + 1));
>> -     writew((u16) cmd, (vaddr + head + CMDSTART + 2));
>> +     writeb((u8)ch->ch_portnum, (vaddr + head + CMDSTART + 1));
>> +     writew((u16)cmd, (vaddr + head + CMDSTART + 2));
>>
>>       /*
>>        * If the second part of the command won't fit,
>>        * put it at the beginning of the circular buffer.
>>        */
>>       if (((head + 4) >= ((CMDMAX - CMDSTART)) || (head & 03)))
>> -             writew((u16) word, (vaddr + CMDSTART));
>> +             writew((u16)word, (vaddr + CMDSTART));
>>       else
>> -             writew((u16) word, (vaddr + head + CMDSTART + 4));
>> +             writew((u16)word, (vaddr + head + CMDSTART + 4));
>>
>>       head = (head + 8) & (CMDMAX - CMDSTART - 4);
>>
>> @@ -2860,13 +2860,13 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
>>               cflag &= 0xffff;
>>
>>               if (cflag != ch->ch_fepcflag) {
>> -                     ch->ch_fepcflag = (u16) (cflag & 0xffff);
>> +                     ch->ch_fepcflag = (u16)(cflag & 0xffff);
>>
>>                       /*
>>                        * Okay to have channel and board
>>                        * locks held calling this
>>                        */
>> -                     dgap_cmdw(ch, SCFLAG, (u16) cflag, 0);
>> +                     dgap_cmdw(ch, SCFLAG, (u16)cflag, 0);
>>               }
>>
>>               /* Handle transition from B0 */
>> @@ -2907,7 +2907,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
>>               ch->ch_fepiflag = iflag;
>>
>>               /* Okay to have channel and board locks held calling this */
>> -             dgap_cmdw(ch, SIFLAG, (u16) ch->ch_fepiflag, 0);
>> +             dgap_cmdw(ch, SIFLAG, (u16)ch->ch_fepiflag, 0);
>>       }
>>
>>       /*
>> @@ -2932,7 +2932,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
>>               ch->ch_hflow = hflow;
>>
>>               /* Okay to have channel and board locks held calling this */
>> -             dgap_cmdb(ch, SHFLOW, (u8) hflow, 0xff, 0);
>> +             dgap_cmdb(ch, SHFLOW, (u8)hflow, 0xff, 0);
>>       }
>>
>>       /*
>> @@ -2960,7 +2960,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
>>               ch->ch_mostat = mval;
>>
>>               /* Okay to have channel and board locks held calling this */
>> -             dgap_cmdb(ch, SMODEM, (u8) mval, D_RTS(ch)|D_DTR(ch), 0);
>> +             dgap_cmdb(ch, SMODEM, (u8)mval, D_RTS(ch) | D_DTR(ch), 0);
>>       }
>>
>>       /*
>> @@ -3159,7 +3159,7 @@ static void dgap_tty_flush_buffer(struct tty_struct *tty)
>>
>>       ch->ch_flags &= ~CH_STOP;
>>       head = readw(&(ch->ch_bs->tx_head));
>> -     dgap_cmdw(ch, FLUSHTX, (u16) head, 0);
>> +     dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
>>       dgap_cmdw(ch, RESUMETX, 0, 0);
>>       if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
>>               ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
>> @@ -3604,7 +3604,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>               n -= remain;
>>               vaddr = ch->ch_taddr + head;
>>
>> -             memcpy_toio(vaddr, (u8 *) buf, remain);
>> +             memcpy_toio(vaddr, (u8 *)buf, remain);
>>
>>               head = ch->ch_tstart;
>>               buf += remain;
>> @@ -3617,7 +3617,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>               vaddr = ch->ch_taddr + head;
>>               remain = n;
>>
>> -             memcpy_toio(vaddr, (u8 *) buf, remain);
>> +             memcpy_toio(vaddr, (u8 *)buf, remain);
>>               head += remain;
>>       }
>>
>> @@ -3830,7 +3830,7 @@ static int dgap_tty_send_break(struct tty_struct *tty, int msec)
>>  #if 0
>>       dgap_cmdw(ch, SBREAK, (u16) SBREAK_TIME, 0);
>>  #endif
>> -     dgap_cmdw(ch, SBREAK, (u16) msec, 0);
>> +     dgap_cmdw(ch, SBREAK, (u16)msec, 0);
>>
>>       spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
>>       spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
>> @@ -4152,7 +4152,7 @@ static int dgap_tty_digisetedelay(struct channel_t *ch, struct board_t *bd,
>>       spin_lock_irqsave(&bd->bd_lock, lock_flags);
>>       spin_lock_irqsave(&ch->ch_lock, lock_flags2);
>>
>> -     writew((u16) new_digi, &(ch->ch_bs->edelay));
>> +     writew((u16)new_digi, &ch->ch_bs->edelay);
>>
>>       dgap_param(ch, bd, un->un_type);
>>
>> @@ -4759,7 +4759,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>>       u16 head;
>>       ulong lock_flags = 0;
>>       ulong lock_flags2 = 0;
>> -     void __user *uarg = (void __user *) arg;
>> +     void __user *uarg = (void __user *)arg;
>>
>>       if (!tty || tty->magic != TTY_MAGIC)
>>               return -ENODEV;
>> @@ -4811,7 +4811,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>>               spin_lock_irqsave(&ch->ch_lock, lock_flags2);
>>
>>               if (((cmd == TCSBRK) && (!arg)) || (cmd == TCSBRKP))
>> -                     dgap_cmdw(ch, SBREAK, (u16) SBREAK_TIME, 0);
>> +                     dgap_cmdw(ch, SBREAK, (u16)SBREAK_TIME, 0);
>>
>>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
>>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
>> @@ -4838,7 +4838,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>>               spin_lock_irqsave(&bd->bd_lock, lock_flags);
>>               spin_lock_irqsave(&ch->ch_lock, lock_flags2);
>>
>> -             dgap_cmdw(ch, SBREAK, (u16) SBREAK_TIME, 0);
>> +             dgap_cmdw(ch, SBREAK, (u16)SBREAK_TIME, 0);
>>
>>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
>>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
>> @@ -4865,7 +4865,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>>               spin_lock_irqsave(&bd->bd_lock, lock_flags);
>>               spin_lock_irqsave(&ch->ch_lock, lock_flags2);
>>
>> -             dgap_cmdw(ch, SBREAK, (u16) SBREAK_TIME, 0);
>> +             dgap_cmdw(ch, SBREAK, (u16)SBREAK_TIME, 0);
>>
>>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
>>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
>> @@ -4889,13 +4889,13 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
>>
>>               return put_user(C_CLOCAL(tty) ? 1 : 0,
>> -                             (unsigned long __user *) arg);
>> +                             (unsigned long __user *)arg);
>>
>>       case TIOCSSOFTCAR:
>>               spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
>>               spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
>>
>> -             rc = get_user(arg, (unsigned long __user *) arg);
>> +             rc = get_user(arg, (unsigned long __user *)arg);
>>               if (rc)
>>                       return rc;
>>
>> @@ -4960,7 +4960,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>>
>>               ch->ch_flags &= ~CH_STOP;
>>               head = readw(&(ch->ch_bs->tx_head));
>> -             dgap_cmdw(ch, FLUSHTX, (u16) head, 0);
>> +             dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
>>               dgap_cmdw(ch, RESUMETX, 0, 0);
>>               if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
>>                       ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
>> @@ -5985,7 +5985,7 @@ static int dgap_test_bios(struct board_t *brd)
>>       brd->wait_for_bios = 0;
>>       while (brd->wait_for_bios < 1000) {
>>               /* Check to see if BIOS thinks board is good. (GD). */
>> -             if (word == *(u16 *) "GD")
>> +             if (word == *(u16 *)"GD")
>>                       return 0;
>>               msleep_interruptible(10);
>>               brd->wait_for_bios++;
>> @@ -6071,12 +6071,12 @@ static int dgap_test_fep(struct board_t *brd)
>>       brd->wait_for_fep = 0;
>>       while (brd->wait_for_fep < 500) {
>>               /* Check to see if FEP is up and running now. */
>> -             if (word == *(u16 *) "OS") {
>> +             if (word == *(u16 *)"OS") {
>>                       /*
>>                        * Check to see if the board can support FEP5+ commands.
>>                       */
>>                       word = readw(addr + FEP5_PLUS);
>> -                     if (word == *(u16 *) "5A")
>> +                     if (word == *(u16 *)"5A")
>>                               brd->bd_flags |= BD_FEP5PLUS;
>>
>>                       return 0;
>> @@ -6162,8 +6162,8 @@ static void dgap_do_conc_load(struct board_t *brd, u8 *uaddr, int len)
>>
>>       vaddr = brd->re_map_membase;
>>
>> -     offset = readw((u16 *) (vaddr + DOWNREQ));
>> -     to_dp = (struct downld_t *) (vaddr + (int) offset);
>> +     offset = readw((u16 *)(vaddr + DOWNREQ));
>> +     to_dp = (struct downld_t *)(vaddr + (int)offset);
>>       memcpy_toio(to_dp, uaddr, len);
>>
>>       /* Tell card we have data for it */
>> @@ -6622,7 +6622,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
>>        * is requesting a concentrator image from us.
>>        */
>>       if ((bd->type == PCX) || (bd->type == PEPC)) {
>> -             chk_addr = (u16 *) (vaddr + DOWNREQ);
>> +             chk_addr = (u16 *)(vaddr + DOWNREQ);
>>               /* Nonzero if FEP is requesting concentrator image. */
>>               check = readw(chk_addr);
>>               vaddr = brd->re_map_membase;
>> @@ -6637,7 +6637,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
>>                       return ret;
>>               }
>>               /* Put concentrator firmware loading code here */
>> -             offset = readw((u16 *) (vaddr + DOWNREQ));
>> +             offset = readw((u16 *)(vaddr + DOWNREQ));
>>               memcpy_toio(offset, fw->data, fw->size);
>>
>>               dgap_do_conc_load(brd, (char *)fw->data, fw->size)
>> @@ -6720,8 +6720,8 @@ static int dgap_tty_init(struct board_t *brd)
>>       ch = brd->channels[0];
>>       vaddr = brd->re_map_membase;
>>
>> -     bs = (struct bs_t __iomem *) ((ulong) vaddr + CHANBUF);
>> -     cm = (struct cm_t __iomem *) ((ulong) vaddr + CMDBUF);
>> +     bs = (struct bs_t __iomem *)((ulong)vaddr + CHANBUF);
>> +     cm = (struct cm_t __iomem *)((ulong)vaddr + CMDBUF);
>>
>>       brd->bd_bs = bs;
>>
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d884ca2435043329459e463d282995002ab72e6f.1445382697.git.ciorneiioana%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

