X-GM-THRID: 6811040563999014912
X-Received: by 2002:a1f:8cce:: with SMTP id o197mr4661888vkd.66.1585874888385;
        Thu, 02 Apr 2020 17:48:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:21e4:: with SMTP id 91ls424896uac.5.gmail; Thu, 02 Apr
 2020 17:48:07 -0700 (PDT)
X-Google-Smtp-Source: APiQypLgvdtvVgVwaElNU4wgIlCgvLwVujD/Ok+qNIF7PpgSs4FyGt6JndUT2JadEFDdRbCNxX/T
X-Received: by 2002:ab0:648b:: with SMTP id p11mr4885921uam.35.1585874887147;
        Thu, 02 Apr 2020 17:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585874887; cv=none;
        d=google.com; s=arc-20160816;
        b=tmZq9WuE2Wjxhd6JnspQLLvKX2bRzZGOSt+APv37ioTO5uRTmot2XfQ9NvvVPWp4gP
         tJTTo5GYGlntHPFCBKtA99NDT2JAw7EoHMecWj4JuPyJ7BRdxcKY/FE2gKaVlmg1UiIb
         HHsuudcp0vSnT9c7LdsnYefzCGyo+sVRozNe0fbcrK2L89XU7jUEZvMBMZKSBKwZ+kMM
         r5m70EaCC6lTv7dc9nf9J1Lw3TeuuqE/AnGhtUdLkF4SjQz93oDGyT5Bv2NwpL0UE1Ky
         79seJwnS4NTM611b4sn8nyNHjls66VXc1ZTMy2eFH3yPoJTWDJm4honRcGQDPjOybBjd
         yt7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version;
        bh=tWXdBcL7ZMdEcvjyLpSQZIwMblhjKrgQCwDpnWlGuyE=;
        b=FAnovcv9J4DzK606ExpCGTnnoJwW+/bgtk+Obdp1wxOdg+FmdbRmG5dyQNlZOMZjWh
         W6e2Cna0Zu6pCfGVdBBadipxDA90O9m1Ag2Le1m/HOdFZy+K3Ync/MKV483DEQPWonlz
         2egUqbl6x0ABDVWPNi7Dj0CwWp3JYkwAwoh0fxYfaYJx/1urmO7rpuJR7d5zR60bsgDs
         sitfWNvxMshmv49POVS33Lijhtjha8FwEn7Aq5E+B1ATBIEhvpw95+mACPlvV4f6FlJo
         Ha6JauHaoyfPPLFmO8M9nG9HMpRrh9gnC0b0tJCKn5FgmZ22JWFDeX+6BWbx+P2MFojf
         qg5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-02.prod.phx3.secureserver.net (p3plsmtpa11-02.prod.phx3.secureserver.net. [68.178.252.103])
        by gmr-mx.google.com with ESMTPS id u6si618902uae.0.2020.04.02.17.48.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 17:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.103 as permitted sender) client-ip=68.178.252.103;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f50.google.com ([209.85.167.50])
	by :SMTPAUTH: with ESMTPSA
	id KAVAjdZ3UkOmBKAVBjcI89; Thu, 02 Apr 2020 17:48:05 -0700
X-CMAE-Analysis: v=2.3 cv=AsaQI91P c=1 sm=1 tr=0
 a=AG5nuFok0e24+IOiSwNSWw==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=cl8xLZFz6L8A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=wK6qxqLJR564InQiXB4A:9 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lf1-f50.google.com with SMTP id t11so4350018lfe.4
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 17:48:05 -0700 (PDT)
X-Gm-Message-State: AGi0PuZMWu4NWSjuZ1+ElJS6w1HLAqX8d7dBRlzsO25YM2/x4rC7u4uI
	7FNyNcXW4KR0Af25NgKVUxo9GC6QLUj/mHPf7+c=
X-Received: by 2002:a05:6512:79:: with SMTP id i25mr3766367lfo.87.1585874884539;
 Thu, 02 Apr 2020 17:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
In-Reply-To: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Fri, 3 Apr 2020 06:17:52 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
Message-ID: <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
Subject: Re: Outreachy reminder - final application deadline
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfIkTpioXzk1qrtwTMcJ+hhfueWfO4uAmThQHH69pugE7CPI4OQhwfgMFsohFouKLD6kCJPBYdX7+TU1Pxrxp0c1aDYszSOzKVbyVGz+17BFDx1uN7PFN
 uNp8m701LB9hd8n0xifBYWLMaD5Dk5L/gBRB2yYfcMFGM9zpLrD4k6FfTw2HYPn5CTc0VODMw69NnPCMb/40TVnNxyDeO+zVs/w=

On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
<vthakkar@vaishalithakkar.in> wrote:
>
> Greeting Outreachy applicants,
>
> Thank you for all your contributions in the Linux Kernel. This is a
> reminder for you all that Outreachy's final application deadline is
> approaching on April 7, 2020 - 4pm UTC.
>
> Now is the time to record all your contributions and apply for the
> projects you're interested in. We would advise you to at least apply
> for 2 projects of your choice. And please do not wait to apply on the
> day of a deadline. You can always add more contributions until the
> deadline. Don't forget to add links to your patches while recording
> contributions on the website.

Also, I forgot to add it here but as it says in the welcome message
please do not forget to add your project preferences in the
'community-specific questions' section of the application, if you have
applied for more than one project.

Thanks!

> If you have any query, feel free to contact me and project mentors. We
> wish you all the best for your applications.
>
> Have a nice day!
>
>
> Helen Koike and Vaishali Thakkar
> Outreachy Linux Kernel Co-coordinator

