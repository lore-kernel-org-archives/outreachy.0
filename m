X-GM-THRID: 6209280550027395072
X-Received: by 10.112.144.105 with SMTP id sl9mr5914834lbb.3.1446580842972;
        Tue, 03 Nov 2015 12:00:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.11 with SMTP id u11ls53398lfd.65.gmail; Tue, 03 Nov
 2015 12:00:41 -0800 (PST)
X-Received: by 10.112.142.37 with SMTP id rt5mr3556873lbb.1.1446580841909;
        Tue, 03 Nov 2015 12:00:41 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id 13si702598wml.2.2015.11.03.12.00.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 12:00:41 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0M57sc-1afkfx3w0E-00zEJH; Tue, 03 Nov
 2015 21:00:40 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: y2038@lists.linaro.org, Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com, Tapasweni Pathak <tapaswenipathak@gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH v2] staging: media: lirc: lirc_sasem: Replace timeval with ktime_t
Date: Tue, 03 Nov 2015 21:00:38 +0100
Message-ID: <6264221.JsGodhA7Jx@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151103173210.GC31651@kroah.com>
References: <20151027074702.GA26499@amitoj-Inspiron-3542> <5227439.VKfeZbEDzt@wuerfel> <20151103173210.GC31651@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:B8kcu222aMD7GnLzF3QKdN2rYWpm+IkfUs4vIdHPm92v2yvpUfU
 ExCl7SW1AYSHqVFbXyZqSYr7zme1w5kb7VboHtn2lh5EgNu7zs/LXfxIqbBs1d4ZHlYYDnH
 yJP0rGNI/MIDoKvE+1pWgPHCxlF1+FzIUM8xb0hb1xEEGob110JxD1miFNhAAgg5CC+ittR
 K3g5saKRND+IwDT9XW9jQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:0IL0C1eULAs=:OlyCX1iHhJfIkO7a8Te7Lu
 3+wJ7WJsuQCRSjXv2mRFeikFI4+5k7QWF5eSDiXKiK2DgkjB8shtTmOz/jCE5o83+5abJEvEu
 Ynp1RA+M1vOzb3vGycAYR/IYTVA9AVs/ZiXdvJbkmGgyxroiACAbK8uS40g+UQeJcas2okTv/
 g/Fq9t+d5ERF31sGSXYTAjt2PnEALoFTT6qA+NZ6UKuWOQu8TxFh3osm6dVQuW5C1Vinr/Udl
 3OTWKUvMdDQXItFKIE36cmGpxqZd9hb0dEXarZO+o+pZoMbncpD8tlcS6s8Bj7d9nookf0dQp
 BLBcC2TqpxhySxzEJFwqVCO5Ccs9yO49uabZpiXX3GEmv9F5smeiSKI+MJUWGm8yWh+IYHNSR
 WIDfFXUda68eMMUFckcP+xZ+wmY8YSTIMBoU2tLA2aHL2crAfVQh9UAW7zH0bvibAuPGxPBQ4
 0WKrHlGOQL6aZ3fUImElwb19XNN4Jz+a+94JGJYc+sGhNn20HGePVeuwcJurY8yCu6fkklGNv
 cJ2+kP7A577iWDhbzjMBd8tynvcBvdcoQYonENCcb1v/Et64RhjQL6YLwLzo3UmG8ZTp9IfwB
 bQzMEst0wjm0fUjJFZMF992jv2TjXis0gXK6zcGEw7xYAju2gCMvQMd4Dwt+V6/HwdszvZJqB
 kgo2p8yDFXawQk2pSgtcEgGNGC327b40Td0/NLBbDJTFg97wn3kjZDdlWDflMKhb6U6q7CtN+
 KKyom/+FMcMSfbs4

On Tuesday 03 November 2015 09:32:10 Greg KH wrote:
> On Tue, Nov 03, 2015 at 05:39:00PM +0100, Arnd Bergmann wrote:
> > On Tuesday 27 October 2015 13:17:02 Amitoj Kaur Chawla wrote:
> > > This driver uses 'struct timeval' which we are trying to remove since
> > > 32 bit time types will break in the year 2038 by replacing it with
> > > ktime_t.
> > > 
> > > This patch changes do_gettimeofday() to ktime_get() because
> > > ktime_get() returns ktime_t while do_gettimeofday() returns struct
> > > timeval.
> > > 
> > > This patch also uses ktime_ms_delta() to get the elapsed time in
> > > milliseconds.
> > > 
> > > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > > ---
> > 
> > The patch looks good to me, but after checking an old tree of mine, I found
> > that I already have a patch from Tapasweni Pathak for the same thing.
> > For some reason Greg did not apply it to staging back then. I'll send it out
> > to the list for Greg to apply now to ensure this doesn't happen again.
> 
> Greg is not in charge of drivers/staging/media/* so don't send it to
> him, he will just ignore it 

Sorry about forgetting that, I'm sure you've told me several times now.

Anyway, I'll take all patches that I have in my old branch and send them
to whoever is responsible for merging them.

	Arnd

