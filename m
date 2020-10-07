X-GM-THRID: 6880935540883980288
X-Received: by 2002:a9d:4cd:: with SMTP id 71mr2389995otm.276.1602092650884;
        Wed, 07 Oct 2020 10:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:c694:: with SMTP id m20ls180341ooq.8.gmail; Wed, 07 Oct
 2020 10:44:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/yGdP39EtdnbvVST8A+DsOH/wANx93SKpcw076vB6gcWL7LcNkCAAR277hzwKd1nFGOQk
X-Received: by 2002:a4a:ea81:: with SMTP id r1mr1345666ooh.16.1602092649525;
        Wed, 07 Oct 2020 10:44:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602092649; cv=none;
        d=google.com; s=arc-20160816;
        b=SmOrZlBG36V7NDAKE1SzBAPBkojvdVF6M8Rgvs+zg0ePbzl2iBEH4bNIGVmT7Ba/PM
         A9TmbYAmv9hB02rxwy8iOLoWyDkhj8uXBZ/zYJTIizsz07hb1aTi9KKesQrjyNHIEMyb
         ZqFe/XnroCkqreF6HQuNKiKavxGWY4JEadhU2jxbMWakO1msyR8viUVkS477t4UOShpO
         0xQz/qFcuANugiebDqdpCVaZpd4YdVZVlRuxMjKi9UaaYRIQ12hbAnQZ88cmYVgtDamI
         Qn9a/T3eAZNmYyVI7EPgHyjpbwL+HPuiYuuKD/l32gK6IGjVbQPwkHvACztLL+gpZAVq
         CU6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version;
        bh=6neuB8tbzPknZf7u4atnHvV6f7WRli7eMhlf8cDVuGY=;
        b=qrDkHQuuZG6vrD/A96Wgc3OrxvEfL7SFfq4PSxz0KHIE7trZwl7Xn0WS2s/0T1h0DM
         tU9R6YwTwM34Bo1u+Q4oYIisLYO51Oqy6DVHDAfjvqid9ZextCl95hlh/g1+AxfVo5Z7
         wB/aS8D0ckHNfhfFpmR/o69q9ICu4w8s1pQMlg15SGyK9nX12UwFG2UZczcixzixYZUS
         HE58Y5RDJKdQqC9zie/oB9/SwvwkqmBj+t0qkFm8dpLrGOgRIePYBuvLxbV8PWglfMBy
         G3+O4c4py53XV5HW6obqtIrgd+3e8Blfem6kXa8SJ1kxMV2edcTtjUGDBPlI5Y9dintQ
         gLPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.42 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by gmr-mx.google.com with ESMTPS id u15si390038oth.1.2020.10.07.10.44.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2020 10:44:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.42 as permitted sender) client-ip=209.85.166.42;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.42 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-io1-f42.google.com with SMTP id 67so3250091iob.8
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2020 10:44:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=6neuB8tbzPknZf7u4atnHvV6f7WRli7eMhlf8cDVuGY=;
        b=uZDjv61yoSId2dLSOEJr1a8pnPKQjIWuA/qo8slksKcQozkOBD2egVPbP7rLGuN3hA
         fizWbDOXlft7Nt88QV7UWjo86RqMVsMtnDerOgQ0ie2wQte91vNeeNJm4SV/Fz9QMlHY
         UjRw1pLoYtElRrHfdScn+ow+WQj6ymv8GhrVq8gtpaDqfHC5zc4GT2VS0nxTKfdjdD0v
         mQ+hPiF1eitJBHl/Uf8zHktBwAgNa82IR6NAYtH+00KcZ++k2U1qLH7n3ha/1g8joP0Q
         3gixnhSIKCI0zauGmGjomqGUg4nqfMmsSfQ++KDLg3/t8XQEuDzRDCSrykN+KFwipvxB
         cu3w==
X-Gm-Message-State: AOAM533IFvg3+tyksC89xSyL3nWALsEvx3QFeIGgHbfGb/5dA511eIW2
	fm4FycxB90bvWU28nioQVnsyXQAOjHhmoQ==
X-Received: by 2002:a5d:9d15:: with SMTP id j21mr3141243ioj.100.1602092648729;
        Wed, 07 Oct 2020 10:44:08 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id m10sm1323119ilg.74.2020.10.07.10.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2020 10:44:08 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id d20so3236051iop.10
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2020 10:44:08 -0700 (PDT)
X-Received: by 2002:a02:6d4b:: with SMTP id e11mr3970733jaf.142.1602092648193;
 Wed, 07 Oct 2020 10:44:08 -0700 (PDT)
MIME-Version: 1.0
From: Helen Koike <helen@koikeco.de>
Date: Wed, 7 Oct 2020 14:43:57 -0300
X-Gmail-Original-Message-ID: <CAPW4XYYpXX21rxPTLm1oH7DGGpO5igHm=Zjh-nvWAyjZTybGOg@mail.gmail.com>
Message-ID: <CAPW4XYYpXX21rxPTLm1oH7DGGpO5igHm=Zjh-nvWAyjZTybGOg@mail.gmail.com>
Subject: Outreachy contribution period - Welcome!
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings potential Linux kernel Outreachy interns!

Please read this *entire* email, even if you have applied in the past.

What is Outreachy?
-------------------------

The next application round for Outreachy internships starts today,
October 7, 2020 and ends October 31, 2020.  Outreachy interns are paid
$5,500 to work on a full-time internship with an open-source mentor
from December 2020 to March 2021. Interns are also granted a $500
travel stipend to go to any conference approved by their mentor that
relates to their project.

Who can apply?
---------------------

You should have successfully completed the initial application process
to determine whether you meet the eligibility criteria given below and
be able to participate in the application period:

    https://www.outreachy.org/docs/applicant/#initial-application.

The initial application period for the December 2020 to March 2021
round is closed. If your initial application is not approved, you are
not eligible to apply for Outreachy.

What Outreachy projects can you apply to?
---------------------------------------------------------

There will be several different open source projects participating in
this round of Outreachy. The full list can be found here:

    https://www.outreachy.org/communities/cfp/

The Linux kernel expects to offer five projects, which are already
listed on the Linux kernel community page on Outreachy website:

    https://www.outreachy.org/apply/project-selection/#linux-kernel

How do I apply to the Linux kernel project via Outreachy's website?
---------------------------------------------------------------------------=
---------------------

1. Successfully complete the initial application [Deadline passed]

2. Work on Linux kernel tutorial

Basically, applicants will need to walk through our tutorial for
creating their first Linux kernel patch:

    http://kernelnewbies.org/Outreachyfirstpatch

It is not necessary to contact a mentor before starting the tutorial.
Feel free to ask your questions in this mailing list.

3. Work on cleanup patches. Please avoid sending patches for the
drivers/staging/media directory as Greg can't pick them in his tree
during the contribution period.

As specified in our tutorial, we require Outreachy applicants to first
get accepted at least 10 Staging driver cleanup patches.

4. Once your first patch is accepted, add that as a contribution for
the project(s)you're interested in applying for. This will then allow
you to submit an application. Note that you'll need to apply for each
project separately.

5. Once applicants have completed working on 10 cleanup patches, we
encourage applicants to move on to complete some small tasks outlined
by the mentors. It=E2=80=99s preferable to CC the mentor when you are  work=
ing
on the task so that they don=E2=80=99t miss it. Small tasks for the project=
s
can be found in the project detail here:

   https://www.outreachy.org/apply/project-selection/#linux-kernel

Note that you'll be able to see the detailed information about
projects on Outreachy's website only if you have been informed by
Outreachy organizers that you=E2=80=99re eligible to take part in the progr=
am.
Outreachy coordinators and mentors do not have any role to play in the
initial application process. So, please email Outreachy organizers if
you have any doubt related to eligibility or the initial application
process.

6. Keep editing your 'project contribution' on Outreachy's website
based on your accepted patches links and project-specific completion
of tasks

7. Make sure to add your project preferences under the question
'Community-specific Questions' in the application.

Applicants should also join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
you're having trouble with IRC, please ask for help on this mailing
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
Helen Koike and Vaishali Thakkar
Outreachy Linux Kernel Co-coordinator

