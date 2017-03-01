X-GM-THRID: 6392612605640310784
X-Received: by 10.237.53.2 with SMTP id a2mr3000164qte.16.1488399204009;
        Wed, 01 Mar 2017 12:13:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.197 with SMTP id t66ls1526883ioi.25.gmail; Wed, 01 Mar
 2017 12:13:23 -0800 (PST)
X-Received: by 10.98.43.203 with SMTP id r194mr2356711pfr.28.1488399203076;
        Wed, 01 Mar 2017 12:13:23 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0066.hostedemail.com. [216.40.44.66])
        by gmr-mx.google.com with ESMTPS id n127si1454132ita.3.2017.03.01.12.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 12:13:22 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.66 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.66;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.66 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 83A502691AA;
	Wed,  1 Mar 2017 20:13:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:541:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3874:4321:5007:7875:8957:10004:10400:10848:11026:11232:11658:11914:12043:12679:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14181:14659:14721:21060:21080:21451:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: ghost32_1d2b44ff70e60
X-Filterd-Recvd-Size: 2422
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Wed,  1 Mar 2017 20:13:20 +0000 (UTC)
Message-ID: <1488399199.20731.9.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Comparison to NULL
 could be written
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Arushi Singhal
	 <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, Chris Brannon <chris@the-brannons.com>, Kirk Reiser
 <kirk@reisers.ca>, Samuel Thibault <samuel.thibault@ens-lyon.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Wed, 01 Mar 2017 12:13:19 -0800
In-Reply-To: <alpine.DEB.2.20.1703012055460.2401@hadrien>
References: <20170301192140.GA30680@arushi-HP-Pavilion-Notebook>
	 <alpine.DEB.2.20.1703012055460.2401@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2017-03-01 at 20:58 +0100, Julia Lawall wrote:
> 
> On Thu, 2 Mar 2017, Arushi Singhal wrote:
> 
> > Fixed coding style for null comparisons in speakup driver to be more
> > consistant with the rest of the kernel coding style.

And Arushi, please use checkpatch on your proposed
patches before sending them.

$ ./scripts/checkpatch.pl ~/staging-speakup-Comparison-to-NULL-could-be-written.patch  --nosummary
WARNING: 'consistant' may be misspelled - perhaps 'consistent'?
#18: 
consistant with the rest of the kernel coding style.

CHECK: Avoid CamelCase: <CT_Off>
#138: FILE: drivers/staging/speakup/main.c:1512:
+	if (!synth || up_flag || spk_shut_up || cursor_track == CT_Off) {

ERROR: space prohibited before that close parenthesis ')'
#147: FILE: drivers/staging/speakup/main.c:1708:
+	if (spk_shut_up || !synth ) {

ERROR: space prohibited before that close parenthesis ')'
#156: FILE: drivers/staging/speakup/main.c:1725:
+	if ((vc->vc_num != fg_console) || spk_shut_up || !synth )

ERROR: space prohibited before that close parenthesis ')'
#183: FILE: drivers/staging/speakup/main.c:1813:
+	if (!p_header )

ERROR: space prohibited before that close parenthesis ')'
#210: FILE: drivers/staging/speakup/main.c:2068:
+	if (!synth )


