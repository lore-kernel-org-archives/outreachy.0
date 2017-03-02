X-GM-THRID: 6392997475785900032
X-Received: by 10.25.167.5 with SMTP id q5mr1992923lfe.18.1488492598174;
        Thu, 02 Mar 2017 14:09:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls827878ljd.29.gmail; Thu, 02 Mar
 2017 14:09:57 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr2513769ljj.30.1488492597773;
        Thu, 02 Mar 2017 14:09:57 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0201.hostedemail.com. [216.40.44.201])
        by gmr-mx.google.com with ESMTPS id f7si19566wmg.3.2017.03.02.14.09.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 14:09:57 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.201 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.201;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.201 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id C5A59C2141;
	Thu,  2 Mar 2017 22:09:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:152:355:379:541:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1431:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:1801:2393:2553:2559:2562:2689:2915:3138:3139:3140:3141:3142:3355:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:4321:4605:5007:6119:6238:7903:8660:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12438:12555:12663:12740:12895:12986:13148:13161:13229:13230:13255:13894:14096:14097:14181:14659:14721:21080:21434:21451:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: sail56_5667589368824
X-Filterd-Recvd-Size: 4354
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Thu,  2 Mar 2017 22:09:53 +0000 (UTC)
Message-ID: <1488492592.2179.20.camel@perches.com>
Subject: Re: [PATCH 3/5] staging: lustre: lustre: Remove unnecessary cast on
 void pointer
From: Joe Perches <joe@perches.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Larry.Finger@lwfinger.net, Florian Schilhabel
 <florian.c.schilhabel@googlemail.com>, Greg KH
 <gregkh@linuxfoundation.org>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, oleg.drokin@intel.com,  marvin24@gmx.de,
 outreachy-kernel@googlegroups.com
Date: Thu, 02 Mar 2017 14:09:52 -0800
In-Reply-To: <CALrZqyP6S2mwYUBERerLnG99qVSFm5jHppjy695JARHMfZ-5Pw@mail.gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
	 <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com>
	 <1488491006.2179.14.camel@perches.com>
	 <CALrZqyN3si-5v5PLWc9ppQ7CjqZGXAXU02GrnyspsioStKTWng@mail.gmail.com>
	 <1488491957.2179.18.camel@perches.com>
	 <CALrZqyP6S2mwYUBERerLnG99qVSFm5jHppjy695JARHMfZ-5Pw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2017-03-03 at 03:35 +0530, SIMRAN SINGHAL wrote:
> On Fri, Mar 3, 2017 at 3:29 AM, Joe Perches <joe@perches.com> wrote:
> > On Fri, 2017-03-03 at 03:25 +0530, SIMRAN SINGHAL wrote:
> > > On Fri, Mar 3, 2017 at 3:13 AM, Joe Perches <joe@perches.com> wrote:
> > > > On Fri, 2017-03-03 at 02:49 +0530, simran singhal wrote:
> > > > > The following Coccinelle script was used to detect this:
> > > > > @r@
> > > > > expression x;
> > > > > void* e;
> > > > > type T;
> > > > > identifier f;
> > > > > @@
> > > > > (
> > > > >   *((T *)e)
> > > > > > 
> > > > > 
> > > > >   ((T *)x)[...]
> > > > > > 
> > > > > 
> > > > >   ((T*)x)->f
> > > > > > 
> > > > > 
> > > > > - (T*)
> > > > >   e
> > > > > )
> > > > 
> > > > NAK.
> > > > 
> > > > Nice, but you still have to verify correctness
> > > > before submitting these patches.
> > > > 
> > > > > diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> > > > 
> > > > []
> > > > > @@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
> > > > >               rc = sptlrpc_parse_flavor(val, &flvr);
> > > > >               if (rc) {
> > > > >                       CERROR("invalid sptlrpc flavor %s to MGS\n",
> > > > > -                            (char *)val);
> > > > > +                            val);
> > > > 
> > > > Try compiling this.
> > > > 
> > > 
> > > I compiled it before sending.
> > 
> > Did you look at the warnings?
> > 
> >   CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
> > drivers/staging/lustre/lustre/mgc/mgc_request.c: In function ‘mgc_set_info_async’:
> > drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning: format ‘%s’ expects argument of type ‘char *’, but argument 3 has type ‘void *’ [-Wformat=]
> >     CERROR("invalid sptlrpc flavor %s to MGS\n",
> > 
> 
> I again compiled it and this is what I got :-
> 
>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CHK     include/generated/timeconst.h
>   CHK     include/generated/bounds.h
>   CHK     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
>   CHK     include/generated/compile.h
>   LD      arch/x86/boot/compressed/vmlinux
>   ZOFFSET arch/x86/boot/zoffset.h
>   AS      arch/x86/boot/header.o
>   LD      arch/x86/boot/setup.elf
>   OBJCOPY arch/x86/boot/setup.bin
>   OBJCOPY arch/x86/boot/vmlinux.bin
>   BUILD   arch/x86/boot/bzImage
> Setup is 17500 bytes (padded to 17920 bytes).
> System is 7128 kB
> CRC 37713343
> Kernel: arch/x86/boot/bzImage is ready  (#4)
>   Building modules, stage 2.
>   MODPOST 4541 modules
> 
> I am not getting any warning.

Then you are likely not compiling the modified file.

try:

$ <git checkout latest-next>
$ make clean
$ make allyesconfig
<apply your patch>
$ make drivers/staging/lustre/lustre/mgc/mgc_request.o


