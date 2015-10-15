X-GM-THRID: 6205781635135176704
X-Received: by 10.140.238.83 with SMTP id j80mr7671829qhc.2.1444918235622;
        Thu, 15 Oct 2015 07:10:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.198 with SMTP id q189ls313714ioe.98.gmail; Thu, 15 Oct
 2015 07:10:34 -0700 (PDT)
X-Received: by 10.66.136.40 with SMTP id px8mr7892758pab.11.1444918234914;
        Thu, 15 Oct 2015 07:10:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22c.google.com (mail-qk0-x22c.google.com. [2607:f8b0:400d:c09::22c])
        by gmr-mx.google.com with ESMTPS id u67si1014060ywf.5.2015.10.15.07.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 07:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) client-ip=2607:f8b0:400d:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22c.google.com with SMTP id t68so37195073qkh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 07:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=rrPhvR/u+hNH7RSeqnLPs66U+lGVWDOcy/0j3zC3TYk=;
        b=j8CRXE2SeHOznraWdGAAdngjE4Q7lR1W46BQds7A57axtoc8/VBqj6RSYzpwkrnOEo
         KB3xW5XrqGEMZ7C6n8JNco9TTPNujH2MIDetwDDhjtrPAFGAZPJSlIfi2AMYOSbWauw2
         VWMaxz9TpojxpMvLfR6t3DVrpz92I4JWFGDYPdHoPCFRM9RmwLVxZ8wfCMAhDDL4+W2x
         puSYWaAZgT5iwcQd5FTRKUK/WD86XotXCU3/9hT2OdmzeJlyxi86COWM83Wl6AG6q6BF
         2QT+6k6rtPyJHz7AAkID86zISRprdXXwsvTqN44tEw78GU/n2g2vR4S12vFBaN8X5Q1l
         +ncQ==
MIME-Version: 1.0
X-Received: by 10.55.43.37 with SMTP id r37mr12070629qkh.57.1444918234682;
 Thu, 15 Oct 2015 07:10:34 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 15 Oct 2015 07:10:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510151204210.2350@hadrien>
References: <cover.1444895817.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510151004560.2350@hadrien>
	<CA+5yK5F+aegUFW3UVE1S+j=9B28q_0NRQK=UHN93pd7jYLP0_A@mail.gmail.com>
	<alpine.DEB.2.10.1510151204210.2350@hadrien>
Date: Thu, 15 Oct 2015 19:40:34 +0530
Message-ID: <CA+5yK5Es2Ofbqk=80YbzzKTnxj_0wEmUf2B5nEYnCxbOQS5pPg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 00/18] staging: Remove useless initialisation
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 3:35 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 15 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> On Thu, Oct 15, 2015 at 1:35 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Thu, 15 Oct 2015, Amitoj Kaur Chawla wrote:
>> >
>> >> This patchset removes multiple useless intialisations of variables
>> >> which are immediately reassigned.
>> >
>> > The patch is probably fine, but in general, you may find that it is more
>> > comfortable not to send quite so many patches at once.
>> >
>> > julia
>> >
>>
>> Hi Julia,
>>
>> Since all the patches were essentially doing the same thing, just in
>> different files I thought it would be okay to send them all in the
>> same patchset. But if you think it's better to divide and send I'll do
>> so in the future?
>
> It's just a practical issue.  The more patches you send at once, the
> greater the chance that you will make a mistake.  I start to feel
> uncomfortable beyond 10.  Even for things that are not too complicated.
>
> But it's just something to keep in mind for the future.  No problem with
> this patch.

Oh yes. Okay will keep that in mind.


Thanks,
-- 
Amitoj

