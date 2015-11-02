X-GM-THRID: 6212511830071312384
X-Received: by 10.50.50.201 with SMTP id e9mr10603871igo.3.1446464617286;
        Mon, 02 Nov 2015 03:43:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.234 with SMTP id g103ls1294147ioj.55.gmail; Mon, 02
 Nov 2015 03:43:36 -0800 (PST)
X-Received: by 10.68.139.2 with SMTP id qu2mr18242376pbb.0.1446464616842;
        Mon, 02 Nov 2015 03:43:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id z62si1480417ywb.4.2015.11.02.03.43.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 03:43:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id o38so114408361qge.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 03:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=nRczVM+AW5QOmC2l0iHloqErrFnj41oac/CjIDbSVvY=;
        b=dI/+QboXn92GRlNGt2bTHcS0vlH/VSZ0Y2bqpKDfVSPGz2JFSldR/+tZDTenxxK5oS
         FQDS07/tcmmF7CgNavBLZMf+VleodHS85PGtJ5I7+1vyO7+1jdj3Y1G0ww3OqQiVNt8d
         zZE0Jgy4i0iw2WPLDYDndOeG9h/26w0oK08AlFD2BBgu/la1k/vuVllu4/9Dmt7jYz9f
         /mS8j4aeib/YeNb4e3vqa4Y3ed2114OfAHCG4+cgh+hA9DMnMcMlS8O1WnCU3+jy3vab
         HtwqV28wpf3Pms6OibQ7AUY5xFU3XFeVq7C/JVxesmKV3zN2Wgv/gAjvHSosnPbymsmf
         zyFw==
MIME-Version: 1.0
X-Received: by 10.140.232.70 with SMTP id d67mr30695696qhc.62.1446464616623;
 Mon, 02 Nov 2015 03:43:36 -0800 (PST)
Received: by 10.140.21.38 with HTTP; Mon, 2 Nov 2015 03:43:36 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1511021224560.2375@hadrien>
References: <20151102111842.GA2845@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1511021224560.2375@hadrien>
Date: Mon, 2 Nov 2015 17:13:36 +0530
Message-ID: <CA+5yK5ETzfypfYSOc4kX6xO_nGtWDvV=kDw-C9dVx0QbSvivDQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rdma: amso1100: c2: Drop
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 2, 2015 at 4:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Mon, 2 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> This patch removes the c2_print_macaddr() wrapper function which calls
>> the pr_debug standard kernel function only.
>>
>> c2_print_macaddr() has been replaced by directly calling pr_debug().
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>> Changes in v2:
>>         -Corrected indentation
>>         -Removed comment added in previous version
>>
>>  drivers/staging/rdma/amso1100/c2.c | 13 ++++++-------
>>  1 file changed, 6 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
>> index 7f1e794..38360b3 100644
>> --- a/drivers/staging/rdma/amso1100/c2.c
>> +++ b/drivers/staging/rdma/amso1100/c2.c
>> @@ -87,11 +87,6 @@ static struct pci_device_id c2_pci_table[] = {
>>
>>  MODULE_DEVICE_TABLE(pci, c2_pci_table);
>>
>> -static void c2_print_macaddr(struct net_device *netdev)
>> -{
>> -     pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr, netdev->irq);
>> -}
>> -
>>  static void c2_set_rxbufsize(struct c2_port *c2_port)
>>  {
>>       struct net_device *netdev = c2_port->netdev;
>> @@ -908,7 +903,9 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
>>       /* Validate the MAC address */
>>       if (!is_valid_ether_addr(netdev->dev_addr)) {
>>               pr_debug("Invalid MAC Address\n");
>> -             c2_print_macaddr(netdev);
>> +             pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
>> +                                     netdev->dev_addr, netdev->irq);
>> +
>
> I'm still not sure to understand the indentation.  If you look at the
> function c2_probe in the same file, a continuation line has as few tabs as
> are needed to pass the (.  It looks like you are trying to put the
> arguments as far to the right as possible, especially in the next case.
> Also the extra blank line is not needed.
>
> julia
>

I was under the impression that you have to keep it as much to the
right as possible. My bad.

>>               free_netdev(netdev);
>>               return NULL;
>>       }
>> @@ -1142,7 +1139,9 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
>>       }
>>
>>       /* Print out the MAC address */
>> -     c2_print_macaddr(netdev);
>> +     pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr,
>> +                                                             netdev->irq);
>> +
>>
>>       ret = c2_rnic_init(c2dev);
>>       if (ret) {
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151102111842.GA2845%40amitoj-Inspiron-3542.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Amitoj

