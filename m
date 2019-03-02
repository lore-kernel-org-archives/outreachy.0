X-GM-THRID: 6663742329894993920
X-Received: by 2002:a25:ac1:: with SMTP id 184mr5365315ybk.97.1551547167613;
        Sat, 02 Mar 2019 09:19:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3ad5:: with SMTP id h204ls1984946ywa.2.gmail; Sat, 02
 Mar 2019 09:19:26 -0800 (PST)
X-Received: by 2002:a0d:e288:: with SMTP id l130mr5395173ywe.18.1551547166802;
        Sat, 02 Mar 2019 09:19:26 -0800 (PST)
Received: by 2002:a0d:df8a:0:0:0:0:0 with SMTP id i132msywe;
        Sat, 2 Mar 2019 02:32:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqz9SmfbswqfLZE9ciVwBr+sdzWreYEVSP4cYtGg3gB7KLQ7aXRM67tNFg2a6wpLDdtAM7ij
X-Received: by 2002:a25:5d04:: with SMTP id r4mr4517249ybb.89.1551522752438;
        Sat, 02 Mar 2019 02:32:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551522752; cv=none;
        d=google.com; s=arc-20160816;
        b=x/YISU34KkAyqEB6M7a76cjSvrXNyK7EuklDNlf4EJUZ6sFfMiLp8Rwt1FU/BP9I59
         /kAmYvLKMRFjKfuS5QcPhOKpi7d2O4v7XWrgjiNL0IYF4V2SlQ6VHTOGYSeUrRp1vzY1
         RJ2ZJifNN3W4WJxrIH94jL02dihPJpke+3PqExjKk2yKT8+gva+mgq75d1imUIaGiZ8H
         AVDzD4GdnPgTIQefpx6l9I6QPT2W4sFSNXM93dH2vcdMWPvmY9qY3Kbz152B9ZB1GH/7
         jp74hG10MhdUtGGMnyLOj34PIpk/Mtk72RJTIk2kYjPfugaZhT6TQX3cqmsMGpqI6VfZ
         z16Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=PoGElAkIYEm+XDHjqGPf/aPjFTGdbM6vC32n74X7+2g=;
        b=JP37G4enQz9ajpxOwBnj6F5u+Elr86JgwHauXuu3bKINOApAx/9hqYKXBsUrZIgixw
         INZjktPtRECe8ezdX7g0rrwkzUNc9bwVvAyFtZCXO4ylKPYeYzaYQbPjsMZqEDp9I42y
         MUejuzsX8oMsfM1Oqcp58o9E+17WTjoG+WF2S07BxoXsymw+r+Cd8TPjonSlvN9ciDST
         j64Sf+8jmr/0Ljt1US9in9f+xU0DzBiYKZoASsJGAPpfiqNRee4XZ/WfswOYQx/nzyVa
         R8hXPLQBdc+O1uDq8Sqb/DCOTjmqsdnVZfcosSHnG1P907ly2T8Enr7wEJysvIeIImZ+
         8hIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ulwARYJH;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r128si52376ywd.0.2019.03.02.02.32.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 02:32:32 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ulwARYJH;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id b4so246469oif.6
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 02:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PoGElAkIYEm+XDHjqGPf/aPjFTGdbM6vC32n74X7+2g=;
        b=ulwARYJHNbIEM/Jg3We11F0CJjGQnHZigljZCczLudeC07G8sVt7SJjJl//EYGTp+7
         4aPbmPlD0yXhfuL24MpQ3g4k5AzDpnamD1nj0GFPOpLhAr17VDCq2w6BQMCNVa2stv5t
         p5SoW8JPvkxQxHUu+gkmc1Bq9X41j4p8fIoU/sYyoZD3nUzL15PewQxK7bCsjxmSsODR
         t4zBaAckMZCJTU9AQHCQ5jVm6sHvnGi/ZqKmM0a2+gX5J6ElT6k8n8w+WPBOwUO3aVkS
         BQ2XrI+RIVL1JGoCBTECb3MTPzJJ7quhqsipib7uiA0szMYcUxaLjYLN4AeImc5FgcDJ
         PpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PoGElAkIYEm+XDHjqGPf/aPjFTGdbM6vC32n74X7+2g=;
        b=VTmzGk8Uhn99VP/HW39uXJDwYyBWa8u80XGgaGBrxSckjVJhcwpjdaZXrKWStLTHLJ
         duY6vcX7RRbiCHTPj47RBK/Y4SAscfL0fn64cG2MNWW31ye6e63y26p6x5+0n1OMXOk9
         Ja5rqNcgGbN/4Fk/gRRMO9zk2ku6QlvGsgrvL1BFW2OYq4VKnY39B4Uza6sTWrIT7+MV
         Wuypq7f4fCUJOUCYp6TKSgrrF2bpe22hzoMvEIF68xK7g/qS4uPHxx0iRbTI5qZB8bpk
         qSjxYrjZraenGEjJYRYS5nUBvfHbKFhecTHK2jEJig4dzaYCdJjzEUlqCDD7/rtaxfpe
         qzWw==
X-Gm-Message-State: APjAAAUEzF5jG2sZE3tUcEd+J4kDZ+nGfmg7MbYbY+QktQJy2jkxA0wz
	xOz2kwBR6gLTcvIQzAO0msx6Ir0voLhjtNBYfNtCz2cpdag=
X-Received: by 2002:aca:cd93:: with SMTP id d141mr6153069oig.163.1551522751957;
 Sat, 02 Mar 2019 02:32:31 -0800 (PST)
MIME-Version: 1.0
From: Debleena Sen <idebleenasen@gmail.com>
Date: Sat, 2 Mar 2019 16:02:19 +0530
Message-ID: <CACw+u4G8gVJspyGn1=XaZ789q90sSLa-kyzOEBtxSZ6gQGYDtA@mail.gmail.com>
Subject: QUESTIONS REGARDING FIRST PATCH SUBMISSION
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007dce6405831a0ae0"

--0000000000007dce6405831a0ae0
Content-Type: text/plain; charset="UTF-8"

Hi,

I am an Outreachy applicant looking forward to work on the Linux Kernel
Project.I had a few questions about the patches to be submitted on staging
drivers.

In the page Checkpatch_Tips <https://kernelnewbies.org/CheckpatchTips> it
has been suggested to ignore warnings about lines longer than 80 characters
and not to fix them and submit patches for them. I was working on wlan-ng
driver and most of the warnings were of the above nature(WARNING: line over
80 characters). So should I not work on those warnings? I saw other
Outreachy applicants submitting patches for that warning.

I have another question. What should I do with the CHECKs(for e.g. CHECK:
Alignment should match open parenthesis)? Are those valid issues to which I
can submit patches or should I ignore 'CHECK' and only work on 'WARNINGS'?

I'm sorry to ask such trivial questions but I'm new to Kernel development.

Thank you

--0000000000007dce6405831a0ae0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am an Outreachy applicant looking=
 forward to work on the Linux Kernel Project.I had a few questions about th=
e patches to be submitted on staging drivers.</div><div><br></div><div>In t=
he page=C2=A0<a href=3D"https://kernelnewbies.org/CheckpatchTips" target=3D=
"_blank">Checkpatch_Tips</a>=C2=A0it has been suggested to ignore warnings =
about lines longer than 80 characters and not to fix them and submit patche=
s for them. I was working on wlan-ng driver and most of the warnings were o=
f the above nature(WARNING: line over 80 characters). So should I not work =
on those warnings? I saw other Outreachy applicants submitting patches for =
that warning.</div><div><br></div><div>I have another question. What should=
 I do with the CHECKs(for e.g. CHECK: Alignment should match open parenthes=
is)? Are those valid issues to which I can submit patches or should I ignor=
e &#39;CHECK&#39; and only work on &#39;WARNINGS&#39;?</div><div><br></div>=
<div>I&#39;m sorry to ask such trivial questions but I&#39;m new to Kernel =
development.=C2=A0</div><div><br></div><div>Thank you</div></div>

--0000000000007dce6405831a0ae0--

