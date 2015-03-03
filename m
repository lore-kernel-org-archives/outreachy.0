X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.96.67 with SMTP id i3mr844985icn.7.1425384796156;
        Tue, 03 Mar 2015 04:13:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.71 with SMTP id m68ls165736iod.96.gmail; Tue, 03 Mar
 2015 04:13:16 -0800 (PST)
X-Received: by 10.68.143.39 with SMTP id sb7mr1554314pbb.2.1425384795994;
        Tue, 03 Mar 2015 04:13:15 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id ba9si107590qcb.0.2015.03.03.04.13.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 04:13:15 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MZsqM-1YCtVQ2Tza-00LXcb; Tue, 03 Mar
 2015 13:13:10 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: meter: add check on return variables
Date: Tue, 03 Mar 2015 13:13:09 +0100
Message-ID: <3934270.TZNMLNhXSS@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1503030701320.2723@hadrien>
References: <20150303112705.GA11879@waves> <alpine.DEB.2.10.1503030701320.2723@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:Wy2N4CwhhmkYKmHovjNAJ/zlWwUiZ0cL4jfk8l8K6y4W++WvxAV
 yKl6RR1kCsgV5JIInzCabu5zq3g6Ba/gWPmo8Ol5N78pXY26BhjmPyJY3O1ccmLEeoRQaPq
 GlPbsIeu/9x23yGy7evAulHzqt+XxK8yQuQLnKOmWvyVSA9sbuotgN+XmSolxIpKRG29m2Q
 R/4wBUu7rVnC3mBVu/57Q==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 03 March 2015 07:01:47 Julia Lawall wrote:
> > -     ade7758_spi_read_reg_8(dev,
> > -                     ADE7758_OPMODE,
> > -                     &val);
> > +     ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > +     if (ret < 0) {
> > +             dev_err(dev, "failed to read from device");
> > +             goto error_ret;
> > +     }
> 

The ade7758_spi_read_reg_8 already prints an error message, I don't
think we want to see two messages about the same error.

	Arnd

