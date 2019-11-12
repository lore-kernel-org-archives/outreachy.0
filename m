X-GM-THRID: 6758464167600979968
X-Received: by 2002:a37:d8e:: with SMTP id 136mr16616710qkn.249.1573578721802;
        Tue, 12 Nov 2019 09:12:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:18c9:: with SMTP id o9ls408757qtk.3.gmail; Tue, 12 Nov
 2019 09:12:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqx9csgJm/bZKxZhOjQpRlj8+2e/7RzEWCNH7HlARVJU0Du942htRbWS+7w9dN7BYPJlVkfH
X-Received: by 2002:aed:2a75:: with SMTP id k50mr33312792qtf.346.1573578720825;
        Tue, 12 Nov 2019 09:12:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573578720; cv=none;
        d=google.com; s=arc-20160816;
        b=Z5xJN/gEm4hqTKJAoYt+VCLthKhdlsseLWC3noTW6CeGJgDHHY1vJqC9hb1RJrhpOf
         8D85/iQ1+rzjt3WQeRPI36MQBAhmcWSww3MCRhZKpJC5ZdMGQBGRcGOzqPKCtE39cR04
         SX55uR84nu5YEItl1V76nJEZ8g4o6v0jM/ustxVon4Y/v3FXWa89AVpcS0bzDSN5lwiC
         5zzSwoCqyhb5RRAW3G+ODpnLSWSTBEsAvF5Jh4mqvnE0KsS7RfkvwUayChvcrjbO6NWv
         GcRsU4VtJI0DuEpag6rkX3HJ0TyVrAdKR+/Z3mhmNHW3jzXGYsJuJJsDIDMOs5jA6Cym
         sKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=v08Xg1VVasvS7ZAjKtbxqMZJ2/2EjoYyXBEvAmCHovU=;
        b=lkwgKCEEnbWeTfz8lpdgvAbzRDhQPxP2l1O6iWg80tKihcV4DVTztJ2zxS3sSbycgC
         okx4YDMsLE8GbXRbarDqS0ThtH9ZOzW5Wydl784vxDzFghQJtcchzk4GAlYIcTb8Iy3L
         w1NwWy7XYeX9M9TE8ewQBefX2uUZD5KQtxq8Pg9Tk/YVHbQRpkAfXKf76/PKedO9FuEg
         GMuSUdESFOaJqLHsyWN9UQXfo135D7Ums9nCsbm7c/BS0S5z7je0qv5MxvO9s44JNwOc
         QbsUJrScuAlA722s8U8Ylh1Dw1IEvFXl5FUrR8nQ5K60zJu0cKjL/WsPfJIkQTN7e3y+
         X6cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0202.hostedemail.com. [216.40.44.202])
        by gmr-mx.google.com with ESMTPS id v189si1063745qka.2.2019.11.12.09.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 09:12:00 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.202;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 74F6D18224083;
	Tue, 12 Nov 2019 17:12:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::,RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3868:3870:4321:5007:7903:10004:10400:10848:11026:11232:11657:11658:11914:12043:12050:12296:12297:12740:12760:12895:13019:13069:13311:13357:13439:14659:14721:21080:21627:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:20,LUA_SUMMARY:none
X-HE-Tag: cats71_68b4d1f30855c
X-Filterd-Recvd-Size: 1580
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Tue, 12 Nov 2019 17:11:59 +0000 (UTC)
Message-ID: <c243860eeabf9406d166deb6204a69255c51867d.camel@perches.com>
Subject: Re: [PATCH 7/9] staging: rtl8723bs: Fix incorrect type in argument
 warnings
From: Joe Perches <joe@perches.com>
To: "Javier F. Arias" <jarias.linux@gmail.com>, gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Tue, 12 Nov 2019 09:11:42 -0800
In-Reply-To: <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
References: <cover.1573577309.git.jarias.linux@gmail.com>
	 <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2019-11-12 at 11:55 -0500, Javier F. Arias wrote:
> Fix incorrect type in declarations to solve the 'incorrect
> type in argument 3' warnings in the rtw_get_ie function calls.
> Issue found by Sparse.
[]
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
[]
> @@ -83,7 +83,7 @@ static char *translate_scan(struct adapter *padapter,
>  {
>  	struct iw_event iwe;
>  	u16 cap;
> -	u32 ht_ielen = 0;
> +	sint ht_ielen = 0;

more likely the rtw_get_ie function should used u32
and not sint.

one day a sed of 's/\bsint\b/int/g' would be good too.




