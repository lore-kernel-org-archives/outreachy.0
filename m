X-GM-THRID: 6534171640869158912
X-Received: by 10.31.150.2 with SMTP id y2mr8680382vkd.16.1521626649156;
        Wed, 21 Mar 2018 03:04:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.142.138 with SMTP id q132ls1823290vkd.14.gmail; Wed, 21 Mar
 2018 03:04:07 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsz8WVJTxrGZKCY9Zgzkju55MZeULAva+u8hKq2/bPQMZE0TYPhq9Io1n2q0y3wL2wP5CJS
X-Received: by 10.31.169.81 with SMTP id s78mr8768712vke.123.1521626647874;
        Wed, 21 Mar 2018 03:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521626647; cv=none;
        d=google.com; s=arc-20160816;
        b=RNGQme5umpMVO+pVUF73mg0ytsDmcXq/yHrGToP31WcngLtHUEnEUByNuOL3/XXKa9
         epvOwqaGjGJShK52g9laf1OeS9JABmXOHd9dKzxJMBSgk7WMQig0PWZAOo4mYjuLt3lO
         L7tu6EHiQc2XFIZeGYhvdmicY0qpMXDqU7tIIL4yUjuhuucYnkVIDCTX/XmLbYq4LR9L
         2j6t7dLB+lFSY70pQ0xAwkGogRi66k7/TZb7vTkcU76v8YozzAE3m0n6a5GXK1HhRNAW
         0wvkjQ70bKqVb0dpLcXaaF2cy4O9BZf0fJvWKsMbzfvnHVXpFLpnPwArD24o7V21k+MG
         NGIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=mlDTEtIcRwjH4DV3KgDS4PerQnkZ9uQVvL4eC+oPlqc=;
        b=edwSwIykVlVOx8HCWOkg9rk0LKpBvn3p8M/0shTMhG4U3Mrl+oht6V+e1dQCmQ3JgV
         q1+yqZUomtjWoRkcLjYjYRv4eSK9ojWYfJLD0C72G9H7S7iJd8UAdWW4rLejAlpxDNHr
         qh4KEb8iXPIhYaIOylt+IToyDlKgiNnxasnPaueTzAxq2TiBbBny9jhtTWtLtW6gjUTz
         aoXgiQ0xZznj6DiB4yc+BMTPMU4HvehPEzpuqgXLsN1wzGpVKsJW795BnM0fDI0wy71G
         MC6whd5sz1YdEArsTkbjkwoeH6e23rt3etyFvlSjsRuTW2W8n1bAz8LDaXXHljmlYQ3j
         bVWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VDvJkNVj;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id t23si246668uaj.3.2018.03.21.03.04.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 03:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VDvJkNVj;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id s9so4762668qke.12
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Mar 2018 03:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=mlDTEtIcRwjH4DV3KgDS4PerQnkZ9uQVvL4eC+oPlqc=;
        b=VDvJkNVj2vWvrxZB59Fa8rc+yKKQclq4sxQ6lDb+s/ysQDGFjoEiCJbBMm6PqJ+nOi
         ACnOjCxFfrR9N1P+bxIBrCTZYNbVVz8R7CCFqeva6XZGLzH9/hy968dO7zVy8vTEyhMX
         RDSCUBvczvB7mnyZ/nYGl5dWJlU3LhxVzi8JSzSk+Vcq66sU81HxEOVmqmolvTesapTo
         ldmv+jh89ZWHWsi0rdkKP+Dx+3D6VfBq4wHI6GsjlZCOFP+EasT5gL5tSXVgEYQbqvCb
         1qHQTVsj21DnpxkIZnpI6opvdNPN0hiNMjIh1qoFoIA222Ds4/SaAZ3906ZDWwxaILJ7
         6VhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mlDTEtIcRwjH4DV3KgDS4PerQnkZ9uQVvL4eC+oPlqc=;
        b=J2OriuMKWM6/3WlFv8KB0x+p6xsqSb2yGO7q7EVsOSLyI12mg7iKX2POHX1zQnC4nm
         X4XES1hyGV06KWO4MtDqlp0kCGAw8PgjfkqHOVShKRTbB1C5Rqp/3kdPcg3S88AXTkw6
         +hnp+FWg1gjYDf9bJ8rGvXPKtf8k/lz4TON0vCYClHADXyLOYr+D9mMOLoCTjLe2Nsd9
         9A6LIK/vlcVqBIcDtQlmFk87u7Qc6U+CCvyUcA8ql/ZciZmaL49+k/rWwvVBt8wKhrag
         hhEyKspfoOTdQL/oYYiKu4/2XVRKEO9K0TbsngTMuIvapRZzFvH41Q8Z0HAK7ikwGjn/
         Pmyw==
X-Gm-Message-State: AElRT7GjUkqP9CQK+stHKRgIC87lk6Y30zj/vUK9EH30aKDjFZhI5VWl
	5v1GluLP5rPFJbSem1ENtxxLkIhtjzKuiKHbWzc=
X-Received: by 10.55.22.139 with SMTP id 11mr28662511qkw.48.1521626646576;
 Wed, 21 Mar 2018 03:04:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.195.75 with HTTP; Wed, 21 Mar 2018 03:04:06 -0700 (PDT)
In-Reply-To: <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com>
References: <alpine.DEB.2.20.1803180739260.3299@hadrien> <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Wed, 21 Mar 2018 11:04:06 +0100
Message-ID: <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: application
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="001a1147aa94c0029c0567e94f4d"

--001a1147aa94c0029c0567e94f4d
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta <
nishka.dasgupta_ug18@ashoka.edu.in> wrote:

>
>
> On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall wrote:
>>
>> Hello,
>>
>> Currently three of the kernel projects have a deadline of March 22 and
>> the
>> Userfaultd project has a deadline of March 29.  In either case, the
>> deadline is 4pm UTC.  You can find out what time that is in your area
>> using the following link:
>>
>> https://www.google.com/search?q=4pm+UTC+to
>>
>> You make a separate application for each project you are interested in.
>> If you are interested in multiple projects, please clearly indicate your
>> preference between them.
>>
>> julia
>>
>
> Does this include the project "dri-devel aka kernel GPU subsystem"? Its
> deadline is also listed as 29th on the outreachy website.
>
>
Yes, you should make a separate application for "dri-devel aka kernel GPU
subsystem" project as well.

Thanking you,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-
> 8bf9166f3d4f%40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-8bf9166f3d4f%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--001a1147aa94c0029c0567e94f4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta <span dir=3D"ltr">&lt;=
<a href=3D"mailto:nishka.dasgupta_ug18@ashoka.edu.in" target=3D"_blank">nis=
hka.dasgupta_ug18@ashoka.edu.in</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><span class=3D"gmail-"><b=
r><br>On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall wrote=
:<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,
<br>
<br>Currently three of the kernel projects have a deadline of March 22 and =
the
<br>Userfaultd project has a deadline of March 29.=C2=A0 In either case, th=
e
<br>deadline is 4pm UTC.=C2=A0 You can find out what time that is in your a=
rea
<br>using the following link:
<br>
<br><a href=3D"https://www.google.com/search?q=3D4pm+UTC+to" rel=3D"nofollo=
w" target=3D"_blank">https://www.google.com/search?<wbr>q=3D4pm+UTC+to</a>
<br>
<br>You make a separate application for each project you are interested in.
<br>If you are interested in multiple projects, please clearly indicate you=
r
<br>preference between them.
<br>
<br>julia
<br></blockquote></span><div><br>Does this include the project &quot;dri-de=
vel aka kernel GPU subsystem&quot;? Its deadline is also listed as 29th on =
the outreachy website.<br><br></div></div></blockquote><div><br></div><div>=
Yes, you should make a separate application for &quot;dri-devel aka kernel =
GPU subsystem&quot; project as well.=C2=A0</div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanking you,<b=
r>Nishka Dasgupta<br> </div></div><span class=3D"gmail-">

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" ta=
rget=3D"_blank">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>=
.<br></span>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-8bf9166f3d4f%40googlegr=
oups.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">http=
s://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>e84b04f6-0288-4490=
-b3e3-<wbr>8bf9166f3d4f%40googlegroups.<wbr>com</a>.<div class=3D"gmail-HOE=
nZb"><div class=3D"gmail-h5"><br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr">Shraddha<br></div></div>
</div></div>

--001a1147aa94c0029c0567e94f4d--

