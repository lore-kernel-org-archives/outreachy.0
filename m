X-GM-THRID: 6388887439725821952
X-Received: by 10.99.127.5 with SMTP id a5mr6342620pgd.112.1487530397608;
        Sun, 19 Feb 2017 10:53:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.31.77 with SMTP id d74ls1688219itd.19.gmail; Sun, 19 Feb
 2017 10:53:16 -0800 (PST)
X-Received: by 10.99.110.139 with SMTP id j133mr6830023pgc.55.1487530396957;
        Sun, 19 Feb 2017 10:53:16 -0800 (PST)
Received: by 10.202.79.78 with SMTP id d75msoib;
        Sun, 19 Feb 2017 10:32:01 -0800 (PST)
X-Received: by 10.129.70.133 with SMTP id t127mr6465735ywa.146.1487529121647;
        Sun, 19 Feb 2017 10:32:01 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0071.hostedemail.com. [216.40.44.71])
        by gmr-mx.google.com with ESMTPS id b188si1046726ite.3.2017.02.19.10.32.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 10:32:01 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.71 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.71;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.71 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 27BCF6AD47;
	Sun, 19 Feb 2017 18:32:01 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:541:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3871:3872:4321:4605:5007:7903:10004:10400:10848:11026:11232:11658:11914:12043:12740:12760:12895:13069:13095:13163:13229:13311:13357:13439:14181:14659:14721:21060:21080:21433:30012:30054:30091,0,RBL:error,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:error,Custom_rules:0:0:0,LFtime:2000,LUA_SUMMARY:none
X-HE-Tag: foot89_1130019d44a05
X-Filterd-Recvd-Size: 1732
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sun, 19 Feb 2017 18:31:57 +0000 (UTC)
Message-ID: <1487529117.2198.36.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: ks7010: Unnecessary parentheses are
 removed.
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Sun, 19 Feb 2017 10:31:57 -0800
In-Reply-To: <20170219182607.GA17005@arushi-HP-Pavilion-Notebook>
References: <20170219182607.GA17005@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-02-19 at 23:56 +0530, Arushi Singhal wrote:
> Unnecessary parentheses should be avoided as reported by checkpatch.pl.
> Remove unnecessary parentheses, as reported by checkpatch as are nicer
> to read.For example:-
> It's often nicer to read if &(foo[0]) is converted to foo like:
>      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
[]
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
[]
> @@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  	memset(ap, 0, sizeof(struct local_ap_t));
>  
>  	/* bssid */
> -	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
> +	memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN);

This code doesn't match the suggested style of
your commit message.


