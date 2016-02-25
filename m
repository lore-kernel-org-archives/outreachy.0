X-GM-THRID: 6254007511915954176
X-Received: by 10.50.50.138 with SMTP id c10mr2098068igo.3.1456398616396;
        Thu, 25 Feb 2016 03:10:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.196 with SMTP id ba4ls141800obb.36.gmail; Thu, 25 Feb
 2016 03:10:16 -0800 (PST)
X-Received: by 10.182.29.129 with SMTP id k1mr39660619obh.23.1456398616069;
        Thu, 25 Feb 2016 03:10:16 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id i133si490760ywe.7.2016.02.25.03.10.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id y9so37343361qgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=xAsZgpsCL4g/+aBZbKfSRQDABqX4DRtC5QXN2WQPuh8=;
        b=0miaGC6PI6F8bhyymIRHy9STLBbc4HCqSOrn4GN4yG7u1DSj44eEFZa0Dw2xo8LJ4i
         5sSArpalHaQLsatah11/dlv3JmPFNve4j2gMFgwD5hf3H23UYPcGsFOsIH4caFNINUCG
         Pk+d5YLvgtHEZIUs1XLykII5mv8T9fio4r58ARyHgdSlXiCjBB6yxrNAKO5soyuSWsW4
         sFToALW88A+MwyUU4Hn+6V/VdJWp+5IihPCcUea9HfJEXoCTi7RY4+kmmptV8N9i4Zno
         PjUXLyXikwj3bfS84gVeORXoQRbtuVJgjY1XiVWVS58s0qLW89NINDibUWmfm/PzxYxP
         sHvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=xAsZgpsCL4g/+aBZbKfSRQDABqX4DRtC5QXN2WQPuh8=;
        b=deVTCZW7pW/1TqnNTSJD1eYkTwPQTXTu+d4f6QZYV157/8n1LGFePMXwhfz1RxI5gy
         JqfkoBG5wUgJYA7acxeoC/99a8zyQpq35XEHIb9LHreV0VDcAG2aCYYntkxl3/KEVUbL
         vVOrK40YZxRzGe4yx8opZSiOJGzVUgNs1UDdkL6mqhp5xhQgT951105y4AWM50JOdKLe
         0JbqjwrMk+Csc4tMZ9ddMoOchWXlNhmAofWtXHp9YW6Po24xLIt35TpoX01ILE0q6BeD
         4GGRqjYkVdOY9Tm7SSz5zW4qEkPoZry2fSV/A4qplZ8PNv+/JAya6NyuK76WG5ytPVDj
         e26A==
X-Gm-Message-State: AG10YOR/Cy7L4Fy5KvTR5edVPaQ1iaRfYlhUhp93h0BpFHLJm07ah+pjuo5EcQz7t9I967CzFmqWOt/ZDGGXsQ==
X-Received: by 10.140.88.202 with SMTP id t68mr54884689qgd.86.1456398615843;
 Thu, 25 Feb 2016 03:10:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Thu, 25 Feb 2016 03:09:36 -0800 (PST)
In-Reply-To: <CAFNHFT9j_KQjfGw1SVUxGp=Bh1fYX2Jb1HnFgi3qXMzfuzx1qg@mail.gmail.com>
References: <20160222070345.GA10232@Karyakshetra> <alpine.DEB.2.10.1602220534590.2685@hadrien>
 <alpine.DEB.2.10.1602220637570.2655@hadrien> <CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g@mail.gmail.com>
 <alpine.DEB.2.10.1602220908480.2532@hadrien> <CAFNHFT_OyT+ZrjmYkByJwtJP+xLH5r_hXV_QfYZat6-B1p0zLA@mail.gmail.com>
 <alpine.DEB.2.02.1602232146550.2040@localhost6.localdomain6> <CAFNHFT9j_KQjfGw1SVUxGp=Bh1fYX2Jb1HnFgi3qXMzfuzx1qg@mail.gmail.com>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 16:39:36 +0530
Message-ID: <CAFNHFT-xToLv50k_in4aRe3Ap=mFGfJkZuNfEqy7+ahydQBsHg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: lnet: Use list_for_each_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/mixed; boundary=001a11c1335226b94c052c963a7d

--001a11c1335226b94c052c963a7d
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Can you please review the attached semantic patch. This addresses the
list_for_each_entry_safe issue.
I have prepared the semantic patch as per your instructions and have
also tested it with the -D patch option.

Thanks,
Bhaktipriya

On Wed, Feb 24, 2016 at 3:30 AM, Bhaktipriya Shridhar
<bhaktipriya96@gmail.com> wrote:
> Hello Julia,
>
> I have prepared the semantic patch as per your instructions. I also
> tested it using the -D patch flag. It is working fine at my end.
> I have attached the file for your review. Please have a look.
>
> Thanks,
> Bhaktipriya
>
>
>
> On Wed, Feb 24, 2016 at 2:19 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> On Wed, 24 Feb 2016, Bhaktipriya Shridhar wrote:
>>
>>> Hello Julia,
>>>
>>> I was running spgen on my patch and wanted to know how I could answer
>>> the following questions:
>>>
>>> 1.Specify options for the script or press <enter> to continue:
>>
>> Probably --include-headers --no-includes is fine.  This means that your
>> semantic patch doesn't need any information from header files, such as
>> type information.  But header files will be treated individually, in case
>> the issue occurs in the header file also.
>>
>>> 2.Rule "r". Write a message for org mode:
>>
>> Just put something concise, like you would put in a patch subject line.
>>
>>> 3.Rule "r". Write a message for report or press <enter> to reuse the
>>> org message.
>>
>> Just press enter.
>>
>> julia
>>
>>> Can you please guide me.
>>>
>>> Thanks,
>>> Bhaktipriya
>>>
>>> On Mon, Feb 22, 2016 at 7:45 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> > On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
>>> >
>>> >> Hello Julia,
>>> >>
>>> >> Thank you for your reply.  I ran the rule that you mentioned on the
>>> >> entire kernel.
>>> >> I found that  around 70 files will be needing this change.
>>> >
>>> > OK, you can get the latest version of Coccinelle from github.  If you make
>>> > and install that, you will get a tool called spgen.  Run that on your
>>> > semantic patch, and answer the various questions.  It can help to have an
>>> > example of a semantic patch that is already in the kernel in front of you
>>> > to have an idea of how to answer the questions.
>>> >
>>> > The resulting semantic patch is printed on standard output.  You can also
>>> > give a -o argument to get it put in a file, in the usual way.
>>> >
>>> > You can test the result with the argument -D patch, to get a patch, -D
>>> > context, to get the relevant lines highlighted, -D org --no-show-diff to
>>> > get org mode (I can check this if you don't know what it is), and -D
>>> > report --no-show-diff to get some printed report about where issues arise.
>>> > The size of the output for patch and context should be about the same, but
>>> > patch would be bigger, because it also has + lines.  The size of report
>>> > and org should also be about the same size.  Or maybe the size of report
>>> > and the number of lines containing TODO in the org mode result.
>>> >
>>> > When you are done, you can just send the result to me.  I won't be very
>>> > available during the coming day though.
>>> >
>>> > julia
>>> >
>>> >
>>> >>
>>> >> Thanks,
>>> >> Bhaktipriya
>>> >>
>>> >> On Mon, Feb 22, 2016 at 5:08 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> >> >
>>> >> > > > @@
>>> >> > > > expression E1;
>>> >> > > > identifier I1, I2;
>>> >> > > > type T;
>>> >> > > > iterator name list_for_each_entry_safe;
>>> >> > > > @@
>>> >> > > > T *I1;
>>> >> > > > +  T *tmp;
>>> >> > > > ...
>>> >> > > > - while (list_empty(&E1) == 0)
>>> >> > > > + list_for_each_entry_safe (I1, tmp, &E1, I2)
>>> >> > > > {
>>> >> > > >     ...when != T *I1;
>>> >> > > >     -       I1 = list_entry(E1.next, T, I2);
>>> >> >
>>> >> > Could you try this rule on the entire kernel?  If there are many
>>> >> > occurrences, then maybe it would be a good idea to include this rule with
>>> >> > the other semantic patches in the kernel.
>>> >> >
>>> >> > julia
>>> >>
>>> >> --
>>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g%40mail.gmail.com.
>>> >> For more options, visit https://groups.google.com/d/optout.
>>> >>
>>>

--001a11c1335226b94c052c963a7d
Content-Type: application/octet-stream; 
	name="list_for_each_entry_safe.cocci"
Content-Disposition: attachment; filename="list_for_each_entry_safe.cocci"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_il2611l71

Ly8vIFNpbXBsaWZpZXMgaXRlcmF0aW9uIG9mIGRvdWJseSBsaW5rZWQgbGlzdHMgdXNpbmcgbGlz
dF9mb3JfZWFjaF9lbnRyeV9zYWZlLgovLy8gUmVwbGFjZXMgdGhlIHdoaWxlIGxvb3AgY29udGFp
bmluZyBsaXN0X2VtcHR5IGFuZCBsaXN0X2VudHJ5IHdpdGgKLy8vIGxpc3RfZm9yX2VhY2hfZW50
cnlfc2FmZS4KLy8vCi8vIENvbmZpZGVuY2U6IEhpZ2gKLy8gQ29weXJpZ2h0OiAoQykgMjAxNiBC
aGFrdGlwcml5YSBTaHJpZGhhciwgR1BMdjIuCi8vIE9wdGlvbnM6IC0tbm8taW5jbHVkZXMgLS1p
bmNsdWRlLWhlYWRlcnMKLy8gS2V5d29yZHM6IGxpc3RfZW50cnksIGxpc3RfZW1wdHksIGxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZQoKdmlydHVhbCBwYXRjaAp2aXJ0dWFsIGNvbnRleHQKdmlydHVh
bCBvcmcKdmlydHVhbCByZXBvcnQKCkByIGRlcGVuZHMgb24gcGF0Y2ggJiYgIWNvbnRleHQgJiYg
IW9yZyAmJiAhcmVwb3J0QApleHByZXNzaW9uIEUxOwppZGVudGlmaWVyIEkxLCBJMjsKdHlwZSBU
OwppdGVyYXRvciBuYW1lIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZTsKQEAKClQgKkkxOworIFQg
KnRlbXA7Ci4uLgotIHdoaWxlIChsaXN0X2VtcHR5KCZFMSkgPT0gMCkKKyBsaXN0X2Zvcl9lYWNo
X2VudHJ5X3NhZmUgKEkxLCB0ZW1wLCAmRTEsIEkyKQp7Ci4uLndoZW4gIT0gVCAqSTE7Ci0gSTEg
PSBsaXN0X2VudHJ5KEUxLm5leHQsIFQsIEkyKTsKLi4uCn0KCi8vIC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KCkByX2NvbnRleHQgZGVwZW5kcyBvbiAhcGF0Y2ggJiYgKGNvbnRleHQgfHwgb3JnIHx8IHJl
cG9ydClACnR5cGUgVDsKaWRlbnRpZmllciBJMSwgSTI7CmV4cHJlc3Npb24gRTE7CnBvc2l0aW9u
IGowLCBqMSwgajI7CkBACgpUICpJMUBqMDsKLi4uCiogIHdoaWxlIChsaXN0X2VtcHR5QGoxKCZF
MSkgPT0gMCkKewouLi53aGVuICE9IFQgKkkxOwoqICBJMUBqMiA9IGxpc3RfZW50cnkoRTEubmV4
dCwgVCwgSTIpOwouLi4KfQoKLy8gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKQHNjcmlwdDpweXRob24g
cl9vcmcgZGVwZW5kcyBvbiBvcmdACmowIDw8IHJfY29udGV4dC5qMDsKajEgPDwgcl9jb250ZXh0
LmoxOwpqMiA8PCByX2NvbnRleHQuajI7CkBACgptc2cgPSAiV0FSTklORyBvcHB1cnR1bml0eSBm
b3IgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlLiIKY29jY2lsaWIub3JnLnByaW50X3RvZG8oajBb
MF0sIG1zZykKY29jY2lsaWIub3JnLnByaW50X2xpbmsoajFbMF0sICIiKQpjb2NjaWxpYi5vcmcu
cHJpbnRfbGluayhqMlswXSwgIiIpCgovLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpAc2NyaXB0OnB5
dGhvbiByX3JlcG9ydCBkZXBlbmRzIG9uIHJlcG9ydEAKajAgPDwgcl9jb250ZXh0LmowOwpqMSA8
PCByX2NvbnRleHQuajE7CmoyIDw8IHJfY29udGV4dC5qMjsKQEAKCm1zZyA9ICJXQVJOSU5HIG9w
cHVydHVuaXR5IGZvciBsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUgYXJvdW5kIGxpbmVzICVzLCVz
LiIgJSAoajFbMF0ubGluZSxqMlswXS5saW5lKQpjb2NjaWxpYi5yZXBvcnQucHJpbnRfcmVwb3J0
KGowWzBdLCBtc2cpCgo=
--001a11c1335226b94c052c963a7d--

