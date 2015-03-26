X-GM-THRID: 9903208923136
X-Received: by 10.194.178.67 with SMTP id cw3mr3562154wjc.2.1427385715703;
        Thu, 26 Mar 2015 09:01:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls295623lal.49.gmail; Thu, 26 Mar
 2015 09:01:55 -0700 (PDT)
X-Received: by 10.112.122.97 with SMTP id lr1mr2413760lbb.5.1427385715046;
        Thu, 26 Mar 2015 09:01:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id sf8si469261wic.2.2015.03.26.09.01.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 09:01:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,473,1422918000"; 
   d="scan'208";a="130278995"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Mar 2015 17:01:54 +0100
Date: Thu, 26 Mar 2015 17:01:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Helen Fornazier <helen.fornazier@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Replace printk with
 pr_err
In-Reply-To: <CAPW4XYbbeESj6tyXdzXp4pvc=gRr-7DShOrfXYns4Y6KB5YRJA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503261657310.2661@hadrien>
References: <1427328593-6576-1-git-send-email-helen.fornazier@gmail.com> <alpine.DEB.2.02.1503260730190.2066@localhost6.localdomain6> <CAPW4XYbbeESj6tyXdzXp4pvc=gRr-7DShOrfXYns4Y6KB5YRJA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1374246601-1427385703=:2661"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1374246601-1427385703=:2661
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 26 Mar 2015, Helen Fornazier wrote:

>
>
> On Thu, Mar 26, 2015 at 3:31 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Wed, 25 Mar 2015, Helen Fornazier wrote:
>
>       > This patch fixes the following checkpatch.pl warning:
>       >
>       > WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ...
>       then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
>       > +               printk(KERN_ERR "DGNC: sysfs
>       driver_create_file failed!\n");
>       >
>       > Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
>       > ---
>       >  drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/dgnc/dgnc_sysfs.c
>       b/drivers/staging/dgnc/dgnc_sysfs.c
>       > index 2df889e..65551d1 100644
>       > --- a/drivers/staging/dgnc/dgnc_sysfs.c
>       > +++ b/drivers/staging/dgnc/dgnc_sysfs.c
>       > @@ -75,7 +75,7 @@ void dgnc_create_driver_sysfiles(struct
>       pci_driver *dgnc_driver)
>       >       rc |= driver_create_file(driverfs,
>       &driver_attr_maxboards);
>       >       rc |= driver_create_file(driverfs,
>       &driver_attr_pollrate);
>       >       if (rc)
>       > -             printk(KERN_ERR "DGNC: sysfs driver_create_file
>       failed!\n");
>       > +             pr_err("DGNC: sysfs driver_create_file
>       failed!\n");
>
> The dgnc_driver should give you access to a device-typed field so you
> can
> use dev_err.

Ah, indeed it does not seem to be possible.  In another case, Greg
suggested to add an argument with the device information.  I see that some
functions in the same file have struct device *p.  Perhaps that is
possible here too, if you can change all the call sites.

julia

>
> julia
>
>
> I though about that and I saw that other parts of the code uses dev_err, but
> inside the dgnc_create_driver_sysfiles function I couldn't figure it out how
> to get the "structure device" object to use inside the dev_err function.
>  
>       >  }
>       >
>       >
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1427328593-6576-1-git-se
>       nd-email-helen.fornazier%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
>
>
> --
> Helen Fornazier
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAPW4XYbbeESj6tyXdzXp4pv
> c%3DgRr-7DShOrfXYns4Y6KB5YRJA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1374246601-1427385703=:2661--

