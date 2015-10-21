X-GM-THRID: 6207871882034675712
X-Received: by 10.13.214.200 with SMTP id y191mr6577384ywd.10.1445415876440;
        Wed, 21 Oct 2015 01:24:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.209 with SMTP id a75ls646799qgf.45.gmail; Wed, 21 Oct
 2015 01:24:35 -0700 (PDT)
X-Received: by 10.31.174.146 with SMTP id x140mr6615857vke.1.1445415875725;
        Wed, 21 Oct 2015 01:24:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x241.google.com (mail-yk0-x241.google.com. [2607:f8b0:4002:c07::241])
        by gmr-mx.google.com with ESMTPS id q133si552171ywb.1.2015.10.21.01.24.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) client-ip=2607:f8b0:4002:c07::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x241.google.com with SMTP id w201so3528671ykf.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 01:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tOojf3fyUTGo0qdYinqQuli3GU+FDwI5pn19M6LOPyY=;
        b=AEtMIfyrX4Ykcknvm4oZ0JHMg2FIO3fCMZglm5rQEngcHgLVDv227DJFcFJdM+E3kU
         qo1A08XfAFhoSbKmSU+dA+n4M0v2UMZBeEvJvbj3TgmW+r41PzCEhP2PnzjmY8MAEQ4b
         zagZ+B6O98Qx90pdAdQe9CooaaHnI+oRE3fRap90LYOrBf53x945bEjjcN/kSB8iikgq
         0+6WVlJP02fFQXRSEhrIXvyPA3BZXrWbof1ms5RWEEq6Z71hS4XUgxSbH9RxXFiFiJfZ
         aZrnNnm2Sn/jh8/lRqHVuh2uXH019MTdbTlAjjNscasWSVizePDO8gUeuuafRghnK92V
         XP5g==
MIME-Version: 1.0
X-Received: by 10.129.157.211 with SMTP id u202mr1698190ywg.11.1445415875506;
 Wed, 21 Oct 2015 01:24:35 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 21 Oct 2015 01:24:35 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510210954140.2588@hadrien>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
	<6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com>
	<alpine.DEB.2.10.1510210954140.2588@hadrien>
Date: Wed, 21 Oct 2015 11:24:35 +0300
Message-ID: <CAHWJYF=XYqG0JuDzW8UVZfpneJ-tn_V29wRhty1-5udwNbBD0w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: dgap: properly indent to
 match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 11:00 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 21 Oct 2015, Ioana Ciornei wrote:
>
>> Indent parameters and arguments passed to function calls to match
>> open paranthesis
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>  drivers/staging/dgap/dgap.c | 52 ++++++++++++++++++++++-----------------------
>>  1 file changed, 26 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
>> index 2d36ea5..a47f5eb 100644
>> --- a/drivers/staging/dgap/dgap.c
>> +++ b/drivers/staging/dgap/dgap.c
>> @@ -932,7 +932,7 @@ static int dgap_parsefile(char **in)
>>
>>                       conc_type = dgap_gettok(in);
>>                       if (conc_type == 0 || (conc_type != CX &&
>> -                         conc_type != EPC)) {
>> +                                            conc_type != EPC)) {
>
> Maybe it would be nicer to put a newline after the ||, to have the whole
> conjunction on one line?

Good point. I will rework it.

>
>>                               pr_err("failed to set a type of concentratros");
>>                               return -1;
>>                       }
>> @@ -973,7 +973,7 @@ static int dgap_parsefile(char **in)
>>
>>                       module_type = dgap_gettok(in);
>>                       if (module_type == 0 || (module_type != PORTS &&
>> -                         module_type != MODEM)) {
>> +                                              module_type != MODEM)) {
>
> Same here.

Ok.

>
>>                               pr_err("failed to set a type of module");
>>                               return -1;
>>                       }
>> @@ -1352,7 +1352,7 @@ static int dgap_remap(struct board_t *brd)
>>               return -ENOMEM;
>>
>>       if (!request_mem_region(brd->membase + PCI_IO_OFFSET, 0x200000,
>> -                                     "dgap"))
>> +                             "dgap"))
>
> Does it not work just to put the string up on the line before with the
> function call?

I think it breaks the 80 columns rules. But I do not have the code in
front of me.
I will try it soon.

>
>>               goto err_req_mem;
>>
>>       brd->re_map_membase = ioremap(brd->membase, 0x200000);
>> @@ -1390,7 +1390,7 @@ static void dgap_unmap(struct board_t *brd)
>>   * the Linux line discipline way.
>>   */
>>  static void dgap_parity_scan(struct channel_t *ch, unsigned char *cbuf,
>> -                             unsigned char *fbuf, int *len)
>> +                          unsigned char *fbuf, int *len)
>
> Not sure why this is an improvement.  It looks like it was already aligned
> with the right side of the (.
>
>>  {
>>       int l = *len;
>>       int count = 0;
>> @@ -1649,7 +1649,7 @@ static void dgap_input(struct channel_t *ch)
>>
>>               len = tty_buffer_request_room(tp->port, len);
>>               tty_insert_flip_string_flags(tp->port, ch->ch_bd->flipbuf,
>> -                     ch->ch_bd->flipflagbuf, len);
>> +                                          ch->ch_bd->flipflagbuf, len);
>>       } else {
>>               len = tty_buffer_request_room(tp->port, len);
>>               tty_insert_flip_string(tp->port, ch->ch_bd->flipbuf, len);
>> @@ -2161,7 +2161,7 @@ static struct board_t *dgap_found_board(struct pci_dev *pdev, int id,
>>
>>       /* init our poll helper tasklet */
>>       tasklet_init(&brd->helper_tasklet, dgap_poll_tasklet,
>> -                     (unsigned long) brd);
>> +                  (unsigned long)brd);
>>
>>       ret = dgap_remap(brd);
>>       if (ret)
>> @@ -2342,7 +2342,7 @@ schedule_poller:
>>   *
>>   *=======================================================================*/
>>  static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
>> -                     u8 byte2, uint ncmds)
>> +                   u8 byte2, uint ncmds)
>
> It doesn't look like this is aligned, but I didn't try applying the patch.

I think that the email format or the patch does not show the tabs in
the proper way.
I remember that there were some off by one alignments and this and the
previous one belong to them.
Nevertheless, I will take a look.

Thanks,

Ioana

>
> julia
>
>>  {
>>       char __iomem *vaddr;
>>       struct __iomem cm_t *cm_addr;
>> @@ -3011,7 +3011,7 @@ static int dgap_block_til_ready(struct tty_struct *tty, struct file *file,
>>       int sleep_on_un_flags;
>>
>>       if (!tty || tty->magic != TTY_MAGIC || !file || !ch ||
>> -             ch->magic != DGAP_CHANNEL_MAGIC)
>> +         ch->magic != DGAP_CHANNEL_MAGIC)
>>               return -EIO;
>>
>>       un = tty->driver_data;
>> @@ -3509,7 +3509,7 @@ static int dgap_tty_write_room(struct tty_struct *tty)
>>   * In here exists all the Transparent Print magic as well.
>>   */
>>  static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>> -                             int count)
>> +                       int count)
>>  {
>>       struct channel_t *ch;
>>       struct un_t *un;
>> @@ -3538,10 +3538,10 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>               return 0;
>>
>>       spin_lock_irqsave(&ch->ch_lock, lock_flags);
>> -
>>       /* Get our space available for the channel from the board */
>>       tmask = ch->ch_tsize - 1;
>>       head = readw(&(bs->tx_head)) & tmask;
>> +
>>       tail = readw(&(bs->tx_tail)) & tmask;
>>
>>       bufcount = tail - head - 1;
>> @@ -3575,7 +3575,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>        */
>>       if ((un->un_type == DGAP_PRINT) && !(ch->ch_flags & CH_PRON)) {
>>               dgap_wmove(ch, ch->ch_digi.digi_onstr,
>> -                 (int) ch->ch_digi.digi_onlen);
>> +                        (int)ch->ch_digi.digi_onlen);
>>               head = readw(&(bs->tx_head)) & tmask;
>>               ch->ch_flags |= CH_PRON;
>>       }
>> @@ -3586,7 +3586,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>        */
>>       if ((un->un_type != DGAP_PRINT) && (ch->ch_flags & CH_PRON)) {
>>               dgap_wmove(ch, ch->ch_digi.digi_offstr,
>> -                     (int) ch->ch_digi.digi_offlen);
>> +                        (int)ch->ch_digi.digi_offlen);
>>               head = readw(&(bs->tx_head)) & tmask;
>>               ch->ch_flags &= ~CH_PRON;
>>       }
>> @@ -3644,7 +3644,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>                       writeb(1, &(bs->iempty));
>>               } else {
>>                       dgap_wmove(ch, ch->ch_digi.digi_offstr,
>> -                             (int) ch->ch_digi.digi_offlen);
>> +                                (int)ch->ch_digi.digi_offlen);
>>                       head = readw(&(bs->tx_head)) & tmask;
>>                       ch->ch_flags &= ~CH_PRON;
>>               }
>> @@ -3731,7 +3731,7 @@ static int dgap_tty_tiocmget(struct tty_struct *tty)
>>   * Set modem signals, called by ld.
>>   */
>>  static int dgap_tty_tiocmset(struct tty_struct *tty,
>> -             unsigned int set, unsigned int clear)
>> +                          unsigned int set, unsigned int clear)
>>  {
>>       struct board_t *bd;
>>       struct channel_t *ch;
>> @@ -4222,7 +4222,7 @@ static int dgap_tty_digisetcustombaud(struct channel_t *ch, struct board_t *bd,
>>   * dgap_set_termios()
>>   */
>>  static void dgap_tty_set_termios(struct tty_struct *tty,
>> -                             struct ktermios *old_termios)
>> +                              struct ktermios *old_termios)
>>  {
>>       struct board_t *bd;
>>       struct channel_t *ch;
>> @@ -4385,7 +4385,7 @@ static int dgap_tty_open(struct tty_struct *tty, struct file *file)
>>        * sleep waiting for it to happen or they cancel the open.
>>        */
>>       rc = wait_event_interruptible(brd->state_wait,
>> -             (brd->state & BOARD_READY));
>> +                                   (brd->state & BOARD_READY));
>>
>>       if (rc)
>>               return rc;
>> @@ -4597,7 +4597,7 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
>>                        * have been dropped for modems to see it.
>>                        */
>>                       spin_unlock_irqrestore(&ch->ch_lock,
>> -                                     lock_flags);
>> +                                            lock_flags);
>>
>>                       /* .25 second delay for dropping RTS/DTR */
>>                       schedule_timeout_interruptible(msecs_to_jiffies(250));
>> @@ -4615,7 +4615,7 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
>>        */
>>       if ((un->un_type == DGAP_PRINT)  && (ch->ch_flags & CH_PRON)) {
>>               dgap_wmove(ch, ch->ch_digi.digi_offstr,
>> -                     (int) ch->ch_digi.digi_offlen);
>> +                        (int)ch->ch_digi.digi_offlen);
>>               ch->ch_flags &= ~CH_PRON;
>>       }
>>
>> @@ -4750,7 +4750,7 @@ static void dgap_tty_flush_chars(struct tty_struct *tty)
>>   * The usual assortment of ioctl's
>>   */
>>  static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>> -             unsigned long arg)
>> +                       unsigned long arg)
>>  {
>>       struct board_t *bd;
>>       struct channel_t *ch;
>> @@ -5996,7 +5996,7 @@ static int dgap_test_bios(struct board_t *brd)
>>       err1 = readw(addr + SEQUENCE);
>>       err2 = readw(addr + ERROR);
>>       dev_warn(&brd->pdev->dev, "%s failed diagnostics.  Error #(%x,%x).\n",
>> -             brd->name, err1, err2);
>> +              brd->name, err1, err2);
>>       brd->state = BOARD_FAILED;
>>       brd->dpastatus = BD_NOBIOS;
>>
>> @@ -6531,7 +6531,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
>>
>>       if (fw_info[card_type].conf_name) {
>>               ret = request_firmware(&fw, fw_info[card_type].conf_name,
>> -                                      &pdev->dev);
>> +                                    &pdev->dev);
>>               if (ret) {
>>                       dev_err(&pdev->dev, "config file %s not found\n",
>>                               fw_info[card_type].conf_name);
>> @@ -6584,7 +6584,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
>>
>>       if (fw_info[card_type].bios_name) {
>>               ret = request_firmware(&fw, fw_info[card_type].bios_name,
>> -                                     &pdev->dev);
>> +                                    &pdev->dev);
>>               if (ret) {
>>                       dev_err(&pdev->dev, "bios file %s not found\n",
>>                               fw_info[card_type].bios_name);
>> @@ -6601,7 +6601,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
>>
>>       if (fw_info[card_type].fep_name) {
>>               ret = request_firmware(&fw, fw_info[card_type].fep_name,
>> -                                     &pdev->dev);
>> +                                    &pdev->dev);
>>               if (ret) {
>>                       dev_err(&pdev->dev, "dgap: fep file %s not found\n",
>>                               fw_info[card_type].fep_name);
>> @@ -6630,7 +6630,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
>>
>>       if (fw_info[card_type].con_name && check && vaddr) {
>>               ret = request_firmware(&fw, fw_info[card_type].con_name,
>> -                                     &pdev->dev);
>> +                                    &pdev->dev);
>>               if (ret) {
>>                       dev_err(&pdev->dev, "conc file %s not found\n",
>>                               fw_info[card_type].con_name);
>> @@ -6994,8 +6994,8 @@ static int dgap_start(void)
>>       }
>>
>>       device = device_create(dgap_class, NULL,
>> -             MKDEV(DIGI_DGAP_MAJOR, 0),
>> -             NULL, "dgap_mgmt");
>> +                            MKDEV(DIGI_DGAP_MAJOR, 0),
>> +                            NULL, "dgap_mgmt");
>>       if (IS_ERR(device)) {
>>               rc = PTR_ERR(device);
>>               goto failed_device;
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

