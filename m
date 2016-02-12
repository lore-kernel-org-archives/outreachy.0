X-GM-THRID: 6250276130683617280
X-Received: by 10.28.45.151 with SMTP id t145mr112051wmt.6.1455261827747;
        Thu, 11 Feb 2016 23:23:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.234.218 with SMTP id g87ls55724wmi.25.gmail; Thu, 11 Feb
 2016 23:23:47 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr3001wjc.6.1455261827341;
        Thu, 11 Feb 2016 23:23:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si44643wmw.3.2016.02.11.23.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:23:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="164426741"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 08:23:46 +0100
Date: Fri, 12 Feb 2016 08:23:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: osc: Declare
 structure as static
In-Reply-To: <660d75f4-ceb0-4945-81e9-8e4c2bb1cab0@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1602120821220.2055@localhost6.localdomain6>
References: <1455255789-6050-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.02.1602120750400.2055@localhost6.localdomain6> <660d75f4-ceb0-4945-81e9-8e4c2bb1cab0@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-378085324-1455261826=:2055"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-378085324-1455261826=:2055
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 11 Feb 2016, Bhumika Goyal wrote:

> 
> 
> On Friday, February 12, 2016 at 12:22:02 PM UTC+5:30, Julia Lawall wrote:
>       On Fri, 12 Feb 2016, Bhumika Goyal wrote:
> 
>       > Declare structure as static since it is used only in this
>       file.
>       > Problem found using sparse. Used grep to find occurences.
> 
>       Could it also be const?  You can try annotating all declarations
>       of this
>       type as const and seeing if it compiles.
> 
>    
>    I declared it as static const struct obd_ops osc_obd_ops but I am getting
> warnings like :
> 
> drivers/staging/lustre/lustre/osc/osc_request.c:3312:6: warning: passing
> argument 1 of ‘class_register_type’ discards ‘const’ qualifier from pointer
> target type [enabled by default]
>       LUSTRE_OSC_NAME, &osc_device_type);
>       ^
> In file included from drivers/staging/lustre/lustre/osc/osc_request.c:51:0:
> drivers/staging/lustre/lustre/osc/../include/obd_class.h:75:5: note:
> expected ‘struct obd_ops *’ but argument is of type ‘const struct obd_ops *’
>  int class_register_type(struct obd_ops *, struct md_ops *,
>  
>       Possible reasons for the warnings?

If you mae something const, it has to be declared to be const at every 
place that it can be passed to.  The compiler only checks that a const 
declaration is consistent within the scope of the declared variable.  It 
won't check that the thing is not modified in a called function. So you 
have to change all occurrences of struct obd_ops inthe entire driver, not 
just the single structure that you are working on.  It might not work out.  
But ih you make the changes, then the compiler will show you where the 
problem (ie an assignment to some field) is.

julia


>       julia
> 
>       > Signed-off-by: Bhumika Goyal <bhum...@gmail.com>
>       > ---
>       >  drivers/staging/lustre/lustre/osc/osc_request.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c
>       b/drivers/staging/lustre/lustre/osc/osc_request.c
>       > index 3ae00fc..beabb1c 100644
>       > --- a/drivers/staging/lustre/lustre/osc/osc_request.c
>       > +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
>       > @@ -3256,7 +3256,7 @@ static int osc_process_config(struct
>       obd_device *obd, u32 len, void *buf)
>       >          return osc_process_config_base(obd, buf);
>       >  }
>       >  
>       > -struct obd_ops osc_obd_ops = {
>       > +static struct obd_ops osc_obd_ops = {
>       >          .owner          = THIS_MODULE,
>       >          .setup          = osc_setup,
>       >          .precleanup     = osc_precleanup,
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1455255789-6050-1-git-se
>       nd-email-bhumirks%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/660d75f4-ceb0-4945-81e9-
> 8e4c2bb1cab0%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-378085324-1455261826=:2055--

