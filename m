X-GM-THRID: 6390634706454446080
X-Received: by 10.46.80.1 with SMTP id e1mr779715ljb.10.1488015580726;
        Sat, 25 Feb 2017 01:39:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.14 with SMTP id p14ls574659lfe.6.gmail; Sat, 25 Feb
 2017 01:39:39 -0800 (PST)
X-Received: by 10.46.80.1 with SMTP id e1mr779713ljb.10.1488015579287;
        Sat, 25 Feb 2017 01:39:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si329334wmg.3.2017.02.25.01.39.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 01:39:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,203,1484002800"; 
   d="scan'208";a="214678818"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 10:39:37 +0100
Date: Sat, 25 Feb 2017 10:39:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
In-Reply-To: <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702251036580.2088@hadrien>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com> <alpine.DEB.2.20.1702241814330.3089@hadrien> <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1257389410-1488015578=:2088"

--8323329-1257389410-1488015578=:2088
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 25 Feb 2017, Varsha Rao wrote:

>
>       > diff --git a/drivers/staging/speakup/kobjects.c
>       b/drivers/staging/speakup/kobjects.c
>       > index ca075fe..68a4cc8 100644
>       > --- a/drivers/staging/speakup/kobjects.c
>       > +++ b/drivers/staging/speakup/kobjects.c
>       > @@ -833,10 +833,12 @@ static ssize_t message_show(struct
>       kobject *kobj,
>       >          struct msg_group_t *group =
>       spk_find_msg_group(attr->attr.name);
>       >          unsigned long flags;
>       >
>       > -        BUG_ON(!group);
>       > -        spin_lock_irqsave(&speakup_info.spinlock, flags);
>       > -        retval = message_show_helper(buf, group->start,
>       group->end);
>       > -        spin_unlock_irqrestore(&speakup_info.spinlock,
>       flags);
>       > +        if (WARN_ON(!group)) {
>       > +                spin_lock_irqsave(&speakup_info.spinlock,
>       flags);
>       > +                retval = message_show_helper(buf,
>       group->start, group->end);
>       >
>       +                spin_unlock_irqrestore(&speakup_info.spinlock,
>       flags);
>       > +        }
>       > +
>       >          return retval;
>
>       I think you should go back and think much harder about what this
>       code
>       does.  Does WARN_ON return true if the condition is true or if
>       it is
>       false?
>
>  
>     if group = NULL
>     then WARN_ON(!group) would return true
>  
>        If WARN_ON returns true, then should the code that you have put
>       in
>       the then branch be executed?
>
>
>     The if condition has to be (!WARN_ON(!group))  instead of
> WARN_ON(!group)

The double negation does not look like a good idea.  Normally kernel code
looks like this:

if (detect_failure)
   handle_failure;
   return;
success_code

>      then then the statements inside if block won't excetute and the
> function would return
>      retval with value 0. 
>
>        What code do you consider to be the recovery
>       code?  BUG_ON always crashed the kernel, so there was no
>       recovery code
>       before.  What new code have you added to perform the recovery?
>
>    
>     I didn't understand regarding recovery. Here further changes has to be
> made. As message_show is passed as argument in  __ATTR().
>     It has been called multiple times in drivers/staging/speakup/kobjects.c
> and in the following way:
>
>  __ATTR(announcements, S_IWUSR | S_IRUGO, message_show, message_store);
>      
>      Within staging/include/linux/sysfs.h  it has been defined.
>
>       #define __ATTR(_name, _mode, _show, _store) {                \
>     .attr = {.name = __stringify(_name),                \
>          .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },        \
>     .show    = _show,                        \
>     .store    = _store,                        \
>      }
>           
>    From the above code it would imply changes has to be made within this
> macro or in show macro definition.

You cannot change the macro.  It is used in many other places in the
kernel.

Perhaps an approach would be to look at other show functions in the
kernel, ideally not in staging, and see what they do in case of failure.

julia

>    Not sure about what would happen if _show value is 0.
>
>        What is
>       the value of retval if the branch is or is not taken?  Is this
>       the
>       meaningful value in each case?
>
>    retval is assigned with size of the message to be displayed. Few of the
> things are not clear.
>  
>       julia
>
>
>       >  }
>       >
>       > --
>       > 2.9.3
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/58b067d9.4d8d620a.8af7e.
>       1ae6%40mx.google.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/3607bae1-f325-4a95-bbe8-
> d94fcf492009%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1257389410-1488015578=:2088--

