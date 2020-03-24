X-GM-THRID: 6807744599816142848
X-Received: by 2002:a2e:9099:: with SMTP id l25mr7845922ljg.157.1585053608629;
        Tue, 24 Mar 2020 05:40:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a49b:: with SMTP id h27ls1185795lji.2.gmail; Tue, 24 Mar
 2020 05:40:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtjekyd1r419V2b4kF3/MgNV58ykXWS4uZBgNIasstriRlZih2BSXzY2pnFMGqINUdHxOSc
X-Received: by 2002:a2e:b4cb:: with SMTP id r11mr2806374ljm.201.1585053607070;
        Tue, 24 Mar 2020 05:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585053607; cv=none;
        d=google.com; s=arc-20160816;
        b=vLF3+TmhtFY1faJCYvnYMO/+Vy8jReAPj2GNq0VnKoYM2jv+ewxNMPuDYHOg0mbti4
         sdJXPxZmazSgi8xKvdD972g+4br2OwnESkCf7U3BJri0Y/8FQ4A1d1lJY1194ikzjF3r
         9PzLtpRi1Jqw4+zKwQjYEiZj/KYVYntGrdc8i3a8CqX5MQtqQeOZhFZxA4PwwfoWaiMr
         RMIgP6A3b9ItPTppljI0LsrE6lb/3SVezg9ZKmFpCi89fPPxwGpw5d0eOoZK5qgEe6HK
         e3XQS1IOw5CiO5w4ew7ZrX+dpo0b2OtIPEl/l2RjATzI198Xx941/1rIon1ZMOgpmpwc
         EjEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ujFugrfgFmE+PuCNzPAPaqzyhnY5VWF6V3KrGcu/9AU=;
        b=a/ccTjTz1hofx75BpFRl4jbT/r2b7hClhqins4ksoRwCJFh78em/P6mwS/2PIOjp4v
         3tcOxEvK576Fb3aHW7gP1wJTkbTBpYjnFAFqCqcvclYFI/YZ5dimpOqB0vcZj8lqlDuL
         R9rh44scHYkcO9TGbSXJSHZdMhwvZi9ophBw7sBx94oDJQGvXGbnKhEp8XeBlDgh0tiN
         uwAy2y2ZCx8y20GZkDO2sWl0WQRH9QhZ3EHNSzpufZXG1T2KCwqkja+ejY0G+pmsKW9x
         6g1UsD78L4SvVzeGX5ZtwHkfHdZ36osxFgRQ3a9g9C4ShklEINOxXTiCkOWd8Qe3ugKd
         /twg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s17si1452914ljm.5.2020.03.24.05.40.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 05:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,300,1580770800"; 
   d="scan'208";a="441894991"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 13:39:42 +0100
Date: Tue, 24 Mar 2020 13:39:42 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, Julia Lawall <julia.lawall@inria.fr>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: Following up on Coccinelle.
In-Reply-To: <eaac641de00be14d48192180c624c2e13f7d897a.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003241334100.3306@hadrien>
References: <eaac641de00be14d48192180c624c2e13f7d897a.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Mar 2020, Sam Muhammed wrote:

> Following this thread:
> <20200311181134.GA17847%40supernova>
>
> While tinkering with Coccinelle, i found that this error:
>
> coccicheck failed
> make: *** [Makefile:1742: coccicheck] Error 255
>
> only happens with (as far as i tried) two COCCIs:
> using MODE=patch
> scripts/coccinelle/api/atomic_as_refcounter.cocci
> scripts/coccinelle/api/check_bq27xxx_data.cocci
>
> So running make coccicheck with no COCCI= will always fail at the
> scripts/coccinelle/api/atomic_as_refcounter.cocci
>
> Adding that MODE=report is okay to report all ERRORs ..etc
>
> so specifying a COCCI to get round it worked for me.


Could you try with the option DEBUG_FILE="err.log" and then see what is in
err.log when it crashes?

>
> ++
> but i have a question, maybe a couple:
>
> + If i have a simple .cocci and it produces patches, how do i make a
> commit of it?    _newbie_ :)

Apply the patch to your code:

patch -p1 < the_patch

Then proceed as if you had made the change by hand.

> + If this .cocci propagated across a driver, a patchset of this change
> across the driver will have the same subject for all patches, I guess
> thats not okay? so one patch of all the driver files should do it?

It depends on the changes.  If all of the changes are quite uniform, then
putting multiple changes in a single patch could be ok.  If each change is
a special case, you may want to put more detail about the file in the
subject line, ie before the :

In general, the point of a patch is to make something that is
understandable for the person who has to review it.

> + Basically, how to format a patch found by EITHER an existing .cocci
> in the source tree, or one that is made and not included in the
> /scripts/coccinelle ??

If it is made by a semanitic patch that is in the kernel tree, then you
can use the tag Generated-by: and then give the path to the semantic
patch.

If you do something on your own, it could be helpful to include the
semantic patch in the log message, or a simplified version.  The point is
to show the maintainer what reasoning you have used to come to your
change, without overwhelming him with tedious detail.

julia

