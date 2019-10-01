X-GM-THRID: 6742693082878181376
X-Received: by 2002:a92:3854:: with SMTP id f81mr24327872ila.31.1569905570086;
        Mon, 30 Sep 2019 21:52:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:385a:: with SMTP id f87ls2730601ila.14.gmail; Mon, 30
 Sep 2019 21:52:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZjmyUQ+G6I49OqHl9u4CY0pd9tqSZQZbh6BB2/+AiQ4Vyyv3Lu22s7Pr2oMfabuw7zsFk
X-Received: by 2002:a05:6e02:550:: with SMTP id i16mr23248174ils.214.1569905568943;
        Mon, 30 Sep 2019 21:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569905568; cv=none;
        d=google.com; s=arc-20160816;
        b=hIaRIuxOWJonxj0w+nVtIKQBa3LQQswd3cRyPVhG1LltSN1vyDV5TJf/ws9jIzhAKH
         WK00Pp9XXyj2WHL9RQCDmWawTjYJRaHr9h13QUP5h1NuRHkMZoZkwly0ct53Z85NltBA
         LmzMp+a46/j6u6wBeWFIXU98psvgQ0l9saA21C5IaLuyHoj2M5DcVdcFEjwlVpmXCENN
         pLySf+RPZQEm+Zqll2gWgHoNWY0AkCw0Y+gtgeLhaNN+VukLlYEW+/LgDIsI7STYUSoP
         38MfJUgH0PuKHYHAMq0aaf3tW0MmQJrCG9iQQ/U9C2IlkzAs09FOKFxy142yQOS+trvS
         ZPBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3jXjhlwqHWdx7w0gdBWsu5A6RANNPBbjXS8n5XWS51Q=;
        b=gVkOJW8gP6m94aamDTGf76/z7Gn3WeCONmmtJGbuplGsfkcD/A8364Jvgd965vScFL
         NkABiDtjVAxtPL2YHh8gdvC+hwIWayRz1mQyJQXxh8IMKF7LtEwh1HqgnRzJKE1nUxsj
         w9Q6IPKVKjFA4wbEq8Dqy2RkKLf6YGLvjy1eG7rFrfAz0eaA0QmCLCMtRj+ygJM6s4kh
         st181DbBXJ9ZD9PF4/jOvjV0uymb153FFMj+Rf0oGlUCcJvLhsmXOWADF5uq3hTcv2fd
         /FB8PfHzsHeuJWoWCJHhWODyrrUQ/KSoLR9mp3sndRLLjBOzFqoPY+AfNFgQWtlX2+i9
         oeVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p7zsYHl0;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com. [2607:f8b0:4864:20::834])
        by gmr-mx.google.com with ESMTPS id x3si769072iom.2.2019.09.30.21.52.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2019 21:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) client-ip=2607:f8b0:4864:20::834;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p7zsYHl0;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x834.google.com with SMTP id c21so19948261qtj.12
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Sep 2019 21:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3jXjhlwqHWdx7w0gdBWsu5A6RANNPBbjXS8n5XWS51Q=;
        b=p7zsYHl0vfv/ik3LMsbYv/gWZaoMaiHCzIDd+Bax8N+XZ+iqDZ6hQwNUFwAMnJykAz
         Ed+nBSO+ojUfaV6uofZGguQCYwC5nPHN7sztbPShHadbvcbEqIK2hPLtbGYRW2rlfS2s
         IzOatnO15pTvcQk1pWLsJRNGBjfx9jMQEhByDkMk21sWHTMDJn7q6yOS0UTrSO6XbSik
         RDlCm2gnlR4U36lDqiuAOmNFhcHLoNMBrkfHJi5PdBHvhTC78o+FmbLg21x/f/LMiVmz
         MBjlH8Jr3Db3MLoEltk4+70xasXA0OcB0yyZBwewvcxLRiB7EtfFUERpBVHiEKu917TM
         ax9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3jXjhlwqHWdx7w0gdBWsu5A6RANNPBbjXS8n5XWS51Q=;
        b=UkPRQ1gub7is4jOPAlq6T2VZr2u2CH1E0JGEa4eMBU8pr4Y6uO0h5HYozbh/2up1cr
         +xK/oTPrnCj3AvoZlN+7aVhfXCm2bMAgRS8s+mrC5SAjyhsHivI01RhlHqohW0xxTheq
         xwiE+4nZo10oa7dOXsIV+SKZvm9GxlyTbwbuqmD0BcxMqpsoRB1kCeCv1pJWJA/dxSZL
         zdKldxsc3mXM/tF+rvocOeBaeczzj9ErsPKvha3vMuoZbddjXtyfdVCf2THtlGPFCdur
         uHJK/ePAYR7bvHP8YiGCCugYDlYDkvQ4MJqRfqatRMGe1vQfwrYkAmeCZTlVaK3WHZNL
         HTKQ==
X-Gm-Message-State: APjAAAVlbANAc82TZjHFqeaxpWgE4OLeSCoNy2iR0KhZTQSwnFRMubFs
	lJnpaTR9CJ/4CrQHvsq21RmCw0qwPPiezQnCe7PYuNP9/BM=
X-Received: by 2002:a0c:91eb:: with SMTP id r40mr23781503qvr.153.1569905567524;
 Mon, 30 Sep 2019 21:52:47 -0700 (PDT)
MIME-Version: 1.0
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Mon, 30 Sep 2019 21:52:36 -0700
Message-ID: <CAO393ABbr3EU0uJLoWZPUBGU+18TOE87CR01uaxZsAK3h=49_Q@mail.gmail.com>
Subject: Outreachy application period opens!
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000aeef040593d21f7d"

--000000000000aeef040593d21f7d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings potential Linux kernel Outreachy interns!

Please read this *entire* email, even if you have applied in the past.

What is Outreachy?

-------------------------

The next application round for Outreachy internships starts today,

October 1 and ends November 5.  Outreachy interns are paid $5,500

to work on a full-time internship with an open source mentor from

December, 2019 to March, 2020. Interns are also granted a $500 travel

stipend to go to any conference approved by their mentor that relates

to their project.

Who can apply?

---------------------

You should have successfully completed the initial application process to
determine whether you meet the eligibility criteria given below and be able
to participate in the application period:

https://www.outreachy.org/docs/applicant/#initial-application.

The initial application period for the December 2019 to March 2020 round is
closed. If your initial application is not approved, you are not eligible
to apply for Outreachy.

*What Outreachy projects can you apply to?*

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



    Basically, applicants will need to walk through our tutorial for
creating their first Linux kernel patch:
http://kernelnewbies.org/Outreachyfirstpatch



    It is not necessary to contact a mentor before starting the tutorial.



3. Work on cleanup patches



     As specified in our tutorial we require Outreachy applicants to first
get accepted at least 10 Staging driver cleanup patches.



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



    Note that you'll be able to see the detailed information about projects
on Outreachy's website only after completing initial application check.



6. Keep editing your 'project contribution' on Outreachy's website based on
your accepted patches links and project specific completion of tasks



7. Make sure to add your project preferences under the question
'Community-specific
Questions' in the application

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

Shraddha Barke

Outreachy Linux Kernel Co-coordinator


--=20
Shraddha

--000000000000aeef040593d21f7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span id=3D"gmail-docs-internal-guid-0e19ffbe-7fff-0459-ed=
53-aa6149851ab2"><br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:ju=
stify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-=
family:Arial;font-variant-numeric:normal;font-variant-east-asian:normal;ver=
tical-align:baseline;white-space:pre-wrap">Greetings potential Linux kernel=
 Outreachy interns!</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;=
text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-si=
ze:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asi=
an:normal;vertical-align:baseline;white-space:pre-wrap">Please read this *e=
ntire* email, even if you have applied in the past.</span></p><br><p dir=3D=
"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-variant-nume=
ric:normal;font-variant-east-asian:normal;vertical-align:baseline;white-spa=
ce:pre-wrap">What is Outreachy?</span></p><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D=
"font-size:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-=
east-asian:normal;vertical-align:baseline;white-space:pre-wrap">-----------=
--------------</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;text-=
align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12=
pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;vertical-align:baseline;white-space:pre-wrap">The next application rou=
nd for Outreachy internships starts today,</span></p><p dir=3D"ltr" style=
=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><=
span style=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;=
font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap=
">October 1 and ends November 5.=C2=A0 Outreachy interns are paid $5,500</s=
pan></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;=
font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:b=
aseline;white-space:pre-wrap">to work on a full-time internship with an ope=
n source mentor from</span></p><p dir=3D"ltr" style=3D"line-height:1.38;tex=
t-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:=
12pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asian:=
normal;vertical-align:baseline;white-space:pre-wrap">December, 2019 to Marc=
h, 2020. Interns are also granted a $500 travel</span></p><p dir=3D"ltr" st=
yle=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt=
"><span style=3D"font-size:12pt;font-family:Arial;font-variant-numeric:norm=
al;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-w=
rap">stipend to go to any conference approved by their mentor that relates<=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Aria=
l;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align=
:baseline;white-space:pre-wrap">to their project.</span></p><br><p dir=3D"l=
tr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-variant-numeri=
c:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space=
:pre-wrap">Who can apply?</span></p><p dir=3D"ltr" style=3D"line-height:1.3=
8;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-a=
sian:normal;vertical-align:baseline;white-space:pre-wrap">-----------------=
----</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:just=
ify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-fa=
mily:Arial;font-weight:700;font-variant-numeric:normal;font-variant-east-as=
ian:normal;vertical-align:baseline;white-space:pre-wrap">You should have su=
ccessfully completed the initial application process</span><span style=3D"f=
ont-size:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;vertical-align:baseline;white-space:pre-wrap"> to determine=
 whether you meet the eligibility criteria given below and be able to parti=
cipate in the application period:=C2=A0</span></p><p dir=3D"ltr" style=3D"l=
ine-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><a hre=
f=3D"https://www.outreachy.org/docs/applicant/#initial-application" style=
=3D"text-decoration-line:none"><span style=3D"font-size:12pt;font-family:Ar=
ial;font-variant-numeric:normal;font-variant-east-asian:normal;text-decorat=
ion-line:underline;vertical-align:baseline;white-space:pre-wrap">https://ww=
w.outreachy.org/docs/applicant/#initial-application</span></a><span style=
=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre-wrap">.=C2=A0</span></p><p dir=3D"ltr" styl=
e=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt">=
<span style=3D"font-size:12pt;font-family:Roboto,sans-serif;color:rgb(51,51=
,51);font-variant-numeric:normal;font-variant-east-asian:normal;vertical-al=
ign:baseline;white-space:pre-wrap">The initial application period for the D=
ecember 2019 to March 2020 round is closed. If your initial application is =
not approved, you are not eligible to apply for Outreachy.=C2=A0</span></p>=
<br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:=
0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font=
-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:basel=
ine;white-space:pre-wrap"><b>What Outreachy projects can you apply to?</b><=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Aria=
l;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align=
:baseline;white-space:pre-wrap">-------------------------------------------=
--------------</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;text-=
align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12=
pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;vertical-align:baseline;white-space:pre-wrap">There will be several di=
fferent open source projects participating in this round of Outreachy. The =
full list can be found here:</span></p><br><p dir=3D"ltr" style=3D"line-hei=
ght:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><a href=3D"ht=
tps://www.outreachy.org/communities/cfp/" style=3D"text-decoration-line:non=
e"><span style=3D"font-size:12pt;font-family:Arial;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-=
wrap">https://www.outreachy.org/communities/cfp/</span></a></p><br><p dir=
=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin=
-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-variant-n=
umeric:normal;font-variant-east-asian:normal;vertical-align:baseline;white-=
space:pre-wrap">The Linux kernel expects to offer five projects, which are =
already listed on the Linux kernel community page on Outreachy website:</sp=
an></p><br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;marg=
in-top:0pt;margin-bottom:0pt"><a href=3D"https://www.outreachy.org/apply/pr=
oject-selection/#linux-kernel" style=3D"text-decoration-line:none"><span st=
yle=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;font-va=
riant-east-asian:normal;text-decoration-line:underline;vertical-align:basel=
ine;white-space:pre-wrap">https://www.outreachy.org/apply/project-selection=
/#linux-kernel</span></a></p><br><br><p dir=3D"ltr" style=3D"line-height:1.=
38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font=
-size:12pt;font-family:Arial;font-weight:700;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">=
How do I apply to the Linux kernel project via Outreachy&#39;s website?</sp=
an></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-t=
op:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:ba=
seline;white-space:pre-wrap">----------------------------------------------=
--------------------------------------------------</span></p><br><p dir=3D"=
ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-variant-numer=
ic:normal;font-variant-east-asian:normal;vertical-align:baseline;white-spac=
e:pre-wrap">1. Successfully complete the initial application [Deadline pass=
ed]</span></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;m=
argin-top:0pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"line-hei=
ght:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">2. Work =
on Linux kernel tutorial</span></p><p dir=3D"ltr" style=3D"line-height:1.38=
;text-align:justify;margin-top:0pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"l=
tr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-variant-numeri=
c:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space=
:pre-wrap">=C2=A0=C2=A0=C2=A0=C2=A0Basically, applicants will need to walk =
through our tutorial for creating their first Linux kernel patch: </span><a=
 href=3D"http://kernelnewbies.org/Outreachyfirstpatch" style=3D"text-decora=
tion-line:none"><span style=3D"font-size:12pt;font-family:Arial;font-varian=
t-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;whi=
te-space:pre-wrap">http://kernelnewbies.org/Outreachyfirstpatch</span></a><=
/p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0=
pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"line-height:1.38;te=
xt-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asian=
:normal;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0=C2=
=A0It is not necessary to contact a mentor before starting the tutorial.</s=
pan></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-=
top:0pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"line-height:1.=
38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font=
-size:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-=
asian:normal;vertical-align:baseline;white-space:pre-wrap">3. Work on clean=
up patches</span></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:ju=
stify;margin-top:0pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"l=
ine-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;font-=
variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0As specified in our tutorial we require Outreach=
y applicants to first get accepted at least 10 Staging driver cleanup patch=
es.=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:jus=
tify;margin-top:0pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"li=
ne-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span s=
tyle=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">4. O=
nce your first patch is accepted, add that as a contribution for the projec=
t(s)you&#39;re interested in applying for. This will then allow you to subm=
it an application. </span><span style=3D"font-size:12pt;font-family:Arial;f=
ont-weight:700;font-variant-numeric:normal;font-variant-east-asian:normal;v=
ertical-align:baseline;white-space:pre-wrap">Note that you&#39;ll need to a=
pply for each project separately.</span></p><p dir=3D"ltr" style=3D"line-he=
ight:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt">=C2=A0</p><p=
 dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;wh=
ite-space:pre-wrap">5. Once applicants have completed working on 10 cleanup=
 patches, we encourage applicants to move on to complete some small tasks o=
utlined by the mentors. It=E2=80=99s preferable to CC the mentor when you a=
re=C2=A0 working on the task so that they don=E2=80=99t miss it. Small task=
s for the projects can be found in the project detail here:</span></p><p di=
r=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margi=
n-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"line-height:1.38;text-align=
:justify;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;fo=
nt-family:Arial;font-variant-numeric:normal;font-variant-east-asian:normal;=
vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0</span><a h=
ref=3D"https://www.outreachy.org/apply/project-selection/#linux-kernel" sty=
le=3D"text-decoration-line:none"><span style=3D"font-size:12pt;font-family:=
Arial;font-variant-numeric:normal;font-variant-east-asian:normal;text-decor=
ation-line:underline;vertical-align:baseline;white-space:pre-wrap">https://=
www.outreachy.org/apply/project-selection/#linux-kernel</span></a></p><p di=
r=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-variant-=
numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;white=
-space:pre-wrap">=C2=A0=C2=A0=C2=A0=C2=A0</span></p><p dir=3D"ltr" style=3D=
"line-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">=
=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-size:12pt;font-family:Ar=
ial;font-weight:700;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;vertical-align:baseline;white-space:pre-wrap">Note that you&#39;ll be a=
ble to see the detailed information about projects on Outreachy&#39;s websi=
te only after completing initial application check.</span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bottom=
:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-famil=
y:Arial;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre-wrap">6. Keep editing your </span><span sty=
le=3D"font-size:12pt;font-family:Arial;font-weight:700;font-variant-numeric=
:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:=
pre-wrap">&#39;project contribution&#39;</span><span style=3D"font-size:12p=
t;font-family:Arial;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;vertical-align:baseline;white-space:pre-wrap"> on Outreachy&#39;s websi=
te based on your accepted patches links and project specific completion of =
tasks</span></p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify=
;margin-top:0pt;margin-bottom:0pt">=C2=A0</p><p dir=3D"ltr" style=3D"line-h=
eight:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:12pt;font-family:Arial;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">7. Make =
sure to add your project preferences under the question </span><span style=
=3D"font-size:12pt;font-family:Arial;font-weight:700;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pr=
e-wrap">&#39;Community-specific Questions&#39;</span><span style=3D"font-si=
ze:12pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asi=
an:normal;vertical-align:baseline;white-space:pre-wrap"> in the application=
</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family=
:Arial;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-=
align:baseline;white-space:pre-wrap">Applicants should also join the #outre=
achy IRC channel on </span><a href=3D"http://irc.gnome.org/" style=3D"text-=
decoration-line:none"><span style=3D"font-size:12pt;font-family:Arial;font-=
variant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseli=
ne;white-space:pre-wrap">irc.gnome.org</span></a><span style=3D"font-size:1=
2pt;font-family:Arial;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;vertical-align:baseline;white-space:pre-wrap">, and the #kernel-outre=
achy channel on </span><a href=3D"http://irc.oftc.net/" style=3D"text-decor=
ation-line:none"><span style=3D"font-size:12pt;font-family:Arial;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;wh=
ite-space:pre-wrap">irc.oftc.net</span></a><span style=3D"font-size:12pt;fo=
nt-family:Arial;font-variant-numeric:normal;font-variant-east-asian:normal;=
vertical-align:baseline;white-space:pre-wrap">.=C2=A0 If you&#39;re having =
trouble with IRC, please ask for help on this mailing list.</span></p><br><=
p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;font-vari=
ant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;w=
hite-space:pre-wrap">If you=E2=80=99ve applied in the Outreachy before, you=
=E2=80=99re still required to send few staging driver cleanup patches to re=
-familiarize yourself with the process before you start to work on tasks.</=
span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:A=
rial;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-al=
ign:baseline;white-space:pre-wrap">There is a tips section at the end of th=
e tutorial to outline what behaviors we look for in potential Outreachy int=
erns. I hope this will give more insight into our selection process.</span>=
</p><br><br><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Ar=
ial;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-ali=
gn:baseline;white-space:pre-wrap">All the best!</span></p><p dir=3D"ltr" st=
yle=3D"line-height:1.38;text-align:justify;margin-top:0pt;margin-bottom:0pt=
">=C2=A0</p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Ar=
ial;background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;vertical-align:baseline;white-space:pre-wrap">---</span></=
p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0p=
t;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;vertical-align:baseline;white-space:pre-wrap">Shraddha Barke</span><=
/p><p dir=3D"ltr" style=3D"line-height:1.38;text-align:justify;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;vertical-align:baseline;white-space:pre-wrap">Outreachy Linux Kerne=
l Co-coordinator</span></p><br></span><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr">Shraddha<br></div></div></div>

--000000000000aeef040593d21f7d--

