X-GM-THRID: 6665164528202809344
X-Received: by 2002:a05:600c:21c8:: with SMTP id x8mr553209wmj.14.1551855254314;
        Tue, 05 Mar 2019 22:54:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d04e:: with SMTP id h75ls76087wmg.0.gmail; Tue, 05 Mar
 2019 22:54:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqzdcHd+om73rRthppglBYOM3jHZd6t7tV/fTvchbTFaGQ0jtZDGrD82Lg9+BHdOeFaA8Rpk
X-Received: by 2002:a1c:2545:: with SMTP id l66mr548395wml.14.1551855253577;
        Tue, 05 Mar 2019 22:54:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551855253; cv=none;
        d=google.com; s=arc-20160816;
        b=TaEiwRybBohOg6mMRtuRFOfgaBIkrJK/TeBew19FiVoPRhATcl57g4g5v9C5Da44Oz
         kC+gF1JFlo3HgUViqVmHe9bpi0MZtKasunJrfuNKjh4z7oz/ibSCuAUq9fTMv5ZC5+6W
         1d9o/AZyWZ+9HzXuFvRQYXb5Rs9zIQQOXprPkisuncaezh3ebhzzqKN7OVJVyEyqaTju
         a+6OzWIWXsRWucaG1CJ+RitRSnH5AT957Vbn6//V8x9qOxUptPy9c0sct+RHwe214QG2
         f9WjWikgE09aSZwHdlItqIMZ1cRGtJV4cxOmqyJiVyzL+5tcI+kaMCbOiHEHwu64p9uc
         5SIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MsrJVUkvoIfRwR/kGO0oem8j1M/SNR0GCISUGIr9kVs=;
        b=S6zDKVYG+kgqvKBItPAt4dDvftOBdToBVW8OOuiWTsC17xx7/KFW6vmn6nLjWsnFdM
         Cm8+1F7hCNozUyJ7F7E1BwNtaC65Sj7PJOdACMB/8Gc5WSTReVc9lCXwBQzoQVshjeB6
         m0NOzJjhNt3JmCTQyjVDlZBVP3NQix1Qz8U5rBV4xZGZhSoQfsHRh55194UkPPoAIsQs
         0zrUNDeYhfhA8Sa24JIu6k0jchOJIWOYmGr/952iPuw0tzDheKb+1UokKX5hRQ1ufb+j
         weUWQT9BeyZ28PCddPcmysuc89KkOQuwq4CMHI2IJH9La9Its+ez0u1J3EWipqTSocOK
         3/oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si33155wrj.4.2019.03.05.22.54.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 22:54:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="298260573"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 07:54:13 +0100
Date: Wed, 6 Mar 2019 07:54:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Regarding unused macro.
In-Reply-To: <CAOMPgjiqYU4Hwb26RjnN=JevCEgtc1wCMHq_EM5fDDq9mOYjmQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903060749330.2706@hadrien>
References: <CAOMPgjiqYU4Hwb26RjnN=JevCEgtc1wCMHq_EM5fDDq9mOYjmQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:

> Hi,
> I am contributing on fbtft driver, As i see `+#define
> define_fbtft_write_reg(func, buffer_type, data_type, modifier)` macro
> is not in use. can i remove this macro to resolve `CHECK: Macro
> argument reuse  possible side-effects issue?

If I grep for the name of this macro, I find what looks like three uses.
Why do you think it is not used?

The macro is quite complex, so I haven't looked into what are the
arguments that it considers to be used more than once.  But an interesting
thing about this macro is that just from the usage sites, you can see that
it has to be a macro and cannot be a function, because the arguments are
names of types, and one of them is missing in some cases.  These things
aren't possible with a function call.  On the other hand, if you look at
the usage points, you can also see that using the arguments more than once
will not result in re-execution of any code - they are just function names
and type names.  So you can ignore the warning.

julia


>
> Thanks
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOMPgjiqYU4Hwb26RjnN%3DJevCEgtc1wCMHq_EM5fDDq9mOYjmQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

