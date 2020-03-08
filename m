X-GM-THRID: 6800771854723186688
X-Received: by 2002:a17:90a:de0a:: with SMTP id m10mr8874509pjv.34.1583649831751;
        Sat, 07 Mar 2020 22:43:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:2393:: with SMTP id mr19ls3166299pjb.3.canary-gmail;
 Sat, 07 Mar 2020 22:43:50 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuYN7+DB5+VWY2fQZpazLxfz3jo3cx8Q9xqQ5eKihg7D2IYdvK+dmIdqsxt1oC/I3atCipl
X-Received: by 2002:a17:90a:1acd:: with SMTP id p71mr4722193pjp.112.1583649830227;
        Sat, 07 Mar 2020 22:43:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583649830; cv=none;
        d=google.com; s=arc-20160816;
        b=X7XSXYbXJaiyCD4GmFsYO4XvPZ3kxN6vRLAEN5fV2hMBkSyOncnWu1VDXWaiOeFJ3c
         p+IQHW2mRHJ+GJnyJNxPg1exnTjJAhRvL9ryVbVBOS65aAhgBZBEc+Ez9dl2ejquKnW1
         uFBNN//rj7lUHo6m318YBzrgMuP6QAbmWNOEqFkm3DP5+ABDWHvY0lA/ju+FOvQ2dBeP
         ENMDcdopOaVM91bk1gu9ngKElsgu95Kgeu8RySiBvdBY3/vDjXNuaKOfiuA5cz4nGIS9
         AlJGmsM7NaqpV2lzjw06CtwRSt7L+xssJxgGstyBR/mdFc8h/5CoWQJRIc3FobRmAaS9
         6Y2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lHVkVk7Iy0G5C4rRcmdDMHE75RqhlEZHVXQ9Uh3T8dw=;
        b=UQP6iqQyZekJelYnmrErQoYm/2EJUV175iJJ+mpIu7sZb6Myz231qMJ4/kxsKXJas1
         rBmaA3l5Dpjxhhnfd6eB3lSJiYVJ5TdoF0ffz4h0a+OT6mJrKExZwMu1IzOmzrqXhU+E
         I2vv4cJI1RwL2mY99P2hW1HHP96eSnRgf5jwh33Xb/53n9d8pTqGIZ4YpFbIMiaTIPyk
         OlNfgYuwv+WHgfq0C29BWFGoMzxf5nuTJ4fcbNWLpfaX54dHTTxVUDZ2QRm1eVpRjSyC
         ZZF2s9O5OiNHhbn8DH7CcyktggohGoOJp0UXTzrTzrbxdBN994H3pwma/igV6thoU+fC
         k1jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ektb31Vi;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id q19si412297pgt.0.2020.03.07.22.43.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 22:43:50 -0800 (PST)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ektb31Vi;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2f.google.com with SMTP id m25so6087023ioo.8
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 22:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lHVkVk7Iy0G5C4rRcmdDMHE75RqhlEZHVXQ9Uh3T8dw=;
        b=ektb31ViOAdGYcpaPFFLWPh5sWQvxqyndbmG8LLpDL2cDgD2x9qdddO3Nhz4I8DcJF
         saFtesremmFQxbhlQm/n/ftmdhr5LMf8StRVJfm5BaGFJYrxHjy7HG6pn5+kI1gW87vG
         /q3hMcQqKHyZigTocFzsQJql8YNcck15pbfimiWwtqJCU5XAVjJOZbEu7OU6gETTMjI2
         G71UIswdvfRM1YKvBQQls8bILMDbsMcPimZ2yjDuK4h3YC1W8BvGWc4qPMAR7HSC8Hzn
         XDjecOeIs/ImkvldXk8zBxLrelkQll+E4CvrQRDV82XkgDSjyKB6IWJCROQw/LWC+FU2
         xOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lHVkVk7Iy0G5C4rRcmdDMHE75RqhlEZHVXQ9Uh3T8dw=;
        b=s1qBrQgNT1byj2zFIfH20pjYsB9ns9s5dSxvqryfEECAOh3tqaqZ1X++QAX+ge7pU6
         iER/FLIQF9S7p035CQyGjSVT2y3gg1TMhPADV3xIUwpBkYS3jdbAM7KPr4FOrqnQSXN7
         LIX7C1bHtX5uBh2yA0xBK/3TCs0BUQX15Ef0Kh+16gtSbiswnuQN/Qsmobh/SshpCkTI
         2r3tJWC4NGWbc3av9a6hVWK2dcplG5WH0gddB2mtu0AMZ+d+2mwC0+BPkt6JbHteLIvm
         +VAJmgLjvQ8y9kdD7B1QxEMfVmaxDoa8O9hyCNq0XGCSDZWbNo91bBkMOW5T6oHdAVMg
         U5Cw==
X-Gm-Message-State: ANhLgQ1g1FWYpHjc1SGR7/VPIo81uUtQxlrZWJBSfv+aBFbkq+Ujdvh+
	NDE3dNZwDUzngpz2CwObKO/P/yTKe5qoqTB+4RXBOQ==
X-Received: by 2002:a02:a415:: with SMTP id c21mr9961025jal.45.1583649829896;
 Sat, 07 Mar 2020 22:43:49 -0800 (PST)
MIME-Version: 1.0
References: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com>
 <20200305182833.GA2106984@kroah.com> <CANTOzWH1FNBWVAuzg8Eu7svt3ZrcWA3NqOhYhGo-xU87J5R_+Q@mail.gmail.com>
 <alpine.DEB.2.21.2003060747320.2978@hadrien> <CANTOzWFk6e4pE33UP9yty0H2BSSM_L-u_PCERL9WWoaCZ9K8mg@mail.gmail.com>
 <alpine.DEB.2.21.2003060927380.2978@hadrien> <CANTOzWHCdYu-srrPziA=HXicEYfoo+_=31h9YNRG0hB9KT7DnQ@mail.gmail.com>
In-Reply-To: <CANTOzWHCdYu-srrPziA=HXicEYfoo+_=31h9YNRG0hB9KT7DnQ@mail.gmail.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 8 Mar 2020 12:13:37 +0530
Message-ID: <CANTOzWH3uWcsygtSdBjcj5DpDfQw3M=KLSW8Gpnt+ezrLthgBg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Issue with checkpatch.pl
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008f459c05a052352c"

--0000000000008f459c05a052352c
Content-Type: text/plain; charset="UTF-8"

On Fri, 6 Mar 2020 at 14:37, Payal Kshirsagar <
payal.s.kshirsagar.98@gmail.com> wrote:

>
>
> On Fri, Mar 6, 2020, 1:58 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>> In the place where you invoke checkpatch, can you do ls (not less) for
>> each of the following files:
>>
>>                 "COPYING", "CREDITS", "Kbuild", "MAINTAINERS", "Makefile",
>>                 "README", "Documentation", "arch", "include", "drivers",
>>                 "fs", "init", "ipc", "kernel", "lib", "scripts",
>>
>> eg
>>
>> ls COPYING
>> ls CREDITS
>>
>> etc.
>>
>> Send a screenshot of the results.
>>
>> julia
>>
>
> Ok, I will do that.
>

Due to some abnormal accidental changes it wasn't working,
now it is working absolutely okay:)

payal

--0000000000008f459c05a052352c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 6 Mar 2020 at 14:37, Payal Ks=
hirsagar &lt;<a href=3D"mailto:payal.s.kshirsagar.98@gmail.com">payal.s.ksh=
irsagar.98@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Fri, Mar 6, 2020, 1:58 PM Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@inria.fr" target=3D"_blank">julia.lawall@inria.fr</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">In=
 the place where you invoke checkpatch, can you do ls (not less) for<br>
each of the following files:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;COPYING&quot;=
, &quot;CREDITS&quot;, &quot;Kbuild&quot;, &quot;MAINTAINERS&quot;, &quot;M=
akefile&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;README&quot;,=
 &quot;Documentation&quot;, &quot;arch&quot;, &quot;include&quot;, &quot;dr=
ivers&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;fs&quot;, &qu=
ot;init&quot;, &quot;ipc&quot;, &quot;kernel&quot;, &quot;lib&quot;, &quot;=
scripts&quot;,<br>
<br>
eg<br>
<br>
ls COPYING<br>
ls CREDITS<br>
<br>
etc.<br>
<br>
Send a screenshot of the results.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><span style=3D"font-family:sans-serif">Ok, I will do that.=C2=A0</span=
></div></div></blockquote><div><br></div><div>Due to some abnormal accident=
al changes it wasn&#39;t working,</div><div>now it is working absolutely ok=
ay:)</div><div><br></div><div>payal<br></div></div></div>

--0000000000008f459c05a052352c--

