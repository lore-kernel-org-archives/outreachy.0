X-GM-THRID: 6210938115276668928
X-Received: by 10.112.202.165 with SMTP id kj5mr11514257lbc.5.1446098417772;
        Wed, 28 Oct 2015 23:00:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.15.149 with SMTP id 143ls257483wmp.22.canary; Wed, 28 Oct
 2015 23:00:17 -0700 (PDT)
X-Received: by 10.28.132.75 with SMTP id g72mr270348wmd.2.1446098417356;
        Wed, 28 Oct 2015 23:00:17 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id t18si181614wme.0.2015.10.28.23.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id q8so274189151wik.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=NlxqGVkrJNrlDa4J2iwA/mD5SZqOIAsb1VNDNRoERJg=;
        b=vkja0vIS4AtFZtCn86wqGbhDH0cDf/tf6rIFo/du2hbjazoCHraxHhN2AJ8SxXo7+S
         C/QrqU8W/jR+vfzwprMu9mmN9Ceoi6oOH+oDQDamQni9x8s95LYOAt6hFARjc4X3FbKo
         dD/J44j74EG/NWkpeZDvZnwYuLdYZIU8cIexqIbC8/GTlO/zohLe/XzBKFeMRsFWn3Y3
         DEUvVMhrUNqc4NW4AqBhasdMcfhj+rl3TljTAUoYUM8nPJPiXPWmxLyl1LX31W68Edy/
         +alP2TCH51GkQElH/0w0AnZAOuIHBHRfKeu/oUZva8L3wGj+ZnfHg4BjZOc5RA8TDOh9
         kO4g==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr62966245wja.87.1446098417277; Wed,
 28 Oct 2015 23:00:17 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 23:00:17 -0700 (PDT)
In-Reply-To: <CAKHNQQEGXJ5=xdwyUeyvggB6jY=FinnRA8vUyCPWBWg8xGs=fA@mail.gmail.com>
References: <cover.1446096468.git.shivanib134@gmail.com>
	<add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
	<20151029054828.GB16140@sudip-pc>
	<CAKHNQQF68wTk1v65i+aGEJwTmLsce-HCE0h4fiXsF-wze=_ksw@mail.gmail.com>
	<20151029055750.GC16140@sudip-pc>
	<CAKHNQQEGXJ5=xdwyUeyvggB6jY=FinnRA8vUyCPWBWg8xGs=fA@mail.gmail.com>
Date: Thu, 29 Oct 2015 11:30:17 +0530
Message-ID: <CAKHNQQE=hZL1yAULMiCj332R6qRW0KtfufTdG3yQzuGH-0T55w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: console: Remove
 irrelevant return statement
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b5d86a578e3950523380680

--047d7b5d86a578e3950523380680
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 11:29 AM, Shivani Bhardwaj <shivanib134@gmail.com>
wrote:

>
>
> On Thu, Oct 29, 2015 at 11:27 AM, Sudip Mukherjee <
> sudipm.mukherjee@gmail.com> wrote:
>
>> On Thu, Oct 29, 2015 at 11:24:59AM +0530, Shivani Bhardwaj wrote:
>> > On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee <
>> > sudipm.mukherjee@gmail.com> wrote:
>> >
>> > > On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:
>> > > > Remove return statement from the function lstcon_group_ndlink_move()
>> > > > as its return type is void.
>> > > > Fix checkpatch WARNING: void function return statements are not
>> > > > generally useful
>> > > >
>> > > > Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>
>> > >
>> > > checkpatch is complaining about the "Signed-off-by" because of an
>> > > extra space.
>> > >
>> > > regards
>> > > sudip
>> > >
>> >
>> > Sending this again. I'm sorry.
>>
>> BTW, are you adding this manually? Let git add these Signed-off-by and
>> you do not need to worry about these anymore.
>>
>> regards
>> sudip
>>
>
> I fixed the commit message by git commit --amend. Did I do anything wrong?
> Thank you
>

And, should I be sending it again?

--047d7b5d86a578e3950523380680
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Oct 29, 2015 at 11:29 AM, Shivani Bhardwaj <span dir=3D"ltr">&l=
t;<a href=3D"mailto:shivanib134@gmail.com" target=3D"_blank">shivanib134@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><div><div class=3D"h5"><br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Oct 29, 2015 at 11:27 AM, Sudip Mukherjee <span di=
r=3D"ltr">&lt;<a href=3D"mailto:sudipm.mukherjee@gmail.com" target=3D"_blan=
k">sudipm.mukherjee@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span>On Thu, Oct 29, 2015 at 11:24:59AM +0530, Shivani Bhardwaj=
 wrote:<br>
&gt; On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee &lt;<br>
&gt; <a href=3D"mailto:sudipm.mukherjee@gmail.com" target=3D"_blank">sudipm=
.mukherjee@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:=
<br>
&gt; &gt; &gt; Remove return statement from the function lstcon_group_ndlin=
k_move()<br>
&gt; &gt; &gt; as its return type is void.<br>
&gt; &gt; &gt; Fix checkpatch WARNING: void function return statements are =
not<br>
&gt; &gt; &gt; generally useful<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by : Shivani Bhardwaj &lt;<a href=3D"mailto:shiva=
nib134@gmail.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt; checkpatch is complaining about the &quot;Signed-off-by&quot; bec=
ause of an<br>
&gt; &gt; extra space.<br>
&gt; &gt;<br>
&gt; &gt; regards<br>
&gt; &gt; sudip<br>
&gt; &gt;<br>
&gt;<br>
&gt; Sending this again. I&#39;m sorry.<br>
<br>
</span>BTW, are you adding this manually? Let git add these Signed-off-by a=
nd<br>
you do not need to worry about these anymore.<br>
<br>
regards<br>
<span><font color=3D"#888888">sudip<br>
</font></span></blockquote></div><br></div></div></div><div class=3D"gmail_=
extra">I fixed the commit message by git commit --amend. Did I do anything =
wrong?<br></div><div class=3D"gmail_extra">Thank you<br></div></div>
</blockquote></div><br></div><div class=3D"gmail_extra">And, should I be se=
nding it again?<br></div></div>

--047d7b5d86a578e3950523380680--

