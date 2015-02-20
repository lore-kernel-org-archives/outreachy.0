X-GM-THRID: 612983898112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d24031e2a704191
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.142.174 with SMTP id rx14mr1120887wjb.4.1424424895437;
        Fri, 20 Feb 2015 01:34:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls257305lab.19.gmail; Fri, 20 Feb
 2015 01:34:54 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr1124561lbc.0.1424424894899;
        Fri, 20 Feb 2015 01:34:54 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id o3si57464wib.2.2015.02.20.01.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 01:34:54 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MYa6I-1Y24Ny2I9C-00VQu7; Fri, 20 Feb
 2015 10:34:52 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: media: vino: Replace printk() and dprintk() with dev_dbg()
Date: Fri, 20 Feb 2015 10:34:51 +0100
Message-ID: <7991599.GNC6NCM7mQ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jKjQPYvyJD2RDSV8rTFxMCaM0zjMNCXy_oEtqYEpWm2GA@mail.gmail.com>
References: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com> <6147170.92TzAG2Bsj@wuerfel> <CAL7P5jKjQPYvyJD2RDSV8rTFxMCaM0zjMNCXy_oEtqYEpWm2GA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID:  V03:K0:vSMTPRK69tWPhGxRVLHDAp/j3B4XrbWJPK9pXEXT6GmTU34hI91
 7arg1gyXd5d1NJfXfXcibMfrT/5qZ9V9XIPP2UsiMOftfivnf56FfAsvKbfY+K4VDpvYgwZ
 Mpzgc1GlSufB8Yt6sQwiTpw6yr+qLsirwwqNUJ+LfRC8cdsfa75gbmQsFFYXWSHICC4uDcO
 AQPoX5XCAB9v8QzFgSrlg==
X-UI-Out-Filterresults: notjunk:1;

On Friday 20 February 2015 10:21:48 Ksenija Stanojevi=C4=87 wrote:
> I based it on staging-next, like in a tutorial

Ok, I've investigated a bit further now and found that four
staging drivers have been removed in mainline that are still
present in staging-next:

drivers/staging/line6/ (moved to sound/usb)
drivers/staging/media/parport/
drivers/staging/media/tlg2300/
drivers/staging/media/vino/

Any patches against these could in theory still make it into
Greg's tree but they would be completely pointless because they
get removed with the next mainline synchronization.

=09Arnd

