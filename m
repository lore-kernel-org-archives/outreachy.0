X-GM-THRID: 6195023945658269696
X-Received: by 10.182.70.4 with SMTP id i4mr26832026obu.15.1442476948039;
        Thu, 17 Sep 2015 01:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.215.162 with SMTP id oj2ls88465obc.15.gmail; Thu, 17 Sep
 2015 01:02:27 -0700 (PDT)
X-Received: by 10.182.33.3 with SMTP id n3mr5078311obi.14.1442476947682;
        Thu, 17 Sep 2015 01:02:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22e.google.com (mail-yk0-x22e.google.com. [2607:f8b0:4002:c07::22e])
        by gmr-mx.google.com with ESMTPS id u67si145049ywf.5.2015.09.17.01.02.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2015 01:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22e as permitted sender) client-ip=2607:f8b0:4002:c07::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22e.google.com with SMTP id t18so9820134ykd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Sep 2015 01:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Zw65VHXvOL2GSxjwc0esMIUVczeZf2YOXvAuOShHKO4=;
        b=SM900j0NeHPUDHozSv613Y+61OzSUn+ylR8JZNtx9lPE6DlFQWQ9kjlSCtzit7eFU7
         Wvwya4eOgqgZ457ZgMMPx1RwqzbtZl/8tBydPAK4eD3k0KNbunfySNZuxmsAecqMi18Y
         87Ik2omvOKqqTb6iuMEcg3J2IIa1uuyKhYVJsGzkoxooen029fBH5LooU13MZddmfXkX
         xmpBwqAbj1jm6oj1qNX6YtpcBa9eKyWl994mA//yDm751Tnc25sySq9p3BW2NlTJx0V1
         5+2DOISYGcLGqzJFBmWFBYa0GgbV2NZO3bt1oGmor3UJThb+rfOoGLwZe2yp0i2eWjh6
         JyDw==
MIME-Version: 1.0
X-Received: by 10.170.38.22 with SMTP id 22mr32485287ykg.15.1442476947570;
 Thu, 17 Sep 2015 01:02:27 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Thu, 17 Sep 2015 01:02:27 -0700 (PDT)
In-Reply-To: <CAEnQRZB4ajRP6qFzt4x1C3h9nJkM26KL68Ef-GnUKn61W=LPiQ@mail.gmail.com>
References: <alpine.DEB.2.10.1509161012220.2429@hadrien>
	<CAHWJYFn+q64GkbLrKGsWSGtuMrkAR0bg-n+mCdfFAYLLfs1KVw@mail.gmail.com>
	<alpine.DEB.2.10.1509170933300.2399@hadrien>
	<CAEnQRZB4ajRP6qFzt4x1C3h9nJkM26KL68Ef-GnUKn61W=LPiQ@mail.gmail.com>
Date: Thu, 17 Sep 2015 11:02:27 +0300
Message-ID: <CAHWJYFmYWJDOvjcQnnqt_bLZPdtMrbt37jepLLkwZqehQfriAw@mail.gmail.com>
Subject: Re: [Outreachy kernel] round 11
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 17, 2015 at 10:56 AM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
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
>
> thanks,
> Daniel.


Thanks a lot.

Ioana

