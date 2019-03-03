X-GM-THRID: 6664078765132349440
X-Received: by 2002:a02:c486:: with SMTP id t6mr8566472jam.14.1551627404270;
        Sun, 03 Mar 2019 07:36:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls3848913itc.5.canary-gmail;
 Sun, 03 Mar 2019 07:36:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqxENbrcsKeleO7CvVKRFO4EW5XxqBOg+d8yMPyvQvpxRIZQwLiaQsUIJvJY1lSa9sHQgLAC
X-Received: by 2002:a24:9c85:: with SMTP id b127mr9548399ite.36.1551627403349;
        Sun, 03 Mar 2019 07:36:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551627403; cv=none;
        d=google.com; s=arc-20160816;
        b=RPOfaUNIVHIaV8vEnqEqJ4uFPLUR4Gb5artjtHkTiKajIyoJzOv45kKxUJRg7R/MdQ
         U2pfsfgvZbhqoKAN36yljItxEy3S0kB0SaQXW6vE3w2YcR/HOLm4VCERnizlPvbKNTB2
         6LAttr9AHDyVHUUTizjtTBn8uiHUyf6ivNia5sny/LzPHj+KRqE38BCUWecIvbTAzwb+
         e78TRxzAQqzQdS/fy8lptY5zvhlZNRXA7TlhLIJsvPBmyMH3fcMjXzTRBWZ04HaCyx/7
         m7fhMLE/9qJTNNTPrYJsW2e/PnKAbrBXT7fidZycHKcRnxkHpg106BOLDh28fykjIwtr
         W1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NjNL/Y/VoBuuuXvdTMunPuznqcuBuC/CDZKozcGe1yc=;
        b=PMviDT+ck9BV5QM5uF5JUHW3Pq79FNj3npf1itbd0HNUhXOlWivfmByrDLH+6lm/ri
         3pgyRYLWxiEdZVtlIu18DirYtEk1MeYttSKCBMSwe7ux9cpGGixeD4ZDUvEJHp4YoFzz
         dRigevY9EmT5nyfCFtgQPbWeMvhDWULwB98gWQ9hNoVARyHf9FshEDstp4wQ8SOKr9QE
         E9KYf65dLSx3aT+JyiftITWIam3HJvhyzpjRe3JVgyu5tSNweK2PY7Qg8nWm2hvm4NIx
         PwEbDjre800sm9doELd+2ef9GbnFr7m3usblMc1C+hbr3MW0Z9W0fS4MEcN7Reqc1tD8
         6v7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uT4HEKLU;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com. [2607:f8b0:4864:20::834])
        by gmr-mx.google.com with ESMTPS id u1si238089itb.2.2019.03.03.07.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 07:36:43 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) client-ip=2607:f8b0:4864:20::834;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uT4HEKLU;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x834.google.com with SMTP id j36so2670665qta.7
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 07:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NjNL/Y/VoBuuuXvdTMunPuznqcuBuC/CDZKozcGe1yc=;
        b=uT4HEKLUFuZRYhoBRlmQdN05J70LAmD9kyP+wpW8/SsdFge8lXn3jatSQimlFDqyiR
         LlTIwumeVtjXGLYl5A9CNIUmRzvyodOQR0394m9CpwXfhHNhBa/mL/kMdoerE/3uxW7Z
         Szia5nsbFCR6LvR0SfPB8AH2ga3ab3HaiA1V/eWgKnqW4UvbS2jBDsDIDe5jCftjeco/
         UxYnKR972r8mmvo/NCYqqdN3izkOioUYvUjtjQ35R0FBdGVUUi4rrxpXJTtlPAnxfcLM
         uIRGpELulUMVLHuyicC5S+ilGONWMbVJsWN2fxPZdRTuLN+SGulf4G52mqSKpbZh72y7
         v50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NjNL/Y/VoBuuuXvdTMunPuznqcuBuC/CDZKozcGe1yc=;
        b=rwTNijrxbzKxhTBvsn/kloFsYJt4HsAp63w+UjZKZdyZ1WnkwWD667fiYJrxTMo4vu
         jlmbGTa6MJ6aZVvebO9dbMcyZ6FRKbZFB8Bp8uwRxjPLHwObWLsvQNfWMfNfze4SFH2x
         32krswWXiwqjISbfq7tOpXZSLavejeVKCS3j8XLAJZSjFBT+LqWXZ+BhoAZAhLx6nUls
         MBwzLxW9q3sy3dA3T6DyIpqQ1Fm5Dlxj3kM/0SSttopHHhPmD6ZjcUZ8FRdsXOJETV7O
         qtyj6pCk2874d6mFPaDp1tqWN+C8b3XEVzBBn612/TfTu2tNUTZ3ceHRCWVT2a3KtE4r
         FFwg==
X-Gm-Message-State: APjAAAWv1s63ldQkzrexaezmG1GXEPlCLiqU9uzDIMfyVrykJ+OEg+Yh
	1R3PqJeBPrXCVNQBOJGxin6R2eM2ChmpXSC8UCcOfw==
X-Received: by 2002:aed:23cf:: with SMTP id k15mr11682854qtc.180.1551627402865;
 Sun, 03 Mar 2019 07:36:42 -0800 (PST)
MIME-Version: 1.0
References: <20190303082902.GA16698@bhagyashri-Lenovo-G570>
 <20190303083430.GA30460@kroah.com> <CAOMPgjgN1WroEoqpDA-s1t5NVDrDJDtKCMDD=_JgAEeHh7g6dw@mail.gmail.com>
 <20190303142737.GA30271@kroah.com>
In-Reply-To: <20190303142737.GA30271@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Sun, 3 Mar 2019 21:06:06 +0530
Message-ID: <CAOMPgji0B8yCzT8gsF+PPEeCxdxSWOAX=cf+6rwQ+wHMLXyXqA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Replace udelay to usleep_range
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000002bf23e0583326815"

--0000000000002bf23e0583326815
Content-Type: text/plain; charset="UTF-8"

I got the point.

Thanks

On Sun, Mar 3, 2019 at 7:57 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

>
> A: http://en.wikipedia.org/wiki/Top_post
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>
> http://daringfireball.net/2007/07/on_top
>
> On Sun, Mar 03, 2019 at 07:46:55PM +0530, Bhagyashri Dighole wrote:
> > Hi,
> > I have gone through "Documentation/timers/timers-howto.txt", It is
> > mentioned that we can put 10us-20us gap between min_range and max_range.
> In
> > above situation `udelay(20)` our min_range is 20 and max_range is 30.
>
> That type of delay range can be set, yes, but what are you helping here?
> Also, can the hardware really support this type of longer delay?  Some
> hardware types can not as it is trying to rely on some sort of
> semi-regular delays.  Or could the delay be shorter?  It's really hard
> to know without knowing what the hardware is expecting and being able to
> test it.
>
> thanks,
>
> greg k-h
>

--0000000000002bf23e0583326815
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I got the point.</div><div><br></div><div>Thanks<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sun, Mar 3, 2019 at 7:57 PM Greg Kroah-Hartman &lt;<a href=3D"mailt=
o:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
A: <a href=3D"http://en.wikipedia.org/wiki/Top_post" rel=3D"noreferrer" tar=
get=3D"_blank">http://en.wikipedia.org/wiki/Top_post</a><br>
Q: Were do I find info about this thing called top-posting?<br>
A: Because it messes up the order in which people normally read text.<br>
Q: Why is top-posting such a bad thing?<br>
A: Top-posting.<br>
Q: What is the most annoying thing in e-mail?<br>
<br>
A: No.<br>
Q: Should I include quotations after my reply?<br>
<br>
<a href=3D"http://daringfireball.net/2007/07/on_top" rel=3D"noreferrer" tar=
get=3D"_blank">http://daringfireball.net/2007/07/on_top</a><br>
<br>
On Sun, Mar 03, 2019 at 07:46:55PM +0530, Bhagyashri Dighole wrote:<br>
&gt; Hi,<br>
&gt; I have gone through &quot;Documentation/timers/timers-howto.txt&quot;,=
 It is<br>
&gt; mentioned that we can put 10us-20us gap between min_range and max_rang=
e. In<br>
&gt; above situation `udelay(20)` our min_range is 20 and max_range is 30.<=
br>
<br>
That type of delay range can be set, yes, but what are you helping here?<br=
>
Also, can the hardware really support this type of longer delay?=C2=A0 Some=
<br>
hardware types can not as it is trying to rely on some sort of<br>
semi-regular delays.=C2=A0 Or could the delay be shorter?=C2=A0 It&#39;s re=
ally hard<br>
to know without knowing what the hardware is expecting and being able to<br=
>
test it.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--0000000000002bf23e0583326815--

