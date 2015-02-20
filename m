X-GM-THRID: 1346431352832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1fdd4451ee4a6ec5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.91.76 with SMTP id cc12mr14187wib.7.1424461597246;
        Fri, 20 Feb 2015 11:46:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.168 with SMTP id a8ls294221lab.14.gmail; Fri, 20 Feb
 2015 11:46:36 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr1517796lah.8.1424461596682;
        Fri, 20 Feb 2015 11:46:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si177667wif.0.2015.02.20.11.46.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 11:46:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="122735872"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 20:46:35 +0100
Date: Fri, 20 Feb 2015 20:46:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: i2o : Replace printk with
 dev_warn
In-Reply-To: <1f022876-2a76-49a1-916c-e00b9f24ee79@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502202046040.2054@localhost6.localdomain6>
References: <1424446833-22298-1-git-send-email-navyasri.tech@gmail.com> <alpine.DEB.2.10.1502201714490.2375@hadrien> <fc705749-6e36-41a8-864e-5b0a3d1234b7@googlegroups.com> <1f022876-2a76-49a1-916c-e00b9f24ee79@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1021064930-1424461595=:2054"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1021064930-1424461595=:2054
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:

> As i2o is going to be taken out, is it okay if I send in a patch to remove
> the c-name or should I not?

It seems more useful to move on to do something else.

Maybe you can find the same issue in some other code.

julia

> Navya
> 
> On Friday, February 20, 2015 at 10:01:15 PM UTC+5:30, Navya Sri Nizamkari
> wrote:
>       It did give a breaking up strings error. But I thought it would
>       be better if I made another patch to address that. Indeed, it
>       prints out the driver name. I'll change it in the patch.
>       Navya
> 
>       On Friday, February 20, 2015 at 9:46:31 PM UTC+5:30, Julia
>       Lawall wrote:
>             On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:
> 
>             > This patch fixes the checkpatch.pl warning:
>             > WARNING: Prefer netdev_info(netdev, ... then
>             dev_info
>             > (dev, ... then pr_info(...  to printk(KERN_INFO
>             ...
>             >
>             > i2o being a device driver, printk(KERN_WARNING can
>             be
>             > replaced with the dev_warn function which is
>             preferable.
>             >
>             > Signed-off-by: Navya Sri Nizamkari
>             <navyas...@gmail.com>
>             > ---
>             >  drivers/staging/i2o/exec-osm.c | 2 +-
>             >  1 file changed, 1 insertion(+), 1 deletion(-)
>             >
>             > diff --git a/drivers/staging/i2o/exec-osm.c
>             b/drivers/staging/i2o/exec-osm.c
>             > index 16d857d..89e464d 100644
>             > --- a/drivers/staging/i2o/exec-osm.c
>             > +++ b/drivers/staging/i2o/exec-osm.c
>             > @@ -507,7 +507,7 @@ static int
>             i2o_exec_reply(struct i2o_controller *c, u32 m,
>             >           * to aid in debugging.
>             >           *
>             >           */
>             > -        printk(KERN_WARNING "%s: Unsolicited
>             message reply sent to core!"
>             > +        dev_warn(c->pdev->dev, "%s: Unsolicited
>             message reply sent to core!"
>             >                 "Message dumped to syslog\n",
>             c->name);
> 
>             I wonder if c->name is necessary if you are using
>             dev_warn?  Look at the
>             definition of dev_warn and see if it already prints
>             out something that
>             looks like the name of the driver.
> 
>             Another checkpatch warning would be about not
>             breaking up strings.  I'm
>             surprised that it didn't complain about it.
> 
>             julia
> 
>             >          i2o_dump_message(msg);
>             >
>             > --
>             > 1.9.1
>             >
>             > --
>             > You received this message because you are
>             subscribed to the Google Groups "outreachy-kernel"
>             group.
>             > To unsubscribe from this group and stop receiving
>             emails from it, send an email to
>             outreachy-kern...@googlegroups.com.
>             > To post to this group, send email to
>             outreach...@googlegroups.com.
>             > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1424446833-22298-1-git-s
>             end-email-navyasri.tech%40gmail.com.
>             > For more options, visit
>             https://groups.google.com/d/optout.
>             >
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1f022876-2a76-49a1-916c-
> e00b9f24ee79%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1021064930-1424461595=:2054--

