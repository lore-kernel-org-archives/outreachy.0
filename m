X-GM-THRID: 6491286193203838976
X-Received: by 10.84.129.7 with SMTP id 7mr7732830plb.45.1511370342859;
        Wed, 22 Nov 2017 09:05:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.203 with SMTP id s11ls1136519pgp.18.gmail; Wed, 22 Nov
 2017 09:05:41 -0800 (PST)
X-Google-Smtp-Source: AGs4zMZ9rHXyWTFUH2/YwT//VSvT1Mocwc6dRh0UEf4mQt51sS+O/bTZSm1/n/8b9kvU4q02+fa+
X-Received: by 10.99.55.22 with SMTP id e22mr7749768pga.48.1511370341804;
        Wed, 22 Nov 2017 09:05:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511370341; cv=none;
        d=google.com; s=arc-20160816;
        b=IUV13mTDM6bpPEdT0kOyADnFHcGk1ERWP7s5fc6ZkibIXuXAsGeYSrkvBp2IXJBWaZ
         i7aD2FrSPvQifz6zEOjbaRfFqaCy+IngL5vYVLfXfGqfuaCrTGUr6IcMXstixaMzPBn7
         KaT+E6rTHW7AklLWmv1uKV0L7SOy7cCk9WADONsyJZmPA1dIA8JOu0E9hOeuW9Ixsli7
         01IgRDRUSfmpe71lp2L1bRwmNUzB5a11hZFnB8EBnALYEC63n16P4p/uZRyj6U8fUR8Y
         KPAv1HpzRe/wFDyTSH4LnMaKksi2CX81qzc6O3BciZW9CeuSXXPhuIHpDQ7l5bA5eY30
         oUAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=WfgGp2ix3n1w+Zmm9I5IpTgnzFjhNCcIXTtmZo50NDA=;
        b=uBzthvTMdQAHoFEsrGbkUuJBKiyGFXPTGg+hzkhp3UGD2Gil8SR+XS03+nbLr+5Dqw
         xfT0EwSjAy9M8VIorhYbi9RM8zRIpDFdXp7FGc7squmYSkVwXCC1jf72GksLI5glOwCc
         0IfKMKTvIC9uG7hvgv1eIX0oEjql/vC8NZLtVXC6MbT5TSuGtx2bfePIOhKCgYY346S4
         FAMSB+c44A/gbh6793SZHf8ppQQGjASnOSeK1JG8WDc8xhl3y1ebCO2VhhdFC+qnWoP5
         mAhoQqlWsRzsolg/D60VkyAfr+GDxwB4W8Cn786zJEKuzauJDz5EpHbLBC8Rg1uyndHk
         JMJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.229 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0229.hostedemail.com. [216.40.44.229])
        by gmr-mx.google.com with ESMTPS id f15si1252468plr.1.2017.11.22.09.05.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Nov 2017 09:05:41 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.229 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.229;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.229 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id BC718180A8146;
	Wed, 22 Nov 2017 17:05:40 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:541:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:3871:3872:3874:4321:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21433:21451:21627:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: copy19_314b65456ee5b
X-Filterd-Recvd-Size: 2091
Received: from XPS-9350 (unknown [47.151.150.235])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Wed, 22 Nov 2017 17:05:38 +0000 (UTC)
Message-ID: <1511370336.6989.100.camel@perches.com>
Subject: Re: [PATCH] net: usb: hso.c: remove unneeded DRIVER_LICENSE #define
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org,
  Julia Lawall <julia.lawall@lip6.fr>, cocci <cocci@systeme.lip6.fr>,
 outreachy-kernel@googlegroups.com
Cc: "David S. Miller" <davem@davemloft.net>, Andreas Kemnade
	 <andreas@kemnade.info>, Johan Hovold <johan@kernel.org>, 
	linux-kernel@vger.kernel.org, Philippe Ombredanne <pombredanne@nexb.com>, 
	linux-usb@vger.kernel.org
Date: Wed, 22 Nov 2017 09:05:36 -0800
In-Reply-To: <20171117141939.GD17880@kroah.com>
References: <20171117141939.GD17880@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.26.1-1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2017-11-17 at 15:19 +0100, Greg Kroah-Hartman wrote:
> There is no need to #define the license of the driver, just put it in
> the MODULE_LICENSE() line directly as a text string.
> 
> This allows tools that check that the module license matches the source
> code license to work properly, as there is no need to unwind the
> unneeded dereference.
[]
> diff --git a/drivers/net/usb/hso.c b/drivers/net/usb/hso.c
[]
> @@ -76,7 +76,6 @@
>  
>  #define MOD_AUTHOR			"Option Wireless"
>  #define MOD_DESCRIPTION			"USB High Speed Option driver"
> -#define MOD_LICENSE			"GPL"
>  
>  #define HSO_MAX_NET_DEVICES		10
>  #define HSO__MAX_MTU			2048
> @@ -3288,7 +3287,7 @@ module_exit(hso_exit);
>  
>  MODULE_AUTHOR(MOD_AUTHOR);
>  MODULE_DESCRIPTION(MOD_DESCRIPTION);
> -MODULE_LICENSE(MOD_LICENSE);
> +MODULE_LICENSE("GPL");

Probably all of these MODULE_<FOO>(MOD_<BAR>) uses could be
simplified as well.

Perhaps there's utility in a (cocci?) script that looks for
used-once
macro #defines in various types of macros.


