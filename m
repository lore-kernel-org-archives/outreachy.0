X-GM-THRID: 6524677684399702016
X-Received: by 10.80.166.153 with SMTP id e25mr302137edc.7.1519145485516;
        Tue, 20 Feb 2018 08:51:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.205.208 with SMTP id h16ls4966897edj.5.gmail; Tue, 20 Feb
 2018 08:51:23 -0800 (PST)
X-Google-Smtp-Source: AH8x226mfahFQZOd5h8Qnkvk7A06gQUaYN3O4Xjq0OEdd8FIRL6oZjF/IN1IPV26Tc2sCcV6cTsa
X-Received: by 10.80.189.195 with SMTP id z3mr308372edh.8.1519145483902;
        Tue, 20 Feb 2018 08:51:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519145483; cv=none;
        d=google.com; s=arc-20160816;
        b=rCEkP6ZuLziCztEJ3lyBhSaOFyT5x/yQVpSKbsVTAPi5pAgVLJQ1eGGseMemMRjay6
         TrsTM5HCo2DnFWz6rVvDhUvUCzYOg3YUZL9elNsIOcCgK9jsnaDbRw7yxdiFI7q8CY+H
         LFy0qdPyM+8e5smKnlbAgW20vXNIlfqPERe2EBnIHJwv/S/WTJdCwccfIn5i+4f3xYMN
         p8NAXq7RnrKpMdlMAc75MOV+HDLuRIFIx9FMFvq1aACHL2RG8rGbx9rTWsjAzWqXG379
         sJLyRUbUgUoGDP63GX/xPO2/PLScHixX82YKdeUKohdbW/wz5MjyswPXEx1lPLrTAIUL
         IILA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=5FaEnyH7b+Wo4GeN5MXHc+HiIt1NV1kL/5tIrzXHG9Y=;
        b=BiTywJIXwajetzlqNEG+TQpRLdwhuVEQp93QI0PtFvP25Ezj5FCVdDpAeUPGXZdpDF
         G7gq+sxeiiPjkFK38YaiTL6zmxhrtEoTfqpuDgbqgLxCmVXwZpcLmvkbgyeMTOg7xRaJ
         scEjUTtwZ2wkv6SSE85yszSRJv5fPlaOtAArs9to4Ehq4gxn+W3BqkmFqWqUxxmU3Zw6
         Ho3r3l+4DB++yHTRo2xLpCeJ1Ulbm9fvHsFxproxNyje4VQxeLmjsYXRvfmnwXqvX0V4
         5vnjqMaYTFu/XYS3W1c4OVFxgOvjMmyqkpGCnOm/uqT/g29GlqwPliYQTZtIv25Aojz2
         sxng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h9si184885edi.4.2018.02.20.08.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 08:51:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,540,1511823600"; 
   d="scan'208";a="255503714"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2018 17:51:23 +0100
Date: Tue, 20 Feb 2018 17:51:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [SETUP] Difficulty with git email
In-Reply-To: <a73809d7-06c8-4e06-b64d-0c05d1899c4e@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802201749541.3377@hadrien>
References: <a73809d7-06c8-4e06-b64d-0c05d1899c4e@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 20 Feb 2018, Nishka Dasgupta wrote:

> I am having trouble with git send email. The error says "Unable to
> initialise SMTP properly. Check config and use --smtp-debug" etc. I have
> gone through all the possible options, and at the moment I think it is
> probably because I need my account to allow access to less secure apps, but
> my email account is managed by my university and they won't let me change
> that setting. (I have switched from university wi-fi to mobile data, and
> fiddled with the SSL certification values, so it probably isn't any of those
> potential reasons.) So now I have three questions:
>  1. Will mutt also require me to change that Gmail setting?
>  2. If not, how do I finish setting it up? The instructions on
>     Outreachyfirstpatchsetup, said not to add a mailbox, and now I can't
>     reply to emails because I can't add my mailbox.
>  3. Again, if mutt does not require changing that Gmail setting, is it
>     possible to submit patches through mutt instead of git?
>  4. Finally, is it advisable to just switch to my Yahoo email address that
>     is not managed by my university (I will, of course, only be submitting
>     one application for outreachy, from only one email address.)
>
> I am sorry for asking so many trivial questions. Thank you for your time!

We will focus on your name for counting the applied patches, not the email
address.  So it doesn't matter if you submit patches under a different
address than the one in your application.  If the yahoo one works, then
you may as well just go with that.

Others can probably answer your questions more thoroughly :)

julia

>
>
> Regards,
>
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a73809d7-06c8-4e06-b64d-
> 0c05d1899c4e%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

