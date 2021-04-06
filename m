X-GM-THRID: 6945343933741268992
X-Received: by 2002:a05:620a:718:: with SMTP id 24mr30277552qkc.121.1617720350136;
        Tue, 06 Apr 2021 07:45:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls10731684qkl.4.gmail; Tue,
 06 Apr 2021 07:45:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXwlbQszqQoCyGgqorNbzioIQMmRtEz2cl42oV3lAJeRt471i/3y/rerxX0x9IymHDITg7
X-Received: by 2002:ae9:f80e:: with SMTP id x14mr30771609qkh.1.1617720349226;
        Tue, 06 Apr 2021 07:45:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617720349; cv=none;
        d=google.com; s=arc-20160816;
        b=X6TWLjClo8570Fc+SwOqf/q4MKsbgswGiEfUCBDQwYjmmykecw4is3ZhDVhqJrmPC5
         lmUIXtEBJCbRlxg0a6XlvZxbgUltn6NH1agEFNHZdT3dUUwp31givADhXigNxEm7fW2p
         iyiB+s3qx4fR9kZBr7PY+SShSshTPR5Go6UQwsgl1CcilZgwOCiQTBgL28PcsoC4+xOB
         VTVq6jr3Puv1n4u6/Cug/ZqGXH/qb3J54pTfXkHNP9XrkmmdHEpEQGI+zkBBAg0EIqsH
         QXatGbY3cGNf7BVv//5fn2neTXDqHK8fLgQWUC7VjhR8QdnQELiQh/NqrDlJAw9PwfLa
         SKBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=0fFJntxyBB3Hv59Z8RWXT1FVTO5pxldMrmKKa40tHEg=;
        b=NUwF7fFW+YiGYZ0OE5/XKpXVUoDTsiTeXT1PE5OKNemeW+jBFQcZAjuoZW4hVQwrBv
         yHvdyjGU3VnDrlxDGIgsMrOBHzqgQ7sl0PotVJu5uyF7D16HONUEY05TptH/LRHR/SEb
         /PQU8XYuIEyXW9+LWA6fcrKqB3VdlFNxPyktKXOWPOlF4WeSxy2toeE6gbKv8iQZ3CD8
         hBWLwXL4QhRvmeA725whVUGnyvmdSb/Uo+V9JUoe+xO0GUAvgRWFxhLHvF9GyCKcf25l
         4BA0fp2AB1ExWFdtLIAKSGji3beCTFtWfPYZeHNORfbxUC8IiXMw2xi7oNLcj+ESsJwK
         1OOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-07.prod.phx3.secureserver.net (p3plsmtpa06-07.prod.phx3.secureserver.net. [173.201.192.108])
        by gmr-mx.google.com with ESMTPS id b2si3139488qtq.5.2021.04.06.07.45.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:45:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) client-ip=173.201.192.108;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f47.google.com ([209.85.217.47])
	by :SMTPAUTH: with ESMTPSA
	id TmxflzeTuZK7ATmxglmRwO; Tue, 06 Apr 2021 07:45:48 -0700
X-CMAE-Analysis: v=2.4 cv=INzHtijG c=1 sm=1 tr=0 ts=606c741c
 a=GFkePgBPOPvmhUBO7sJnuQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=xOd6jRPJAAAA:8
 a=SiqW3_QkAAAA:8 a=VUbTt-mzAAAA:8 a=aiIX5UjjAAAA:8 a=YL6Xjd1eAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=rf--nqVdalTA7w3pEUAA:9
 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=p2IOnBAzwV8vXciPbnnL:22 a=0-oVHmElw7bdUHZZ8WX8:22 a=rjIgbRELtaHJaNsedFhQ:22
 a=K4UmP72BP_XnEf30ZnvK:22 a=yLS1KB8ZbIgHeRWbGdJx:22 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f47.google.com with SMTP id r12so7925983vsj.5
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 07:45:48 -0700 (PDT)
X-Gm-Message-State: AOAM531iKtx8FiPUTfez7hEEdfelKB2uURKa2CaH7uCRIOgYHW5sn+ii
	fYo4kdoENEh2TQz+YWXydrNw7QCfPsM9GBypgJg=
X-Received: by 2002:a67:c01d:: with SMTP id v29mr17004293vsi.23.1617720347664;
 Tue, 06 Apr 2021 07:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
 <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl> <CAK-LDbLiphu1LBNFf2_DnvQhfivoHw-P=fDqJGi5EzWJQ=8CGg@mail.gmail.com>
 <94ed8f8e-46bf-7d80-becd-3e01e369eaa4@xs4all.nl>
In-Reply-To: <94ed8f8e-46bf-7d80-becd-3e01e369eaa4@xs4all.nl>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 6 Apr 2021 16:45:35 +0200
X-Gmail-Original-Message-ID: <CAK-LDbJZwTjoiB3pi60Uknv9qRGmofBNGKVVp7bKRSHLqmMdTg@mail.gmail.com>
Message-ID: <CAK-LDbJZwTjoiB3pi60Uknv9qRGmofBNGKVVp7bKRSHLqmMdTg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy contribution period is open -
 Welcome applicants
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Helen Koike <helen@koikeco.de>, Greg KH <greg@kroah.com>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfNHKo0yaXL6OTvC7jYzPgB5CtlLX9R9S2UTJCG2SNH8uvj0GPaZJMX6Imy92xVcc6eBPpIZ7gA9ioZ6GZTJqZUG6QWyu8eEKLH+xsqteXqPQaAE9L4UB
 gMezaUhBEzPLV3z663XUhS0gNAKDJt0sBl43D8wbNkz5ecxD4ddvZXctoa898+UtELnZWmNq8grEHu8//JR0mCELLf/iAvjzjwY9aMJK75nB1B/c0/9znkp2

On Tue, Apr 6, 2021 at 4:17 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 06/04/2021 15:56, Vaishali Thakkar wrote:
> > On Tue, Apr 6, 2021 at 3:45 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>
> >> Hi Vaishali, Helen, Greg,
> >>
> >> On 30/03/2021 09:21, Vaishali Thakkar wrote:
> >>> Greetings potential Linux kernel Outreachy interns!
> >>>
> >>> Please read this *entire* email, even if you have applied in the past=
.
> >>>
> >>> 1. Our contribution period process works entirely via this mailing
> >>> list. So, make sure that you read the emails I/Helen send over here i=
n
> >>> the next few weeks. To help you with Linux kernel's patch submission
> >>> process we have a tutorial here:
> >>>
> >>>     http://kernelnewbies.org/Outreachyfirstpatch
> >>>
> >>> It is not necessary to contact any individual mentor before starting
> >>> the tutorial. Feel free to ask your questions in this mailing list.
> >>> That way you'll be able get quick answers with the issues you're
> >>> facing.
> >>>
> >>> 3. Please avoid sending patches for the *drivers/staging/media*
> >>> directory as Greg can't pick them in his tree during the contribution
> >>> period. Also, while you're required to submit patches in this mailing
> >>> list, please make sure to use *get_maintainer.pl* as well. So that yo=
u
> >>> can cc respective mailing list(s) and maintainers.
> >>
> >> I missed this point. I am perfectly willing to be reviewer for
> >> drivers/staging/media* patches. I noticed a bunch of otherwise perfect=
ly
> >> fine and useful patches for staging/media drivers, so it would be a sh=
ame
> >> if they are skipped just because staging/media is maintained by the me=
dia
> >> subsystem and not by Greg.
> >>
> >> Is there any objection to that?
> >
> > Do you think they can be added to some media tree before the contributi=
on
> > period of Outreachy ends? We try to avoid this mainly because we don't =
know
> > if any other maintainer will be able to do it during the timeline of Ou=
treachy
> > contribution period and applicants generally need to put the link to th=
eir
> > accepted patches in the Outreachy application.
> >
> > For example, during each contribution period Greg picks up patches 3-4
> > times in his staging-testing tree and applicants can add those links in=
 the
> > application. Also, because these are clean up patches and multiple
> > applicants are working at the same time, if the patches are picked up e=
arly
> > it helps them to avoid duplicating the work because then they can just =
rebase
> > their local branches on top of staging-testing.
>
> I regularly collect cleanup patches for the media tree (say once a week) =
and

Ok, I didn't know that. It's great then.

> post a pull request for Mauro to merge in our media tree. Those patches a=
re
> updated in our patchwork and marked 'Under Review' until the PR is merged=
,
> at which time they are marked 'Accepted'. I can guarantee that I will hav=
e
> them in a weekly Pull Request. It might take longer for the PR to be actu=
ally
> merged as that depends on Mauro's workload. Our tree is also frozen from =
roughly
> rc7 until the next rc1.
>
> So for media patches would a link to our patchwork be sufficient? If the =
patch
> state is 'Under Review' or 'Accepted', then it's accepted by me.

Yes, I think links to patchwork should work. This will give more cleanup
opportunities to applicants as well.

I'll send a separate email in the mailing list to inform the
applicants about the
same - as everyone may not end up reading this thread.

> Regards,
>
>         Hans
>
> >
> >> Regards,
> >>
> >>         Hans
> >>
> >>>
> >>> As specified in our tutorial, we require Outreachy applicants to firs=
t
> >>> send a significant number of cleanup patches in drivers/staging befor=
e
> >>> you can move on to the project specific tasks. This is to help you ge=
t
> >>> some experience with the kernel community's patch practices.
> >>>
> >>> 5. Once you have completed working on a good number of cleanup patche=
s
> >>> and they have been accepted by Greg, we encourage applicants to move
> >>> on to complete some small tasks outlined by the mentors. It=E2=80=99s
> >>> preferable to CC the mentor when you are working on the task so that
> >>> they don=E2=80=99t miss it. Small tasks for the projects can be found=
 in the
> >>> project detail here:
> >>>
> >>>    https://www.outreachy.org/apply/project-selection/#linux-kernel
> >>>
> >>> Note that you'll be able to see the detailed information about
> >>> projects on Outreachy's website only if you have been informed by the
> >>> organizers about passing an initial eligibility round. Community
> >>> coordinators and mentors do not have any role to play in the initial
> >>> application process of Outreachy. So, please email Outreachy
> >>> organizers if you have any doubt related to eligibility or the initia=
l
> >>> application process.
> >>>
> >>> 6. Please record recording your contributions on Outreachy's website
> >>> for the each project you are planning to submit an application. Keep
> >>> editing your 'project contribution' on Outreachy's website based on
> >>> your accepted patches links and project-specific completion of tasks.
> >>>
> >>> 7. Make sure to add your project preferences under the question
> >>> 'Community-specific Questions' in the application.
> >>>
> >>> Applicants should also join the #outreachy IRC channel on
> >>> irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
> >>> you're having trouble with IRC, please ask for help in this mailing
> >>> list.
> >>>
> >>> If you=E2=80=99ve applied in the Outreachy before, you=E2=80=99re sti=
ll required to
> >>> send a few staging driver cleanup patches to re-familiarize yourself
> >>> with the process before you start to work on tasks.
> >>>
> >>> There is a tips section at the end of the tutorial to outline what
> >>> behaviors we look for in potential Outreachy interns. I hope this wil=
l
> >>> give more insight into our selection process.
> >>>
> >>> All the best!
> >>>  ---
> >>> Vaishali Thakkar and Helen Koike
> >>> Outreachy Linux Kernel Co-coordinator
> >>>
> >>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/m=
sgid/outreachy-kernel/0c23560d-f05f-008c-5cc1-48b06af8d0c0%40xs4all.nl.
> >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/94ed8f8e-46bf-7d80-becd-3e01e369eaa4%40xs4all.nl.



--=20
Vaishali

