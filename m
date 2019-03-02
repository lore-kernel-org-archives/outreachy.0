X-GM-THRID: 6663742329894993920
X-Received: by 2002:a1c:6c15:: with SMTP id h21mr592945wmc.10.1551530190676;
        Sat, 02 Mar 2019 04:36:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f107:: with SMTP id p7ls816981wmh.6.canary-gmail; Sat,
 02 Mar 2019 04:36:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ/KOKeXCMTqL84ZF56SWbDxYeaEXj8Cyl4OjEFnC0eY5NLu5VnEkPuDG90/01pevm/9Eb9
X-Received: by 2002:a1c:a943:: with SMTP id s64mr568399wme.4.1551530189910;
        Sat, 02 Mar 2019 04:36:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551530189; cv=none;
        d=google.com; s=arc-20160816;
        b=ZvQCrpi4ClrJKjA55xuE4ZFqihD99dJ0QbNnmei2M54MIHfn9QoDa2k9AAYJWhV1sX
         2AFrRA49VoMYltkzHBLIGXQA7bEveYntoWZqpi/fGsz3uEaR+pEpXwgkdF7jLEL8Bmql
         jtWJl/TmTSzMuDGizGg1uXwFBNyn88IlIT+Y+XGRXvm/PbQ+Czdd/CHcNmicaIcqtuvf
         5O0wvupam7/ck1PUChfYROVPRIPg8WCnDZjzqTS3L/rYwmTtLna/PPSj8X4hOZRjcoIb
         dYyTTKA5vRrkHiYy44Y8oNkVi+1lZuRau0ouMr10mbyqRPtFdTFcq3Zz4Y0SeyZCAh1f
         I2Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=dJs/MDbVmk7VhRKvrY5UXwTkKf104gSRzq9ZHS0R5AY=;
        b=h1twuutpSktN43pMsu6Dw+bfMSX8NyUe7hT1pZ5mW6neZ0jx2OVjFHHsld9ifZjx3N
         2aw/2mjGtxVtqkocmkCQNSfk6EJJiBBnQ1IcAyzlDT8KfvdpHqU8ItE8NMgRVraC3wZt
         lAauFS2krNXQnNvP9AIJ3QOErw6W6UYqTXsnZHyhQkdLAoXTY83WxSnSU1Lr/iVlCLC2
         9NJiiHE4gFrS2YAGs7kuSV47rE7qi8a6pMIaJtuk+eE5Vq3B9jQ7BR8+XhBkY4Sl9K9o
         BYJHmM8xQHcw+RTfC7xgoUW77M4CxjwGDEvDdaRT/HYvrnXFXer9BqVJ3eA1lGPywG+c
         3PZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 60si30360wra.3.2019.03.02.04.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 04:36:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,431,1544482800"; 
   d="scan'208";a="371619145"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 13:36:29 +0100
Date: Sat, 2 Mar 2019 13:36:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <debsdo101@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] QUESTIONS REGARDING FIRST PATCH SUBMISSION
In-Reply-To: <CAKg+crjkvYaQzTJqDFJJPBEyjWpJKdvsh5c+imvy1jFqPKU8tA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903021336080.2499@hadrien>
References: <CAKg+crjkvYaQzTJqDFJJPBEyjWpJKdvsh5c+imvy1jFqPKU8tA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1601129415-1551530189=:2499"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1601129415-1551530189=:2499
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 2 Mar 2019, Debleena Sen wrote:

> Hi,
> I am an Outreachy applicant looking forward to work on the Linux Kernel
> Project.I had a few questions about the patches to be submitted on staging
> drivers.
>
> In the page Checkpatch_Tips it has been suggested to ignore warnings about
> lines longer than 80 characters and not to fix them and submit patches for
> them. I was working on wlan-ng driver and most of the warnings were of the
> above nature(WARNING: line over 80 characters). So should I not work on
> those warnings? I saw other Outreachy applicants submitting patches for that
> warning.
>
> I have another question. What should I do with the CHECKs(for e.g. CHECK:
> Alignment should match open parenthesis)? Are those valid issues to which I
> can submit patches or should I ignore 'CHECK' and only work on 'WARNINGS'?
>
> I'm sorry to ask such trivial questions but I'm new to Kernel development. 

It's ok to address these kinds of issues to get started.

julia

>
> Thank you.
>
> Regards,
> Debleena Sen
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAKg%2BcrjkvYaQzTJqDFJJP
> BEyjWpJKdvsh5c%2Bimvy1jFqPKU8tA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1601129415-1551530189=:2499--

