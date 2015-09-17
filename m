X-GM-THRID: 6195023945658269696
X-Received: by 10.180.208.108 with SMTP id md12mr569367wic.1.1442477429885;
        Thu, 17 Sep 2015 01:10:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.2.193 with SMTP id 1ls46680law.30.gmail; Thu, 17 Sep 2015
 01:10:29 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr6275412lbb.0.1442477429379;
        Thu, 17 Sep 2015 01:10:29 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn1si50455wib.0.2015.09.17.01.10.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2015 01:10:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,545,1437429600"; 
   d="scan'208";a="178009056"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2015 10:10:29 +0200
Date: Thu, 17 Sep 2015 10:10:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Ioana Ciornei <ciorneiioana@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] round 11
In-Reply-To: <CAEnQRZB4ajRP6qFzt4x1C3h9nJkM26KL68Ef-GnUKn61W=LPiQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1509170958080.2399@hadrien>
References: <alpine.DEB.2.10.1509161012220.2429@hadrien> <CAHWJYFn+q64GkbLrKGsWSGtuMrkAR0bg-n+mCdfFAYLLfs1KVw@mail.gmail.com> <alpine.DEB.2.10.1509170933300.2399@hadrien> <CAEnQRZB4ajRP6qFzt4x1C3h9nJkM26KL68Ef-GnUKn61W=LPiQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 17 Sep 2015, Daniel Baluta wrote:

> On Thu, Sep 17, 2015 at 10:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 17 Sep 2015, Ioana Ciornei wrote:
> >
> >> On Wed, Sep 16, 2015 at 11:16 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> > Hello,
> >> >
> >> > There has been a small change in the application period as compared to
> >> > what was previously announced.  The dates are now September 29 - November
> >> > 2.  The internship dates are unchanged (December 7 - March 7).
> >> > Additionally, the program is now open to residents and nationals of the
> >> > United States of any gender who are Black/African American,
> >> > Hispanic/Latino, American Indian, Alaska Native, Native Hawaiian, or
> >> > Pacific Islander.  Finally, experience has shown that it is not practical
> >> > to do an internship while attending school.  So if you are in school and
> >> > your school obligations (classes and exams) overlap with the internship
> >> > period by more than a week or two, please consider applying in the next
> >> > round instead.
> >> >
> >> > Please let me know if you have any questions about the internship program.
> >> >
> >> > Julia
> >>
> >> Hi Julia,
> >> I understand the concern about the applicants that are attending school
> >> during the internship period, but I have a question regarding the subject.
> >> These applicants will not even be considered in the application process or
> >> they just need to be sure that they are up for the challenge and somehow
> >> convince the mentors that the workload is not to much for them?
> >
> > I believe the intent is that they will not be considered.  Apparently in
> > the last winter round there were significant problems with 37% of the
> > interns who were students, and in the summer round there were no problems
> > with the interns who were students (but on summer vacation).  Actually,
> > for the kernel, we have already been following the policy of turning down
> > people who have more than a week of two of school obligations during the
> > internship period.
>
> I agree that we should be careful with applications from students having classes
> during the internship.
>
> Anyhow, I want to point out that there are some special cases. For example, in
> Romania 4th year students have a lighter spring semester. Also the internship
> period overlaps with winter vacation.
>
> I think this is the same case for some universities in India.

It varies a lot.  An overlap of 3 weeks and then I will promise to work
from 6pm to 2am every day, for example, is not acceptable.  In Denmark,
the suggested number of outside working hours was 15-20 hours per week.
And we had successful on-time completion rates of our undergraduate CS
degree of around 3 out of 120.  It's hard to imagine that one can be a
full time student and a full time worker without substantially cheating on
one or the other.  And when school is right there in front of one, and
then internship is on another continent, it's easy to imagine which one
will be sacrificed for the other.  The numbers from the Outreachy program
confirm this, with a 37% rate of substantial problems with the internship
among students in the last winter round.  The internship is both an
opportunity and a cost.  Both will be wasted if one doesn't have enough
time to devote to it.

If there is a feeling that the winter round is not very competitive, and
the summer round is too competitive, because we don't actually seem to be
getting any applicants from places like Australia or Southern Africa,
maybe we should just move a couple of internship slots from the winter to
the summer?

julia



