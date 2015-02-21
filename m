X-GM-THRID: 1969702830080
Date: Sat, 21 Feb 2015 11:01:47 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <8199fe66-21a5-4002-a04b-07bf4068a3d5@googlegroups.com>
In-Reply-To: <1352209e-7cb8-4d3f-b819-666fa1c45fa4@googlegroups.com>
References: <cover.1424538520.git.navyasri.tech@gmail.com> <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com> <alpine.DEB.2.10.1502211850160.2480@hadrien> <d408a19a-e57f-46b9-9a81-cc78e6c7de1e@googlegroups.com>
 <alpine.DEB.2.10.1502211934400.2480@hadrien>
 <1352209e-7cb8-4d3f-b819-666fa1c45fa4@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8192u: Convert from
 printk into netdev_dbg or pr_dbg
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1389_1810643608.1424545307499"
X-Google-Token: EJuso6cFfkTZPYT-hD00
X-Google-IP: 111.93.6.70

------=_Part_1389_1810643608.1424545307499
Content-Type: multipart/alternative; 
	boundary="----=_Part_1390_1643841666.1424545307499"

------=_Part_1390_1643841666.1424545307499
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, February 22, 2015 at 12:11:36 AM UTC+5:30, Navya Sri Nizamkari 
wrote:
>
>
>
> On Sunday, February 22, 2015 at 12:05:13 AM UTC+5:30, Julia Lawall wrote:
>>
>> On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote: 
>>
>> > 
>> > 
>> > On Saturday, February 21, 2015 at 11:21:21 PM UTC+5:30, Julia Lawall 
>> wrote: 
>> >       On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote: 
>> > 
>> >       > Convert printk(KERN_DEBUG.. ) to netdev_dbg if its a network 
>> >       driver 
>> >       > and pr_dbg if its not a driver, to fix the checkpatch.pl 
>> >       warning: 
>> > 
>> >       This message is rather confusing.  The patch affects only one 
>> >       file, so it 
>> >       either is a network driver or it is not.  The issue is that some 
>> >       functions 
>> >       don't have the right set of arguments that allow you to call the 
>> >       netdev 
>> >       functions. 
>> > 
>> >       julia 
>> > 
>> > I made the change and sent in v2 of that patch.Should I send the whole 
>> > patchset again ? 
>>
>> Yes.  (Remember to put a space after punctuation) 
>>
>> julia
>
>
> Sorry about missing the space after punctuation. Thanks for the feedback.
>
> Navya 
>

I added a space after ' : ' in the cover letter of v2 by mistake, I haven't 
sent rest of the patches yet? Do I send a newer version?

Navya   

------=_Part_1390_1643841666.1424545307499
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Sunday, February 22, 2015 at 12:11:36 AM UTC+5:30, Navya Sri Nizamkari wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir="ltr"><br><br>On Sunday, February 22, 2015 at 12:05:13 AM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex">On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Saturday, February 21, 2015 at 11:21:21 PM UTC+5:30, Julia Lawall wrote:
<br>&gt; &nbsp; &nbsp; &nbsp; On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote:
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; Convert printk(KERN_DEBUG.. ) to netdev_dbg if its a network
<br>&gt; &nbsp; &nbsp; &nbsp; driver
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; and pr_dbg if its not a driver, to fix the <a href="http://checkpatch.pl" rel="nofollow" target="_blank">checkpatch.pl</a>
<br>&gt; &nbsp; &nbsp; &nbsp; warning:
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; This message is rather confusing. &nbsp;The patch affects only one
<br>&gt; &nbsp; &nbsp; &nbsp; file, so it
<br>&gt; &nbsp; &nbsp; &nbsp; either is a network driver or it is not. &nbsp;The issue is that some
<br>&gt; &nbsp; &nbsp; &nbsp; functions
<br>&gt; &nbsp; &nbsp; &nbsp; don't have the right set of arguments that allow you to call the
<br>&gt; &nbsp; &nbsp; &nbsp; netdev
<br>&gt; &nbsp; &nbsp; &nbsp; functions.
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; julia
<br>&gt;
<br>&gt; I made the change and sent in v2 of that patch.Should I send the whole
<br>&gt; patchset again ?
<br>
<br>Yes. &nbsp;(Remember to put a space after punctuation)
<br>
<br>julia</blockquote><div><br>Sorry about missing the space after punctuation. Thanks for the feedback.<br><br>Navya <br></div></div></blockquote><div><br>I added a space after ' : ' in the cover letter of v2 by mistake, I haven't sent rest of the patches yet? Do I send a newer version?<br><br>Navya &nbsp; <br></div></div>
------=_Part_1390_1643841666.1424545307499--

------=_Part_1389_1810643608.1424545307499--

