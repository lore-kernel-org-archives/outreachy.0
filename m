X-GM-THRID: 6250833929703522304
X-Received: by 10.182.29.129 with SMTP id k1mr15380013obh.23.1455540897326;
        Mon, 15 Feb 2016 04:54:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.99 with SMTP id i90ls2967075qgf.46.gmail; Mon, 15 Feb
 2016 04:54:56 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr15431790ywb.47.1455540896632;
        Mon, 15 Feb 2016 04:54:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id v197si2035768ywa.1.2016.02.15.04.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 04:54:56 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id b67so109509123qgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 04:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qy0+iwqwaxjLSViIJ6Y71f98NHB3e/6EQ3MUSl5JulI=;
        b=J1O18OWd0fVsRUEjSTSZY3RnZ7s0mWnrNcz0+JTDi8WK635K0SadKgibOhdyau+DhH
         xbmD1fQGRqJllJ4YJCA9ArYQgayvLMnLF7AFm2OFl9YwruwOD8tWtwZHJ8c8zyzKQHNg
         5AjeXptDl4/jYisJbY/4WIYUBT641cj4b/tZu2ln4lQU77BGSGIYSWeFtSJAFm05MxVM
         j0SRT8J3H/4/931VXYApn0H+atIsoI3DUBmBkWEHN1keqNjTy+vBCp/qtXnoOGTJ6Muy
         CwCfJ27c/JMUKShOsJgZa5BbOHgVzGpdwQRDRsZCnuzqcnK/uJaI/mcRwgFAidN4ZKD+
         WrFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=qy0+iwqwaxjLSViIJ6Y71f98NHB3e/6EQ3MUSl5JulI=;
        b=V1vgGZ1kObgaFljXfK1Xcp6VJsRxOZT3hYZ0SsDIYhqsSatzkZKIqKuXvvXu14VZ5L
         uxmRrmDtaL8zHQlJ6e3YG5dY8vazkw9cXfjaTbIc0Mw9jgiqP/kpkhs7j9Q7CEIIFgKm
         oeGRVaHWnSEqhRwRKcJYsjMy19JnOUAocBru/13fdp4QMFJmKevL9m/HNtAuOfYSbFts
         IA3vt3mYBYGirZygfX3/cVR1STh//kutrQGWGaNmPkk0n3C7NggY3dgKeknmpce9BcX7
         YMHEQ0jhz0sGengWLM4o1qeSNnXhtBgIF+2AGpS4BHeNwpvozOrQga1PL+Z0JYj2vj6/
         N66Q==
X-Gm-Message-State: AG10YOSiAwnbJwuZ+AXv2ComHgbAnUssXZpcQbZKfl4e7+XrSci0uPf4KAstgB5TxwuS6qwA1unaYFv8/Yjkhg==
MIME-Version: 1.0
X-Received: by 10.140.143.68 with SMTP id 65mr21580678qhp.25.1455540896459;
 Mon, 15 Feb 2016 04:54:56 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Mon, 15 Feb 2016 04:54:56 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602150725230.2124@localhost6.localdomain6>
References: <20160213174801.GA15312@amitoj-Inspiron-3542>
	<20160215005209.GA19167@kroah.com>
	<alpine.DEB.2.02.1602150725230.2124@localhost6.localdomain6>
Date: Mon, 15 Feb 2016 18:24:56 +0530
Message-ID: <CA+5yK5HsJp+DUaVZJFSBNy_myO3bWseXNr7+N1GFxnd=tSqj+w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-dim2: Use devm_ functions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 15, 2016 at 11:59 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>> Do only one conversion at a time, and be _VERY_ careful about the
>> request_irq() change, that has some tricky side-affects if you don't
>> watch out.  If you don't know about the side affects, don't make the
>> change please.
>
> The issue with request_irq is that everything that is allocated before it
> has to be devm_allocated as well, to ensure that everything the interrupt
> handler depends on is freed after the interrupt is freed.  I think that
> that is the case here, but please check it.
>
> To break it up into multiple patches, you would have to put the change on
> the first allocation in the first patch, the second allocation in the
> second patch, etc, to keep a working system after each patch.  The devm
> mechanism frees things in the opposite order in which they are allocated,
> ie just like the order in which the frees normally appear in the error
> handling code at the end of the probe function.
>
> julia

So to break it up in patches I would :

Patch 1: Switch from kzalloc to devm_kzalloc and remove the relevant
frees, in this case kfree at the end of the probe function and the
remove function
Patch 2: Switch from ioremap and request_mem_region to
devm_ioremap_resource and remove iounmap release_mem_region from probe
and remove functions.
Patch 3: Switch from request_irq to devm_request_irq and remove
iounmap and free_irq from probe and remove functions.

Doubt as to Patch 3 and remove iounmap in the request_irq conversion
since the code currently looks like this:

        ret = request_irq(dev->irq_ahb0, dim2_ahb_isr, 0, "mlb_ahb0", dev);
        if (ret) {
                pr_err("failed to request IRQ: %d, err: %d\n",
                       dev->irq_ahb0, ret);
                goto err_unmap_io;
        }
...
        err_unmap_io:
               iounmap(dev->io_base);

