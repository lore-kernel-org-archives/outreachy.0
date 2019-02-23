X-GM-THRID: 6661078107431108608
X-Received: by 2002:aca:5450:: with SMTP id i77mr4461012oib.50.1550909025577;
        Sat, 23 Feb 2019 00:03:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3d54:: with SMTP id k81ls4373810oia.1.gmail; Sat, 23 Feb
 2019 00:03:44 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZWCnffn5FSQJRg2Ofe4IDWo7pPAwb6tLMk3j5FPcGOYYWK7fP0o9k0w6dkvlq0TVkZnR/j
X-Received: by 2002:aca:4006:: with SMTP id n6mr4474970oia.49.1550909024767;
        Sat, 23 Feb 2019 00:03:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550909024; cv=none;
        d=google.com; s=arc-20160816;
        b=iQxXlTVyuHZUvQu7vHUCzuRORfuM9BdIkUMGFiI0rRJSQtN+0N8in/1GgwLzhc59B0
         XnU9SiHk/B1mf3UqHefzJ2b1ITX0zIbidLNSqc5cNTxss5gic2KMl0M/HvdLEQZE0a6H
         DgRmxc9k+Vfxo1p2/e1Ptu3w9Ekygsm7MBA6FkjGDWyThLR+884gObTzgJW01//4BZmM
         zK/4f3U8MLFA6yO7EeNafWOB4RquWJowNFSykdnz7LwCk+tb2wHgSSjBCBDvEEtb7ATK
         07FQaZvUG09MjYNdcqwKmOgM6NtaeVZKsKCHkyuZcF/RNtPB2dIKbLPI5I45gAZUThqT
         jfFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YN35LqUAxQNUY+NUMltWjGqIDUP/us/Ilm2nYqmcKs0=;
        b=zWLHOGaCMr++XD32gfu6RrymTyGnUO8K4PacxZzyUw7XgjAXBMFLwZuXioGhd8/ae1
         VXes4iqdN2rNjC/ZDATRHdCoPFhfJuUtXtYQj9GlZyiUSArpRnfcJcsA0xGpmFysharB
         Oo0FlBxcmRjxfumZM8f/P5MwXv9zu95y0S0R3xiK6em1YsZckDx2Dwg2n31Wc1YXI+5H
         O9wI7K5cb/2EQoNbiBa/kSZX07MMyNGEvJlq6gN/ixMeVGDBMg8k28Y0WU2v8ibp1yST
         mUSVD5JHatwlOJtXYEZJEd/KilvhuIzVkTqFudxKnJwilRhXfSukMFXuyIkyYodl1/Zb
         YrAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V44V4eCO;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id x31si264700otb.1.2019.02.23.00.03.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:03:44 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V44V4eCO;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id s1so5241005qte.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 00:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YN35LqUAxQNUY+NUMltWjGqIDUP/us/Ilm2nYqmcKs0=;
        b=V44V4eCOdCxLWpl1eBnvF2tm9dRQ8Wrp0jeJ8V3X0XJFfjWxmFFbiO6JeeNH/l8KE4
         znyfBXGRdIhIAoX46Ti0VuFzFKR3vq5Uw1UAAoEQ4GbezlbyiFBq/rQy4MYxuqq7Nnk1
         dAKdZLrBsSObTGprcuCFFP+5XzNCdBuWdxKOkDy6IiGUxs0ib0h8N5PlyEf3DU5RTrlX
         uVxcgqqKA80qSVedMYBig079BbJsh8/iBZGRqNdiMfn4de2Mn0n4W9DQBJ0RgAtrQVUW
         RDgWM4Ja+m20+kiQkhTqTUx8xBgO/7Sm26MgTA4Iu08dzgB/BExuMsx/zPLFzWvxtfad
         rYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YN35LqUAxQNUY+NUMltWjGqIDUP/us/Ilm2nYqmcKs0=;
        b=losiDxwLh0iy9iPlI7u2UeOb0EOKC3uCiqWr8FwEbiToywKocy8qQddXnqlPjHZJNa
         Q7/87fh0niaQfBtnEHlTmHivWJses2ojY8pzYYGRxQCWLFPp0Y0SA6jmy74XqFlvS/Le
         rDDsqBK83c8nvhwTgdvfd7ytc9isAuZ/0uCDWj8rikZfoxGVEPOa7qWfc2N8PL6RTSeY
         6e4p5X5EMIOABhyngVf2/MLXLbCodcGLgIPhfiAEc6PEVajsBQ0GImhuwJcSN8um2oUb
         Syah4gyWpPUTQRkY1oXSotrSDW6p0DE8xOMcU+aUaV/uvxQay1O8WGnGpuNgbRzuT30z
         aVJQ==
X-Gm-Message-State: AHQUAuZXPqLzpCV5i0wupQJOKUm/1bkH4U6ueUbkRRorC/ZUw/nD6PiA
	ctHVD4kexvlkClUpw6IFKQfs6QJUbsgamonu5tLg7JTn
X-Received: by 2002:aed:3c0f:: with SMTP id t15mr241000qte.282.1550909024194;
 Sat, 23 Feb 2019 00:03:44 -0800 (PST)
MIME-Version: 1.0
References: <20190223062455.GA11432@bhagyashri-Lenovo-G570>
 <alpine.DEB.2.21.1902230819090.2612@hadrien> <20190223075418.GA2640@kroah.com>
In-Reply-To: <20190223075418.GA2640@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Sat, 23 Feb 2019 13:33:30 +0530
Message-ID: <CAOMPgjhA51f2mPC0PwTckgPnn1J0ocDgS0CMqtob9EQvihbkzQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add
 SPDX-License-Identifier tag
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000077537005828b2536"

--00000000000077537005828b2536
Content-Type: text/plain; charset="UTF-8"

Thanks Greg. Sure, I will do that.

-- 
Bhagyashri

On Sat, Feb 23, 2019 at 1:24 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Sat, Feb 23, 2019 at 08:20:27AM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:
> >
> > > Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which solves
> the
> >
> > Where do you get the BSD-2-clause thing from?  It seems that Broadcom has
> > made their own license.
>
> No, it really does look like BSD-2, so this looks correct.  Bhagyashri,
> nice work!
>
> But, I would like to see this happen for all of the files for this
> driver at the same time, and then send a patch that removes the
> boiler-plate license text, so we just end up with the copyright lines
> and the SPDX lines at the top of the files.
>
> Can you redo this patch as a patch series that does that please?
>
> thanks,
>
> greg k-h
>

--00000000000077537005828b2536
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Greg. Sure, I will do that.<br><br>-- <br></di=
v>Bhagyashri <br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sat, Feb 23, 2019 at 1:24 PM Greg Kroah-Hartman &lt;<a =
href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sat=
, Feb 23, 2019 at 08:20:27AM +0100, Julia Lawall wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:<br>
&gt; <br>
&gt; &gt; Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which s=
olves the<br>
&gt; <br>
&gt; Where do you get the BSD-2-clause thing from?=C2=A0 It seems that Broa=
dcom has<br>
&gt; made their own license.<br>
<br>
No, it really does look like BSD-2, so this looks correct.=C2=A0 Bhagyashri=
,<br>
nice work!<br>
<br>
But, I would like to see this happen for all of the files for this<br>
driver at the same time, and then send a patch that removes the<br>
boiler-plate license text, so we just end up with the copyright lines<br>
and the SPDX lines at the top of the files.<br>
<br>
Can you redo this patch as a patch series that does that please?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--00000000000077537005828b2536--

