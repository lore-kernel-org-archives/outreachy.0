X-GM-THRID: 6811040563999014912
X-Received: by 2002:a05:6122:305:: with SMTP id c5mr14659372vko.40.1586184713555;
        Mon, 06 Apr 2020 07:51:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f9c3:: with SMTP id c3ls617vsq.1.gmail; Mon, 06 Apr 2020
 07:51:52 -0700 (PDT)
X-Google-Smtp-Source: APiQypLW0U5XRteJ4m535pZECImZ4mQ0IuSviJ4Qb2yfUqEKuH/Q0SZ/74eJmrxRWVgHN7M3WQF+
X-Received: by 2002:a67:e44a:: with SMTP id n10mr15117050vsm.178.1586184711467;
        Mon, 06 Apr 2020 07:51:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586184711; cv=none;
        d=google.com; s=arc-20160816;
        b=IWa51I4jT1NoZejVs+5y20wW9nKAjaTkwh9Nz/YgoxIpinKkqMLRvzb2ftQxlVk2Ub
         TbzjbjLW6H5qpu2HJsALz4glW+wXS6/FcK+jnZ/9aZu5c9f1i3pOHEwC/Hz2CMf79Yn4
         l1UadbdVAT2h9/H9SN4OPpi2phEIna1ZZ5x5mbGUGnVqQ0G0jHUbgqfgCgyj9IqTRPx3
         NXYYNdA7/NYKMhKdwYoVKfonJmbzKUcY2GHrH8cuiN33tdIvxcU4PesB9CkZMHKsw/G/
         wbvDsuSewN6JLZJaAkKJliXTphfncE5WTerUPY8yG2rDWKmoHJioNOMNwTqqeEBHapE7
         5KCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=taTdHLogn6B4g+Ac9yfjS2rluyhiUgcnUG7xTYnb17s=;
        b=qtsEVsBJE0H4HCiGeXf/CIpmhRJOs5Otge+ME73cQkKdLkmfz41wE8qHUyHxNo7Vkn
         inhnLgtmfTkpdyIx/wDJWIB58jf4e9iKAZCarZba3CxU8oPv5GPnSZT1I5nOme2oua/8
         XuwTCjRHnFrlu0Nm/kd3bkyUqKDF/iuRMFPH54uKolyPw0Fkv7ZjrAc8Tx7NKURcGvM8
         GTdNzjPQSKOIbjuRoUL54P1QeFKq3bOnx9g7CFXEOLtg918mlFNLvZAaY9ECHdyuz690
         IeWeZm0yj0Jo0yY6gf8QEXETDC9CnjhMnpC4MDdpt6ojXV+9+afRGhHEYOHE0Crw+kor
         VGsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-08.prod.phx3.secureserver.net (p3plsmtpa09-08.prod.phx3.secureserver.net. [173.201.193.237])
        by gmr-mx.google.com with ESMTPS id u6si4063uae.0.2020.04.06.07.51.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 07:51:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.237 as permitted sender) client-ip=173.201.193.237;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f51.google.com ([209.85.167.51])
	by :SMTPAUTH: with ESMTPSA
	id LT6Ljl9in6cq2LT6LjfubS; Mon, 06 Apr 2020 07:51:50 -0700
X-CMAE-Analysis: v=2.3 cv=HeBqsRM8 c=1 sm=1 tr=0
 a=Bc0htN4GJj/gJBEw7ICOVw==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=cl8xLZFz6L8A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=pGLkceISAAAA:8
 a=Wm2QblFjYE37K_-gV7gA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lf1-f51.google.com with SMTP id 131so12029072lfh.11
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 07:51:49 -0700 (PDT)
X-Gm-Message-State: AGi0Puaqc04GJvxmfdwJW8zuVzWZOVTxlPhXkl+zpB6A38HtsO6bAWta
	zI8NcmmbDw8nI2ULFL9jNI2KEC7zriWaQ4kWVGc=
X-Received: by 2002:ac2:5622:: with SMTP id b2mr13830309lff.128.1586184708849;
 Mon, 06 Apr 2020 07:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com> <20200406103030.GA6571@kaaira-HP-Pavilion-Notebook>
In-Reply-To: <20200406103030.GA6571@kaaira-HP-Pavilion-Notebook>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 6 Apr 2020 20:21:37 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKkUghfKtki0g-sAbgd744TM1pEZH+MizhMSyxsgFBQEg@mail.gmail.com>
Message-ID: <CAK-LDbKkUghfKtki0g-sAbgd744TM1pEZH+MizhMSyxsgFBQEg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application deadline
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfKyPY8zzflk62YiWfe5mSipNRpDKlhD+dcfENIRbyb4tXLB5l59Igetu4BOKwzaOUQj07g0U5Q2x5VfwUuyE2ocN9NOZinn4v8JQ9h54ftoAmcJMk+JH
 MwiCVw9GmGWu94im87AsOdK9jZ1hgfsf40VwiyHcX0mIEIUL4kIUX6/q6uoGebmp2l+IixHY8l821dopP94kgWo7q9BMKd31ESI=

On Mon, Apr 6, 2020 at 4:00 PM Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:
>
> On Fri, Apr 03, 2020 at 06:17:52AM +0530, Vaishali Thakkar wrote:
> > On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> > <vthakkar@vaishalithakkar.in> wrote:
> > >
> > > Greeting Outreachy applicants,
> > >
> > > Thank you for all your contributions in the Linux Kernel. This is a
> > > reminder for you all that Outreachy's final application deadline is
> > > approaching on April 7, 2020 - 4pm UTC.
> > >
> > > Now is the time to record all your contributions and apply for the
> > > projects you're interested in. We would advise you to at least apply
> > > for 2 projects of your choice. And please do not wait to apply on the
> > > day of a deadline. You can always add more contributions until the
> > > deadline. Don't forget to add links to your patches while recording
> > > contributions on the website.
> >
> > Also, I forgot to add it here but as it says in the welcome message
> > please do not forget to add your project preferences in the
> > 'community-specific questions' section of the application, if you have
> > applied for more than one project.
> >
> > Thanks!
> >
> > > If you have any query, feel free to contact me and project mentors. We
> > > wish you all the best for your applications.
>
>
> Hii!
>
> I wanted to confirm if all the 5 projects of Linux will finally be a part of
> outreachy, or is it just a maximum number?

Hi,

Like I already told you before, all projects will be part of Outreachy and
we will select one intern per project. :)

> Thankyou so much!
>
>
> > >
> > > Have a nice day!
> > >
> > >
> > > Helen Koike and Vaishali Thakkar
> > > Outreachy Linux Kernel Co-coordinator
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA%40mail.gmail.com.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200406103030.GA6571%40kaaira-HP-Pavilion-Notebook.

