X-GM-THRID: 5258052894720
Date: Mon, 2 Mar 2015 10:09:38 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr, navyasri.tech@gmail.com
Message-Id: <7fa85094-1be3-4341-a682-3a1926457344@googlegroups.com>
In-Reply-To: <5610621.s2AZIK4DQm@wuerfel>
References: <20150228220347.GA5430@localhost> <alpine.DEB.2.10.1503011637440.2545@hadrien>
 <5610621.s2AZIK4DQm@wuerfel>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Remove semicolon
 after if.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2922_852319749.1425319778507"
X-Google-Token: EOLO0qcFnIUy0ZpKVls0
X-Google-IP: 61.16.142.166

------=_Part_2922_852319749.1425319778507
Content-Type: multipart/alternative; 
	boundary="----=_Part_2923_1222095953.1425319778507"

------=_Part_2923_1222095953.1425319778507
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 2, 2015 at 1:35:40 PM UTC+5:30, Arnd Bergmann wrote:
>
> On Sunday 01 March 2015 16:37:57 Julia Lawall wrote: 
> > >       while (inb(dev->iobase + DAS1800_STATUS) & FNE) { 
> > >               dpnt = inw(dev->iobase + DAS1800_FIFO); 
> > >               /* convert to unsigned type if we are in a bipolar mode 
> */ 
> > > -             if (!unipolar) 
> > > -                     ; 
> > > -             dpnt = munge_bipolar_sample(dev, dpnt); 
> > > +             if (!unipolar) { 
> > > +             dpnt = mungef_bipolar_sample(dev, dpnt); 
> > 
> > You need some indentation here. 
> > 
> > julia 
> > 
> > >               comedi_buf_write_samples(s, &dpnt, 1); 
> > > - 
> > > +             } 
>
> It rather looks to me that the patch fundamentally changes the 
> behavior of the function, but calling two functions conditionally 
> that were called unconditionally previously. 
>
> There is also a typo in 'mungef_bipolar_sample' that will prevent 
> this from compiling. 
>
>         Arnd 
>

If it's changing the way the functions are being called, I'll simply remove 
the if condition, fix the typo with proper indentation and send a newer 
version.

Thanks,
Navya

------=_Part_2923_1222095953.1425319778507
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Monday, March 2, 2015 at 1:35:40 PM UTC+5:30, Arnd Bergmann wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sunday 01 March 2015 16:37:57 Julia Lawall wrote:
<br>&gt; &gt; &nbsp; &nbsp; &nbsp; while (inb(dev-&gt;iobase + DAS1800_STATUS) &amp; FNE) {
<br>&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dpnt = inw(dev-&gt;iobase + DAS1800_FIFO);
<br>&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* convert to unsigned type if we are in a bipolar mode */
<br>&gt; &gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (!unipolar)
<br>&gt; &gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ;
<br>&gt; &gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dpnt = munge_bipolar_sample(dev, dpnt);
<br>&gt; &gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (!unipolar) {
<br>&gt; &gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dpnt = mungef_bipolar_sample(dev, dpnt);
<br>&gt; 
<br>&gt; You need some indentation here.
<br>&gt; 
<br>&gt; julia
<br>&gt; 
<br>&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; comedi_buf_write_samples(s, &amp;dpnt, 1);
<br>&gt; &gt; -
<br>&gt; &gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }
<br>
<br>It rather looks to me that the patch fundamentally changes the 
<br>behavior of the function, but calling two functions conditionally
<br>that were called unconditionally previously.
<br>
<br>There is also a typo in 'mungef_bipolar_sample' that will prevent
<br>this from compiling.
<br>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arnd
<br></blockquote><div><br>If it's changing the way the functions are being called, I'll simply remove the if condition, fix the typo with proper indentation and send a newer version.<br><br>Thanks,<br>Navya<br></div></div>
------=_Part_2923_1222095953.1425319778507--

------=_Part_2922_852319749.1425319778507--

