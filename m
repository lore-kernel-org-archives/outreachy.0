X-GM-THRID: 5870259798016
X-Received: by 10.182.248.227 with SMTP id yp3mr26892285obc.22.1425280877569;
        Sun, 01 Mar 2015 23:21:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.99 with SMTP id pj3ls872014igb.5.gmail; Sun, 01 Mar
 2015 23:21:17 -0800 (PST)
X-Received: by 10.66.221.165 with SMTP id qf5mr25528828pac.30.1425280877336;
        Sun, 01 Mar 2015 23:21:17 -0800 (PST)
Return-Path: <sarahjmi07@gmail.com>
Received: from mail-ie0-x233.google.com (mail-ie0-x233.google.com. [2607:f8b0:4001:c03::233])
        by gmr-mx.google.com with ESMTPS id q6si802785igr.3.2015.03.01.23.21.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 23:21:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sarahjmi07@gmail.com designates 2607:f8b0:4001:c03::233 as permitted sender) client-ip=2607:f8b0:4001:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sarahjmi07@gmail.com designates 2607:f8b0:4001:c03::233 as permitted sender) smtp.mail=sarahjmi07@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by iecrp18 with SMTP id rp18so45530354iec.9
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 23:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=hFmBcsTUeoMq2TLhlwbDTZBHXwP9fUvuvghBoyJ8MrE=;
        b=HSKhddUeiGd1+X1UJdwDvjPSfwScOqajucqRuse+qzi/EJM63P5wDjq/+sGzT6BsXY
         evd0Y2uv2W/AFoD8HnIpXUl++p9mVk5y5vD7+LyIK7Idjse1o7meF00GLWQd8ZpHdHRk
         0UOV3r26xEF6NUvLFi2NG62eMyegeGNRGsrp11W4DeoPh4gBEZ70CKazivfhG24hbE4i
         SZ3S4/SQWCpmMOut3NS1EU4tZtF5Znr+UNSX+mWYyrR5UvTX5xlTPqSE6xZVDobnY/sU
         LcQazPe/D9V7P9qTKOSQ6JClFhRSHFOnDaPW/oKG8s2n98Ftp/ktSKJMfsxS70j5ijx8
         1fzg==
MIME-Version: 1.0
X-Received: by 10.107.47.216 with SMTP id v85mr34396424iov.86.1425280877198;
 Sun, 01 Mar 2015 23:21:17 -0800 (PST)
Received: by 10.107.130.218 with HTTP; Sun, 1 Mar 2015 23:21:17 -0800 (PST)
Date: Mon, 2 Mar 2015 12:51:17 +0530
Message-ID: <CALx5q7d_uzDS0e5-cYWBaBN-v5fddg2w35RxAbX46eUUVfBQPw@mail.gmail.com>
Subject: Problem in updating Kernel
From: Sarah Khan <sarahjmi07@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11351bc664220c051049101a

--001a11351bc664220c051049101a
Content-Type: text/plain; charset=UTF-8

Hi
Whenever I am trying to update my repository using: git fetch origin
I am getting following error
fatal: unable to connect to git.kernel.org:
git.kernel.org[0: 198.145.20.140]: errno=Connection refused
git.kernel.org[1: 149.20.4.72]: errno=Connection refused
git.kernel.org[2: 199.204.44.194]: errno=Connection refused
git.kernel.org[3: 2620:3:c000:a:0:1991:8:25]: errno=Network is unreachable
git.kernel.org[4: 2001:4f8:1:10:0:1991:8:25]: errno=Network is unreachable

And also when I am using chatzilla to connect to IRC channel I am getting
refused again and again.


Thanks
Sarah

--001a11351bc664220c051049101a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><br></div>Hi<br></div>Whenev=
er I am trying to update my repository using: git fetch origin<br></div>I a=
m getting following error<br>fatal: unable to connect to <a href=3D"http://=
git.kernel.org">git.kernel.org</a>:<br><a href=3D"http://git.kernel.org">gi=
t.kernel.org</a>[0: 198.145.20.140]: errno=3DConnection refused<br><a href=
=3D"http://git.kernel.org">git.kernel.org</a>[1: 149.20.4.72]: errno=3DConn=
ection refused<br><a href=3D"http://git.kernel.org">git.kernel.org</a>[2: 1=
99.204.44.194]: errno=3DConnection refused<br><a href=3D"http://git.kernel.=
org">git.kernel.org</a>[3: 2620:3:c000:a:0:1991:8:25]: errno=3DNetwork is u=
nreachable<br><a href=3D"http://git.kernel.org">git.kernel.org</a>[4: 2001:=
4f8:1:10:0:1991:8:25]: errno=3DNetwork is unreachable<br><br></div>And also=
 when I am using chatzilla to connect to IRC channel I am getting refused a=
gain and again.<br><br><br></div>Thanks<br></div>Sarah<br><div><div><div><b=
r></div></div></div></div>

--001a11351bc664220c051049101a--

