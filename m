X-GM-THRID: 6528077387977981952
X-Received: by 10.223.155.145 with SMTP id d17mr476717wrc.30.1519974982673;
        Thu, 01 Mar 2018 23:16:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.200 with SMTP id n191ls124010wmd.11.canary-gmail; Thu,
 01 Mar 2018 23:16:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELuACtmq9MWp0+hDCu9XA897ewcDJpsaAs+9DnRl9gWwW/BSoFAaFmH6hn7gQD20NP5SMXMO
X-Received: by 10.28.184.6 with SMTP id i6mr58521wmf.14.1519974981880;
        Thu, 01 Mar 2018 23:16:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519974981; cv=none;
        d=google.com; s=arc-20160816;
        b=bCA15eOMQX6UcyhJjySNgMB8ftz3NjaGeajAUf6P0qwkpUj3Ntp1m8LHcFag5j5LRL
         gCtC9nWf2McGiJ7a0slOnc1MfyYmyJbwwwK/azIcD7EyT5jiWwg9iW0k6YMRZqMYbCFI
         R7aT5OUBCKfIwGVfFCBTPq6xxxhBpuThZkgAhzFJF0HDhcmDzkykmG54cRtj5b1TFLsw
         ICTLXgFfhvxp/0WQJCG/ZcSqaqzLAuILFtKQnNuD5/0J3qzxH+m9ZW38VAgnouzO+GP7
         FRUKGnx+y1hivN6TDwlPkqxraTST0+4NEEpOZ2W7qW+9xFjuJgXhBcOLyhab5gPNQ3i/
         tXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=hBJH4ZvP9azuwuqRyzSxoxT5TkxJRShoo09apI4yQYw=;
        b=sCj+egCCksTyHQI0G2c+IiucRoH1iGLmY80CASEx8djLONKltCyw3oVsbMPrzKd2CH
         9YEaKaygm3OzYjG42cx+OTxNxI1IVXX3+8OrBdrwA5nHwpEPgTf7xb9zZOThyK6/hUWv
         dKggvGrSQBQ7rufqCRF+ptTiL4OcKJvdo4rzqe6xFy1Hs4bExjh0lYeUG/uqcDsjljEb
         rZI6E5aspRbjD2CyT8w8ZHdypgmlTebjkDsLJun6eMfyikWluu45OjrMSj7GSm4Gdegz
         2zfgyEw1A99StPnnNMTGeYI+8JdlVSwl8/ow6PKKuG8i68lPxJyEdMFb+EMdDPhjCXKj
         mk3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t15si39061wmh.1.2018.03.01.23.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 23:16:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,411,1515452400"; 
   d="scan'208";a="316001369"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 08:16:21 +0100
Date: Fri, 2 Mar 2018 08:16:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help with Mutt
In-Reply-To: <CAO393ABjrRcjHStB5TYJfnKSM3qs8oN43ckEU1_=C2Gn=YFxvQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803020815440.2214@hadrien>
References: <alpine.DEB.2.20.1803012135130.3474@hadrien> <1519937773-28053-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <CAO393ABjrRcjHStB5TYJfnKSM3qs8oN43ckEU1_=C2Gn=YFxvQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Shraddha Barke wrote:

>
>
> On Thu, Mar 1, 2018 at 9:56 PM, Nishka Dasgupta
> <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
>       This is with response to your email: I think you will need to
>       give more
>       information. Do you get some error message? Does nothing happen?
>       Does it
>       crash? What did you do before, in terms of setting up
>       configuration
>       files? etc. Any particular thing about the situation that you
>       can think
>       of.
>
>
> Hello Nishka,
>
> You don't need to follow this format of responding to emails. Just respond
> inline.

She can't because she doesn't have her inbox, so she has nothing to
respond to...

julia

>
>       My response to your email is as follows: I followed the
>       instructions at
>       OutreachyfirstpatchSetup and Outreachyfirstpatch at Linux kernel
>       newbies. The instructions said to "say 'no' to creating an inbox
>       for
>       now". That is what I did. If I send an email to myself from
>       within mutt
>       (using the "m" command) it shows up in the inbox; but no other
>       email
>       sent to my account is visible. (Up until now I have been viewing
>       emails
>       and responses in a browser and composing replies in vim.)
>
>       In accordance with the instructions, my muttrc file contains the
>       following lines:
>       set sendmail="/usr/bin/esmtp"
>       set envelope_from=yes
>       set from="Nishka Dasgupta <nishka....ashoka.edu.in>"
>       set use_from=yes
>       set edit_headers=yes
>
>       My smtp and git appear to be set up fine, since those are how I
>       have
>       been sending emails so far. However, I don't know how to ensure
>       that
>       emails sent to my email account show up in mutt. How can I
>       address this?
>
>
> So you are able to send emails but not receive them? Is that all your muttrc
> file contains? Have you also made a .esmtprc file?
> You could try setting up mutt with smtp by searching google for .muttrc
> configuration files that use smtp.
>
>       Thank you for your time.
>
>       Regards,
>       Nishka Dasgupta
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1519937773-28053-1-git-s
>       end-email-nishka.dasgupta_ug18%40ashoka.edu.in.
>       For more options, visit https://groups.google.com/d/optout.
>
>
>
>
> --
> Shraddha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAO393ABjrRcjHStB5TYJfnK
> SM3qs8oN43ckEU1_%3DC2Gn%3DYFxvQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

