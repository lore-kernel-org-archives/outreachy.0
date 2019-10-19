X-GM-THRID: 6746702482716491776
X-Received: by 2002:a81:4b09:: with SMTP id y9mr12011876ywa.19.1571512331063;
        Sat, 19 Oct 2019 12:12:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:af60:: with SMTP id x32ls1517189ywj.3.gmail; Sat, 19 Oct
 2019 12:12:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx18dFkPXxhkwIP36CQOyrAO+Jy+zls6w8ggg7yIpifcOA7Ua+BIC6k5eGKkkvCufuCWlp1
X-Received: by 2002:a81:a693:: with SMTP id d141mr12018242ywh.290.1571512329575;
        Sat, 19 Oct 2019 12:12:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571512329; cv=none;
        d=google.com; s=arc-20160816;
        b=RD3iqhj9/VYWNhugd0iubYxksXXiH5qPA5mAZGDiTs8v77MA3P8HfDFyoS2R84O3Ra
         SFz/ojffzeWpVD9jdP3OO+VD9vr2sCj9iNczmxC5zkpV3AvRGlAWK4fsj84KAu+U+V+E
         blhJzaMBK9CUhARJGzW2usLUh4mTkO1azVR/wrUNbZ3ea6mLBMi0VyqQmVLQ2eReHi5T
         2UuMt6j5aTxniVlVBaEd8drHsf/Fk/vPic5ZCFis/fESoFi+2zVIH0z0Ss7dSzMeazxw
         6tEDKGw0N9xAwXXxRTOmubjHt57JLjVySHw0W5MVxFnm4UESZxYINM5iz+g6EHj0THCI
         D+EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JayxJpxKJERVYDQ3vo5jhFVUKz2WAw6lswwQywecDQA=;
        b=MKoL+0OG1Q0rGXe3JxLkO02N1KcsooNLZHS3vao0/2iUE82bcINy/dCMpQyVnGuHsb
         cTdWwcwCG5ZOHd3wfNQ+DhdASwlCs87iWW933FbUdKkF0CzXeG8ihyRMa8RmGeDjf90h
         2vuhRfkOh14kJNOolHu3B7AAj6F0WlOerwF9FXrZYzDt0lsKAsF5bjrExEjrrh+E32b0
         jRBL/0ASs2UadGlDkCsjAq5kdEoksr1U9CiK/2vsQVw0XTWEBgLPjjV7Gxa2Z1GIuDco
         84xwfj3Kynrd6MVB+XGt0Fe3uEJHE3Y+s4QurpFF2BnUMsdZuJLh92PTldZSbZ1p6qKA
         b5tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGZKMIkR;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92a as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com. [2607:f8b0:4864:20::92a])
        by gmr-mx.google.com with ESMTPS id u8si597575ybc.2.2019.10.19.12.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 12:12:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92a as permitted sender) client-ip=2607:f8b0:4864:20::92a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGZKMIkR;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92a as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x92a.google.com with SMTP id l13so2745678uap.8
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 12:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=JayxJpxKJERVYDQ3vo5jhFVUKz2WAw6lswwQywecDQA=;
        b=bGZKMIkRo/U1ymuq1vvOHmx5K+1tOb/EqnB3CLaUxfDDsDlN62PaCyk7WzZ0ZdOfqE
         IoqHRdzUNWHRzMsCd+HDDGnr0/4m2JAkPwo1aRNzPMUU0dJHERO2gBOUfDPW1XdsVM+Y
         rKz3sDgry09GgNvTqXEAHPhHYKa6rg6p92aUV4KRfzaRLl1qol3GFGrmqHN0FE6wXB7Y
         rhDUqL2tkdDmFuyLUpi64EVJZWALY51AuvTpKnbruw9f0VNv/UCm9E0GmEaSiNqgMhja
         PcIh10UC2x7Q3cWtZVRfWvVa5x8p99moaIpt82/7/NhkJPYFN2uZqYxTuowXCRRsc+X5
         9/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JayxJpxKJERVYDQ3vo5jhFVUKz2WAw6lswwQywecDQA=;
        b=IPpvpdW4ITtbUU2sW0RQjS7J/zuZIbyMr6hNTL0wgTPrj6Ft5t+3g7aiHmLWHv+tPj
         okWTMsrrNGVV7J+Qqj4e87nKm1xR9B0twcY//FOfF7IvbuuCuEb6/uL7Y7g/OJkIhynF
         HkAJnxBpJttqE1sS3WoBuuo30CH0JiQIWPIMZzYMWtFIJvjnRcMf38MGhydERh7FpVM2
         DJoknaDs/+q7Bp697LkORteEg+JuB4DX43dPmLxgkuHPU+gels+uIIC8VPK/OW/DhuCi
         pb6gFcKTtdDIOEskZy016N+Kh54KiWYEiT6ENiCJZz69jNiOvSlKa0gq3DcVaHl/cV7k
         tKNQ==
X-Gm-Message-State: APjAAAVMeKsaHh3CTi4SQURTU7ubCmvF7g3oVJixC8yxyMAZl/FkBZkK
	GmpYD5HQNjdMyT5YH+FcCqo1eSOVnwy6l7rF83kcqXKu
X-Received: by 2002:a9f:3099:: with SMTP id j25mr9012568uab.134.1571512329053;
 Sat, 19 Oct 2019 12:12:09 -0700 (PDT)
MIME-Version: 1.0
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Sat, 19 Oct 2019 20:11:58 +0100
Message-ID: <CANR89jbxRS1yZe_-QSUmyLc-CSYdo-+Et3dVc=w92H=Sh0qjZQ@mail.gmail.com>
Subject: 
To: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000222c1e0595483a9a"

--000000000000222c1e0595483a9a
Content-Type: text/plain; charset="UTF-8"

Hello guys

Please how do you find a clean up to do in the kernel

Kind regards
Evan

--000000000000222c1e0595483a9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello guys=C2=A0</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Please how do you find a clean up to do in the kernel=C2=A0</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Kind regards=C2=A0</div><div=
 dir=3D"auto">Evan</div>

--000000000000222c1e0595483a9a--

