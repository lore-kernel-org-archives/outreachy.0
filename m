X-GM-THRID: 6528085796947230720
X-Received: by 10.28.7.73 with SMTP id 70mr35405wmh.7.1519964837814;
        Thu, 01 Mar 2018 20:27:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.4.212 with SMTP id 203ls77306wme.0.canary-gmail; Thu, 01
 Mar 2018 20:27:16 -0800 (PST)
X-Google-Smtp-Source: AG47ELv3ySgxJ0h9slyuQ8f0EM0WT9EDXcBNqYk71pX9IuoyyjFup7VexyLkhbgWKGdkB+cjmgUR
X-Received: by 10.28.190.24 with SMTP id o24mr40049wmf.10.1519964836558;
        Thu, 01 Mar 2018 20:27:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519964836; cv=none;
        d=google.com; s=arc-20160816;
        b=Kk/fLeeSkaaNYYCxZ4U910UugUHERh2TDzeXIcfZpiDcKDlReSzq5iM42j6YfFa5N8
         C4Xd6SRKiBDW1iXBLXmGBGK33zk1XhtHmF/LYmfwUKFWlJbKzL0Z1TSk05fgWPOFJksC
         AWGmiQLXtaAa6Qk+yLPgnvFgatuDUZdw5Uubq+sxZ+r6h9uzH9ID+oBdJbKzfX1BSJmH
         8I4qvC8rNFR6d0vknZ7OMi4WeXcY0hn9YAku4H6GgCo/YCQagbP4pim1Jo5IYTAV+rCS
         WCJ8URq9ASEIPtGaiUuQ1J5jX4PjDqYaGXA4FoqSdaz1HcSzNfiVtSDalyTOz/ZkhpCp
         F9ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=nyEgAOToDOARxwi5HAIC83m1h74yHGTHkct3vXj0h6Y=;
        b=pkz3BTw83UV6krlElYiJkcOhUvJ7Vt1PgXcocF21Nvf7sk++V1WnMqPODHBCkIExSs
         k1jHvNdm+hi3zHDVdCyeEcQqbsmvlGwpdmdZ9eLjh2TABBQl1jzu73+YzFwa9NtVQ1a4
         4nnpPnBwktkoevGxVHrQGEnIy6xyrDJVy5DnGpBL7IKawHhRY/eh9tTKJxsAxQeumwiu
         rNwjn7M1rPCal25yrh5o4tMH59AdpmrUPP1DcEm3MwsIHprDt/xMEhbOKo5AFtergJRG
         ebJ1382FsY68GYM7pGWbZUeajYladeCeW/LVen/gSScT3d3JdsLb6rafNhQAtjB5PeL2
         UdKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pEobi8Z0;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-x230.google.com (mail-lf0-x230.google.com. [2a00:1450:4010:c07::230])
        by gmr-mx.google.com with ESMTPS id l1si18411wmc.0.2018.03.01.20.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 20:27:16 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) client-ip=2a00:1450:4010:c07::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pEobi8Z0;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x230.google.com with SMTP id m69so11562206lfe.8
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 20:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nyEgAOToDOARxwi5HAIC83m1h74yHGTHkct3vXj0h6Y=;
        b=pEobi8Z04tz67VjLqEdH9FOfk/CQKi8x8tkce9HhSv9T3JsqN1cXw8BXKRPtuIuy2b
         1WaXbSo269JRa21AfWu5a03NeLFEVCqe9QwLvtVLT6HHtnKd9993yYHY/E7ypalH6sKF
         83r6qdce0+GkYQInjPPMJpQpNUL61UHaF+RsYfMuecieF6RTEUxeAquqV1lf5W5PegNq
         C6/BEa58/XVtGg1XHAuAUJsNC7O800C9ut++VNmFritjWz0Lja54OuEUd4ohOejdvUQU
         n0fdeOySlfklUJKmONPXlGzMCR8Klg+kI3YbRXwG6ewYjC5qsm2who9j0EqSTQt5M3xt
         x3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nyEgAOToDOARxwi5HAIC83m1h74yHGTHkct3vXj0h6Y=;
        b=MUoiFmUdpRAdwp8Av9PQFN2kvle5x81wUMjVL6cDICLfkrDCSReAV6k5FHketzX/Qy
         iJzzHDw52coHAOZdfOV7W8jte4SDCGVJTtUrK0DSmJPcnC9itJKXvsFeQA5KgH037+AK
         vfR1kJQtT98pcQETIeG1UV/60npSCYl30Lenn9bDMnhnOkfCYgBAo6rBWoON6zziRJ2R
         kPxk7PWrzfd8C8pADiuH+/m6l0vNiC1eg/280UsBgH+4xpYvKpvTNiNJFEjJdu6v0rnN
         4NELCQTVIiKC+Zn073YyhknzE2JZH6//PyFEhpk6STtdILv3aQxMgbPhgmN4La4PlIkF
         q6Mg==
X-Gm-Message-State: AElRT7GxNlkZm5Q0s5JW8UcVoYpQ/jZSbr6jdBX6bv04Z+yEpULUAwRD
	pnv1D/CUl+gbfUpW+vP6FhQDnf89iDjq4RE291EokVsS
X-Received: by 10.25.44.16 with SMTP id s16mr2846494lfs.15.1519964835951; Thu,
 01 Mar 2018 20:27:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.129.212 with HTTP; Thu, 1 Mar 2018 20:27:15 -0800 (PST)
In-Reply-To: <1519938402-28218-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1519938402-28218-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Fri, 2 Mar 2018 09:57:15 +0530
Message-ID: <CAK-LDb+VENHz6pWO+pca5vis7PtThfMqTWDjVuN-2V=9SDrF7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Questions regarding the application process
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 2, 2018 at 2:36 AM, Nishka Dasgupta
<nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> The introduction to this mailing list says: "once your first patch is
> accepted, add that as a contribution for the project(s) you're
> interested in". I had two questions about this:

Hi Nishka,

> 1. Will different projects require disjoint patches to be added as
> contributions?

Outreachy's new process requires you to sort of record your contribution.
And once you record that, it allows you an access to an application form.
Now, in the Linux Kernel we feel that every accepted patch is applicant's
contribution, so for an applicant to have an access to an application, it's fine
if they put their first patch as a contribution for the projects. Also, please
note that you need to fill separate application for each project , even within
a single organization.

Now, for the Linux Kernel we still follow the same process. Which is basically
you need to submit 10 clean up patches before starting on project tasks.

I hope this makes sense.

> 2. Does a response of "Acked-by" mean the patch in question has been
> accepted?

No, you can check what does it mean under point 13 and 14 in following link:

https://kernelnewbies.org/UpstreamMerge/SubmittingPatches

Usually you know patch is accepted when Greg picks up your patch in his
tree and you get automated mail.

P.S. I've seen that your replies in our mailing list doesn't follow
the rules. So,
this is a friendly reminder to fix your mutt and reply inline instead
of top-posting.
You can read more about it here under responding to emails:

https://kernelnewbies.org/FirstKernelPatch

> Thank you for your time.
>
> Regards,
>
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519938402-28218-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

