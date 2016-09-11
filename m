X-GM-THRID: 6329202731663753216
X-Received: by 10.13.216.74 with SMTP id a71mr12645995ywe.32.1473632345803;
        Sun, 11 Sep 2016 15:19:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.178 with SMTP id 47ls10270439oth.23.gmail; Sun, 11 Sep
 2016 15:19:05 -0700 (PDT)
X-Received: by 10.129.165.14 with SMTP id c14mr12802832ywh.48.1473632345222;
        Sun, 11 Sep 2016 15:19:05 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id c75si828771ywh.0.2016.09.11.15.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Sep 2016 15:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id z190so116048288qkc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Sep 2016 15:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=q32/qDeYWiPxSRpS9g5DOKR+kkDom9AhwNJlrXSHghM=;
        b=CQSk3D4VbDFH6JwLv4LIlikYxDkiTORjWA3Hi7JjEXqu+1xDtqIsvGQswm5fG0tzjV
         VbWImTHO9lM9Uus3sEvT+5Hf4vKzEwMgcxEeFLxIamR4cWfY01kJM4SPbgBlJiSTLXj8
         9NTqujtPhosyeMDd2GzQY4pvLzMI8bces+s4eYuTiQz53jLI2yi+u8l4kFh9m1ZXpmvf
         IEmbgA8oLRHRdL7g0cMc9ELRYNmIUQPvByDO4rmyyiSuDgTEt2M0B1cOEKjRpoUKbSLW
         G/8O9yK4PEQR+pD1ZgKsMZwSM2WCRhyrUpdIXuGi7HsH/rhXkQ1WLX2dhrgsV4ahJqGz
         IFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=q32/qDeYWiPxSRpS9g5DOKR+kkDom9AhwNJlrXSHghM=;
        b=Elgqq/9kN5m9tG6FEkpZTLBvQRn/xnQFLOrbncxe48pInopeuJ4PHcx2SAUBFMKtfo
         JBd+H09a3AXahuKXYvb+xEOqdqnrqOT/a87cBCJxb/bkIKETwo0eDK8fN6UcS47MuKcT
         MVC4zQJZAv+mUt7YkZTU2iXZ/QNthLw1+31FL9knbphKI0NG9Y5EyDTJGLk6YLadHmPB
         YOGmZ5E/5cZT14LNmzVqqOa63c5Klm05wmCNB2XliNiCVAEwqOvHZrIgKBT6la31dEKp
         NY33qh7yrPRs/vHmKt9ko7tv1jnFqmL5nF4XA2UU+o7khOdhCfVEHjdpeSuHGYGGoUa4
         zogA==
X-Gm-Message-State: AE9vXwOK4iW0+KkszA6je0BmvaxxCo9vvByFJIkUcf5qsqyIdySRrQ6bq9mUCZyublI+GRCG9AFj/YWM8SI1jw==
X-Received: by 10.55.209.82 with SMTP id s79mr4764401qki.280.1473632344847;
 Sun, 11 Sep 2016 15:19:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.151 with HTTP; Sun, 11 Sep 2016 15:18:34 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 12 Sep 2016 03:48:34 +0530
Message-ID: <CAOCi2DEQRUXeN8H143p=K1tg-pyx0RjBVgdENi-CqsyLpoMZBg@mail.gmail.com>
Subject: Sending patches
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1147a4ee71cd4f053c42c4a7

--001a1147a4ee71cd4f053c42c4a7
Content-Type: text/plain; charset=UTF-8

Hi!

I have gone through the tutorial for sending the first patch and even made
changes to a file with warnings generated using checkpatch.pl . The only
thing I'm having trouble with is mutt. My university firewall has blocked
the ports 587 & 465 and hence mutt always gives me the error Network
Unreachable. Is there any other way I can send a patch? Or any work around
to the external firewall blocking me?

Thanks!
Gargi

--001a1147a4ee71cd4f053c42c4a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>I have gone through the tutorial fo=
r sending the first patch and even made changes to a file with warnings gen=
erated using <a href=3D"http://checkpatch.pl">checkpatch.pl</a> . The only =
thing I&#39;m having trouble with is mutt. My university firewall has block=
ed the ports 587 &amp; 465 and hence mutt always gives me the error Network=
 Unreachable. Is there any other way I can send a patch? Or any work around=
 to the external firewall blocking me?</div><div><br></div><div>Thanks!</di=
v><div>Gargi</div></div>

--001a1147a4ee71cd4f053c42c4a7--

