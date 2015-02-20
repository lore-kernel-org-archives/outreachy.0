X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Fri, 20 Feb 2015 10:09:14 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <1eb1b722-94c1-4c0d-a7b3-81a5f66d1efc@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502201837441.2375@hadrien>
References: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com> <c4bae1a8-b908-47ae-b7e5-e293248a7691@googlegroups.com>
 <alpine.DEB.2.10.1502201837441.2375@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH v3] Convert simple_strtoul to
 kstrtoul
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_815_1512615350.1424455754746"
X-Google-Token: EMrwnacFifhuuAzFt7A0
X-Google-IP: 111.93.6.70

------=_Part_815_1512615350.1424455754746
Content-Type: multipart/alternative; 
	boundary="----=_Part_816_614774264.1424455754746"

------=_Part_816_614774264.1424455754746
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, February 20, 2015 at 11:07:58 PM UTC+5:30, Julia Lawall wrote:
>
> On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote: 
>
> > Hi, 
> >   Is this patch alright? Now, there are now additional warnings 
> introduced 
> > by  the change I made. 
>
> What warnings? 
>
> julia 
>
>
> > -                        r = simple_strtoul(parport[n], &ep, 0); 
> > -                        if (ep == parport[n]) { 
> > +                        if (kstrtoul(parport[n],0,&r)) { 
>
> In the first patch I sent, there was no space after the ',' in kstrtoul. I 
was talking about the new warnings this created.So, I sent a another one.

Navya
 

------=_Part_816_614774264.1424455754746
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Friday, February 20, 2015 at 11:07:58 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt; Hi,
<br>&gt; &nbsp; Is this patch alright? Now, there are now additional warnings introduced
<br>&gt; by&nbsp; the change I made.
<br>
<br>What warnings?
<br>
<br>julia
<br>
<br><br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r = simple_strtoul(parport[n], &amp;ep, 0);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ep == parport[n]) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (kstrtoul(parport[n],0,&amp;r)) {
<br>
<br></blockquote><div>In the first patch I sent, there was no space after the ',' in kstrtoul. I was talking about the new warnings this created.So, I sent a another one.<br><br>Navya<br>&nbsp;</div></div>
------=_Part_816_614774264.1424455754746--

------=_Part_815_1512615350.1424455754746--

