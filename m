X-GM-THRID: 6392997475785900032
X-Received: by 10.13.216.20 with SMTP id a20mr5895728ywe.10.1488491961838;
        Thu, 02 Mar 2017 13:59:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls1343958ota.27.gmail; Thu, 02 Mar
 2017 13:59:21 -0800 (PST)
X-Received: by 10.13.213.142 with SMTP id x136mr5585364ywd.113.1488491961332;
        Thu, 02 Mar 2017 13:59:21 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0207.hostedemail.com. [216.40.44.207])
        by gmr-mx.google.com with ESMTPS id b188si78641ite.3.2017.03.02.13.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:59:21 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.207 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.207;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.207 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 882483520B2;
	Thu,  2 Mar 2017 21:59:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:152:355:379:541:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2553:2559:2562:2689:2915:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3870:3872:3873:4321:4605:5007:6119:7903:10004:10400:10848:11026:11232:11657:11658:11783:11914:12043:12296:12438:12740:12895:13069:13255:13311:13357:13894:14181:14659:14721:21080:21434:21451:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: fifth85_8b85ad913e35e
X-Filterd-Recvd-Size: 2805
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Thu,  2 Mar 2017 21:59:18 +0000 (UTC)
Message-ID: <1488491957.2179.18.camel@perches.com>
Subject: Re: [PATCH 3/5] staging: lustre: lustre: Remove unnecessary cast on
 void pointer
From: Joe Perches <joe@perches.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Larry.Finger@lwfinger.net, Florian Schilhabel
 <florian.c.schilhabel@googlemail.com>, Greg KH
 <gregkh@linuxfoundation.org>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, oleg.drokin@intel.com,  marvin24@gmx.de,
 outreachy-kernel@googlegroups.com
Date: Thu, 02 Mar 2017 13:59:17 -0800
In-Reply-To: <CALrZqyN3si-5v5PLWc9ppQ7CjqZGXAXU02GrnyspsioStKTWng@mail.gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
	 <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com>
	 <1488491006.2179.14.camel@perches.com>
	 <CALrZqyN3si-5v5PLWc9ppQ7CjqZGXAXU02GrnyspsioStKTWng@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2017-03-03 at 03:25 +0530, SIMRAN SINGHAL wrote:
> On Fri, Mar 3, 2017 at 3:13 AM, Joe Perches <joe@perches.com> wrote:
> > On Fri, 2017-03-03 at 02:49 +0530, simran singhal wrote:
> > > The following Coccinelle script was used to detect this:
> > > @r@
> > > expression x;
> > > void* e;
> > > type T;
> > > identifier f;
> > > @@
> > > (
> > >   *((T *)e)
> > > > 
> > > 
> > >   ((T *)x)[...]
> > > > 
> > > 
> > >   ((T*)x)->f
> > > > 
> > > 
> > > - (T*)
> > >   e
> > > )
> > 
> > NAK.
> > 
> > Nice, but you still have to verify correctness
> > before submitting these patches.
> > 
> > > diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> > 
> > []
> > > @@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
> > >               rc = sptlrpc_parse_flavor(val, &flvr);
> > >               if (rc) {
> > >                       CERROR("invalid sptlrpc flavor %s to MGS\n",
> > > -                            (char *)val);
> > > +                            val);
> > 
> > Try compiling this.
> > 
> 
> I compiled it before sending.

Did you look at the warnings?

  CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
drivers/staging/lustre/lustre/mgc/mgc_request.c: In function ‘mgc_set_info_async’:
drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning: format ‘%s’ expects argument of type ‘char *’, but argument 3 has type ‘void *’ [-Wformat=]
    CERROR("invalid sptlrpc flavor %s to MGS\n",


