X-GM-THRID: 6211822819926343680
X-Received: by 10.182.250.233 with SMTP id zf9mr11602721obc.7.1446313248439;
        Sat, 31 Oct 2015 10:40:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.149 with SMTP id 21ls913350ioq.71.gmail; Sat, 31 Oct
 2015 10:40:48 -0700 (PDT)
X-Received: by 10.66.255.70 with SMTP id ao6mr11845316pad.3.1446313247979;
        Sat, 31 Oct 2015 10:40:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id q68si918462ywf.0.2015.10.31.10.40.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 10:40:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id l128so17848443qkd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 10:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8Kq8vnyvd/2LjLa0bDCE234jWUs5jYyjenZPg1XvM3c=;
        b=l2cwidth8kQtUmUICW+34yrEmv7B7U2hYVWFKx7dYMvYljRRPNllfTEheL8jOCrVq5
         vObSbdNKocxIJkWM2ektqWunVjx0xuIunbqJyS4WJj2sMYokJ3vOZtl4pjYNzdOl+bSV
         1M620sfTHedUNtf0nbYWpayatla31T3JW928Fuz6+dhAYAy2CDjz/vLg/yF5Az6ANbLz
         rf+DW3WyrX5nQlTvqp2jGu2sURpP8Kw4xs4z6iwROvke8IYDm5MrGBLBo2ZcjnUh3qkI
         eU3ObXbGFzB73NqnE5T/2RPdpjyVEiynYVYGXzZL5e5kmAaWs5b3Qe4rf2mvjxCyDPqI
         rcKw==
MIME-Version: 1.0
X-Received: by 10.55.195.135 with SMTP id r7mr19305996qkl.4.1446313247739;
 Sat, 31 Oct 2015 10:40:47 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Sat, 31 Oct 2015 10:40:47 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510311816290.2194@localhost6.localdomain6>
References: <cover.1446302505.git.amitoj1606@gmail.com>
	<57ba37d09c11afef9ae42a4d251771796479cbb4.1446302505.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1510311816290.2194@localhost6.localdomain6>
Date: Sat, 31 Oct 2015 23:10:47 +0530
Message-ID: <CA+5yK5EsysqdrEkxMYftfmuh056jX1oxtjEUmY7wfgJQ93t4qA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8192u: Remove
 unnecessary function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114784e65d968905236a0bf2

--001a114784e65d968905236a0bf2
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 31, 2015 at 10:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 31 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> This patch solves two problems.
>> The function rtl8192_CalculateBitShift() had an unnecessary variable i
>> that could be removed by using a single line of code.
>>
>> After this change, rtl8192_CalculateBitShift() becomes a wrapper
>> function, so the rtl8192_CalculateBitShift() function has been removed
>> completely to replace it with a single line of code.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r819xU_phy.c | 25 +++++--------------------
>>  1 file changed, 5 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c
b/drivers/staging/rtl8192u/r819xU_phy.c
>> index e5dbaca..5ee4c34 100644
>> --- a/drivers/staging/rtl8192u/r819xU_phy.c
>> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
>> @@ -38,21 +38,6 @@ static u32 RF_CHANNEL_TABLE_ZEBRA[] = {
>>  #define rtl819XAGCTAB_Array Rtl8192UsbAGCTAB_Array
>>
>>
 /******************************************************************************
>> - * function: This function reads BB parameters from header file we
generate,
>> - *           and does register read/write
>> - * input:    u32     bitmask  //taget bit pos in the addr to be modified
>> - * output:   none
>> - * return:   u32     return the shift bit position of the mask
>> -
******************************************************************************/
>> -static u32 rtl8192_CalculateBitShift(u32 bitmask)
>> -{
>> -     u32 i;
>> -
>> -     i = ffs(bitmask) - 1;
>> -     return i;
>> -}
>> -
>>
-/******************************************************************************
>>   * function:  This function checks different RF type to execute legal
judgement.
>>   *            If RF Path is illegal, we will return false.
>>   * input:     net_device      *dev
>> @@ -94,7 +79,7 @@ void rtl8192_setBBreg(struct net_device *dev, u32
reg_addr, u32 bitmask,
>>
>>       if (bitmask != bMaskDWord) {
>>               read_nic_dword(dev, reg_addr, &reg);
>> -             bitshift = rtl8192_CalculateBitShift(bitmask);
>> +             bitshift = ffs(bitmask) - 1;
>
> I'm not sure that the change is a good idea.  The names ffs is not very
> understandable.  Is it a standard kernel function?  What does it do?
>
> julia

As far as I read up about it, it returns the least significant bit of
bitmask. I read up about it here.
<http://man7.org/linux/man-pages/man3/ffs.3.html>

Confused as to why the change isn't a good idea.

-- 
Amitoj

--001a114784e65d968905236a0bf2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sat, Oct 31, 2015 at 10:47 PM, Julia Lawall &lt=
;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote=
:<br>&gt; On Sat, 31 Oct 2015, Amitoj Kaur Chawla wrote:<br>&gt;<br>&gt;&gt=
; This patch solves two problems.<br>&gt;&gt; The function rtl8192_Calculat=
eBitShift() had an unnecessary variable i<br>&gt;&gt; that could be removed=
 by using a single line of code.<br>&gt;&gt;<br>&gt;&gt; After this change,=
 rtl8192_CalculateBitShift() becomes a wrapper<br>&gt;&gt; function, so the=
 rtl8192_CalculateBitShift() function has been removed<br>&gt;&gt; complete=
ly to replace it with a single line of code.<br>&gt;&gt;<br>&gt;&gt; Signed=
-off-by: Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com">ami=
toj1606@gmail.com</a>&gt;<br>&gt;&gt; ---<br>&gt;&gt; =C2=A0drivers/staging=
/rtl8192u/r819xU_phy.c | 25 +++++--------------------<br>&gt;&gt; =C2=A01 f=
ile changed, 5 insertions(+), 20 deletions(-)<br>&gt;&gt;<br>&gt;&gt; diff =
--git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r8=
19xU_phy.c<br>&gt;&gt; index e5dbaca..5ee4c34 100644<br>&gt;&gt; --- a/driv=
ers/staging/rtl8192u/r819xU_phy.c<br>&gt;&gt; +++ b/drivers/staging/rtl8192=
u/r819xU_phy.c<br>&gt;&gt; @@ -38,21 +38,6 @@ static u32 RF_CHANNEL_TABLE_Z=
EBRA[] =3D {<br>&gt;&gt; =C2=A0#define rtl819XAGCTAB_Array Rtl8192UsbAGCTAB=
_Array<br>&gt;&gt;<br>&gt;&gt; =C2=A0/*************************************=
*****************************************<br>&gt;&gt; - * function: This fu=
nction reads BB parameters from header file we generate,<br>&gt;&gt; - * =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and does register read/write<br>&gt;&gt;=
 - * input: =C2=A0 =C2=A0u32 =C2=A0 =C2=A0 bitmask =C2=A0//taget bit pos in=
 the addr to be modified<br>&gt;&gt; - * output: =C2=A0 none<br>&gt;&gt; - =
* return: =C2=A0 u32 =C2=A0 =C2=A0 return the shift bit position of the mas=
k<br>&gt;&gt; - ***********************************************************=
*******************/<br>&gt;&gt; -static u32 rtl8192_CalculateBitShift(u32 =
bitmask)<br>&gt;&gt; -{<br>&gt;&gt; - =C2=A0 =C2=A0 u32 i;<br>&gt;&gt; -<br=
>&gt;&gt; - =C2=A0 =C2=A0 i =3D ffs(bitmask) - 1;<br>&gt;&gt; - =C2=A0 =C2=
=A0 return i;<br>&gt;&gt; -}<br>&gt;&gt; -<br>&gt;&gt; -/******************=
************************************************************<br>&gt;&gt; =
=C2=A0 * function: =C2=A0This function checks different RF type to execute =
legal judgement.<br>&gt;&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0If RF Path is illegal, we will return false.<br>&gt;&gt; =C2=A0 * inp=
ut: =C2=A0 =C2=A0 net_device =C2=A0 =C2=A0 =C2=A0*dev<br>&gt;&gt; @@ -94,7 =
+79,7 @@ void rtl8192_setBBreg(struct net_device *dev, u32 reg_addr, u32 bi=
tmask,<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 if (bitmask !=3D bMaskD=
Word) {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 read_n=
ic_dword(dev, reg_addr, &amp;reg);<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 bitshift =3D rtl8192_CalculateBitShift(bitmask);<br>&gt;&=
gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitshift =3D ffs(bitmask) -=
 1;<br>&gt;<br>&gt; I&#39;m not sure that the change is a good idea.=C2=A0 =
The names ffs is not very<br>&gt; understandable.=C2=A0 Is it a standard ke=
rnel function?=C2=A0 What does it do?<br>&gt;<br>&gt; julia<br><br>As far a=
s I read up about it, it returns the least significant bit of bitmask. I re=
ad up about it <a href=3D"http://man7.org/linux/man-pages/man3/ffs.3.html">=
here.</a><div><br></div><div>Confused as to why the change isn&#39;t a good=
 idea.<br><br>-- <br>Amitoj</div></div>

--001a114784e65d968905236a0bf2--

