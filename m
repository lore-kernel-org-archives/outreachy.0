X-GM-THRID: 6254007511915954176
X-Received: by 10.129.87.73 with SMTP id l70mr26468440ywb.13.1456146887088;
        Mon, 22 Feb 2016 05:14:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.166 with SMTP id t6ls595920igh.20.canary; Mon, 22 Feb
 2016 05:14:46 -0800 (PST)
X-Received: by 10.50.87.7 with SMTP id t7mr11451464igz.11.1456146886731;
        Mon, 22 Feb 2016 05:14:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id i133si1395457ywe.7.2016.02.22.05.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:14:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id y89so109918294qge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=oOuQZq1K+r2t7Cn/PsSjOs45aMh1MZWtn56RqLUfk4Q=;
        b=b9Wg6He+JLgfAke9rWNSMDixxtls4LzdyANHZ8KemJpxypL/Z3HJGo/HHOYJbII4Zx
         C0KWvJFTvnxyovpsbooHC/GzEs00lT3Fh+DD7axrIj37/4Hqx4XPHTDdrRnYKTFaSNl/
         Eagtk4NWC9o8+FP3AQarI7S47yfEytQDEHo2fbJgHcr98qEOiuM7u2Yh8tBfrEOGg6jV
         CHniZcDfLQI4rTWdfxen/+Zh+H/apJ83hZM/s9GaILaqn1RdlkriXYZBnKk/h5l6N1wt
         9ERMUG7A2QP+mw01UtdJxhyv1+Gp4SOWJY/fHc7OYvlcMJYB8lcXOWZItKcjJUwkq3JF
         l+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=oOuQZq1K+r2t7Cn/PsSjOs45aMh1MZWtn56RqLUfk4Q=;
        b=g/SdSRh1fS9qJ1Pdr4SGw4uOUY5KFblIvCVOcKhwn3ulkGWhVzNujrOI8ihWe4za3V
         U35mTA7ml4Hy/81k7dv4dndxDVcD+7+ZA5i50uVmgiXDaaW8n5Qa3BwQZp8gnADxU9wf
         QzQZNgMCC+umHf7Dq9b62dqrwSooU/6JeyK5ezcGkYHQzRXHIlBDtuzHZ0Vb/9Kdsfjk
         c5VkqWNwtkO0P3MNAN0Qax3s9+MgofRJSyvJ+/ROjqfNNwyaMm6K0BUBWc8U6rJ6arfK
         xIr6yCPWbJbgdyH5/t29Zh3mdO9UNbW58XM3i1bRmynbkNyLe3YFpzemuEmkXrJjbRrB
         LOVg==
X-Gm-Message-State: AG10YOQ7yqLJL+/M+BLM6FKMiwAgy8iUfmgOcH1WRaWgGtAxIazykV+LnInzOq9bgbbN8ytnCmyXrOq2Gb1PnQ==
X-Received: by 10.140.88.202 with SMTP id t68mr33977631qgd.86.1456146886584;
 Mon, 22 Feb 2016 05:14:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Mon, 22 Feb 2016 05:14:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602220637570.2655@hadrien>
References: <20160222070345.GA10232@Karyakshetra> <alpine.DEB.2.10.1602220534590.2685@hadrien>
 <alpine.DEB.2.10.1602220637570.2655@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 22 Feb 2016 18:44:07 +0530
Message-ID: <CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: lnet: Use list_for_each_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Thank you for your reply.  I ran the rule that you mentioned on the
entire kernel.
I found that  around 70 files will be needing this change.

Thanks,
Bhaktipriya

On Mon, Feb 22, 2016 at 5:08 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> > > @@
> > > expression E1;
> > > identifier I1, I2;
> > > type T;
> > > iterator name list_for_each_entry_safe;
> > > @@
> > > T *I1;
> > > +  T *tmp;
> > > ...
> > > - while (list_empty(&E1) == 0)
> > > + list_for_each_entry_safe (I1, tmp, &E1, I2)
> > > {
> > >     ...when != T *I1;
> > >     -       I1 = list_entry(E1.next, T, I2);
>
> Could you try this rule on the entire kernel?  If there are many
> occurrences, then maybe it would be a good idea to include this rule with
> the other semantic patches in the kernel.
>
> julia

