X-GM-THRID: 761102598144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,efa55286ffba0bae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr826472lae.7.1424376762147;
        Thu, 19 Feb 2015 12:12:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.72 with SMTP id k8ls1490869wif.35.canary; Thu, 19 Feb
 2015 12:12:42 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr1272130wia.7.1424376761993;
        Thu, 19 Feb 2015 12:12:41 -0800 (PST)
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com. [185.26.127.97])
        by gmr-mx.google.com with ESMTPS id el6si947183wib.2.2015.02.19.12.12.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:12:40 -0800 (PST)
Received-SPF: none (google.com: laurent.pinchart@ideasonboard.com does not designate permitted sender hosts) client-ip=185.26.127.97;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: laurent.pinchart@ideasonboard.com does not designate permitted sender hosts) smtp.mail=laurent.pinchart@ideasonboard.com
Received: from avalon.localnet (dsl-hkibrasgw3-50ddcc-40.dhcp.inet.fi [80.221.204.40])
	by galahad.ideasonboard.com (Postfix) with ESMTPSA id 51FC820173;
	Thu, 19 Feb 2015 21:12:06 +0100 (CET)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: outreachy-kernel@googlegroups.com
Cc: =?ISO-8859-1?Q?ayb=FCke_=F6zdemir?= <aybuke.147@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: fbtft: Fix struct backlight_ops should normally be const
Date: Thu, 19 Feb 2015 22:13:37 +0200
Message-ID: <1721378.1oPpAp4PUY@avalon>
User-Agent: KMail/4.14.3 (Linux/3.17.8-gentoo-r1; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CAEAX3Joj5CRsUdNmXWmmHXiAKTXiRxyywwT0jnqsdS3QcAe=6Q@mail.gmail.com>
References: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com> <1673936.xFr6aDYKYJ@avalon> <CAEAX3Joj5CRsUdNmXWmmHXiAKTXiRxyywwT0jnqsdS3QcAe=6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Ayb=FCke,

On Thursday 19 February 2015 21:43:22 ayb=FCke =F6zdemir wrote:
> Hi Laurent,
>=20
> I will pay much more attention to the commit messages and subject lin=
e. I
> use this command while compiling this file: make M=3Ddrivers/staging/=
fbtft I
> didn't encounter a problem. I guess, I'm using the wrong the "make"
> command.

The command is correct, but you also need to make sure that the driver =
is=20
selected in the kernel configuration, otherwise it won't get compiled.

A good way to find out whether a .c source file has been compiled is to=
 check=20
that a .o file with the same base name has been created in the same dir=
ectory.=20
The kernel build system should also print

  CC      drivers/staging/fbtft/fb_ssd1351.o

during compilation.

--=20
Regards,

Laurent Pinchart


