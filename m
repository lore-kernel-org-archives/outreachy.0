X-GM-THRID: 6800460618478387200
X-Received: by 2002:a92:5f05:: with SMTP id t5mr4535965ilb.88.1583355622570;
        Wed, 04 Mar 2020 13:00:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:1483:: with SMTP id 125ls716196iou.2.gmail; Wed, 04 Mar
 2020 13:00:20 -0800 (PST)
X-Google-Smtp-Source: ADFU+vsbfX4kT8owOz4fwwAtg9Iiddr4WYOKJ/vwI+MSSF2ASEuO89SRRjO901fBJLHaCphIhz9P
X-Received: by 2002:a5e:8415:: with SMTP id h21mr3734968ioj.229.1583355620722;
        Wed, 04 Mar 2020 13:00:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583355620; cv=none;
        d=google.com; s=arc-20160816;
        b=z2+n6x4JKddLEa4yfY+4kwNYDuYmpXKrxEGzM6JHMeCd96kKKkW7r/oj2z1aGbZ687
         z+LI8K5BRVLiZdneUDDL/NMK5mGB6wsGzBVp5uuJyoU7by3xumjP1mgsV53AQB88YsN0
         HBuTQpe5TsYjg6XVKhbi1ZyIdTjklYu99cHbmXuHjU5O2W2aPMDaS4ctJcbGY1UGl+8v
         v+pOO1VlV47jK43qS0XWpORKZ9dXYnUwYzMS7aasA49g4NnxtUao5qeXEbKI2+sg54pJ
         tu9wkBpwO6NiBpm5/LqGG2orvla7mnmTg69x4ca2sZpiEk9FQcbHXvteFkrmDjo/3Bm7
         VHGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version;
        bh=edgXVcEXyWfKymgcIqgFaTV7G3WHQVPsXIF5h8luAW4=;
        b=MmUxeuvkVks6scOVeDbNBhv/l9HS7UIOdARxzVB0+0eVsHXgxGUtAbItx6w1yxkaJb
         BheHmDFvqwLeefOTLutO7tu2vEZDRg2B17/OF+NDyVhZyY3vr1UNNKrpc0nHed9Jtejk
         /PDS/O/n3eaxYKm3xis/VwGQV/+lPKA98pWt3OsEkm6x4/4XVlN9gTPujfboXByx7TFT
         mombtnjnFYHMBtFYMldUThsXY5nEx86Rhpm97HLttUICJlB5HyuQVPUJcnQnjjajklhA
         dlnU2RRT3jtxyBpn7jZImZHlVfGYTmhEyUPfQDHrLiCudfvyp5I1uVxEELk6wobJ3u8p
         gpFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.53 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com. [209.85.166.53])
        by gmr-mx.google.com with ESMTPS id b16si140751ion.0.2020.03.04.13.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 13:00:20 -0800 (PST)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.53 as permitted sender) client-ip=209.85.166.53;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.53 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-io1-f53.google.com with SMTP id s24so3996116iog.5
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2020 13:00:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=edgXVcEXyWfKymgcIqgFaTV7G3WHQVPsXIF5h8luAW4=;
        b=m3QpNwbYEffZaWBSaxtPKowxJcVXckBoFdWmgHrz9ZFI/i7mEuSv1JxLv5c9gNZb+w
         +x0mUkTU7dQSDJ+yEy0lSViq8g/WLmB+2B/XF0BWocAKF8YcpjHRPnctV0jbYNcz6RJp
         mUK59cF5hvwEarURoZzklQ2UFW1yiW+yF0mBUQ25T+ThaHs5gqMjkShJCH4qT5fxDZm3
         cCZj/hYSgbCQN45DZU9CNGr98fkMTlH5Y7ul4LWlHNBrvgWfRi5L/I6WAnQXPkhx/YLG
         VpCNURf34meOonYl5BQ6QO8BuSZSRx+VkF3mwLuphhj5sUPUZ9hpFBF1iEDkhGdH8Ng6
         lW4w==
X-Gm-Message-State: ANhLgQ2Wpp/1affnEqzGnKcQO3bbdAToiB2LjCedGKnYNHujP3HQ2a7Z
	4itG8YHs6t2bXWzTDl6oHN13xJ/XSh4=
X-Received: by 2002:a02:a492:: with SMTP id d18mr4422111jam.40.1583355619988;
        Wed, 04 Mar 2020 13:00:19 -0800 (PST)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id v64sm9525658ila.36.2020.03.04.13.00.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 13:00:19 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id h8so4024849iob.2
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2020 13:00:19 -0800 (PST)
X-Received: by 2002:a05:6602:2097:: with SMTP id a23mr3539213ioa.185.1583355619295;
 Wed, 04 Mar 2020 13:00:19 -0800 (PST)
MIME-Version: 1.0
From: Helen Koike <helen@koikeco.de>
Date: Wed, 4 Mar 2020 18:00:07 -0300
X-Gmail-Original-Message-ID: <CAPW4XYZ43RN5nSpi8StEGy0ceR53GXfse37n1rto_BevX5mxJQ@mail.gmail.com>
Message-ID: <CAPW4XYZ43RN5nSpi8StEGy0ceR53GXfse37n1rto_BevX5mxJQ@mail.gmail.com>
Subject: Outreachy contribution period - Welcome!
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Helen Koike <helen.koike@collabora.com>
Content-Type: multipart/alternative; boundary="0000000000003dc8e505a00db5fc"

--0000000000003dc8e505a00db5fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings potential Linux kernel Outreachy interns!

Please read this *entire* email, even if you have applied in the past.

What is Outreachy?

-------------------------

The next application round for Outreachy internships starts today, March 5
and ends April 7, 2020.  Outreachy interns are paid $5,500 to work on a
full-time internship with an open-source mentor from May 2020 to August
2020. Interns are also granted a $500 travel stipend to go to any
conference approved by their mentor that relates to their project.

Who can apply?

---------------------

You should have successfully completed the initial application process to
determine whether you meet the eligibility criteria given below and be able
to participate in the application period:

https://www.outreachy.org/docs/applicant/#initial-application.

The initial application period for the May 2020 to August 2020 round is
closed. If your initial application is not approved, you are not eligible
to apply for Outreachy.

What Outreachy projects can you apply to?

---------------------------------------------------------

There will be several different open source projects participating in this
round of Outreachy. The full list can be found here:

https://www.outreachy.org/communities/cfp/

The Linux kernel expects to offer five projects, which are already listed
on the Linux kernel community page on Outreachy website:

https://www.outreachy.org/apply/project-selection/#linux-kernel


How do I apply to the Linux kernel project via Outreachy's website?

---------------------------------------------------------------------------=
---------------------

1. Successfully complete the initial application [Deadline passed]



2. Work on Linux kernel tutorial



Basically, applicants will need to walk through our tutorial for creating
their first Linux kernel patch:

http://kernelnewbies.org/Outreachyfirstpatch



It is not necessary to contact a mentor before starting the tutorial. Feel
free to ask your questions in this mailing lists.



3. Work on cleanup patches



As specified in our tutorial we require Outreachy applicants to first get
accepted at least 10 Staging driver cleanup patches.



4. Once your first patch is accepted, add that as a contribution for the
project(s)you're interested in applying for. This will then allow you to
submit an application. Note that you'll need to apply for each project
separately.



5. Once applicants have completed working on 10 cleanup patches, we
encourage applicants to move on to complete some small tasks outlined by
the mentors. It=E2=80=99s preferable to CC the mentor when you are  working=
 on the
task so that they don=E2=80=99t miss it. Small tasks for the projects can b=
e found
in the project detail here:



   https://www.outreachy.org/apply/project-selection/#linux-kernel



Note that you'll be able to see the detailed information about projects on
Outreachy's website only if you have been informed by Outreachy organizers
that you=E2=80=99re eligible to take part in the program. Outreachy coordin=
ators
and mentors do not have any role to play in the initial application
process. So, please email Outreachy organizers if you have any doubt
related to eligibility or the initial application process.



6. Keep editing your 'project contribution' on Outreachy's website based on
your accepted patches links and project-specific completion of tasks



7. Make sure to add your project preferences under the question
'Community-specific
Questions' in the application.

Applicants should also join the #outreachy IRC channel on irc.gnome.org,
and the #kernel-outreachy channel on irc.oftc.net.  If you're having
trouble with IRC, please ask for help on this mailing list.

If you=E2=80=99ve applied in the Outreachy before, you=E2=80=99re still req=
uired to send
few staging driver cleanup patches to re-familiarize yourself with the
process before you start to work on tasks.

There is a tips section at the end of the tutorial to outline what
behaviors we look for in potential Outreachy interns. I hope this will give
more insight into our selection process.

All the best!

 ---

Helen Koike and Vaishali Thakkar

Outreachy Linux Kernel Co-coordinator

--0000000000003dc8e505a00db5fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justi=
fy;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt" id=
=3D"gmail-docs-internal-guid-1c40ce5e-7fff-526a-aea2-023e1afebd96"><span st=
yle=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-colo=
r:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap">Greetings =
potential Linux kernel <span class=3D"" style=3D"" id=3D":13x.1" tabindex=
=3D"-1">Outreachy</span> interns!</span></p><br><p dir=3D"ltr" style=3D"lin=
e-height:1.656;text-align:justify;background-color:rgb(255,255,255);margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;=
color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap">Please read this *entire* email, even if you have =
applied in the past.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.65=
6;text-align:justify;background-color:rgb(255,255,255);margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,=
34,34);background-color:rgb(255,255,255);font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">What is <span class=3D"" style=3D"" id=3D":13x.2" tabindex=3D"-=
1">Outreachy</span>?</span></p><p dir=3D"ltr" style=3D"line-height:1.656;te=
xt-align:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,3=
4);background-color:rgb(255,255,255);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">-------------------------</span></p><br><p dir=3D"ltr" style=3D"lin=
e-height:1.656;text-align:justify;background-color:rgb(255,255,255);margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;=
color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap">The next application round for <span class=3D"" st=
yle=3D"" id=3D":13x.3" tabindex=3D"-1">Outreachy</span> internships starts =
today, March 5 and ends April 7, 2020.=C2=A0 <span class=3D"" style=3D"" id=
=3D":13x.4" tabindex=3D"-1">Outreachy</span> interns are paid $5,500 to wor=
k on a full-time internship with an open-source mentor from May 2020 to Aug=
ust 2020. Interns are also granted a $500 travel stipend to go to any confe=
rence approved by their mentor that relates to their project.</span></p><br=
><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-co=
lor:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,25=
5,255);font-weight:700;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap">Who can apply?</span><=
/p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-=
color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,=
255,255);font-weight:400;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap">--------------------=
-</span></p><br><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justif=
y;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span=
 style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-c=
olor:rgb(255,255,255);font-weight:700;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">You sho=
uld have successfully completed the initial application process</span><span=
 style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-c=
olor:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"> to det=
ermine whether you meet the eligibility criteria given below and be able to=
 participate in the application period:=C2=A0</span></p><p dir=3D"ltr" styl=
e=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,255)=
;margin-top:0pt;margin-bottom:0pt"><a href=3D"https://www.outreachy.org/doc=
s/applicant/#initial-application" style=3D"text-decoration:none"><span styl=
e=3D"font-size:12pt;font-family:Arial;color:rgb(102,17,204);background-colo=
r:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap">https://ww=
w.<span class=3D"" style=3D"" id=3D":13x.5" tabindex=3D"-1">outreachy</span=
>.org/docs/applicant/#initial-application</span></a><span style=3D"font-siz=
e:12pt;font-family:Arial;color:rgb(0,0,0);background-color:rgb(255,255,255)=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap">.=C2=A0</span></p><p dir=3D"=
ltr" style=3D"line-height:1.656;text-align:justify;background-color:rgb(255=
,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;f=
ont-family:Roboto,sans-serif;color:rgb(51,51,51);background-color:rgb(255,2=
55,255);font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap">The initial applicati=
on period for the May 2020 to August 2020 round is closed. If your initial =
application is not approved, you are not eligible to apply for <span class=
=3D"" style=3D"" id=3D":13x.6" tabindex=3D"-1">Outreachy</span>.=C2=A0</spa=
n></p><br><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;back=
ground-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:r=
gb(255,255,255);font-weight:700;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap">What <span cl=
ass=3D"" style=3D"" id=3D":13x.7" tabindex=3D"-1">Outreachy</span> projects=
 can you apply to?</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text=
-align:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34)=
;background-color:rgb(255,255,255);font-weight:400;font-style:normal;font-v=
ariant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-=
wrap">---------------------------------------------------------</span></p><=
br><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-=
color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,=
255,255);font-weight:400;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap">There will be severa=
l different open source projects participating in this round of <span class=
=3D"" style=3D"" id=3D":13x.8" tabindex=3D"-1">Outreachy</span>. The full l=
ist can be found here:</span></p><br><p dir=3D"ltr" style=3D"line-height:1.=
656;text-align:justify;background-color:rgb(255,255,255);margin-top:0pt;mar=
gin-bottom:0pt"><a href=3D"https://www.outreachy.org/communities/cfp/" styl=
e=3D"text-decoration:none"><span style=3D"font-size:12pt;font-family:Arial;=
color:rgb(102,17,204);background-color:rgb(255,255,255);font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap">https://www.<span class=3D"" style=3D"" id=3D":1=
3x.9" tabindex=3D"-1">outreachy</span>.org/communities/<span class=3D"" sty=
le=3D"" id=3D":13x.10" tabindex=3D"-1">cfp</span>/</span></a></p><br><p dir=
=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-color:rgb=
(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12=
pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);=
font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline;white-space:pre-wrap">The Linux kernel expects to o=
ffer five projects, which are already listed on the Linux kernel community =
page on <span class=3D"" style=3D"" id=3D":13x.11" tabindex=3D"-1">Outreach=
y</span> website:</span></p><br><p dir=3D"ltr" style=3D"line-height:1.656;t=
ext-align:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-b=
ottom:0pt"><a href=3D"https://www.outreachy.org/apply/project-selection/#li=
nux-kernel" style=3D"text-decoration:none"><span style=3D"font-size:12pt;fo=
nt-family:Arial;color:rgb(102,17,204);background-color:rgb(255,255,255);fon=
t-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline;white-space:pre-wrap">https://www.<span class=3D"" sty=
le=3D"" id=3D":13x.12" tabindex=3D"-1">outreachy</span>.org/apply/project-s=
election/#<span class=3D"" style=3D"" id=3D":13x.13" tabindex=3D"-1">linux<=
/span>-kernel</span></a></p><br><br><p dir=3D"ltr" style=3D"line-height:1.6=
56;text-align:justify;background-color:rgb(255,255,255);margin-top:0pt;marg=
in-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34=
,34,34);background-color:rgb(255,255,255);font-weight:700;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap">How do I apply to the Linux kernel project via <span class=3D"=
" style=3D"" id=3D":13x.14" tabindex=3D"-1">Outreachy&#39;s</span> website?=
</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;bac=
kground-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:=
rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;text=
-decoration:none;vertical-align:baseline;white-space:pre-wrap">------------=
---------------------------------------------------------------------------=
---------</span></p><br><p dir=3D"ltr" style=3D"line-height:1.656;text-alig=
n:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0p=
t"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);back=
ground-color:rgb(255,255,255);font-weight:400;font-style:normal;font-varian=
t:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"=
>1. Successfully complete the initial application [Deadline passed]</span><=
/p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-=
color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:10pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,=
255,255);font-weight:400;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0</span></p><p =
dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-color:=
rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,25=
5);font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap">2. Work on Linux kernel tu=
torial</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justi=
fy;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:10pt;font-family:Arial;color:rgb(34,34,34);background-=
color:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0=
</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;bac=
kground-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:=
rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;text=
-decoration:none;vertical-align:baseline;white-space:pre-wrap">Basically, a=
pplicants will need to walk through our tutorial for creating their first L=
inux kernel patch:</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text=
-align:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bott=
om:0pt"><a href=3D"http://kernelnewbies.org/Outreachyfirstpatch" style=3D"t=
ext-decoration:none"><span style=3D"font-size:12pt;font-family:Arial;color:=
rgb(102,17,204);background-color:rgb(255,255,255);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">http://<span class=3D"" style=3D"" id=3D":13x.15" tabi=
ndex=3D"-1">kernelnewbies</span>.org/<span class=3D"" style=3D"" id=3D":13x=
.16" tabindex=3D"-1">Outreachyfirstpatch</span></span></a></p><p dir=3D"ltr=
" style=3D"line-height:1.656;text-align:justify;background-color:rgb(255,25=
5,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font=
-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-we=
ight:400;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">=C2=A0</span></p><p dir=3D"ltr" styl=
e=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,255)=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-famil=
y:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">It is not necessary to contact a mentor be=
fore starting the tutorial. Feel free to ask your questions in this mailing=
 lists.</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:just=
ify;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><sp=
an style=3D"font-size:10pt;font-family:Arial;color:rgb(34,34,34);background=
-color:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=C2=
=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;=
background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span s=
tyle=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-col=
or:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap">3. Work o=
n cleanup patches</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-=
align:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-botto=
m:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(34,34,34);=
background-color:rgb(255,255,255);font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap">=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:=
justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"=
><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);backgr=
ound-color:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:=
normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">A=
s specified in our tutorial we require <span class=3D"" style=3D"" id=3D":1=
3x.17" tabindex=3D"-1">Outreachy</span> applicants to first get accepted at=
 least 10 Staging driver cleanup patches.=C2=A0</span></p><p dir=3D"ltr" st=
yle=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,25=
5);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">=C2=A0</span></p><p dir=3D"ltr" style=3D=
"line-height:1.656;text-align:justify;background-color:rgb(255,255,255);mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Ar=
ial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:400;f=
ont-style:normal;font-variant:normal;text-decoration:none;vertical-align:ba=
seline;white-space:pre-wrap">4. Once your first patch is accepted, add that=
 as a contribution for the project(s)you&#39;re interested in applying for.=
 This will then allow you to submit an application. </span><span style=3D"f=
ont-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(25=
5,255,255);font-weight:700;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap">Note that you&#39;=
ll need to apply for each project separately.</span></p><p dir=3D"ltr" styl=
e=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,255)=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-famil=
y:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">=C2=A0</span></p><p dir=3D"ltr" style=3D"l=
ine-height:1.656;text-align:justify;background-color:rgb(255,255,255);margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Aria=
l;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap">5. Once applicants have completed working on 10 =
cleanup patches, we encourage applicants to move on to complete some small =
tasks outlined by the mentors. It=E2=80=99s preferable to CC the mentor whe=
n you are=C2=A0 working on the task so that they don=E2=80=99t miss it. Sma=
ll tasks for the projects can be found in the project detail here:</span></=
p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-c=
olor:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font=
-size:10pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,2=
55,255);font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0</span></p><p d=
ir=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-color:r=
gb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:=
12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255=
);font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0</span><a=
 href=3D"https://www.outreachy.org/apply/project-selection/#linux-kernel" s=
tyle=3D"text-decoration:none"><span style=3D"font-size:12pt;font-family:Ari=
al;color:rgb(102,17,204);background-color:rgb(255,255,255);font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap">https://www.<span class=3D"" style=3D"" id=3D=
":13x.18" tabindex=3D"-1">outreachy</span>.org/apply/project-selection/#<sp=
an class=3D"" style=3D"" id=3D":13x.19" tabindex=3D"-1">linux</span>-kernel=
</span></a></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify=
;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-co=
lor:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;=
text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0=
=C2=A0=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align=
:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt=
"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);backg=
round-color:rgb(255,255,255);font-weight:700;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=
Note that you&#39;ll be able to see the detailed information about projects=
 on <span class=3D"" style=3D"" id=3D":13x.20" tabindex=3D"-1">Outreachy&#3=
9;s</span> website only if you have been informed by <span class=3D"" style=
=3D"" id=3D":13x.21" tabindex=3D"-1">Outreachy</span> organizers that you=
=E2=80=99re eligible to take part in the program. <span class=3D"" style=3D=
"" id=3D":13x.22" tabindex=3D"-1">Outreachy</span> coordinators and mentors=
 do not have any role to play in the initial application process. So, pleas=
e email <span class=3D"" style=3D"" id=3D":13x.23" tabindex=3D"-1">Outreach=
y</span> organizers if you have any doubt related to eligibility or the ini=
tial application process.</span></p><p dir=3D"ltr" style=3D"line-height:1.6=
56;text-align:justify;background-color:rgb(255,255,255);margin-top:0pt;marg=
in-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(34=
,34,34);background-color:rgb(255,255,255);font-weight:400;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap">=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.656;tex=
t-align:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34=
);background-color:rgb(255,255,255);font-weight:400;font-style:normal;font-=
variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre=
-wrap">6. Keep editing your </span><span style=3D"font-size:12pt;font-famil=
y:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:7=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">&#39;project contribution&#39;</span><span=
 style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-c=
olor:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"> on <sp=
an class=3D"" style=3D"" id=3D":13x.24" tabindex=3D"-1">Outreachy&#39;s</sp=
an> website based on your accepted patches links and project-specific compl=
etion of tasks</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-ali=
gn:justify;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0=
pt"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(34,34,34);bac=
kground-color:rgb(255,255,255);font-weight:400;font-style:normal;font-varia=
nt:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap=
">=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.656;text-align:jus=
tify;background-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><s=
pan style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);backgroun=
d-color:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:nor=
mal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">7. M=
ake sure to add your project preferences under the question </span><span st=
yle=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-colo=
r:rgb(255,255,255);font-weight:700;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap">&#39;Commu=
nity-specific Questions&#39;</span><span style=3D"font-size:12pt;font-famil=
y:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap"> in the application.</span></p><br><p dir=
=3D"ltr" style=3D"line-height:1.656;text-align:justify;background-color:rgb=
(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12=
pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);=
font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline;white-space:pre-wrap">Applicants should also join t=
he #<span class=3D"" style=3D"" id=3D":13x.25" tabindex=3D"-1">outreachy</s=
pan> <span class=3D"" style=3D"" id=3D":13x.26" tabindex=3D"-1">IRC</span> =
channel on</span><a href=3D"http://irc.gnome.org/" style=3D"text-decoration=
:none"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);=
background-color:rgb(255,255,255);font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap"> </span><span style=3D"font-size:12pt;font-family:Arial;color:rgb(102,=
17,204);background-color:rgb(255,255,255);font-weight:400;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap"><span class=3D"" style=3D"" id=3D":13x.27" tabindex=3D"-1">irc=
</span>.gnome.org</span></a><span style=3D"font-size:12pt;font-family:Arial=
;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:400;font=
-style:normal;font-variant:normal;text-decoration:none;vertical-align:basel=
ine;white-space:pre-wrap">, and the #kernel-<span class=3D"" style=3D"" id=
=3D":13x.28" tabindex=3D"-1">outreachy</span> channel on</span><a href=3D"h=
ttp://irc.oftc.net/" style=3D"text-decoration:none"><span style=3D"font-siz=
e:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,2=
55);font-weight:400;font-style:normal;font-variant:normal;text-decoration:n=
one;vertical-align:baseline;white-space:pre-wrap"> </span><span style=3D"fo=
nt-size:12pt;font-family:Arial;color:rgb(102,17,204);background-color:rgb(2=
55,255,255);font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap"><span class=3D"" =
style=3D"" id=3D":13x.29" tabindex=3D"-1">irc</span>.<span class=3D"" style=
=3D"" id=3D":13x.30" tabindex=3D"-1">oftc</span>.net</span></a><span style=
=3D"font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:r=
gb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap">.=C2=A0 If yo=
u&#39;re having trouble with <span class=3D"" style=3D"" id=3D":13x.31" tab=
index=3D"-1">IRC</span>, please ask for help on this mailing list.</span></=
p><br><p dir=3D"ltr" style=3D"line-height:1.656;text-align:justify;backgrou=
nd-color:rgb(255,255,255);margin-top:0pt;margin-bottom:0pt"><span style=3D"=
font-size:12pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(2=
55,255,255);font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">If you=E2=80=99ve=
 applied in the <span class=3D"" style=3D"" id=3D":13x.32" tabindex=3D"-1">=
Outreachy</span> before, you=E2=80=99re still required to send few staging =
driver cleanup patches to re-familiarize yourself with the process before y=
ou start to work on tasks.</span></p><br><p dir=3D"ltr" style=3D"line-heigh=
t:1.656;text-align:justify;background-color:rgb(255,255,255);margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:r=
gb(34,34,34);background-color:rgb(255,255,255);font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap">There is a tips section at the end of the tutorial to out=
line what behaviors we look for in potential <span class=3D"" style=3D"" id=
=3D":13x.33" tabindex=3D"-1">Outreachy</span> interns. I hope this will giv=
e more insight into our selection process.</span></p><br><p dir=3D"ltr" sty=
le=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,255=
);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-fami=
ly:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:=
400;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap">All the best!</span></p><p dir=3D"ltr" st=
yle=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,25=
5);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">=C2=A0</span><span style=3D"font-size:12=
pt;font-family:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);=
font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline;white-space:pre-wrap">---</span></p><p dir=3D"ltr" =
style=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,=
255);margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-f=
amily:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weig=
ht:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-=
align:baseline;white-space:pre-wrap">Helen <span class=3D"" style=3D"" id=
=3D":13x.34" tabindex=3D"-1">Koike</span> and <span class=3D"" style=3D"" i=
d=3D":13x.35" tabindex=3D"-1">Vaishali</span> <span class=3D"" style=3D"" i=
d=3D":13x.36" tabindex=3D"-1">Thakkar</span></span></p><p dir=3D"ltr" style=
=3D"line-height:1.656;text-align:justify;background-color:rgb(255,255,255);=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family=
:Arial;color:rgb(34,34,34);background-color:rgb(255,255,255);font-weight:40=
0;font-style:normal;font-variant:normal;text-decoration:none;vertical-align=
:baseline;white-space:pre-wrap"><span class=3D"" style=3D"" id=3D":13x.37" =
tabindex=3D"-1">Outreachy</span> Linux Kernel Co-coordinator</span></p></di=
v>

--0000000000003dc8e505a00db5fc--

