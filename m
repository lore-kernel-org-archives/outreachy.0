X-GM-THRID: 6945343933741268992
X-Received: by 2002:a05:6e02:1348:: with SMTP id k8mr25319879ilr.277.1617717386455;
        Tue, 06 Apr 2021 06:56:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6602:107:: with SMTP id s7ls1131890iot.2.gmail; Tue, 06
 Apr 2021 06:56:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyy+aKn99hjr0s8r16QUvAEzA38/QzDU3eCTzACvRVpM98pgtJbxQ9LLUntQl/DN2jUaoA3
X-Received: by 2002:a6b:5c0d:: with SMTP id z13mr23364232ioh.6.1617717385499;
        Tue, 06 Apr 2021 06:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617717385; cv=none;
        d=google.com; s=arc-20160816;
        b=rbvkVKKN85aOe7nrcuF/H+LbZ1QzxMM+DN0/hB8ioblem6ogWF91/cbhldtd1SwPXu
         S9Qpu4j0noRqtmEmB5+agCLA27Tj9u9E2gm+3e3g4TkDyExBBYGNIANyDla6B4d4tSEu
         yNvgr0vjH0xBjHxTOFssHZ02Bi1p73gTSQqCdh1xWuwuJ5WPFSGtX5KknwwOPF/rYui9
         pZ6xQPNjZURC2Eaz5BIpxSkJba8guT15ct+LBvOa1LQOn3f9+ZTeBRKgMLlSPsA/n6CY
         u5l5WIsFD4dXAHpsz6QUHHr0bT8B30RJyPpOqJ5Y6BF1L8Hya2Peb+ceVyfe2VOOrt3G
         USOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=PkMqpybwbkALdZURp1i9tvlPz9K7v7NBt7Kmiwnc/fI=;
        b=FpwANXCutoeD2XMYsQsCWO24VE3b9lXIZBHFltMnB2bVfnYVamlw+Ps+bOvka1fzUu
         jwR/T3CVG9UMQfBqsWkBR+MrcfhDrmfmkvtZC7Y57ZS7GQo28K4sBjLil6eSYzGBa0rH
         to++k4fDfBveuX+CL8rk7xIW5vhvzKbAaYrpBIf+ejlKexZlczUCbGwH+Ys9eJQa1MH9
         ZziCuW2/KU/EYMf+NegisNHj9BJJ2y7e3TwPm42BE0PmWW82J3dav1e12y3CTud9gL9H
         7JnNpEm3L3yDXgVHN2nJ9QJwBIR5urjchnr6MjxSWsX62d8HYcyjKcB6bDFXn/S/SmUE
         kY/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-07.prod.phx3.secureserver.net (p3plsmtpa08-07.prod.phx3.secureserver.net. [173.201.193.108])
        by gmr-mx.google.com with ESMTPS id y10si314617ilm.4.2021.04.06.06.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 06:56:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.108 as permitted sender) client-ip=173.201.193.108;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vk1-f172.google.com ([209.85.221.172])
	by :SMTPAUTH: with ESMTPSA
	id TmBrlHlbS4B1ATmBslkrH0; Tue, 06 Apr 2021 06:56:24 -0700
X-CMAE-Analysis: v=2.4 cv=AbF0o1bG c=1 sm=1 tr=0 ts=606c6888
 a=OBb77FZj0gOux9oi4aEETw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=xOd6jRPJAAAA:8
 a=SiqW3_QkAAAA:8 a=VUbTt-mzAAAA:8 a=aiIX5UjjAAAA:8 a=YL6Xjd1eAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=bMriyB3HIlZShjudZngA:9
 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=p2IOnBAzwV8vXciPbnnL:22 a=0-oVHmElw7bdUHZZ8WX8:22 a=rjIgbRELtaHJaNsedFhQ:22
 a=K4UmP72BP_XnEf30ZnvK:22 a=yLS1KB8ZbIgHeRWbGdJx:22 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vk1-f172.google.com with SMTP id h136so3202161vka.7
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 06:56:24 -0700 (PDT)
X-Gm-Message-State: AOAM533387oO9IGPG9QeR69XpG/i+lAdyCiX3a1kAwlvQTrayDtD7F1S
	GwFdzf4gpTgpYOzMSVXnkAz3/h/dvkneNurgsns=
X-Received: by 2002:a1f:7d06:: with SMTP id y6mr17575713vkc.0.1617717383677;
 Tue, 06 Apr 2021 06:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
 <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>
In-Reply-To: <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 6 Apr 2021 15:56:12 +0200
X-Gmail-Original-Message-ID: <CAK-LDbLiphu1LBNFf2_DnvQhfivoHw-P=fDqJGi5EzWJQ=8CGg@mail.gmail.com>
Message-ID: <CAK-LDbLiphu1LBNFf2_DnvQhfivoHw-P=fDqJGi5EzWJQ=8CGg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy contribution period is open -
 Welcome applicants
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Helen Koike <helen@koikeco.de>, Greg KH <greg@kroah.com>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfH+LjmUHDemvlpi4louMFcL9wGQ6BDBZD4A1XsvqwCO8nh8cyQc0osPrVa3NQNmjLCu8/vZFkKnPO1Krenu/HYTLpVl4aa9qS0dwTOna9d/LVT16iXgn
 k1Kt2MpXmheV+uumqvGuH62VV5qtj5T67Dsjbf0HQQ5F3iiumZyN/H2n5VVanSK6c0UUNOT4Ya3rjbTI9DANLnLxCkuWyYxoSAq6M6lXL6u0bjTWAMNCHMsc

On Tue, Apr 6, 2021 at 3:45 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> Hi Vaishali, Helen, Greg,
>
> On 30/03/2021 09:21, Vaishali Thakkar wrote:
> > Greetings potential Linux kernel Outreachy interns!
> >
> > Please read this *entire* email, even if you have applied in the past.
> >
> > 1. Our contribution period process works entirely via this mailing
> > list. So, make sure that you read the emails I/Helen send over here in
> > the next few weeks. To help you with Linux kernel's patch submission
> > process we have a tutorial here:
> >
> >     http://kernelnewbies.org/Outreachyfirstpatch
> >
> > It is not necessary to contact any individual mentor before starting
> > the tutorial. Feel free to ask your questions in this mailing list.
> > That way you'll be able get quick answers with the issues you're
> > facing.
> >
> > 3. Please avoid sending patches for the *drivers/staging/media*
> > directory as Greg can't pick them in his tree during the contribution
> > period. Also, while you're required to submit patches in this mailing
> > list, please make sure to use *get_maintainer.pl* as well. So that you
> > can cc respective mailing list(s) and maintainers.
>
> I missed this point. I am perfectly willing to be reviewer for
> drivers/staging/media* patches. I noticed a bunch of otherwise perfectly
> fine and useful patches for staging/media drivers, so it would be a shame
> if they are skipped just because staging/media is maintained by the media
> subsystem and not by Greg.
>
> Is there any objection to that?

Do you think they can be added to some media tree before the contribution
period of Outreachy ends? We try to avoid this mainly because we don't know
if any other maintainer will be able to do it during the timeline of Outrea=
chy
contribution period and applicants generally need to put the link to their
accepted patches in the Outreachy application.

For example, during each contribution period Greg picks up patches 3-4
times in his staging-testing tree and applicants can add those links in the
application. Also, because these are clean up patches and multiple
applicants are working at the same time, if the patches are picked up early
it helps them to avoid duplicating the work because then they can just reba=
se
their local branches on top of staging-testing.

> Regards,
>
>         Hans
>
> >
> > As specified in our tutorial, we require Outreachy applicants to first
> > send a significant number of cleanup patches in drivers/staging before
> > you can move on to the project specific tasks. This is to help you get
> > some experience with the kernel community's patch practices.
> >
> > 5. Once you have completed working on a good number of cleanup patches
> > and they have been accepted by Greg, we encourage applicants to move
> > on to complete some small tasks outlined by the mentors. It=E2=80=99s
> > preferable to CC the mentor when you are working on the task so that
> > they don=E2=80=99t miss it. Small tasks for the projects can be found i=
n the
> > project detail here:
> >
> >    https://www.outreachy.org/apply/project-selection/#linux-kernel
> >
> > Note that you'll be able to see the detailed information about
> > projects on Outreachy's website only if you have been informed by the
> > organizers about passing an initial eligibility round. Community
> > coordinators and mentors do not have any role to play in the initial
> > application process of Outreachy. So, please email Outreachy
> > organizers if you have any doubt related to eligibility or the initial
> > application process.
> >
> > 6. Please record recording your contributions on Outreachy's website
> > for the each project you are planning to submit an application. Keep
> > editing your 'project contribution' on Outreachy's website based on
> > your accepted patches links and project-specific completion of tasks.
> >
> > 7. Make sure to add your project preferences under the question
> > 'Community-specific Questions' in the application.
> >
> > Applicants should also join the #outreachy IRC channel on
> > irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
> > you're having trouble with IRC, please ask for help in this mailing
> > list.
> >
> > If you=E2=80=99ve applied in the Outreachy before, you=E2=80=99re still=
 required to
> > send a few staging driver cleanup patches to re-familiarize yourself
> > with the process before you start to work on tasks.
> >
> > There is a tips section at the end of the tutorial to outline what
> > behaviors we look for in potential Outreachy interns. I hope this will
> > give more insight into our selection process.
> >
> > All the best!
> >  ---
> > Vaishali Thakkar and Helen Koike
> > Outreachy Linux Kernel Co-coordinator
> >
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/0c23560d-f05f-008c-5cc1-48b06af8d0c0%40xs4all.nl.



--=20
Vaishali

