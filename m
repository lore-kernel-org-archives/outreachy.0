X-GM-THRID: 6528628385749401600
X-Received: by 10.80.189.195 with SMTP id z3mr3575511edh.8.1520192329491;
        Sun, 04 Mar 2018 11:38:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.205.208 with SMTP id h16ls7046789edj.5.gmail; Sun, 04 Mar
 2018 11:38:48 -0800 (PST)
X-Google-Smtp-Source: AG47ELtRybw7WUaD2jsg3wq+wsop0AhWsrcBsKYHxD7MCyVj6I58/Oo5eC4H4wbk6L9/x8N0aq87
X-Received: by 10.80.200.202 with SMTP id k10mr3577651edh.10.1520192328620;
        Sun, 04 Mar 2018 11:38:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520192328; cv=none;
        d=google.com; s=arc-20160816;
        b=QIGOF5ZfSeySrmRTcxS0ZF0ZzYjRxy6nOGVVMmcZIxWQrDuLcXM03gm2AkoOENmgsq
         VDTVpjRT54GcDRfKri4bOk9BpwSJLmimvYwJdCxt3mpHQZRGqFIoWKpx/4wjsBpqwtJI
         0ciyr1dtA6GYgnKkgLC69U+EWriaqaE77sBicC7ufZ5PO4SsQ/3GwpctTYVRNWqxzhg3
         Rt+ixWN3t5eAqVzi73xqAgWdy/zjIaDKkVzEk70rp08D93pWp6tN+s0psRM+qjF1Zf4e
         3k+50UkWBt61+9R5c+hoJmjgLP9LmjyFrYZtgBZHjIfiSFdHco9JaK4WoWKTtAwMcjzk
         kq5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=eICI21zAYolBep1H6rxLKCR3QqKoZdoR5WmmHREEaSA=;
        b=aAM6d9o0yqHJNQoQmt6EB14HqdGhSMFPu7woqEEkwRoMBiA8KgABCi3sFRADNWLJ/l
         Sfl4GiRLq8lj6pp+93gH1lmIr1Hq1Nsws2NtbPDJKJQt1xgHuyvC1NLvckSqxYwJkFpw
         BR09k2H/8EMdelKTaqyDDwjkzXtjzedFL73wL2wpGJry+q1BD+g5Yz6VJpuDkJu63i4o
         BNzb0cAIL+WzqPDfmucDmArWZL1bEFzntqP7Piite2r2gVoB0WbrJ/xQUgxbbx5aSfUc
         rbl9YZtXZP5LdJWqR58Qg50wGtmUokCgGzLEetEU5aT0/kjITPMo8w3w9N7LRXOOxYUm
         +3mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f24si546579edc.0.2018.03.04.11.38.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 11:38:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,424,1515452400"; 
   d="scan'208";a="316324498"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 20:38:47 +0100
Date: Sun, 4 Mar 2018 20:38:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Cleanup for staging lustre
 obdclass
In-Reply-To: <CAJ1myNQ4EL6od8MOEh7JpoFUr6fKS7bwvcS0P8QDP5fDc4nCew@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803042038350.2182@hadrien>
References: <cover.1520153895.git.dafna3@gmail.com> <alpine.DEB.2.20.1803042005060.2182@hadrien> <CAJ1myNQ4EL6od8MOEh7JpoFUr6fKS7bwvcS0P8QDP5fDc4nCew@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:

> On Sun, Mar 4, 2018 at 9:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:
> >
> >> Fixes of issues found with checkpatch.pl for the lustre obdclass driver.
> >>
> >> Changes in v2:
> >> patch 1:
> >> 1. Revert moving the constant to the right side of comparisons
> >> in order to keep the condition in the form of
> >> 'lower bound <= val && val <= upper bound'
> >>
> >> 2. Revert returning '!!ptr' instead of 'ptr != NULL' since this is
> >> not part of an 'if' statement.
> >>
> >> patches 2+3:
> >> No Change.
> >
> > I think I acked these two.  You should keep the ack in the resubmission.
> >
> > julia
> >
> Hi, you did ack, shell I send another version with your acks ?

Sure.  Thanks.

julia


>
> >>
> >> Dafna Hirschfeld (3):
> >>   staging: lustre: obdclass: Fix comparison to NULL
> >>   staging: lustre: obdclass: Add 'const' to char* array
> >>   staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'
> >>
> >>  drivers/staging/lustre/lustre/obdclass/cl_lock.c        | 2 +-
> >>  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 2 +-
> >>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 4 ++--
> >>  drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
> >>  4 files changed, 8 insertions(+), 8 deletions(-)
> >>
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1520153895.git.dafna3%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNQ4EL6od8MOEh7JpoFUr6fKS7bwvcS0P8QDP5fDc4nCew%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

