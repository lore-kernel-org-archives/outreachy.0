X-GM-THRID: 6212524392435417088
X-Received: by 10.66.121.225 with SMTP id ln1mr3076320pab.9.1446668266893;
        Wed, 04 Nov 2015 12:17:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.37 with SMTP id g5ls443828obh.14.gmail; Wed, 04 Nov
 2015 12:17:46 -0800 (PST)
X-Received: by 10.182.236.4 with SMTP id uq4mr3148388obc.3.1446668266548;
        Wed, 04 Nov 2015 12:17:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id p4si164846ywc.6.2015.11.04.12.17.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 12:17:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id o38so50611290qge.0
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Nov 2015 12:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=VQ0c7VwMDtE+2/cKt4canl0buBygAuCEo+9A03Aw6ho=;
        b=BtxXTYgikQO8aZ6+ydDSHibPR1l+x45o5hzIdq4PlNc9m0jBhzv8o667Bqqz8qR6Pd
         WGfOD2V52u+cFX2C05u2PHCrCWrgmkDEt7D3iwHI70tRIH29BGulCrMMstd8emaQuaNq
         CnCjc8Dme0xqTbQWlYiqjiuwTc7sYk2PoJbJlqWNr9n102PxdfSVnYH0bvuoNoGiY2j2
         fL+nBNkr3WdWycUeQyVdgPJ9pWvA1gKDs6TwvUER4/Sz8a5fb5xzfZXzPk4aMogYb0Sm
         6MtlHMl2rrlizVagzvb/LKvJJ7HbTQ17Sq4qPEdvBAkRiJaAOuiJ5WlkuOO0U2cdf3zE
         8OZA==
MIME-Version: 1.0
X-Received: by 10.140.91.135 with SMTP id z7mr3592480qgd.91.1446668266342;
 Wed, 04 Nov 2015 12:17:46 -0800 (PST)
Received: by 10.140.98.117 with HTTP; Wed, 4 Nov 2015 12:17:46 -0800 (PST)
In-Reply-To: <20151104200845.GA8713@kroah.com>
References: <20151102120728.GA3650@amitoj-Inspiron-3542>
	<20151104200845.GA8713@kroah.com>
Date: Thu, 5 Nov 2015 01:47:46 +0530
Message-ID: <CA+5yK5GMRmZvf2uitpL3e2c_PiXE10MvQij14qzY87XmW8qDbg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rdma: amso1100: Drop
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 1:38 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Nov 02, 2015 at 05:37:28PM +0530, Amitoj Kaur Chawla wrote:
> > This patch removes the c2_print_macaddr() wrapper function which calls
> > the pr_debug standard kernel function only.
> >
> > c2_print_macaddr() has been replaced by directly calling pr_debug().
> >
> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > ---
> > Changes in v2:
> >         -Corrected indentation
> >         -Removed comment added in previous version
> > Changes in v3:
> >         -Corrected indentation
> >
> >  drivers/staging/rdma/amso1100/c2.c | 11 ++++-------
> >  1 file changed, 4 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
> > index 7f1e794..6688349 100644
> > --- a/drivers/staging/rdma/amso1100/c2.c
> > +++ b/drivers/staging/rdma/amso1100/c2.c
> > @@ -87,11 +87,6 @@ static struct pci_device_id c2_pci_table[] = {
> >
> >  MODULE_DEVICE_TABLE(pci, c2_pci_table);
> >
> > -static void c2_print_macaddr(struct net_device *netdev)
> > -{
> > -     pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr, netdev->irq);
> > -}
> > -
> >  static void c2_set_rxbufsize(struct c2_port *c2_port)
> >  {
> >       struct net_device *netdev = c2_port->netdev;
> > @@ -908,7 +903,8 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
> >       /* Validate the MAC address */
> >       if (!is_valid_ether_addr(netdev->dev_addr)) {
> >               pr_debug("Invalid MAC Address\n");
> > -             c2_print_macaddr(netdev);
> > +             pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
> > +                             netdev->dev_addr, netdev->irq);
> >               free_netdev(netdev);
> >               return NULL;
> >       }
> > @@ -1142,7 +1138,8 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
> >       }
> >
> >       /* Print out the MAC address */
> > -     c2_print_macaddr(netdev);
> > +     pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr,
> > +                     netdev->irq);
>
> You added trailing whitespace, which is not allowed :(

I'll fix this up and resend on the getmaintainer.pl provided ids.

-- 
Amitoj

