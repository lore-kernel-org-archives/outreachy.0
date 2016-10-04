X-GM-THRID: 6337380973243531264
X-Received: by 10.98.63.74 with SMTP id m71mr610470pfa.30.1475572653131;
        Tue, 04 Oct 2016 02:17:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls6395574ota.25.gmail; Tue, 04 Oct
 2016 02:17:32 -0700 (PDT)
X-Received: by 10.129.4.84 with SMTP id 81mr661014ywe.24.1475572652777;
        Tue, 04 Oct 2016 02:17:32 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-io0-x235.google.com (mail-io0-x235.google.com. [2607:f8b0:4001:c06::235])
        by gmr-mx.google.com with ESMTPS id s188si1547949itb.2.2016.10.04.02.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 02:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c06::235 as permitted sender) client-ip=2607:f8b0:4001:c06::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c06::235 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x235.google.com with SMTP id i202so66297689ioi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 02:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PNxlgMrNyG0aqMs5eouWpWktx0JjaruYuTNjSmHKxj8=;
        b=PsaPIrjl7MsgEgyK+ig6GqqwnbbhRwpXLT1YvCFTrMkX+HZUVNGIlmMyMR36lDT4Q/
         JxnZi2l9hHJ87BJfL/HMIrUGF0O828+VfQDdu3v0yfY7vBZr5O8ZVBMZiKgpasUP/9ax
         pMQuUWd3o+iY3AskJQCeb+3EMh7GDvd9gRJM6W/Z+yFiO2iIyfGMza+u+VzBDPXSxTWp
         wRPWLTOpwj0078fqckngxazIcZs0+V2avMK0K3XWc1vkx13/UZFIzHCzj5e7lC9k2SJC
         G37tZ+xsMI0mAn6RxrpIWho3ye0CraIxq4B3xVjoeZrTt5qZMNENeStlsN2rH1+jLLTb
         M0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PNxlgMrNyG0aqMs5eouWpWktx0JjaruYuTNjSmHKxj8=;
        b=JSPAQecZWLbsa9PL3MRddVDMAWAgU0VG9b5htIvyOcuYyz6Zw8j2B8m/pEie3QIFcf
         8fy/Uq9Xb/EQJnQL/0CvP5xm31fzU7G+/deIL5TXpEUCwb3R5htv99OB+1oH7PgTLnE0
         99xUQx3uL/GtmySX3HTyjZZnGXeHY9c6H0uo8sNJNi8+s4GFxdGXUDj80X9vxVC1NDtq
         amjVPgLdVq66S+2zEOHZZpyE722m0khu3MXGrGwKBz7sfhmSw6SEbL6qHIUpT/fRP1GX
         5Qm9m3QZs2gpKuouF5PwdIZTM/A/QYJ0RC/IVLldhoHGL/FTdT00MIJoCWI25IfhW7S1
         22Jw==
X-Gm-Message-State: AA6/9RmpFAsOttwXsJU3Sw5RPHtomaXVObOwzdOGSHQc218g2/HAPyjm1p23cKHtvzgX+T9zD597Zk2hnXDRbA==
X-Received: by 10.107.44.17 with SMTP id s17mr3191044ios.212.1475572652532;
 Tue, 04 Oct 2016 02:17:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.19.16 with HTTP; Tue, 4 Oct 2016 02:17:31 -0700 (PDT)
Received: by 10.36.19.16 with HTTP; Tue, 4 Oct 2016 02:17:31 -0700 (PDT)
In-Reply-To: <20161004082500.GA1525@kroah.com>
References: <20160929152837.GA32652@kheixx-VB> <20161004042323.GB21357@kroah.com>
 <CACrt6ML2ggFy-mC5TLYmQQur30iKN91eNSRq6eiN6+un+AYR9Q@mail.gmail.com>
 <CACrt6MKMzB6dsxYkGBF-OG54e3UGgeCcH2_iGRoyA93=f4dXOg@mail.gmail.com> <20161004082500.GA1525@kroah.com>
From: keila novo <laurana5@gmail.com>
Date: Tue, 4 Oct 2016 11:17:31 +0200
Message-ID: <CACrt6MJx3sGph60Ug32+=4_MRdhavbY+-LPXN=OxjK69u+F1tw@mail.gmail.com>
Subject: Re: Fwd: Re: [PATCH]board/Kconfig: Add a paragraph that describes the simbol
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ee416cb6a71053e06872c

--001a113ee416cb6a71053e06872c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

El 4 oct. 2016 10:29, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
escribi=C3=B3:
>
>
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>
>
> http://daringfireball.net/2007/07/on_top
>
> On Tue, Oct 04, 2016 at 10:18:47AM +0200, keila novo wrote:
> > ---------- Mensaje reenviado ----------
> > De: "keila novo" <laurana5@gmail.com>
> > Fecha: 4 oct. 2016 7:41
> > Asunto: Re: [PATCH]board/Kconfig: Add a paragraph that describes the
simbol
> > Para: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > Cc:
> >
> > I made that change because when a checked with chechpatch.pl, it took a
warning
> > that said: "please write a paragraph that describes the config symbol
fully".
> > So I tried to fix it adding a little paragraph on the top of the file.
>
> The "paragraph" should be in the help section for that Kconfig option,
> not as a comment in the file.  If you run checkpatch.pl on the file
> after you made this change, I think you will still have the same
> warning, right?
>
> But, to write a help entry for a Kconfig option, requires that you
> understand what the driver and option does.  Based on your paragraph, I
> don't know if you do know what this code is here for.  So perhaps you
> might want to move on to a different type of warning fix?
>
> In other words, don't make a change just because a warning shows up, but
> because you understand what the warning means, and what the change you
> are making does.
>
> Hope this helps,
>
> greg k-h

Thank you for your help. I will read more documentation to understand what
the code works for and I will try to complete it well. Also, I will start
again looking for another warning to fix it.

Thanks
Keila

--001a113ee416cb6a71053e06872c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">El 4 oct. 2016 10:29, &quot;Greg Kroah-Hartman&quot; &lt;<a =
href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&g=
t; escribi=C3=B3:<br>
&gt;<br>
&gt;<br>
&gt; Q: Why is top-posting such a bad thing?<br>
&gt; A: Top-posting.<br>
&gt; Q: What is the most annoying thing in e-mail?<br>
&gt;<br>
&gt; A: No.<br>
&gt; Q: Should I include quotations after my reply?<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"http://daringfireball.net/2007/07/on_top">http://daringfire=
ball.net/2007/07/on_top</a><br>
&gt;<br>
&gt; On Tue, Oct 04, 2016 at 10:18:47AM +0200, keila novo wrote:<br>
&gt; &gt; ---------- Mensaje reenviado ----------<br>
&gt; &gt; De: &quot;keila novo&quot; &lt;<a href=3D"mailto:laurana5@gmail.c=
om">laurana5@gmail.com</a>&gt;<br>
&gt; &gt; Fecha: 4 oct. 2016 7:41<br>
&gt; &gt; Asunto: Re: [PATCH]board/Kconfig: Add a paragraph that describes =
the simbol<br>
&gt; &gt; Para: &quot;Greg Kroah-Hartman&quot; &lt;<a href=3D"mailto:gregkh=
@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;<br>
&gt; &gt; Cc:<br>
&gt; &gt;<br>
&gt; &gt; I made that change because when a checked with <a href=3D"http://=
chechpatch.pl">chechpatch.pl</a>, it took a warning<br>
&gt; &gt; that said: &quot;please write a paragraph that describes the conf=
ig symbol fully&quot;.<br>
&gt; &gt; So I tried to fix it adding a little paragraph on the top of the =
file.<br>
&gt;<br>
&gt; The &quot;paragraph&quot; should be in the help section for that Kconf=
ig option,<br>
&gt; not as a comment in the file.=C2=A0 If you run <a href=3D"http://check=
patch.pl">checkpatch.pl</a> on the file<br>
&gt; after you made this change, I think you will still have the same<br>
&gt; warning, right?<br>
&gt;<br>
&gt; But, to write a help entry for a Kconfig option, requires that you<br>
&gt; understand what the driver and option does.=C2=A0 Based on your paragr=
aph, I<br>
&gt; don&#39;t know if you do know what this code is here for.=C2=A0 So per=
haps you<br>
&gt; might want to move on to a different type of warning fix?<br>
&gt;<br>
&gt; In other words, don&#39;t make a change just because a warning shows u=
p, but<br>
&gt; because you understand what the warning means, and what the change you=
<br>
&gt; are making does.<br>
&gt;<br>
&gt; Hope this helps,<br>
&gt;<br>
&gt; greg k-h<br></p>
<p dir=3D"ltr">Thank you for your help. I will read more documentation to u=
nderstand what the code works for and I will try to complete it well. Also,=
 I will start again looking for another warning to fix it.</p>
<p dir=3D"ltr">Thanks<br>
Keila<br>
</p>

--001a113ee416cb6a71053e06872c--

