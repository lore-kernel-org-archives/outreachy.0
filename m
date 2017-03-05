X-GM-THRID: 6393902542586118144
X-Received: by 10.129.181.75 with SMTP id c11mr5162800ywk.57.1488739364413;
        Sun, 05 Mar 2017 10:42:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls14145836ote.48.gmail; Sun, 05 Mar
 2017 10:42:44 -0800 (PST)
X-Received: by 10.129.105.130 with SMTP id e124mr5818872ywc.2.1488739364011;
        Sun, 05 Mar 2017 10:42:44 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0018.hostedemail.com. [216.40.44.18])
        by gmr-mx.google.com with ESMTPS id d20si1412917itc.1.2017.03.05.10.42.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 10:42:43 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.18 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.18;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.18 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 7A4B69EA14;
	Sun,  5 Mar 2017 18:42:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:355:379:541:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:3873:3874:4250:4321:4605:5007:6119:7514:7522:7903:10004:10400:10848:11026:11232:11658:11914:12294:12295:12438:12555:12740:12760:12895:13069:13095:13181:13229:13255:13311:13357:13439:14096:14097:14180:14181:14659:14721:21060:21080:21212:21222:21433:21451:30012:30045:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: cough28_34aef1fa1ff5f
X-Filterd-Recvd-Size: 2214
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Sun,  5 Mar 2017 18:42:41 +0000 (UTC)
Message-ID: <1488739360.2210.1.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: Remove unnecessary
 function and its call
From: Joe Perches <joe@perches.com>
To: Alison Schofield <amsfield22@gmail.com>, simran singhal
	 <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com
Date: Sun, 05 Mar 2017 10:42:40 -0800
In-Reply-To: <20170305181444.GA2094@d830.WORKGROUP>
References: <20170305064721.GA22548@singhal-Inspiron-5558>
	 <20170305181444.GA2094@d830.WORKGROUP>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-03-05 at 10:14 -0800, Alison Schofield wrote:
> On Sun, Mar 05, 2017 at 12:17:21PM +0530, simran singhal wrote:
> > The function atomisp_set_stop_timeout on being called, simply returns
> > back. The function hasn't been mentioned in the TODO and doesn't have
> > FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
> > removed.
> > 
> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> > ---
> 
> Hi Simran,
> 
> It's helpful to state right in the subject line what you removed.
> ie.  remove unused function atomisp_set_stop_timeout()
> 
> If you do that, scan's or grep'ing the git log pretty oneline's can 
> easily see this without having to dig into the log.
> 
> (gitpretty='git log --pretty=oneline --abbrev-commit')
> 
> Can you share to Outreachy group how you found this?  By inspection
> or otherwise??

At least for the rtl8192u patch submitted:

It's also helpful to read the comment you remove
and determine if what you are doing is the correct
thing to do and explain why it's OK in the commit
message. (fractured english below notwithstanding)

 /* These function were added to load crypte module autoly */
-       ieee80211_tkip_null();
 

