X-GM-THRID: 6388489014907764736
X-Received: by 10.36.29.80 with SMTP id 77mr6225329itj.18.1487530396999;
        Sun, 19 Feb 2017 10:53:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls6777433otx.21.gmail; Sun, 19 Feb
 2017 10:53:16 -0800 (PST)
X-Received: by 10.129.73.20 with SMTP id w20mr6005982ywa.90.1487530396707;
        Sun, 19 Feb 2017 10:53:16 -0800 (PST)
Received: by 10.55.39.82 with SMTP id n79msqkn;
        Sun, 19 Feb 2017 10:27:33 -0800 (PST)
X-Received: by 10.25.72.216 with SMTP id v207mr483999lfa.7.1487528853272;
        Sun, 19 Feb 2017 10:27:33 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0166.hostedemail.com. [216.40.44.166])
        by gmr-mx.google.com with ESMTPS id v70si638115wmf.0.2017.02.19.10.27.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 10:27:33 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.166 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.166;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.166 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id B924029DD78;
	Sun, 19 Feb 2017 18:27:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:541:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1542:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:2902:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3868:3871:3874:4321:5007:6119:8660:10004:10400:10848:11026:11232:11658:11914:12043:12740:12895:13148:13161:13229:13230:13255:13439:13894:14181:14659:14721:14828:21060:21080:21451:30012:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: scarf31_7b9ed531b7d50
X-Filterd-Recvd-Size: 3104
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sun, 19 Feb 2017 18:27:29 +0000 (UTC)
Message-ID: <1487528848.2198.34.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: There should be no
 spaces at the start of a line
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Arushi Singhal
	 <arushisinghal19971997@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Sun, 19 Feb 2017 10:27:28 -0800
In-Reply-To: <alpine.DEB.2.20.1702181758460.3112@hadrien>
References: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
	 <alpine.DEB.2.20.1702181758460.3112@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 2017-02-18 at 18:00 +0100, Julia Lawall wrote:
> On Sat, 18 Feb 2017, Arushi Singhal wrote:
> > The following patch the checkpatch.pl warning:
> > drivers/staging/ks7010/ks_hostif.c warning: please, no spaces at the
> > start of a line
[]
> > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
[]
> > @@ -191,8 +191,8 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
> >  	}
> >  	DPRINTK(4, "\n    Link AP\n");
> >  	DPRINTK(4, "    bssid=%02X:%02X:%02X:%02X:%02X:%02X\n \
> > -   essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n    channel=%d\n \
> > -   rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid
> > +essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n    channel=%d\n \
> > +rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq, ap->capability);
> 
> The code looks like a mess.  How about breaking up the call at the
> newlines, and then propagating the arguments to the appropriate calls.
> 
> There is also a checkpatch error about strings on more than one line, that
> this also violates.

There are also vsprintf %p<foo> extensions that would
simplify the code for this output and for many others.

see Documentation/printk-formats.txt

something like:

	DPRINTK(4, "    bssid=%pM\n",�ap->bssid);
	DPRINTK(4, "    essid=%s\n", ap->ssid.body);
	DPRINTK(4, "    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n",
		ap->rate_set.body[0], ap->rate_set.body[1],
		ap->rate_set.body[2], ap->rate_set.body[3],
		ap->rate_set.body[4], ap->rate_set.body[5],
		ap->rate_set.body[6], ap->rate_set.body[7]);	
	DPRINTK(4, "    channel=%d\n",�ap->channel);
	DPRINTK(4, "    rssi=%d\n",�ap->rssi);
	DPRINTK(4, "    sq=%d\n",�ap->sq);
	DPRINTK(4, "   
capability=%04X\n",�ap->capability);


