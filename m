X-GM-THRID: 6956606744013307904
X-Received: by 2002:aca:2208:: with SMTP id b8mr465314oic.49.1619711225309;
        Thu, 29 Apr 2021 08:47:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls1009706oiw.10.gmail; Thu,
 29 Apr 2021 08:47:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxTMHNwzCAkOWmYGg2gaCvcseA8G9bWK6zD+M07y4tUtgCibpk9g5rm8KWbpsnT5XHtJKqJ
X-Received: by 2002:aca:df87:: with SMTP id w129mr486973oig.128.1619711224407;
        Thu, 29 Apr 2021 08:47:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619711224; cv=none;
        d=google.com; s=arc-20160816;
        b=WGjlDjMWmemGFTb5EFbwCMb333UM9yBYmEFWHqaDjK1wZSLQtjbELG6cKFqjwNCkOr
         xDol2geVel12RzHD0oEmgmOvu5YF+mFioioFH5ydx1LV2Qon7qdn7xiuvsMkqczm6D/q
         y97gq40Ri3UtAh/pOg93akvkibA396Nquc+vemis+dVhX/irBFFekUoIY+/ArfjocBg/
         PP03vtrTDgru4l1XK9DXMc3aWPG3lIdzlq6loaRs4DPib+RGh1vta5ar9OSNAzbyiPAn
         MdM/BNXCIh5arjDuADdBIQPEOLB5zsRUmu30aJyBUbVibSFQIlBcvOYhiZ69VeWBSevM
         rA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=KUubYoMQJXSLaf+89x7U2XB3wRvy/xfqlyDdfIVUChE=;
        b=pXU37rW1CcxpM/OSinZQTV8EFRpdN1VdD05bgFJGQXsSOUAi41h9PJAB7gXDM17PnO
         zE3Lz0hi/HBrSyyCxGMQ0HX+v5bbopmGC2Az+in5mw6fftb0R2zlkcF9DWQZ9MAnmMY3
         VLx6wpOevTYFCEXjZlDATh8mvLapj9fRw41KQDME1pnqsqHGt0GN5qFqpN5unn1FOHYS
         gsVMuh2xkXeyEvGyXXhAEQoooxyNPZKZ3XbEtzD70wXIyxUOFoaQwyDBildefPzgbyCt
         gVGh9/8Sh9bTxPeDb8TPjL7s3hT4p+RPbuhdLqrSymB3mUla0RIlJcisPk+uJ8UpK0xP
         mhLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.106 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-05.prod.phx3.secureserver.net (p3plsmtpa06-05.prod.phx3.secureserver.net. [173.201.192.106])
        by gmr-mx.google.com with ESMTPS id t78si306675oif.5.2021.04.29.08.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 08:47:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.106 as permitted sender) client-ip=173.201.192.106;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.106 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ua1-f54.google.com ([209.85.222.54])
	by :SMTPAUTH: with ESMTPSA
	id c8sYl1aBjJOFrc8sZlRtsU; Thu, 29 Apr 2021 08:47:03 -0700
X-CMAE-Analysis: v=2.4 cv=BYkdbph2 c=1 sm=1 tr=0 ts=608ad4f7
 a=+oUN4BlkYWoM1I+hJDrd0A==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10
 a=ho5iv9zO5wiLM4bBLr4A:9 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ua1-f54.google.com with SMTP id v8so208170uau.12
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 08:47:03 -0700 (PDT)
X-Gm-Message-State: AOAM533+1zSu4mdu19iLk6LOvXN7dUjCjlMoGAhv2Gbna1bYUvL266wI
	FwdP+Xra+Zcff+qZHnwU5y3m+DpKLBGgDXqKfKg=
X-Received: by 2002:ab0:265:: with SMTP id 92mr21765535uas.32.1619711222544;
 Thu, 29 Apr 2021 08:47:02 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 29 Apr 2021 17:46:50 +0200
X-Gmail-Original-Message-ID: <CAK-LDbKPGJU5NhMGfzhZ2HAd9MokYVBeMTK0M+SzxgqxiNaAaA@mail.gmail.com>
Message-ID: <CAK-LDbKPGJU5NhMGfzhZ2HAd9MokYVBeMTK0M+SzxgqxiNaAaA@mail.gmail.com>
Subject: [Applicants] Outreachy application deadline extended To Monday 4pm UTC
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfDupWiDue00v93EWpQc2oMta5b2Q5BotAL/Bwn8tRtONQ1h7MiNe8dZwUNKJ3enft6VpXY0GUnaNgGwDNFBnBdzkZBsPzOcADUbDRbenTwBnuFkozi4W
 MgZKCi3PE975aQWGoD17CVSOHb/3qUxie4mQu7bCY4CvZWOGrpH+CgCqBHxKR6/OAgVdzonjFxRqEunc6IsaqUFITFBnlF2bsmNXFRe09xTBOe3GRzH0xejg

Hi All,

Outreachy organizers have extended the deadlines of the contributions
and final application because of the COVID-19 situation - especially
on Indian applicants. Here is the summary of new deadlines:

May 3 at 7pm UTC - final application deadline

May 9 - contribution deadline

May 10 - intern selection deadline

This means that you'll be able to contribute to specific projects
until May 9 even after submitting your application. Please note that
we are still keeping the deadline for sending new cleanup patches in
staging April 30. So after April 30, please work on project specific
tasks only.

If you've any other questions, feel free to email me here or off-list. Thanks!

-- 
Vaishali

