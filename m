X-GM-THRID: 6207871882034675712
X-Received: by 10.194.109.233 with SMTP id hv9mr3292625wjb.1.1445501074854;
        Thu, 22 Oct 2015 01:04:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.76 with SMTP id r73ls316258lfd.6.gmail; Thu, 22 Oct
 2015 01:04:34 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr3319700lbc.9.1445501074057;
        Thu, 22 Oct 2015 01:04:34 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id cm6si77074wib.1.2015.10.22.01.04.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id uv6so17566059wic.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tM4ZVrlujZ1884z+JdO5/g7AJ3mQokpcK7ZjfQLbWYg=;
        b=J8xk03sVqrotM0lXjn5I1YJ4f0nA6yEUPbodRv5K8S9dXFO7goX8cuPO3ZEjp6lkzs
         CrD4Go2+hqnG6gx4OG5D/Nx6Cho8i2XAgUlUxMkbQVm4IXg0iHemaQUEJGftDt6/K9PC
         tUs3h3FvQ7mD7CdR58ykjgUy28GJGcGh0mRKt9ohDiHweyqkM7m2mL3j+ahUMh4zNCcY
         Jmgd8fDZgTv3hmKp3sw6FlNcz+xiGU0DOEvAHdJMMwU22aQc/yrp8dtxH/TGHmWLk6cl
         7X+Uf6PIVyRqX5WzOy7oDqQ4kjH782ebmk94g4QMKZzQCdTIWc/IYZEMEX/kWmYwXWvJ
         WWDg==
MIME-Version: 1.0
X-Received: by 10.180.86.231 with SMTP id s7mr37434446wiz.15.1445501073899;
 Thu, 22 Oct 2015 01:04:33 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 22 Oct 2015 01:04:33 -0700 (PDT)
In-Reply-To: <CAHWJYFnUhurVsyOkWSYZRQnWFng_6w9GMgoWsv5GtDwS-dVyng@mail.gmail.com>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
	<6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com>
	<alpine.DEB.2.10.1510210954140.2588@hadrien>
	<CAHWJYF=XYqG0JuDzW8UVZfpneJ-tn_V29wRhty1-5udwNbBD0w@mail.gmail.com>
	<alpine.DEB.2.10.1510211024520.2588@hadrien>
	<CAHWJYFnUhurVsyOkWSYZRQnWFng_6w9GMgoWsv5GtDwS-dVyng@mail.gmail.com>
Date: Thu, 22 Oct 2015 11:04:33 +0300
Message-ID: <CAEnQRZCiX6UK-7EK_NGacKkjA1eB+8x-LdentY1wO-xdQF5jyA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: dgap: properly indent to
 match open paranthesis
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 11:22 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> On Wed, Oct 21, 2015 at 11:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> >>  static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
>>> >> -                     u8 byte2, uint ncmds)
>>> >> +                   u8 byte2, uint ncmds)
>>> >
>>> > It doesn't look like this is aligned, but I didn't try applying the patch.
>>>
>>> I think that the email format or the patch does not show the tabs in
>>> the proper way.
>>> I remember that there were some off by one alignments and this and the
>>> previous one belong to them.
>>> Nevertheless, I will take a look.
>>
>> OK, quite possible.  But it is strange that all of the function calls look
>> fine with their added and removed lines, and all of the function headers
>> look wrong.
>>
>> julia
>
> It's very strange but the alignment seems proper when the patch is
> applied. I really do not have an explanation for the email format.
> I verified it, made the other changes suggested and resent it.

Yes, it looks good.

