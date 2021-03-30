X-GM-THRID: 6945343933741268992
X-Received: by 2002:a65:5bca:: with SMTP id o10mr28318557pgr.248.1617088898157;
        Tue, 30 Mar 2021 00:21:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:f547:: with SMTP id h7ls6342152plf.1.gmail; Tue, 30
 Mar 2021 00:21:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFFn9rV8jFBJlETdSbTNTVmHAbbbDj2TJtZIX67zzOlU+413ylywOi7f79KEEM4vRFcruf
X-Received: by 2002:a17:90a:d801:: with SMTP id a1mr2998739pjv.84.1617088896998;
        Tue, 30 Mar 2021 00:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617088896; cv=none;
        d=google.com; s=arc-20160816;
        b=u9n6NF4YYTXDBI5PdIVG4AWDrP9jzrN/A+ohsth3A61Ogfx7XMCt3BRsJ05iBohduU
         7DH0kZauFc2lYzh+0KivXiOSO7m4XnB0+lyVwUIsNkOp+CcnBD3Sg1FKN4mqGjDutFV5
         HwECnd46i/jYf2XbD89T++mMDlDQihRcgccjiaKAlNnoKwEQmUxs8iip4eZYHFQbtBFn
         6Uasxy6x+KiAeV23oKQyYIZuTfWZnPLqk/CsI8tSkmDcyghLOzD6H5dm/7BidCiEQvnM
         LMIf5Sq+1AXu/uLxIavWtjjkeYrI14XVInRjI7IihCU2+pLleF6bwvn2lcTQ0+dzjZMl
         xamA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version;
        bh=cpa1lKDq6hLveXQC5mQ+DgBaM6z3QghrSDvQ+830EHw=;
        b=bpa4DNx8ehkidh7ZOwAgjQlBJLPXXIzvgOK+RpKRQfxmXIj0VAUClYhkQqvjvYquy/
         rCnlX2Gw6TBCfZgWYQP9ZwB7B5IfgLeGRIu8IWwA8xo1ndfpTWyGaEVnHPyuc4u2BJsd
         6rIfzYeoO+FfW52y3rZcAeezxYOTnZAeZKyYRnd2BmMvqMByJ0JUV3pVlTOlPkl8Au+Z
         lzCKlGNomijM5Xf0NpyiHBkcXLjvo7vCcSkYEivuNHul8CdpKbzFEbg7WL/CC9H94pgR
         u05LomxcrDmYp3C4sHBWELAbhBBNinF0gCPKX4P+TIQeiSADy9UU1Hs7y0ws2aQId4qN
         CWYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.102 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-01.prod.phx3.secureserver.net (p3plsmtpa06-01.prod.phx3.secureserver.net. [173.201.192.102])
        by gmr-mx.google.com with ESMTPS id nv12si71535pjb.3.2021.03.30.00.21.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 00:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.102 as permitted sender) client-ip=173.201.192.102;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.102 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f44.google.com ([209.85.217.44])
	by :SMTPAUTH: with ESMTPSA
	id R8gxl9d4O5NJSR8gylipVN; Tue, 30 Mar 2021 00:21:36 -0700
X-CMAE-Analysis: v=2.4 cv=bPLTnNyZ c=1 sm=1 tr=0 ts=6062d180
 a=mkXaO6UkrcTOUokUjSM1cw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=dESyimp9J3IA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=SiqW3_QkAAAA:8
 a=VUbTt-mzAAAA:8 a=aiIX5UjjAAAA:8 a=YL6Xjd1eAAAA:8 a=uDnhSBqIwgfiM85XMO0A:9
 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19 a=QEXdDO2ut3YA:10 a=0-oVHmElw7bdUHZZ8WX8:22
 a=rjIgbRELtaHJaNsedFhQ:22 a=K4UmP72BP_XnEf30ZnvK:22 a=yLS1KB8ZbIgHeRWbGdJx:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f44.google.com with SMTP id u29so4523768vsi.12
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Mar 2021 00:21:36 -0700 (PDT)
X-Gm-Message-State: AOAM5318oP0bkQCGFci5HgnUhdkTwO1OvGZh64+kQStUq9JRq4IZ54Zj
	bgAFSOEZa0owKCgXa06TM/QGQFchKMt1dgCkeEg=
X-Received: by 2002:a67:688e:: with SMTP id d136mr16524746vsc.58.1617088895659;
 Tue, 30 Mar 2021 00:21:35 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 30 Mar 2021 09:21:22 +0200
X-Gmail-Original-Message-ID: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
Message-ID: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
Subject: Outreachy contribution period is open - Welcome applicants
To: Outreachy <outreachy-kernel@googlegroups.com>
Cc: Helen Koike <helen@koikeco.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfFLBkT8wxee44QglCtQS6pj3BKhleISsbnmDOV1dc7UD0A67Qoo99tvnT1/2mg7B5SDL/KTjHO4dAdqsncllIeOHnCfrQDoGGjU/hx8fCKrBRsFstS1F
 s+jXiEZwRMs6R75a5PpAspST8hqoXy4vKXqI4hb79fvysjcyy8yQ5kA9Gvl2Cf2jbJVgzC7jz5PXErrP013KmsTtI/hzTF20deLmda2Kp7E+gpsPfSR3htiW

Greetings potential Linux kernel Outreachy interns!

Please read this *entire* email, even if you have applied in the past.

1. Our contribution period process works entirely via this mailing
list. So, make sure that you read the emails I/Helen send over here in
the next few weeks. To help you with Linux kernel's patch submission
process we have a tutorial here:

    http://kernelnewbies.org/Outreachyfirstpatch

It is not necessary to contact any individual mentor before starting
the tutorial. Feel free to ask your questions in this mailing list.
That way you'll be able get quick answers with the issues you're
facing.

3. Please avoid sending patches for the *drivers/staging/media*
directory as Greg can't pick them in his tree during the contribution
period. Also, while you're required to submit patches in this mailing
list, please make sure to use *get_maintainer.pl* as well. So that you
can cc respective mailing list(s) and maintainers.

As specified in our tutorial, we require Outreachy applicants to first
send a significant number of cleanup patches in drivers/staging before
you can move on to the project specific tasks. This is to help you get
some experience with the kernel community's patch practices.

5. Once you have completed working on a good number of cleanup patches
and they have been accepted by Greg, we encourage applicants to move
on to complete some small tasks outlined by the mentors. It=E2=80=99s
preferable to CC the mentor when you are working on the task so that
they don=E2=80=99t miss it. Small tasks for the projects can be found in th=
e
project detail here:

   https://www.outreachy.org/apply/project-selection/#linux-kernel

Note that you'll be able to see the detailed information about
projects on Outreachy's website only if you have been informed by the
organizers about passing an initial eligibility round. Community
coordinators and mentors do not have any role to play in the initial
application process of Outreachy. So, please email Outreachy
organizers if you have any doubt related to eligibility or the initial
application process.

6. Please record recording your contributions on Outreachy's website
for the each project you are planning to submit an application. Keep
editing your 'project contribution' on Outreachy's website based on
your accepted patches links and project-specific completion of tasks.

7. Make sure to add your project preferences under the question
'Community-specific Questions' in the application.

Applicants should also join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
you're having trouble with IRC, please ask for help in this mailing
list.

If you=E2=80=99ve applied in the Outreachy before, you=E2=80=99re still req=
uired to
send a few staging driver cleanup patches to re-familiarize yourself
with the process before you start to work on tasks.

There is a tips section at the end of the tutorial to outline what
behaviors we look for in potential Outreachy interns. I hope this will
give more insight into our selection process.

All the best!
 ---
Vaishali Thakkar and Helen Koike
Outreachy Linux Kernel Co-coordinator

