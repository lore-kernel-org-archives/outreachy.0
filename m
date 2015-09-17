X-GM-THRID: 6195023945658269696
X-Received: by 10.152.21.42 with SMTP id s10mr3346924lae.9.1442476588253;
        Thu, 17 Sep 2015 00:56:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.134 with SMTP id f6ls44380lae.74.gmail; Thu, 17 Sep
 2015 00:56:27 -0700 (PDT)
X-Received: by 10.112.57.194 with SMTP id k2mr6226216lbq.10.1442476587651;
        Thu, 17 Sep 2015 00:56:27 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-la0-x231.google.com (mail-la0-x231.google.com. [2a00:1450:4010:c03::231])
        by gmr-mx.google.com with ESMTPS id wh9si42584lbb.2.2015.09.17.00.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2015 00:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) client-ip=2a00:1450:4010:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-la0-x231.google.com with SMTP id j9so6078912lag.2
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Sep 2015 00:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+rmFxvKQI931Ric5wRopWqBJ6cbHprdD6tH+V9A3HGo=;
        b=jOBNMvrAOIsKYrjPXw0vOuh/CEkoOpoVI2+5cBRQx8+9V2FYI0kpRzCvF6zjYESPit
         wAY5L8OVaTroezLLwpsbaJQW11zXF06h8MMo/snpgmb1UDUs44RkXJq9HbRLyOaotkaL
         vdjBouSk2U5fgZcWaqT2SzB7nrZoYpmPQMw4/sWLo0X10mFq7382w8mNo51hbG+RWIY4
         8d8IaSgHPHV2YciUufnxQgLGOgyGcl1I1VBEkJ/JcAPpdFdma5SE9NP236Z4iF/Gzj+x
         b02fsQmwcSC76PSUPySnmqnZYS3lXGzHl0Of1K08WkgC5hDaYvNc/aRcts6+/6EGfnR2
         Xmkw==
MIME-Version: 1.0
X-Received: by 10.112.137.105 with SMTP id qh9mr35140609lbb.54.1442476587528;
 Thu, 17 Sep 2015 00:56:27 -0700 (PDT)
Received: by 10.25.153.140 with HTTP; Thu, 17 Sep 2015 00:56:27 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1509170933300.2399@hadrien>
References: <alpine.DEB.2.10.1509161012220.2429@hadrien>
	<CAHWJYFn+q64GkbLrKGsWSGtuMrkAR0bg-n+mCdfFAYLLfs1KVw@mail.gmail.com>
	<alpine.DEB.2.10.1509170933300.2399@hadrien>
Date: Thu, 17 Sep 2015 10:56:27 +0300
Message-ID: <CAEnQRZB4ajRP6qFzt4x1C3h9nJkM26KL68Ef-GnUKn61W=LPiQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] round 11
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ioana Ciornei <ciorneiioana@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 17, 2015 at 10:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 17 Sep 2015, Ioana Ciornei wrote:
>
>> On Wed, Sep 16, 2015 at 11:16 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > Hello,
>> >
>> > There has been a small change in the application period as compared to
>> > what was previously announced.  The dates are now September 29 - November
>> > 2.  The internship dates are unchanged (December 7 - March 7).
>> > Additionally, the program is now open to residents and nationals of the
>> > United States of any gender who are Black/African American,
>> > Hispanic/Latino, American Indian, Alaska Native, Native Hawaiian, or
>> > Pacific Islander.  Finally, experience has shown that it is not practical
>> > to do an internship while attending school.  So if you are in school and
>> > your school obligations (classes and exams) overlap with the internship
>> > period by more than a week or two, please consider applying in the next
>> > round instead.
>> >
>> > Please let me know if you have any questions about the internship program.
>> >
>> > Julia
>>
>> Hi Julia,
>> I understand the concern about the applicants that are attending school
>> during the internship period, but I have a question regarding the subject.
>> These applicants will not even be considered in the application process or
>> they just need to be sure that they are up for the challenge and somehow
>> convince the mentors that the workload is not to much for them?
>
> I believe the intent is that they will not be considered.  Apparently in
> the last winter round there were significant problems with 37% of the
> interns who were students, and in the summer round there were no problems
> with the interns who were students (but on summer vacation).  Actually,
> for the kernel, we have already been following the policy of turning down
> people who have more than a week of two of school obligations during the
> internship period.

I agree that we should be careful with applications from students having classes
during the internship.

Anyhow, I want to point out that there are some special cases. For example, in
Romania 4th year students have a lighter spring semester. Also the internship
period overlaps with winter vacation.

I think this is the same case for some universities in India.

thanks,
Daniel.

