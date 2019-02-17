X-GM-THRID: 6658866228863434752
X-Received: by 2002:a5e:c60c:: with SMTP id f12mr13551197iok.17.1550388110743;
        Sat, 16 Feb 2019 23:21:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls1309537itm.5.gmail; Sat, 16 Feb
 2019 23:21:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3Iba95qDiZEfKMD4iaBrM1GTrPOBS5M8a3ddf+lTU4yjaI/mm4DdMN376slpUMuWYzpMmO2U
X-Received: by 2002:a24:1311:: with SMTP id 17mr10563122itz.20.1550388109648;
        Sat, 16 Feb 2019 23:21:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550388109; cv=none;
        d=google.com; s=arc-20160816;
        b=gD+NDQpGP2OGrMTdKdaCrDRq9tjN+GOQi8wPBwCUvBDVVxQSBst4AfRHiLeakPDdtB
         hQn+B93Hdky876R4s11JfJURgCVFI6PWpE3aBYl/fI8E9xARbCkZ+qzprJ/c+sK019yW
         kyGZyorjBUqXwJpNIgGUaq2mzJUgFs+5ch0WUGmOSNOrRxnZn09nTVvCNwPYhFhxlyTS
         dhuUfuFZKbgm+ozXN/rbizjzzUtL83nfCiC+caSBzo3VsIH9y0s2GyaSPZq8lFCebKW0
         RMwVnIWXaysrJOnC5t9jc5SCxBtMnICcaPKLwnaEHSeuFbSQH+xYQPxX9kOYD5JiNJ40
         nvbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Hy3XRqNnIz5iqGmASJWTIgcR3IEIiW5TkN093nzSQvY=;
        b=p2Djc57zOykVz1u4uW0Gcj5zLNkjhuNAWqazPHI/wPCgs+OIamCFQPPQIX6BJNx331
         FhNUhS1yl/M1xPsLxhYhJ9Q0TG/E1MbsakXGnziO32W5LNle5A3eSRSe1drIbtn1rlxB
         SEp8Im9Ts+4hUquljMyLFEtAChO9wgJHYxhehhMhRfXw3nLel/SfauvhDbVYQ1ZK4tzo
         zeZMrp4QRd4Lg61owaYSm80QUvdv8bCGBg9/E54eBAxQjt4Mt7Bk8mDwd3x70+6jPGQ6
         Kk7auVdcK1UqJ/uGchG0rk+dPInweAVWD6sgBSoQMt2Z2AiGPArVV7kp4EAR50xP/TNU
         KrAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fToD1X88;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com. [2607:f8b0:4864:20::832])
        by gmr-mx.google.com with ESMTPS id f19si699657iol.4.2019.02.16.23.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Feb 2019 23:21:49 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) client-ip=2607:f8b0:4864:20::832;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fToD1X88;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x832.google.com with SMTP id p25so15714354qtb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Feb 2019 23:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Hy3XRqNnIz5iqGmASJWTIgcR3IEIiW5TkN093nzSQvY=;
        b=fToD1X88wIC/PTBjj2cSV4EX70HN4yPD4Io1wBjEp9akGRP23Sy3yHOqLjG+HnMIdV
         pF1b28hFpwg88Lo3sPBqJ/N/qtasDhuMfczO28vXPHo2+p4U++w8GjcohFFxZhgmqRmg
         Zb7KzaXFDPWTZ6Lj139j0//114JIUGLMStoM3Y6D+IcN75ZV/VI3qw4faW9ZIFXnKfvb
         lPwV4+o4ZMVcKlohxVpBDEkINncma52PCd7s6H6AlGe+lXw/PlbllEdd+zt0QP9V+gO0
         Fm5lcC0rwKeYuDFj4Sdqf2o9T606o+Cr958JoXzi2nkhfUHV+DSVkFvcil1vZBaLvZ8w
         LmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Hy3XRqNnIz5iqGmASJWTIgcR3IEIiW5TkN093nzSQvY=;
        b=DBFctCOa9eCye84ftdZNepv4JliUXKIftpPOLO8YwGi1rHg92Q11F8NsgcWbB7OXeq
         zRe0yEpqx9iBkC/Bsek1sxyVGhYFsLE3sHGpz4H3nfemWIKwh0u7czorMlUxLjs5Jz4S
         hu7MXE89jop+p6TPuvRlu0f9Unol3DmIqhJ5d9wWHmuFI2MTHsrQhDtzTAktBEicITWl
         LHkHzVFqG+XMBNrIbDrLkM37R8v1qmbW+5dwphK+cefXqz82kAIyVnCiRjE3FS0NAHmj
         4MOAKWyEFF0jX7I3eZWdVYJeK5Y7ncOdy1OJWzR+0oDYGcVuOSgGTjVn0ZmS+f/uBNX6
         ZL1A==
X-Gm-Message-State: AHQUAuasIXQjEmYr676OPd6g+ag33q7u1zArNI+wLbAXwgAhoQbSkWro
	Az5qY3IjKDYUO23qer64Wm9YggbwzvaXUqW5+eyhK/rX
X-Received: by 2002:ac8:8ca:: with SMTP id y10mr14162581qth.153.1550388108741;
 Sat, 16 Feb 2019 23:21:48 -0800 (PST)
MIME-Version: 1.0
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Sat, 16 Feb 2019 23:21:37 -0800
Message-ID: <CAO393ACCw-cvQ_RmAUmT=DeQryQ6BYunONxNgEX1+NtdiwJ2vQ@mail.gmail.com>
Subject: [Announcement] Outreachy Next Round [May-August] Application period starts!
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007c4e59058211dc9e"

--0000000000007c4e59058211dc9e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings potential Linux kernel Outreachy interns!

Please read this *entire* email, even if you have applied in the past.

*What is Outreachy?*
---------------------------

The next application round for Outreachy internships starts February 18,
2019 and ends March 26, 2019.  Outreachy interns will be paid $5,500 to
work on a full-time internship with an open source mentor from May 20, 2019
to August 20, 2019. Interns will also be granted a $500 travel stipend to
go to any conference approved by their mentor that relates to their project=
.

*Who can apply?*
-----------------------

To qualify to apply for Outreachy, you MUST complete eligibility criteria
here: https://www.outreachy.org/apply/eligibility/ and contact the
Outreachy organizers (https://www.outreachy.org/contact/organizers/) if you
will be in school between May 20, 2019 to August 20, 2019 or have any quest=
ions
about your eligibility.

*What Outreachy projects can you apply to?*
-------------------------------------------------------------

There will be several different open source projects participating in this
round of Outreachy. The full list can be found here:

https://www.outreachy.org/communities/cfp/

The Linux kernel expects to offer eight projects, which are already listed
on on Linux kernel community page on Outreachy website and will be visible
to applicants only after they complete the eligibility check.

*How do I apply to the Linux kernel project via Outreachy's website?*
------------------------------
------------------------------------------------------------------

1. Fill out the eligibility check form on the Outreachy website

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
submit an application. *Note that you'll need to apply for each project
separately.*

5. Once applicants have completed working on 10 cleanup patches, we encoura=
ge
applicants to move on to complete some small tasks outlined by the mentors.
It=E2=80=99s preferable to CC the mentor when you are  working on the task =
so that
they don=E2=80=99t miss it. Small tasks for the projects can be found in th=
e
project detail here:

    https://www.outreachy.org/2018-may-august/communities/linux-kernel/

    *Note that you'll be able to see the detailed information about
projects on Outreachy's website only after completing eligibility form
check.*

6. Keep editing your *'project contribution'* on Outreachy's website based
on your accepted patches links and project specific completion of tasks

7. Make sure to add your project preferences under the question
*'Community-specific
Questions'* in the application

Applicants should also join the #outreachy IRC channel on irc.gnome.org, an=
d
the #kernel-outreachy channel on irc.oftc.net.  If you're having trouble wi=
th
IRC, please ask for help on this mailing list.

If you=E2=80=99ve applied in the Outreachy before, you=E2=80=99re still req=
uired to send
few staging driver cleanup patches to re-familiarize yourself with the
process before you start to work on tasks.

There is a tips section at the end of the tutorial to outline what behavior=
s
we look for in potential Outreachy interns. I hope this will give more
insight into our selection process.

All the best!

---
Shraddha Barke & Vaishali Thakkar
Outreachy Linux Kernel Cooordinators


--=20
Shraddha

--0000000000007c4e59058211dc9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-F0XO1GC-xb-b"><span style=3D"font-fami=
ly:arial,sans-serif;font-size:12.8px">Greetings potential Linux kernel Outr=
eachy interns!</span><br style=3D"font-family:arial,sans-serif;font-size:12=
.8px"><br style=3D"font-family:arial,sans-serif;font-size:12.8px"><span sty=
le=3D"font-family:arial,sans-serif;font-size:12.8px">Please read this *enti=
re* email, even if you have applied in the past.</span><br style=3D"font-fa=
mily:arial,sans-serif;font-size:12.8px"><br style=3D"font-family:arial,sans=
-serif;font-size:12.8px"><span style=3D"font-family:arial,sans-serif;font-s=
ize:12.8px"><b>What is Outreachy?</b></span><br style=3D"font-family:arial,=
sans-serif;font-size:12.8px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:12.8px">---------------------------</span><br style=3D"font-family:=
arial,sans-serif;font-size:12.8px"><br style=3D"font-family:arial,sans-seri=
f;font-size:12.8px"><span style=3D"font-family:arial,sans-serif;font-size:1=
2.8px">The next application round for Outreachy internships starts February=
 18</span><span style=3D"font-family:arial,sans-serif;font-size:12.8px">, 2=
019 and ends March 26, 2019.</span><span style=3D"font-family:arial,sans-se=
rif;font-size:12.8px">=C2=A0 Outreachy interns will be=C2=A0</span><span st=
yle=3D"font-family:arial,sans-serif;font-size:12.8px">paid $5,500=C2=A0</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:12.8px">to work on=
 a full-time internship with an open source=C2=A0</span><span style=3D"font=
-family:arial,sans-serif;font-size:12.8px">mentor from May 20</span><span s=
tyle=3D"font-family:arial,sans-serif;font-size:12.8px">, 2019 to August 20,=
 2019. Interns will also be granted a=C2=A0</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:12.8px">$500 travel=C2=A0</span><span style=3D=
"font-family:arial,sans-serif;font-size:12.8px">stipend to go to any confer=
ence approved by their mentor=C2=A0</span><span style=3D"font-family:arial,=
sans-serif;font-size:12.8px">that relates=C2=A0</span><span style=3D"font-f=
amily:arial,sans-serif;font-size:12.8px">to their project.</span><div><br s=
tyle=3D"font-family:arial,sans-serif;font-size:12.8px"><span style=3D"font-=
family:arial,sans-serif;font-size:12.8px"><b>Who can apply?</b></span><br s=
tyle=3D"font-family:arial,sans-serif;font-size:12.8px"><span style=3D"font-=
family:arial,sans-serif;font-size:12.8px">-----------------------</span><br=
 style=3D"font-family:arial,sans-serif;font-size:12.8px"><br style=3D"font-=
family:arial,sans-serif;font-size:12.8px"><span style=3D"font-family:arial,=
sans-serif;font-size:12.8px">To qualify to apply for Outreachy, you MUST=C2=
=A0</span><span style=3D"font-family:arial,sans-serif;font-size:12.8px">com=
plete eligibility criteria here:=C2=A0</span><a href=3D"https://www.outreac=
hy.org/apply/eligibility/" rel=3D"nofollow" style=3D"color:rgb(17,85,204);f=
ont-family:arial,sans-serif;font-size:12.8px">https://www.outreachy.org/app=
ly/eligibility/</a><span style=3D"font-family:arial,sans-serif;font-size:12=
.8px">=C2=A0and contact the Outreachy=C2=A0</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:12.8px">organizers (</span><a href=3D"https://=
www.outreachy.org/contact/organizers/" rel=3D"nofollow" style=3D"color:rgb(=
17,85,204);font-family:arial,sans-serif;font-size:12.8px">https://www.outre=
achy.org/contact/organizers/</a><span style=3D"font-family:arial,sans-serif=
;font-size:12.8px">) if you will be in=C2=A0</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:12.8px">school between </span><span style=3D"=
font-family:arial,sans-serif;font-size:12.8px">May 20</span><span style=3D"=
font-family:arial,sans-serif;font-size:12.8px">, 2019 to August 20, 2019</s=
pan><span style=3D"font-family:arial,sans-serif;font-size:12.8px"></span><s=
pan style=3D"font-family:arial,sans-serif;font-size:12.8px"> or</span><span=
 style=3D"font-family:arial,sans-serif;font-size:12.8px">=C2=A0have any=C2=
=A0</span><span style=3D"font-family:arial,sans-serif;font-size:12.8px">que=
stions about your eligibility.</span></div><div><br style=3D"font-family:ar=
ial,sans-serif;font-size:12.8px"><span style=3D"font-family:arial,sans-seri=
f;font-size:12.8px"><b>What Outreachy projects can you apply to?</b></span>=
<br style=3D"font-family:arial,sans-serif;font-size:12.8px"><span style=3D"=
font-family:arial,sans-serif;font-size:12.8px">----------------------------=
--</span><span style=3D"font-family:arial,sans-serif;font-size:12.8px">----=
---------------------------</span><br style=3D"font-family:arial,sans-serif=
;font-size:12.8px"><br style=3D"font-family:arial,sans-serif;font-size:12.8=
px"><span style=3D"font-family:arial,sans-serif;font-size:12.8px">There wil=
l be several different open source projects participating=C2=A0</span><span=
 style=3D"font-family:arial,sans-serif;font-size:12.8px">in this round of O=
utreachy. The full list can be found here:</span><br style=3D"font-family:a=
rial,sans-serif;font-size:12.8px"><br style=3D"font-family:arial,sans-serif=
;font-size:12.8px"><a href=3D"https://www.outreachy.org/communities/cfp/" r=
el=3D"nofollow" style=3D"color:rgb(17,85,204);font-family:arial,sans-serif;=
font-size:12.8px">https://www.outreachy.org/communities/cfp/</a><br style=
=3D"font-family:arial,sans-serif;font-size:12.8px"><br style=3D"font-family=
:arial,sans-serif;font-size:12.8px"><span style=3D"font-family:arial,sans-s=
erif;font-size:12.8px">The Linux kernel expects to offer eight projects, wh=
ich are already listed=C2=A0</span><span style=3D"font-family:arial,sans-se=
rif;font-size:12.8px">on</span><span style=3D"font-family:arial,sans-serif;=
font-size:12.8px">=C2=A0on Linux kernel=C2=A0</span><span style=3D"font-fam=
ily:arial,sans-serif;font-size:12.8px">community page on Outreachy website =
and will be visible to applicants only after they complete the eligibility =
check.</span><br style=3D"font-family:arial,sans-serif;font-size:12.8px"><b=
r style=3D"font-family:arial,sans-serif;font-size:12.8px"><span style=3D"fo=
nt-family:arial,sans-serif;font-size:12.8px"><b>How do I apply to the Linux=
 kernel project via Outreachy&#39;s website?</b></span><br style=3D"font-fa=
mily:arial,sans-serif;font-size:12.8px"><span style=3D"font-family:arial,sa=
ns-serif;font-size:12.8px">------------------------------</span><span style=
=3D"font-family:arial,sans-serif;font-size:12.8px">------------------------=
------------------------------------------</span><br style=3D"font-family:a=
rial,sans-serif;font-size:12.8px"><br><div>1. Fill out the eligibility chec=
k form on the Outreachy website</div><div><br></div><div>2. Work on Linux k=
ernel tutorial</div><div><br></div><div><span style=3D"font-family:arial,sa=
ns-serif;font-size:12.8px">=C2=A0 =C2=A0 Basically, applicants will need to=
 walk through our tutorial for creating=C2=A0</span><span style=3D"font-fam=
ily:arial,sans-serif;font-size:12.8px">their first Linux kernel patch:=C2=
=A0</span><a href=3D"http://kernelnewbies.org/Outreachyfirstpatch" rel=3D"n=
ofollow" style=3D"color:rgb(17,85,204);font-family:arial,sans-serif;font-si=
ze:12.8px">http://kernelnewbies.org/Outreachyfirstpatch</a><br></div><div><=
br></div><div><span style=3D"font-family:arial,sans-serif;font-size:12.8px"=
>=C2=A0 =C2=A0 It is not necessary to contact a mentor before starting the =
tutorial.</span><br style=3D"font-family:arial,sans-serif;font-size:12.8px"=
></div><div><br></div><div>3. Work on cleanup patches</div><div><br></div><=
div><span style=3D"font-family:arial,sans-serif;font-size:12.8px">=C2=A0 =
=C2=A0 =C2=A0As specified in our tutorial we require Outreachy applicants t=
o first get=C2=A0</span><span style=3D"font-family:arial,sans-serif;font-si=
ze:12.8px">accepted at least 10 Staging driver cleanup patches.=C2=A0</span=
><br></div><div><br></div><div>4.
 Once your first patch is accepted, add that as a contribution for the=20
project(s)you&#39;re interested in applying for. This will then allow you t=
o
 submit an application. <b>Note that you&#39;ll need to apply for each proj=
ect separately.</b></div><div><b><br></b></div><div>5. Once applicants have=
 completed working on 10 cleanup patches,=C2=A0<span style=3D"font-family:a=
rial,sans-serif;font-size:12.8px">we=C2=A0</span><span style=3D"font-family=
:arial,sans-serif;font-size:12.8px">encourage applicants to move on to comp=
lete some small tasks outlined by the=C2=A0</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:12.8px">mentors. It=E2=80=99s preferable to CC=
 the mentor when you are=C2=A0 working on the=C2=A0</span><span style=3D"fo=
nt-family:arial,sans-serif;font-size:12.8px">task so that they don=E2=80=99=
t miss it. Small tasks for the projects can be found in the project detail =
here:</span></div><div><span style=3D"font-family:arial,sans-serif;font-siz=
e:12.8px"><br></span></div><div><font face=3D"arial, sans-serif"><span styl=
e=3D"font-size:12.8px">=C2=A0 =C2=A0 <a href=3D"https://www.outreachy.org/2=
018-may-august/communities/linux-kernel/">https://www.outreachy.org/2018-ma=
y-august/communities/linux-kernel/</a></span></font></div><div><font face=
=3D"arial, sans-serif"><span style=3D"font-size:12.8px">=C2=A0 =C2=A0=C2=A0=
</span></font></div><div>=C2=A0 =C2=A0 <b>Note
 that you&#39;ll be able to see the detailed information about projects on=
=20
Outreachy&#39;s website only after completing eligibility form check.</b></=
div><div><br></div><div>6. Keep editing your <b>&#39;project contribution&#=
39;</b> on Outreachy&#39;s website based on your accepted patches links and=
 project specific completion of tasks</div><div><br></div><div>7. Make sure=
 to add your project preferences under the question <b>&#39;Community-speci=
fic Questions&#39;</b> in the application</div><br style=3D"font-family:ari=
al,sans-serif;font-size:12.8px"><span style=3D"font-family:arial,sans-serif=
;font-size:12.8px">Applicants should also join the #outreachy IRC channel o=
n=C2=A0</span><a href=3D"http://irc.gnome.org/" rel=3D"nofollow" style=3D"c=
olor:rgb(17,85,204);font-family:arial,sans-serif;font-size:12.8px">irc.gnom=
e.org</a><span style=3D"font-family:arial,sans-serif;font-size:12.8px">,=C2=
=A0</span><span style=3D"font-family:arial,sans-serif;font-size:12.8px">and=
 the #kernel-outreachy channel on=C2=A0</span><a href=3D"http://irc.oftc.ne=
t/" rel=3D"nofollow" style=3D"color:rgb(17,85,204);font-family:arial,sans-s=
erif;font-size:12.8px">irc.oftc.net</a><span style=3D"font-family:arial,san=
s-serif;font-size:12.8px">.=C2=A0 If you&#39;re having trouble=C2=A0</span>=
<span style=3D"font-family:arial,sans-serif;font-size:12.8px">with IRC, ple=
ase ask for help on this mailing list.</span><br style=3D"font-family:arial=
,sans-serif;font-size:12.8px"><br style=3D"font-family:arial,sans-serif;fon=
t-size:12.8px"><span style=3D"font-family:arial,sans-serif;font-size:12.8px=
">If you=E2=80=99ve applied in the Outreachy before, you=E2=80=99re still r=
equired to send few=C2=A0</span><span style=3D"font-family:arial,sans-serif=
;font-size:12.8px">staging driver cleanup patches to re-familiarize yoursel=
f with the process=C2=A0</span><span style=3D"font-family:arial,sans-serif;=
font-size:12.8px">before you start to work on tasks.</span><br style=3D"fon=
t-family:arial,sans-serif;font-size:12.8px"><br style=3D"font-family:arial,=
sans-serif;font-size:12.8px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:12.8px">There is a tips section at the end of the tutorial to outli=
ne what=C2=A0</span><span style=3D"font-family:arial,sans-serif;font-size:1=
2.8px">behaviors we look for in potential Outreachy interns. I hope this wi=
ll=C2=A0</span><span style=3D"font-family:arial,sans-serif;font-size:12.8px=
">give more insight into our selection process.</span><br style=3D"font-fam=
ily:arial,sans-serif;font-size:12.8px"><br style=3D"font-family:arial,sans-=
serif;font-size:12.8px"><span style=3D"font-family:arial,sans-serif;font-si=
ze:12.8px">All the best!<br></span><br>---<div>Shraddha Barke &amp; Vaishal=
i Thakkar <br>Outreachy Linux Kernel Cooordinators</div></div></div><br cle=
ar=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr">Shraddha<br></div></div></div>

--0000000000007c4e59058211dc9e--

